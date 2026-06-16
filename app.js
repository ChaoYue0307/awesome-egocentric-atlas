const state = {
  data: null,
  filters: {
    search: "",
    kind: "",
    status: "",
    lane: ""
  }
};

const els = {
  rows: document.querySelector("#catalog-rows"),
  count: document.querySelector("#result-count"),
  filters: document.querySelector("#filters"),
  search: document.querySelector("#search"),
  kind: document.querySelector("#kind"),
  status: document.querySelector("#status"),
  lane: document.querySelector("#lane"),
  lanes: document.querySelector("#lane-grid"),
  statuses: document.querySelector("#status-list")
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
  els.count.textContent = `${resources.length} matching resources`;
  els.rows.replaceChildren();

  resources.slice(0, 80).forEach((resource) => {
    const row = document.createElement("tr");
    const tasks = (resource.tasks || []).slice(0, 3);

    row.innerHTML = `
      <td data-label="Resource">
        <div class="resource-name">
          <a href="${resource.url}">${resource.name}</a>
          <span>${(resource.modalities || []).slice(0, 3).map(titleize).join(" / ")}</span>
        </div>
      </td>
      <td data-label="Kind"><span class="chip">${titleize(resource.kind)}</span></td>
      <td data-label="Released">${compactReleased(resource)}</td>
      <td data-label="Status"><span class="chip status-${resource.status}">${resource.status}</span></td>
      <td data-label="Signal">
        <div>${resource.scale || ""}</div>
        <div class="task-tags">${tasks.map((task) => `<span class="chip">${titleize(task)}</span>`).join("")}</div>
      </td>
    `;
    els.rows.appendChild(row);
  });
}

function renderFilters() {
  Object.keys(state.data.summary.kind_counts).forEach((kind) => option(els.kind, kind, titleize(kind)));
  Object.keys(state.data.summary.status_counts).forEach((status) => option(els.status, status, titleize(status)));
  state.data.lanes.forEach((lane) => option(els.lane, lane.id, lane.label));
}

function renderStats() {
  const { summary, meta } = state.data;
  setText("[data-stat='egocentric_resources']", summary.egocentric_resources);
  Object.entries(summary.kind_counts).forEach(([kind, value]) => setText(`[data-kind='${kind}']`, value));
  document.querySelector("[data-updated]").textContent = `Updated ${meta.last_major_audit}`;
}

function renderLanes() {
  els.lanes.replaceChildren();
  state.data.lanes.forEach((lane) => {
    const card = document.createElement("article");
    card.className = "lane-card";
    card.innerHTML = `
      <strong>${lane.label}</strong>
      <p>${lane.description}</p>
      <span class="lane-count">${lane.count}</span>
    `;
    card.addEventListener("click", () => {
      els.lane.value = lane.id;
      state.filters.lane = lane.id;
      renderRows();
      document.querySelector("#catalog").scrollIntoView({ behavior: "smooth", block: "start" });
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
}

async function init() {
  const response = await fetch("./site-data.json");
  state.data = await response.json();
  renderStats();
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
