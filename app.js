const state = {
  data: null,
  filters: {
    search: "",
    kind: "",
    status: "",
    lane: ""
  }
};

function rowLimit() {
  return window.matchMedia("(max-width: 640px)").matches ? 18 : 48;
}

const els = {
  rows: document.querySelector("#catalog-rows"),
  count: document.querySelector("#result-count"),
  note: document.querySelector("#result-note"),
  filters: document.querySelector("#filters"),
  search: document.querySelector("#search"),
  kind: document.querySelector("#kind"),
  status: document.querySelector("#status"),
  lane: document.querySelector("#lane"),
  clear: document.querySelector("#clear-filters"),
  summary: document.querySelector("#catalog-summary"),
  lanes: document.querySelector("#lane-grid"),
  statuses: document.querySelector("#status-list"),
  empty: document.querySelector("#empty-state")
};

function titleize(value) {
  return String(value || "")
    .replace(/-/g, " ")
    .replace(/\b\w/g, (char) => char.toUpperCase());
}

function option(select, value, label) {
  const item = document.createElement("option");
  item.value = value;
  item.textContent = label;
  select.appendChild(item);
}

function escapeHtml(value) {
  return String(value ?? "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#039;");
}

function setText(selector, value) {
  document.querySelectorAll(selector).forEach((node) => {
    node.textContent = value;
  });
}

function compactReleased(resource) {
  return resource.released || resource.year || "unknown";
}

function matchesLane(resource, laneId) {
  if (!laneId) return true;
  const lane = state.data.lanes.find((item) => item.id === laneId);
  if (!lane) return true;
  const families = new Set(lane.families);
  return (resource.task_families || []).some((family) => families.has(family));
}

function searchableText(resource) {
  return [
    resource.name,
    resource.kind,
    resource.status,
    resource.released,
    resource.venue,
    resource.scale,
    ...(resource.tasks || []),
    ...(resource.modalities || []),
    ...(resource.task_families || [])
  ].join(" ").toLowerCase();
}

function filteredResources() {
  const query = state.filters.search.trim().toLowerCase();
  return state.data.resources
    .filter((resource) => resource.scope !== "adjacent")
    .filter((resource) => !state.filters.kind || resource.kind === state.filters.kind)
    .filter((resource) => !state.filters.status || resource.status === state.filters.status)
    .filter((resource) => matchesLane(resource, state.filters.lane))
    .filter((resource) => !query || searchableText(resource).includes(query))
    .sort((a, b) => String(compactReleased(b)).localeCompare(String(compactReleased(a))) || a.name.localeCompare(b.name));
}

function renderRows() {
  const resources = filteredResources();
  const limit = rowLimit();
  const shown = Math.min(resources.length, limit);
  els.count.textContent = `${resources.length} matching resources`;
  els.note.textContent = resources.length > limit ? `Showing newest ${shown} of ${resources.length}` : `Showing all ${shown}`;
  els.empty.hidden = resources.length !== 0;
  els.rows.replaceChildren();

  resources.slice(0, limit).forEach((resource) => {
    const row = document.createElement("tr");
    const tasks = (resource.tasks || []).slice(0, 3);
    const modalities = (resource.modalities || []).slice(0, 3).map(titleize).join(" / ");
    const sourceLine = [resource.venue, modalities].filter(Boolean).join(" / ");

    row.innerHTML = `
      <td data-label="Resource">
        <div class="resource-name">
          <a href="${escapeHtml(resource.url)}">${escapeHtml(resource.name)}</a>
          <span>${escapeHtml(sourceLine)}</span>
        </div>
      </td>
      <td data-label="Kind"><span class="chip">${escapeHtml(titleize(resource.kind))}</span></td>
      <td data-label="Released">${escapeHtml(compactReleased(resource))}</td>
      <td data-label="Status"><span class="chip status-${escapeHtml(resource.status)}">${escapeHtml(resource.status)}</span></td>
      <td data-label="Signal">
        <div>${escapeHtml(resource.scale || "")}</div>
        <div class="task-tags">${tasks.map((task) => `<span class="chip">${escapeHtml(titleize(task))}</span>`).join("")}</div>
      </td>
    `;
    els.rows.appendChild(row);
  });
}

function renderFilters() {
  const kindOrder = ["dataset", "benchmark", "model", "toolkit", "collection"];
  const statusOrder = ["open", "request", "benchmark", "partial", "watch"];
  kindOrder.filter((kind) => state.data.summary.kind_counts[kind]).forEach((kind) => option(els.kind, kind, titleize(kind)));
  statusOrder.filter((status) => state.data.summary.status_counts[status]).forEach((status) => option(els.status, status, titleize(status)));
  state.data.lanes.forEach((lane) => option(els.lane, lane.id, lane.label));
}

function renderStats() {
  const { summary, meta } = state.data;
  setText("[data-stat='egocentric_resources']", summary.egocentric_resources);
  Object.entries(summary.kind_counts).forEach(([kind, value]) => setText(`[data-kind='${kind}']`, value));
  document.querySelector("[data-updated]").textContent = `Updated ${meta.last_major_audit}`;
}

function renderSummary() {
  const { summary, meta } = state.data;
  const pills = [
    ["Total catalog", summary.total_resources],
    ["In scope", summary.egocentric_resources],
    ["Adjacent", summary.adjacent_resources],
    ["Open today", summary.status_counts.open || 0],
    ["Watchlist", summary.status_counts.watch || 0],
    ["Last audit", meta.last_major_audit]
  ];
  els.summary.replaceChildren();
  pills.forEach(([label, value]) => {
    const pill = document.createElement("span");
    pill.className = "summary-pill";
    pill.innerHTML = `<span>${escapeHtml(label)}</span><strong>${escapeHtml(value)}</strong>`;
    els.summary.appendChild(pill);
  });
}

function renderLanes() {
  els.lanes.replaceChildren();
  state.data.lanes.forEach((lane) => {
    const card = document.createElement("article");
    card.className = "lane-card";
    card.tabIndex = 0;
    card.setAttribute("role", "button");
    card.setAttribute("aria-label", `Filter catalog to ${lane.label}`);
    card.innerHTML = `
      <strong>${escapeHtml(lane.label)}</strong>
      <p>${escapeHtml(lane.description)}</p>
      <span class="lane-count">${escapeHtml(lane.count)}</span>
    `;
    const selectLane = () => {
      els.lane.value = lane.id;
      state.filters.lane = lane.id;
      renderRows();
      document.querySelector("#catalog").scrollIntoView({ behavior: "smooth", block: "start" });
    };
    card.addEventListener("click", selectLane);
    card.addEventListener("keydown", (event) => {
      if (event.key === "Enter" || event.key === " ") {
        event.preventDefault();
        selectLane();
      }
    });
    els.lanes.appendChild(card);
  });
}

function renderStatuses() {
  const legend = state.data.meta.status_legend;
  const counts = state.data.summary.status_counts;
  els.statuses.replaceChildren();
  Object.entries(legend).forEach(([status, description]) => {
    const row = document.createElement("div");
    row.className = "status-row";
    row.innerHTML = `
      <strong>${status}</strong>
      <span class="chip status-${status}">${counts[status] || 0}</span>
      <span>${description}</span>
    `;
    els.statuses.appendChild(row);
  });
}

function bindFilters() {
  els.filters.addEventListener("input", () => {
    state.filters.search = els.search.value;
    state.filters.kind = els.kind.value;
    state.filters.status = els.status.value;
    state.filters.lane = els.lane.value;
    renderRows();
  });
  els.clear.addEventListener("click", () => {
    els.search.value = "";
    els.kind.value = "";
    els.status.value = "";
    els.lane.value = "";
    state.filters.search = "";
    state.filters.kind = "";
    state.filters.status = "";
    state.filters.lane = "";
    renderRows();
    els.search.focus();
  });
}

async function init() {
  const response = await fetch("./site-data.json");
  state.data = await response.json();
  renderStats();
  renderSummary();
  renderFilters();
  renderLanes();
  renderStatuses();
  bindFilters();
  renderRows();
}

init().catch((error) => {
  els.count.textContent = "Catalog failed to load";
  console.error(error);
});
