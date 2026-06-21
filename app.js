/* ----------------------------------------------------------------------------
 * Internationalization
 * Static UI strings are translated below; catalogue data (resource names,
 * scale text, technical tags) stays in English.
 * -------------------------------------------------------------------------- */
const LANGS = [
  ["en", "English"], ["zh", "中文"], ["es", "Español"], ["fr", "Français"],
  ["de", "Deutsch"], ["ja", "日本語"], ["ko", "한국어"], ["pt", "Português"]
];

const I18N = {
  en: {
    skip: "Skip to catalog",
    "nav.catalog": "Catalog", "nav.lanes": "Lanes", "nav.access": "Access", "nav.readme": "README", "nav.milestones": "Milestones",
    "milestones.title": "Milestones", "milestones.desc": "The landmark works that shaped egocentric AI — from the field's origins to its current frontier.",
    "hero.lead": "A curated map of egocentric AI — the datasets, benchmarks, models, and tools behind egocentric vision, embodied AI and robotics, video-language, long-context memory, AR/VR, and hand-object interaction.",
    "btn.github": "GitHub Repo", "btn.hf": "Hugging Face Mirror", "btn.browse": "Browse Catalog",
    "stat.resources": "egocentric resources", "stat.datasets": "datasets", "stat.benchmarks": "benchmarks", "stat.models": "models", "stat.toolkits": "toolkits",
    "proof.1": "Datasets, benchmarks, models & tools", "proof.2": "Filter by task, status, and date", "proof.3": "Open access, MIT licensed",
    "media.caption": "Egocentric AI, mapped",
    "catalog.title": "Catalog Explorer", "catalog.desc": "Search by name, task, modality, status, kind, or research lane.", "catalog.openyaml": "Open YAML",
    "filter.search": "Search", "filter.kind": "Kind", "filter.status": "Status", "filter.lane": "Lane", "filter.reset": "Reset",
    "filter.allkinds": "All kinds", "filter.allstatuses": "All statuses", "filter.alllanes": "All lanes",
    "search.placeholder": "Ego4D, VLA, hand pose, memory...",
    "th.resource": "Resource", "th.kind": "Kind", "th.released": "Released", "th.status": "Status", "th.signal": "Best Signal",
    loading: "Loading catalog...", "note.default": "Newest matches first",
    "count.matching": "{n} matching resources", "note.showing": "Showing newest {a} of {b}", "note.showingall": "Showing all {a}",
    "empty.title": "No resources match those filters.", "empty.hint": "Try a broader search, remove a lane, or reset the filters.",
    "lanes.title": "Research Lanes", "lanes.desc": "Six entry points for the main ways people use egocentric data.", "lanes.taxonomy": "Taxonomy",
    "access.title": "Access Reality", "access.desc": "See what you can download today versus what needs a request, is benchmark-only, partial, or still unverified — before you plan experiments.",
    "maintain.title": "Add a Resource", "maintain.desc": "Found something we're missing? Suggest it in a few steps — open a short issue and it flows into the catalog.", "maintain.add": "Add Resource",
    "maintain.contributing": "Contributing guide", "maintain.schema": "Resource schema", "maintain.status": "Status policy", "maintain.workflow": "Maintenance workflow",
    "summary.total": "Total catalog", "summary.inscope": "In scope", "summary.adjacent": "Adjacent", "summary.open": "Open today", "summary.watch": "Watchlist", "summary.audit": "Last audit",
    "footer.tagline": "MIT licensed and free to use. Contributions welcome.",
    "error.load": "Catalog failed to load", updated: "Updated {date}",
    "bar.help": "Help translate", "bar.landing": "Landing page", "bar.hf": "Hugging Face mirror"
  },
  zh: {
    skip: "跳到目录",
    "nav.catalog": "目录", "nav.lanes": "方向", "nav.access": "可获取性", "nav.readme": "README", "nav.milestones": "里程碑",
    "milestones.title": "里程碑", "milestones.desc": "塑造自我中心 AI 的里程碑工作——从领域起源到当前前沿。",
    "hero.lead": "自我中心 AI 的精选地图——汇集自我中心视觉、具身智能与机器人、视频语言、长上下文记忆、AR/VR 以及手物交互背后的数据集、基准、模型与工具。",
    "btn.github": "GitHub 仓库", "btn.hf": "Hugging Face 镜像", "btn.browse": "浏览目录",
    "stat.resources": "自我中心资源", "stat.datasets": "数据集", "stat.benchmarks": "基准", "stat.models": "模型", "stat.toolkits": "工具包",
    "proof.1": "数据集、基准、模型与工具", "proof.2": "按任务、状态与日期筛选", "proof.3": "开放获取，MIT 许可",
    "media.caption": "自我中心 AI 全景",
    "catalog.title": "目录浏览器", "catalog.desc": "按名称、任务、模态、状态、类型或研究方向搜索。", "catalog.openyaml": "打开 YAML",
    "filter.search": "搜索", "filter.kind": "类型", "filter.status": "状态", "filter.lane": "方向", "filter.reset": "重置",
    "filter.allkinds": "全部类型", "filter.allstatuses": "全部状态", "filter.alllanes": "全部方向",
    "search.placeholder": "Ego4D、VLA、手部姿态、记忆……",
    "th.resource": "资源", "th.kind": "类型", "th.released": "发布", "th.status": "状态", "th.signal": "关键信号",
    loading: "正在加载目录……", "note.default": "最新优先",
    "count.matching": "{n} 个匹配资源", "note.showing": "显示最新 {a} / 共 {b}", "note.showingall": "共显示 {a} 个",
    "empty.title": "没有资源符合这些筛选条件。", "empty.hint": "尝试更宽泛的搜索、移除某个方向，或重置筛选。",
    "lanes.title": "研究方向", "lanes.desc": "六个入口，覆盖使用自我中心数据的主要方式。", "lanes.taxonomy": "分类体系",
    "access.title": "可获取性一览", "access.desc": "在规划实验前，先看清哪些今天即可下载，哪些需要申请、仅为基准、部分公开，或尚待核实。",
    "maintain.title": "添加资源", "maintain.desc": "发现我们遗漏的资源？只需几步即可提交——开一个简短的 issue，它就会进入目录。", "maintain.add": "添加资源",
    "maintain.contributing": "贡献指南", "maintain.schema": "资源结构", "maintain.status": "状态政策", "maintain.workflow": "维护流程",
    "summary.total": "目录总数", "summary.inscope": "范围内", "summary.adjacent": "相邻", "summary.open": "今日可用", "summary.watch": "关注列表", "summary.audit": "上次审核",
    "footer.tagline": "MIT 许可，免费使用，欢迎贡献。",
    "error.load": "目录加载失败", updated: "更新于 {date}",
    "bar.help": "帮助翻译", "bar.landing": "项目主页", "bar.hf": "Hugging Face 镜像"
  },
  es: {
    skip: "Saltar al catálogo",
    "nav.catalog": "Catálogo", "nav.lanes": "Áreas", "nav.access": "Acceso", "nav.readme": "README", "nav.milestones": "Hitos",
    "milestones.title": "Hitos", "milestones.desc": "Los trabajos de referencia que dieron forma a la IA egocéntrica, desde sus orígenes hasta la frontera actual.",
    "hero.lead": "Un mapa curado de la IA egocéntrica: los conjuntos de datos, benchmarks, modelos y herramientas tras la visión egocéntrica, la IA encarnada y la robótica, el aprendizaje visión-lenguaje, la memoria de largo contexto, la RA/RV y la interacción mano-objeto.",
    "btn.github": "Repositorio GitHub", "btn.hf": "Espejo en Hugging Face", "btn.browse": "Explorar catálogo",
    "stat.resources": "recursos egocéntricos", "stat.datasets": "conjuntos de datos", "stat.benchmarks": "benchmarks", "stat.models": "modelos", "stat.toolkits": "herramientas",
    "proof.1": "Datos, benchmarks, modelos y herramientas", "proof.2": "Filtra por tarea, estado y fecha", "proof.3": "Acceso abierto, licencia MIT",
    "media.caption": "La IA egocéntrica, mapeada",
    "catalog.title": "Explorador del catálogo", "catalog.desc": "Busca por nombre, tarea, modalidad, estado, tipo o área de investigación.", "catalog.openyaml": "Abrir YAML",
    "filter.search": "Buscar", "filter.kind": "Tipo", "filter.status": "Estado", "filter.lane": "Área", "filter.reset": "Restablecer",
    "filter.allkinds": "Todos los tipos", "filter.allstatuses": "Todos los estados", "filter.alllanes": "Todas las áreas",
    "search.placeholder": "Ego4D, VLA, pose de mano, memoria...",
    "th.resource": "Recurso", "th.kind": "Tipo", "th.released": "Publicado", "th.status": "Estado", "th.signal": "Señal clave",
    loading: "Cargando catálogo...", "note.default": "Primero los más recientes",
    "count.matching": "{n} recursos coincidentes", "note.showing": "Mostrando los {a} más recientes de {b}", "note.showingall": "Mostrando los {a}",
    "empty.title": "Ningún recurso coincide con esos filtros.", "empty.hint": "Prueba una búsqueda más amplia, quita un área o restablece los filtros.",
    "lanes.title": "Áreas de investigación", "lanes.desc": "Seis puntos de entrada a las formas principales de usar datos egocéntricos.", "lanes.taxonomy": "Taxonomía",
    "access.title": "Realidad de acceso", "access.desc": "Distingue lo que puedes descargar hoy de lo que requiere solicitud, es solo benchmark, es parcial o aún no está verificado, antes de planificar experimentos.",
    "maintain.title": "Añadir un recurso", "maintain.desc": "¿Falta algo? Propónlo en unos pocos pasos: abre una breve incidencia y entrará en el catálogo.", "maintain.add": "Añadir recurso",
    "maintain.contributing": "Guía de contribución", "maintain.schema": "Esquema de recursos", "maintain.status": "Política de estados", "maintain.workflow": "Flujo de mantenimiento",
    "summary.total": "Catálogo total", "summary.inscope": "En alcance", "summary.adjacent": "Adyacentes", "summary.open": "Abiertos hoy", "summary.watch": "Lista de seguimiento", "summary.audit": "Última revisión",
    "footer.tagline": "Licencia MIT y de uso libre. Contribuciones bienvenidas.",
    "error.load": "No se pudo cargar el catálogo", updated: "Actualizado {date}",
    "bar.help": "Ayuda a traducir", "bar.landing": "Página principal", "bar.hf": "Espejo en Hugging Face"
  },
  fr: {
    skip: "Aller au catalogue",
    "nav.catalog": "Catalogue", "nav.lanes": "Axes", "nav.access": "Accès", "nav.readme": "README", "nav.milestones": "Jalons",
    "milestones.title": "Jalons", "milestones.desc": "Les travaux marquants qui ont façonné l'IA égocentrique, des origines du domaine à sa frontière actuelle.",
    "hero.lead": "Une carte sélective de l'IA égocentrique : les jeux de données, benchmarks, modèles et outils derrière la vision égocentrique, l'IA incarnée et la robotique, l'apprentissage vision-langage, la mémoire à long contexte, la RA/RV et l'interaction main-objet.",
    "btn.github": "Dépôt GitHub", "btn.hf": "Miroir Hugging Face", "btn.browse": "Parcourir le catalogue",
    "stat.resources": "ressources égocentriques", "stat.datasets": "jeux de données", "stat.benchmarks": "benchmarks", "stat.models": "modèles", "stat.toolkits": "outils",
    "proof.1": "Données, benchmarks, modèles et outils", "proof.2": "Filtrer par tâche, statut et date", "proof.3": "Accès libre, licence MIT",
    "media.caption": "L'IA égocentrique, cartographiée",
    "catalog.title": "Explorateur du catalogue", "catalog.desc": "Recherchez par nom, tâche, modalité, statut, type ou axe de recherche.", "catalog.openyaml": "Ouvrir le YAML",
    "filter.search": "Rechercher", "filter.kind": "Type", "filter.status": "Statut", "filter.lane": "Axe", "filter.reset": "Réinitialiser",
    "filter.allkinds": "Tous les types", "filter.allstatuses": "Tous les statuts", "filter.alllanes": "Tous les axes",
    "search.placeholder": "Ego4D, VLA, pose de main, mémoire...",
    "th.resource": "Ressource", "th.kind": "Type", "th.released": "Publié", "th.status": "Statut", "th.signal": "Signal clé",
    loading: "Chargement du catalogue...", "note.default": "Les plus récents d'abord",
    "count.matching": "{n} ressources correspondantes", "note.showing": "Affichage des {a} plus récentes sur {b}", "note.showingall": "Affichage des {a}",
    "empty.title": "Aucune ressource ne correspond à ces filtres.", "empty.hint": "Essayez une recherche plus large, retirez un axe ou réinitialisez les filtres.",
    "lanes.title": "Axes de recherche", "lanes.desc": "Six points d'entrée vers les principales façons d'utiliser les données égocentriques.", "lanes.taxonomy": "Taxonomie",
    "access.title": "Réalité de l'accès", "access.desc": "Distinguez ce que vous pouvez télécharger aujourd'hui de ce qui nécessite une demande, est réservé aux benchmarks, partiel ou non vérifié, avant de planifier vos expériences.",
    "maintain.title": "Ajouter une ressource", "maintain.desc": "Une ressource manquante ? Proposez-la en quelques étapes : ouvrez un court ticket et elle rejoindra le catalogue.", "maintain.add": "Ajouter une ressource",
    "maintain.contributing": "Guide de contribution", "maintain.schema": "Schéma des ressources", "maintain.status": "Politique des statuts", "maintain.workflow": "Flux de maintenance",
    "summary.total": "Catalogue total", "summary.inscope": "Dans le périmètre", "summary.adjacent": "Adjacentes", "summary.open": "Ouvertes aujourd'hui", "summary.watch": "Liste de veille", "summary.audit": "Dernière révision",
    "footer.tagline": "Licence MIT, libre d'utilisation. Contributions bienvenues.",
    "error.load": "Échec du chargement du catalogue", updated: "Mis à jour le {date}",
    "bar.help": "Aider à traduire", "bar.landing": "Page d'accueil", "bar.hf": "Miroir Hugging Face"
  },
  de: {
    skip: "Zum Katalog springen",
    "nav.catalog": "Katalog", "nav.lanes": "Bereiche", "nav.access": "Zugang", "nav.readme": "README", "nav.milestones": "Meilensteine",
    "milestones.title": "Meilensteine", "milestones.desc": "Die wegweisenden Arbeiten, die egozentrische KI geprägt haben – von den Ursprüngen bis zur aktuellen Front.",
    "hero.lead": "Eine kuratierte Karte egozentrischer KI – die Datensätze, Benchmarks, Modelle und Werkzeuge hinter egozentrischem Sehen, verkörperter KI und Robotik, Video-Sprache, Langzeitgedächtnis, AR/VR und Hand-Objekt-Interaktion.",
    "btn.github": "GitHub-Repo", "btn.hf": "Hugging-Face-Spiegel", "btn.browse": "Katalog durchsuchen",
    "stat.resources": "egozentrische Ressourcen", "stat.datasets": "Datensätze", "stat.benchmarks": "Benchmarks", "stat.models": "Modelle", "stat.toolkits": "Toolkits",
    "proof.1": "Datensätze, Benchmarks, Modelle & Werkzeuge", "proof.2": "Nach Aufgabe, Status und Datum filtern", "proof.3": "Offen zugänglich, MIT-Lizenz",
    "media.caption": "Egozentrische KI, kartiert",
    "catalog.title": "Katalog-Explorer", "catalog.desc": "Suche nach Name, Aufgabe, Modalität, Status, Art oder Forschungsbereich.", "catalog.openyaml": "YAML öffnen",
    "filter.search": "Suche", "filter.kind": "Art", "filter.status": "Status", "filter.lane": "Bereich", "filter.reset": "Zurücksetzen",
    "filter.allkinds": "Alle Arten", "filter.allstatuses": "Alle Status", "filter.alllanes": "Alle Bereiche",
    "search.placeholder": "Ego4D, VLA, Handpose, Gedächtnis...",
    "th.resource": "Ressource", "th.kind": "Art", "th.released": "Veröffentlicht", "th.status": "Status", "th.signal": "Kernsignal",
    loading: "Katalog wird geladen...", "note.default": "Neueste zuerst",
    "count.matching": "{n} passende Ressourcen", "note.showing": "Zeige die neuesten {a} von {b}", "note.showingall": "Zeige alle {a}",
    "empty.title": "Keine Ressourcen passen zu diesen Filtern.", "empty.hint": "Versuche eine breitere Suche, entferne einen Bereich oder setze die Filter zurück.",
    "lanes.title": "Forschungsbereiche", "lanes.desc": "Sechs Einstiegspunkte für die wichtigsten Wege, egozentrische Daten zu nutzen.", "lanes.taxonomy": "Taxonomie",
    "access.title": "Zugangslage", "access.desc": "Unterscheide, was du heute herunterladen kannst, von dem, was eine Anfrage erfordert, nur Benchmark, teilweise oder noch ungeprüft ist – bevor du Experimente planst.",
    "maintain.title": "Ressource hinzufügen", "maintain.desc": "Fehlt etwas? Schlage es in wenigen Schritten vor – öffne ein kurzes Issue, und es fließt in den Katalog ein.", "maintain.add": "Ressource hinzufügen",
    "maintain.contributing": "Beitragsleitfaden", "maintain.schema": "Ressourcenschema", "maintain.status": "Status-Richtlinie", "maintain.workflow": "Wartungsablauf",
    "summary.total": "Gesamtkatalog", "summary.inscope": "Im Fokus", "summary.adjacent": "Angrenzend", "summary.open": "Heute offen", "summary.watch": "Beobachtungsliste", "summary.audit": "Letzte Prüfung",
    "footer.tagline": "MIT-Lizenz, frei nutzbar. Beiträge willkommen.",
    "error.load": "Katalog konnte nicht geladen werden", updated: "Aktualisiert am {date}",
    "bar.help": "Beim Übersetzen helfen", "bar.landing": "Startseite", "bar.hf": "Hugging-Face-Spiegel"
  },
  ja: {
    skip: "カタログへスキップ",
    "nav.catalog": "カタログ", "nav.lanes": "研究分野", "nav.access": "アクセス", "nav.readme": "README", "nav.milestones": "マイルストーン",
    "milestones.title": "マイルストーン", "milestones.desc": "エゴセントリック AI を形づくった画期的な研究——分野の起源から最前線まで。",
    "hero.lead": "エゴセントリック AI の厳選マップ——エゴセントリック視覚、身体性 AI とロボティクス、ビデオ言語、長文脈記憶、AR/VR、手と物体の相互作用を支えるデータセット・ベンチマーク・モデル・ツールを収録。",
    "btn.github": "GitHub リポジトリ", "btn.hf": "Hugging Face ミラー", "btn.browse": "カタログを見る",
    "stat.resources": "エゴセントリック資源", "stat.datasets": "データセット", "stat.benchmarks": "ベンチマーク", "stat.models": "モデル", "stat.toolkits": "ツールキット",
    "proof.1": "データセット・ベンチマーク・モデル・ツール", "proof.2": "タスク・状態・日付で絞り込み", "proof.3": "オープンアクセス、MIT ライセンス",
    "media.caption": "エゴセントリック AI の全体像",
    "catalog.title": "カタログエクスプローラー", "catalog.desc": "名前・タスク・モダリティ・状態・種類・研究分野で検索。", "catalog.openyaml": "YAML を開く",
    "filter.search": "検索", "filter.kind": "種類", "filter.status": "状態", "filter.lane": "分野", "filter.reset": "リセット",
    "filter.allkinds": "すべての種類", "filter.allstatuses": "すべての状態", "filter.alllanes": "すべての分野",
    "search.placeholder": "Ego4D、VLA、手姿勢、記憶…",
    "th.resource": "資源", "th.kind": "種類", "th.released": "公開", "th.status": "状態", "th.signal": "主な特徴",
    loading: "カタログを読み込み中…", "note.default": "新しい順",
    "count.matching": "{n} 件の該当資源", "note.showing": "{b} 件中、最新 {a} 件を表示", "note.showingall": "{a} 件をすべて表示",
    "empty.title": "条件に一致する資源がありません。", "empty.hint": "検索範囲を広げる、分野を外す、またはフィルターをリセットしてください。",
    "lanes.title": "研究分野", "lanes.desc": "エゴセントリックデータの主な使い方への 6 つの入り口。", "lanes.taxonomy": "分類体系",
    "access.title": "アクセス状況", "access.desc": "実験を計画する前に、今すぐダウンロードできるものと、申請が必要・ベンチマークのみ・一部公開・未検証のものを見分けましょう。",
    "maintain.title": "資源を追加", "maintain.desc": "見つからない資源は？数ステップで提案できます——短い issue を開けばカタログに反映されます。", "maintain.add": "資源を追加",
    "maintain.contributing": "貢献ガイド", "maintain.schema": "資源スキーマ", "maintain.status": "状態ポリシー", "maintain.workflow": "メンテナンス手順",
    "summary.total": "カタログ総数", "summary.inscope": "対象内", "summary.adjacent": "隣接", "summary.open": "本日公開", "summary.watch": "ウォッチリスト", "summary.audit": "最終確認",
    "footer.tagline": "MIT ライセンス、自由に利用可能。貢献歓迎。",
    "error.load": "カタログの読み込みに失敗しました", updated: "更新日 {date}",
    "bar.help": "翻訳に協力", "bar.landing": "ランディングページ", "bar.hf": "Hugging Face ミラー"
  },
  ko: {
    skip: "카탈로그로 건너뛰기",
    "nav.catalog": "카탈로그", "nav.lanes": "연구 분야", "nav.access": "접근성", "nav.readme": "README", "nav.milestones": "이정표",
    "milestones.title": "이정표", "milestones.desc": "자기중심 AI를 형성한 획기적 연구 — 분야의 기원부터 현재 최전선까지.",
    "hero.lead": "자기중심 AI의 엄선된 지도 — 자기중심 비전, 체화 AI와 로보틱스, 비디오-언어, 장문맥 기억, AR/VR, 손-물체 상호작용을 뒷받침하는 데이터셋·벤치마크·모델·도구를 담았습니다.",
    "btn.github": "GitHub 저장소", "btn.hf": "Hugging Face 미러", "btn.browse": "카탈로그 보기",
    "stat.resources": "자기중심 자원", "stat.datasets": "데이터셋", "stat.benchmarks": "벤치마크", "stat.models": "모델", "stat.toolkits": "툴킷",
    "proof.1": "데이터셋·벤치마크·모델·도구", "proof.2": "작업·상태·날짜로 필터링", "proof.3": "오픈 액세스, MIT 라이선스",
    "media.caption": "자기중심 AI 한눈에",
    "catalog.title": "카탈로그 탐색기", "catalog.desc": "이름·작업·모달리티·상태·종류·연구 분야로 검색하세요.", "catalog.openyaml": "YAML 열기",
    "filter.search": "검색", "filter.kind": "종류", "filter.status": "상태", "filter.lane": "분야", "filter.reset": "초기화",
    "filter.allkinds": "모든 종류", "filter.allstatuses": "모든 상태", "filter.alllanes": "모든 분야",
    "search.placeholder": "Ego4D, VLA, 손 자세, 기억...",
    "th.resource": "자원", "th.kind": "종류", "th.released": "공개", "th.status": "상태", "th.signal": "핵심 신호",
    loading: "카탈로그 불러오는 중...", "note.default": "최신순",
    "count.matching": "일치하는 자원 {n}개", "note.showing": "전체 {b}개 중 최신 {a}개 표시", "note.showingall": "전체 {a}개 표시",
    "empty.title": "해당 필터에 맞는 자원이 없습니다.", "empty.hint": "검색 범위를 넓히거나 분야를 제거하거나 필터를 초기화하세요.",
    "lanes.title": "연구 분야", "lanes.desc": "자기중심 데이터를 활용하는 주요 방식으로 가는 여섯 가지 진입점.", "lanes.taxonomy": "분류 체계",
    "access.title": "접근성 현황", "access.desc": "실험을 계획하기 전에, 오늘 바로 받을 수 있는 것과 신청이 필요하거나 벤치마크 전용·일부 공개·미검증인 것을 구분하세요.",
    "maintain.title": "자원 추가", "maintain.desc": "빠진 자원이 있나요? 몇 단계로 제안하세요 — 짧은 이슈를 열면 카탈로그에 반영됩니다.", "maintain.add": "자원 추가",
    "maintain.contributing": "기여 가이드", "maintain.schema": "자원 스키마", "maintain.status": "상태 정책", "maintain.workflow": "유지보수 절차",
    "summary.total": "전체 카탈로그", "summary.inscope": "범위 내", "summary.adjacent": "인접", "summary.open": "오늘 공개", "summary.watch": "관심 목록", "summary.audit": "최근 점검",
    "footer.tagline": "MIT 라이선스, 자유롭게 사용하세요. 기여 환영.",
    "error.load": "카탈로그를 불러오지 못했습니다", updated: "업데이트 {date}",
    "bar.help": "번역 돕기", "bar.landing": "랜딩 페이지", "bar.hf": "Hugging Face 미러"
  },
  pt: {
    skip: "Ir para o catálogo",
    "nav.catalog": "Catálogo", "nav.lanes": "Áreas", "nav.access": "Acesso", "nav.readme": "README", "nav.milestones": "Marcos",
    "milestones.title": "Marcos", "milestones.desc": "Os trabalhos marcantes que moldaram a IA egocêntrica — das origens do campo à sua fronteira atual.",
    "hero.lead": "Um mapa curado da IA egocêntrica: os conjuntos de dados, benchmarks, modelos e ferramentas por trás da visão egocêntrica, da IA incorporada e da robótica, da aprendizagem visão-linguagem, da memória de longo contexto, da RA/RV e da interação mão-objeto.",
    "btn.github": "Repositório GitHub", "btn.hf": "Espelho Hugging Face", "btn.browse": "Explorar catálogo",
    "stat.resources": "recursos egocêntricos", "stat.datasets": "conjuntos de dados", "stat.benchmarks": "benchmarks", "stat.models": "modelos", "stat.toolkits": "ferramentas",
    "proof.1": "Dados, benchmarks, modelos e ferramentas", "proof.2": "Filtre por tarefa, estado e data", "proof.3": "Acesso aberto, licença MIT",
    "media.caption": "A IA egocêntrica, mapeada",
    "catalog.title": "Explorador do catálogo", "catalog.desc": "Pesquise por nome, tarefa, modalidade, estado, tipo ou área de pesquisa.", "catalog.openyaml": "Abrir YAML",
    "filter.search": "Pesquisar", "filter.kind": "Tipo", "filter.status": "Estado", "filter.lane": "Área", "filter.reset": "Redefinir",
    "filter.allkinds": "Todos os tipos", "filter.allstatuses": "Todos os estados", "filter.alllanes": "Todas as áreas",
    "search.placeholder": "Ego4D, VLA, pose de mão, memória...",
    "th.resource": "Recurso", "th.kind": "Tipo", "th.released": "Publicado", "th.status": "Estado", "th.signal": "Sinal-chave",
    loading: "Carregando catálogo...", "note.default": "Mais recentes primeiro",
    "count.matching": "{n} recursos correspondentes", "note.showing": "Mostrando os {a} mais recentes de {b}", "note.showingall": "Mostrando todos os {a}",
    "empty.title": "Nenhum recurso corresponde a esses filtros.", "empty.hint": "Tente uma busca mais ampla, remova uma área ou redefina os filtros.",
    "lanes.title": "Áreas de pesquisa", "lanes.desc": "Seis portas de entrada para as principais formas de usar dados egocêntricos.", "lanes.taxonomy": "Taxonomia",
    "access.title": "Realidade de acesso", "access.desc": "Veja o que você pode baixar hoje versus o que exige solicitação, é só benchmark, é parcial ou ainda não verificado — antes de planejar experimentos.",
    "maintain.title": "Adicionar um recurso", "maintain.desc": "Falta algo? Sugira em poucos passos — abra uma breve issue e ele entra no catálogo.", "maintain.add": "Adicionar recurso",
    "maintain.contributing": "Guia de contribuição", "maintain.schema": "Esquema de recursos", "maintain.status": "Política de estados", "maintain.workflow": "Fluxo de manutenção",
    "summary.total": "Catálogo total", "summary.inscope": "No escopo", "summary.adjacent": "Adjacentes", "summary.open": "Abertos hoje", "summary.watch": "Lista de observação", "summary.audit": "Última auditoria",
    "footer.tagline": "Licença MIT e de uso livre. Contribuições bem-vindas.",
    "error.load": "Falha ao carregar o catálogo", updated: "Atualizado em {date}",
    "bar.help": "Ajude a traduzir", "bar.landing": "Página inicial", "bar.hf": "Espelho Hugging Face"
  }
};

function getLang() {
  const fromUrl = new URLSearchParams(location.search).get("lang")
    || (location.hash.match(/[#&]lang=(\w+)/) || [])[1];
  if (fromUrl && I18N[fromUrl]) {
    localStorage.setItem("aea-lang", fromUrl);
    return fromUrl;
  }
  const stored = localStorage.getItem("aea-lang");
  if (stored && I18N[stored]) return stored;
  const nav = (navigator.language || "en").slice(0, 2).toLowerCase();
  return I18N[nav] ? nav : "en";
}

function readFiltersFromUrl() {
  const p = new URLSearchParams(location.search);
  return {
    search: p.get("q") || "",
    kind: p.get("kind") || "",
    status: p.get("status") || "",
    lane: p.get("lane") || ""
  };
}

const state = {
  lang: getLang(),
  data: null,
  filters: readFiltersFromUrl()
};

const reduceMotion = window.matchMedia("(prefers-reduced-motion: reduce)").matches;

// Keep the URL in sync with the active language + filters so any view is shareable.
function syncUrl() {
  const p = new URLSearchParams();
  if (state.lang && state.lang !== "en") p.set("lang", state.lang);
  const f = state.filters;
  if (f.search) p.set("q", f.search);
  if (f.kind) p.set("kind", f.kind);
  if (f.status) p.set("status", f.status);
  if (f.lane) p.set("lane", f.lane);
  const qs = p.toString();
  history.replaceState(null, "", (qs ? `?${qs}` : location.pathname) + location.hash);
}

// Reflect state.filters onto the form controls; drop any filter whose option no
// longer exists (e.g. a stale lane id from an old shared link).
function applyFiltersToForm() {
  els.search.value = state.filters.search;
  ["kind", "status", "lane"].forEach((key) => {
    els[key].value = state.filters[key];
    if (els[key].value !== state.filters[key]) state.filters[key] = "";
  });
}

function t(key) {
  return (I18N[state.lang] && I18N[state.lang][key]) || I18N.en[key] || key;
}

function fmt(str, params) {
  return String(str).replace(/\{(\w+)\}/g, (_, k) => (params[k] !== undefined ? params[k] : `{${k}}`));
}

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
  empty: document.querySelector("#empty-state"),
  langBar: document.querySelector("#lang-bar"),
  milestoneBoard: document.querySelector("#milestone-board")
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

function applyStaticI18n() {
  document.querySelectorAll("[data-i18n]").forEach((node) => {
    node.textContent = t(node.getAttribute("data-i18n"));
  });
  document.querySelectorAll("[data-i18n-ph]").forEach((node) => {
    node.setAttribute("placeholder", t(node.getAttribute("data-i18n-ph")));
  });
  document.documentElement.lang = state.lang;
}

function buildLangBar() {
  if (!els.langBar) return;
  els.langBar.replaceChildren();
  const frag = document.createDocumentFragment();
  LANGS.forEach(([code, label], index) => {
    if (index > 0) frag.appendChild(document.createTextNode(" · "));
    const link = document.createElement("a");
    link.href = "#";
    link.textContent = label;
    link.setAttribute("lang", code);
    if (code === state.lang) link.className = "active";
    link.addEventListener("click", (event) => {
      event.preventDefault();
      setLang(code);
    });
    frag.appendChild(link);
  });
  const extra = [
    [t("bar.help"), "https://github.com/ChaoYue0307/awesome-egocentric-atlas/blob/main/CONTRIBUTING.md"],
    [t("bar.landing"), "https://github.com/ChaoYue0307/awesome-egocentric-atlas"],
    [t("bar.hf"), "https://huggingface.co/datasets/cy0307/awesome-egocentric-atlas"]
  ];
  extra.forEach(([label, href]) => {
    frag.appendChild(document.createTextNode(" · "));
    const link = document.createElement("a");
    link.href = href;
    link.textContent = label;
    frag.appendChild(link);
  });
  els.langBar.appendChild(frag);
}

function setLang(lang) {
  if (!I18N[lang]) return;
  state.lang = lang;
  localStorage.setItem("aea-lang", lang);
  syncUrl();
  applyStaticI18n();
  buildLangBar();
  if (state.data) {
    renderStats();
    renderSummary();
    renderStatuses();
    renderRows();
  }
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
    resource.name, resource.kind, resource.status, resource.released, resource.venue, resource.scale,
    ...(resource.tasks || []), ...(resource.modalities || []), ...(resource.task_families || [])
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
  els.count.textContent = fmt(t("count.matching"), { n: resources.length });
  els.note.textContent = resources.length > limit
    ? fmt(t("note.showing"), { a: shown, b: resources.length })
    : fmt(t("note.showingall"), { a: shown });
  els.empty.hidden = resources.length !== 0;
  els.rows.replaceChildren();

  resources.slice(0, limit).forEach((resource) => {
    const row = document.createElement("tr");
    const tasks = (resource.tasks || []).slice(0, 3);
    const modalities = (resource.modalities || []).slice(0, 3).map(titleize).join(" / ");
    const sourceLine = [resource.venue, modalities, resource.license].filter(Boolean).join(" / ");

    row.innerHTML = `
      <td data-label="${escapeHtml(t("th.resource"))}">
        <div class="resource-name">
          <a href="${escapeHtml(resource.url)}">${escapeHtml(resource.name)}</a>
          <span>${escapeHtml(sourceLine)}</span>
        </div>
      </td>
      <td data-label="${escapeHtml(t("th.kind"))}"><span class="chip">${escapeHtml(titleize(resource.kind))}</span></td>
      <td data-label="${escapeHtml(t("th.released"))}">${escapeHtml(compactReleased(resource))}</td>
      <td data-label="${escapeHtml(t("th.status"))}"><span class="chip status-${escapeHtml(resource.status)}">${escapeHtml(resource.status)}</span></td>
      <td data-label="${escapeHtml(t("th.signal"))}">
        <div>${escapeHtml(resource.scale || "")}</div>
        <div class="task-tags">${tasks.map((task) => `<span class="chip">${escapeHtml(titleize(task))}</span>`).join("")}</div>
      </td>
    `;
    els.rows.appendChild(row);
  });
}

function renderFilters() {
  els.kind.length = 1;
  els.status.length = 1;
  els.lane.length = 1;
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
  document.querySelector("[data-updated]").textContent = fmt(t("updated"), { date: meta.last_major_audit });
}

function renderSummary() {
  const { summary, meta } = state.data;
  const pills = [
    [t("summary.total"), summary.total_resources],
    [t("summary.inscope"), summary.egocentric_resources],
    [t("summary.adjacent"), summary.adjacent_resources],
    [t("summary.open"), summary.status_counts.open || 0],
    [t("summary.watch"), summary.status_counts.watch || 0],
    [t("summary.audit"), meta.last_major_audit]
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
    card.setAttribute("aria-label", `${t("nav.lanes")}: ${lane.label}`);
    card.innerHTML = `
      <strong>${escapeHtml(lane.label)}</strong>
      <p>${escapeHtml(lane.description)}</p>
      <span class="lane-count">${escapeHtml(lane.count)}</span>
    `;
    const selectLane = () => {
      els.lane.value = lane.id;
      state.filters.lane = lane.id;
      syncUrl();
      renderRows();
      document.querySelector("#catalog").scrollIntoView({ behavior: reduceMotion ? "auto" : "smooth", block: "start" });
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

function milestoneEra(item) {
  const year = Number(String(item.date || "").slice(0, 4));
  if (year <= 2015) return { id: "origins", range: "2009-2015", title: "Origins", copy: "Daily-life activity, gaze, and hands become measurable egocentric signals." };
  if (year <= 2022) return { id: "scale", range: "2020-2022", title: "Modern Scale", copy: "Large benchmarks, smart-glasses sensing, geometry, and video-language pretraining mature." };
  if (year <= 2024) return { id: "reasoning", range: "2023-2024", title: "Reasoning & Robotics", copy: "Long-form reasoning, ego-exo capture, AR hand-object tracking, and robot interfaces converge." };
  if (year === 2025) return { id: "daily", range: "2025", title: "Daily Life to VLA", copy: "Personal memory and egocentric demonstrations begin feeding robot policies." };
  return { id: "frontier", range: "2026", title: "World-Model Frontier", copy: "Egocentric corpora, world models, and scaling laws push embodied AI outward." };
}

function renderMilestones() {
  if (!els.milestoneBoard || !state.data.milestones) return;
  const eras = [];
  const eraMap = new Map();

  state.data.milestones.forEach((item) => {
    const era = milestoneEra(item);
    if (!eraMap.has(era.id)) {
      eraMap.set(era.id, { ...era, items: [] });
      eras.push(eraMap.get(era.id));
    }
    eraMap.get(era.id).items.push(item);
  });

  els.milestoneBoard.replaceChildren();
  eras.forEach((era, index) => {
    const section = document.createElement("section");
    section.className = "milestone-era";
    section.setAttribute("aria-label", `${era.range} ${era.title}`);
    const cards = era.items.map((item) => {
      const kind = titleize(item.kind);
      const label = `${item.name}, ${item.date}, ${kind}. ${item.note || ""}`.trim();
      return `
        <a class="milestone-card" href="${escapeHtml(item.url)}" target="_blank" rel="noopener noreferrer" title="${escapeHtml(label)}" aria-label="${escapeHtml(label)}">
          <span class="milestone-card-media">
            <img src="${escapeHtml(item.image || "assets/awesome-egocentric-logo.png")}" loading="lazy" decoding="async" alt="">
          </span>
          <span class="milestone-card-meta">
            <span class="chip milestone-card-date">${escapeHtml(item.date)}</span>
            <span class="chip milestone-card-kind">${escapeHtml(kind)}</span>
          </span>
          <strong class="milestone-card-title">${escapeHtml(item.name)}</strong>
          <span class="milestone-card-note">${escapeHtml(item.note || "")}</span>
        </a>
      `;
    }).join("");

    section.innerHTML = `
      <div class="milestone-era-head">
        <p class="milestone-era-kicker">Era ${index + 1}</p>
        <span class="milestone-era-range">${escapeHtml(era.range)}</span>
        <span class="milestone-era-title">${escapeHtml(era.title)}</span>
        <p class="milestone-era-copy">${escapeHtml(era.copy)}</p>
      </div>
      <div class="milestone-cards">${cards}</div>
    `;
    els.milestoneBoard.appendChild(section);
  });
}

function bindFilters() {
  els.filters.addEventListener("input", () => {
    state.filters.search = els.search.value;
    state.filters.kind = els.kind.value;
    state.filters.status = els.status.value;
    state.filters.lane = els.lane.value;
    syncUrl();
    renderRows();
  });
  els.clear.addEventListener("click", () => {
    els.search.value = "";
    els.kind.value = "";
    els.status.value = "";
    els.lane.value = "";
    state.filters = { search: "", kind: "", status: "", lane: "" };
    syncUrl();
    renderRows();
    els.search.focus();
  });
}

async function init() {
  applyStaticI18n();
  buildLangBar();
  const response = await fetch("./site-data.json");
  state.data = await response.json();
  renderStats();
  renderSummary();
  renderFilters();
  renderLanes();
  renderStatuses();
  renderMilestones();
  applyFiltersToForm();
  bindFilters();
  renderRows();
}

init().catch((error) => {
  els.count.textContent = t("error.load");
  console.error(error);
});
