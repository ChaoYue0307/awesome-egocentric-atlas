# frozen_string_literal: true
# encoding: utf-8

# Generates the language bar on README.md and the translated landing pages
# (README.<lang>.md). The detailed resource tables stay in the English README;
# the translated pages are localized intros that link to the full catalog and
# the interactive (multilingual) site.
#
# Usage: ruby scripts/build_readme_i18n.rb

require "yaml"

ROOT = File.expand_path("..", __dir__)
SITE = "https://chaoyue0307.github.io/awesome-egocentric-atlas/"
GH = "https://github.com/ChaoYue0307/awesome-egocentric-atlas"
HF = "https://huggingface.co/datasets/cy0307/awesome-egocentric-atlas"

LANGS = %w[en zh es fr de ja ko pt].freeze
LANG_NAME = {
  "en" => "English", "zh" => "中文", "es" => "Español", "fr" => "Français",
  "de" => "Deutsch", "ja" => "日本語", "ko" => "한국어", "pt" => "Português"
}.freeze

T = {
  "en" => { tagline: "A curated map of egocentric AI — the datasets, benchmarks, models, and tools behind egocentric vision, embodied AI and robotics, video-language, long-context memory, AR/VR, and hand-object interaction.",
    resources: "egocentric resources", datasets: "datasets", benchmarks: "benchmarks", models: "models", toolkits: "toolkits",
    whats_inside: "What's inside", explore: "Explore", help: "Help translate", landing: "Landing page", hfmirror: "Hugging Face mirror",
    full: "Full catalog (English tables)", site: "Interactive site", hf: "Hugging Face dataset",
    note: "The detailed resource tables are maintained in English in the [main catalog](README.md) and the interactive site.",
    lanes: ["Foundation Video", "Procedure & Action", "Hands, Objects & 3D", "Memory & Reasoning", "Robotics & VLA", "AR & Wearables"] },
  "zh" => { tagline: "自我中心 AI 的精选地图——汇集自我中心视觉、具身智能与机器人、视频语言、长上下文记忆、AR/VR 以及手物交互背后的数据集、基准、模型与工具。",
    resources: "自我中心资源", datasets: "数据集", benchmarks: "基准", models: "模型", toolkits: "工具包",
    whats_inside: "内容概览", explore: "探索", help: "帮助翻译", landing: "项目主页", hfmirror: "Hugging Face 镜像",
    full: "完整目录（英文表格）", site: "交互式网站", hf: "Hugging Face 数据集",
    note: "详细的资源表格以英文维护，见[主目录](README.md)和交互式网站。",
    lanes: ["基础视频", "流程与动作", "手、物体与 3D", "记忆与推理", "机器人与 VLA", "AR 与可穿戴"] },
  "es" => { tagline: "Un mapa curado de la IA egocéntrica: los conjuntos de datos, benchmarks, modelos y herramientas tras la visión egocéntrica, la IA encarnada y la robótica, el aprendizaje visión-lenguaje, la memoria de largo contexto, la RA/RV y la interacción mano-objeto.",
    resources: "recursos egocéntricos", datasets: "conjuntos de datos", benchmarks: "benchmarks", models: "modelos", toolkits: "herramientas",
    whats_inside: "Qué incluye", explore: "Explorar", help: "Ayuda a traducir", landing: "Página principal", hfmirror: "Espejo en Hugging Face",
    full: "Catálogo completo (tablas en inglés)", site: "Sitio interactivo", hf: "Conjunto de datos en Hugging Face",
    note: "Las tablas detalladas de recursos se mantienen en inglés en el [catálogo principal](README.md) y en el sitio interactivo.",
    lanes: ["Vídeo fundacional", "Procedimiento y acción", "Manos, objetos y 3D", "Memoria y razonamiento", "Robótica y VLA", "RA y wearables"] },
  "fr" => { tagline: "Une carte sélective de l'IA égocentrique : les jeux de données, benchmarks, modèles et outils derrière la vision égocentrique, l'IA incarnée et la robotique, l'apprentissage vision-langage, la mémoire à long contexte, la RA/RV et l'interaction main-objet.",
    resources: "ressources égocentriques", datasets: "jeux de données", benchmarks: "benchmarks", models: "modèles", toolkits: "outils",
    whats_inside: "Contenu", explore: "Explorer", help: "Aider à traduire", landing: "Page d'accueil", hfmirror: "Miroir Hugging Face",
    full: "Catalogue complet (tableaux en anglais)", site: "Site interactif", hf: "Jeu de données Hugging Face",
    note: "Les tableaux détaillés des ressources sont maintenus en anglais dans le [catalogue principal](README.md) et sur le site interactif.",
    lanes: ["Vidéo fondationnelle", "Procédure et action", "Mains, objets et 3D", "Mémoire et raisonnement", "Robotique et VLA", "RA et wearables"] },
  "de" => { tagline: "Eine kuratierte Karte egozentrischer KI – die Datensätze, Benchmarks, Modelle und Werkzeuge hinter egozentrischem Sehen, verkörperter KI und Robotik, Video-Sprache, Langzeitgedächtnis, AR/VR und Hand-Objekt-Interaktion.",
    resources: "egozentrische Ressourcen", datasets: "Datensätze", benchmarks: "Benchmarks", models: "Modelle", toolkits: "Toolkits",
    whats_inside: "Inhalt", explore: "Erkunden", help: "Beim Übersetzen helfen", landing: "Startseite", hfmirror: "Hugging-Face-Spiegel",
    full: "Vollständiger Katalog (englische Tabellen)", site: "Interaktive Website", hf: "Hugging-Face-Datensatz",
    note: "Die detaillierten Ressourcentabellen werden auf Englisch im [Hauptkatalog](README.md) und auf der interaktiven Website gepflegt.",
    lanes: ["Grundlagen-Video", "Ablauf und Aktion", "Hände, Objekte und 3D", "Gedächtnis und Schlussfolgern", "Robotik und VLA", "AR und Wearables"] },
  "ja" => { tagline: "エゴセントリック AI の厳選マップ——エゴセントリック視覚、身体性 AI とロボティクス、ビデオ言語、長文脈記憶、AR/VR、手と物体の相互作用を支えるデータセット・ベンチマーク・モデル・ツールを収録。",
    resources: "エゴセントリック資源", datasets: "データセット", benchmarks: "ベンチマーク", models: "モデル", toolkits: "ツールキット",
    whats_inside: "収録内容", explore: "探索", help: "翻訳に協力", landing: "ランディングページ", hfmirror: "Hugging Face ミラー",
    full: "完全なカタログ（英語の表）", site: "インタラクティブサイト", hf: "Hugging Face データセット",
    note: "詳細な資源の表は英語で[メインカタログ](README.md)とインタラクティブサイトに維持されています。",
    lanes: ["基盤映像", "手順と行動", "手・物体・3D", "記憶と推論", "ロボティクスと VLA", "AR とウェアラブル"] },
  "ko" => { tagline: "자기중심 AI의 엄선된 지도 — 자기중심 비전, 체화 AI와 로보틱스, 비디오-언어, 장문맥 기억, AR/VR, 손-물체 상호작용을 뒷받침하는 데이터셋·벤치마크·모델·도구를 담았습니다.",
    resources: "자기중심 자원", datasets: "데이터셋", benchmarks: "벤치마크", models: "모델", toolkits: "툴킷",
    whats_inside: "구성", explore: "둘러보기", help: "번역 돕기", landing: "랜딩 페이지", hfmirror: "Hugging Face 미러",
    full: "전체 카탈로그 (영문 표)", site: "인터랙티브 사이트", hf: "Hugging Face 데이터셋",
    note: "상세 자원 표는 [메인 카탈로그](README.md)와 인터랙티브 사이트에 영어로 유지됩니다.",
    lanes: ["기반 비디오", "절차와 행동", "손·물체·3D", "기억과 추론", "로보틱스와 VLA", "AR과 웨어러블"] },
  "pt" => { tagline: "Um mapa curado da IA egocêntrica: os conjuntos de dados, benchmarks, modelos e ferramentas por trás da visão egocêntrica, da IA incorporada e da robótica, da aprendizagem visão-linguagem, da memória de longo contexto, da RA/RV e da interação mão-objeto.",
    resources: "recursos egocêntricos", datasets: "conjuntos de dados", benchmarks: "benchmarks", models: "modelos", toolkits: "ferramentas",
    whats_inside: "O que inclui", explore: "Explorar", help: "Ajude a traduzir", landing: "Página inicial", hfmirror: "Espelho Hugging Face",
    full: "Catálogo completo (tabelas em inglês)", site: "Site interativo", hf: "Conjunto de dados Hugging Face",
    note: "As tabelas detalhadas de recursos são mantidas em inglês no [catálogo principal](README.md) e no site interativo.",
    lanes: ["Vídeo fundacional", "Procedimento e ação", "Mãos, objetos e 3D", "Memória e raciocínio", "Robótica e VLA", "RA e wearables"] }
}.freeze

def readme_for(lang)
  lang == "en" ? "README.md" : "README.#{lang}.md"
end

def lang_bar(current)
  parts = LANGS.map do |code|
    name = LANG_NAME[code]
    label = code == current ? "<b>#{name}</b>" : name
    "<a href=\"#{readme_for(code)}\">#{label}</a>"
  end
  t = T[current]
  parts << "<a href=\"CONTRIBUTING.md\">#{t[:help]}</a>"
  parts << "<a href=\"#{SITE}\">#{t[:landing]}</a>"
  parts << "<a href=\"#{HF}\">#{t[:hfmirror]}</a>"
  "<p align=\"center\">\n  " + parts.join(" ·\n  ") + "\n</p>"
end

# --- catalog counts ----------------------------------------------------------
resources = YAML.load_file(File.join(ROOT, "data", "resources.yml")).fetch("resources")
ego = resources.reject { |r| r["scope"] == "adjacent" }
kc = Hash.new(0)
ego.each { |r| kc[r["kind"]] += 1 }
COUNTS = { ego: ego.length, dataset: kc["dataset"], benchmark: kc["benchmark"], model: kc["model"], toolkit: kc["toolkit"] }

# --- update README.md language bar (between markers) -------------------------
START = "<!-- LANG-BAR:START -->"
FINISH = "<!-- LANG-BAR:END -->"
readme_path = File.join(ROOT, "README.md")
readme = File.read(readme_path, encoding: "UTF-8")
block = "#{START}\n#{lang_bar('en')}\n#{FINISH}"
if readme.include?(START)
  readme.sub!(/#{Regexp.escape(START)}.*?#{Regexp.escape(FINISH)}/m, block)
else
  # insert right after the tagline paragraph (first centered <strong>…</strong></p>)
  readme.sub!(/(<strong>[^<]*<\/strong>\s*<\/p>\n)/m, "\\1\n#{block}\n")
end
File.write(readme_path, readme)

# --- generate translated landing pages --------------------------------------
LANGS.each do |lang|
  next if lang == "en"

  t = T[lang]
  stat = "<strong>#{COUNTS[:ego]}</strong> #{t[:resources]} — " \
    "#{COUNTS[:dataset]} #{t[:datasets]} · #{COUNTS[:benchmark]} #{t[:benchmarks]} · " \
    "#{COUNTS[:model]} #{t[:models]} · #{COUNTS[:toolkit]} #{t[:toolkits]}"
  lanes = t[:lanes].map { |l| "- #{l}" }.join("\n")
  body = <<~MD
    #{lang_bar(lang)}

    <p align="center">
      <img src="assets/awesome-egocentric-logo.png" alt="Awesome Egocentric Atlas" width="118">
    </p>

    <h1 align="center">Awesome Egocentric Atlas</h1>

    <p align="center"><strong>#{t[:tagline]}</strong></p>

    <p align="center">#{stat}</p>

    ## #{t[:whats_inside]}

    #{lanes}

    ## #{t[:explore]}

    - 📖 [#{t[:full]}](README.md)
    - 🌐 [#{t[:site]}](#{SITE}?lang=#{lang})
    - 🤗 [#{t[:hf]}](#{HF})

    > #{t[:note]}
  MD
  File.write(File.join(ROOT, readme_for(lang)), body)
end

puts "Wrote README language bar + #{LANGS.length - 1} translated landing pages (#{COUNTS[:ego]} egocentric)."
