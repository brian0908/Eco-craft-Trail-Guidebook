//
//  Data.swift
//  Eco-craft Trail Guidebook
//
//  Created by Brian Lee on 10/24/25.
//

import SwiftUI

// MARK: - 手作步道介紹資訊
let intros: [Intro] = [
	Intro(
		name: "什麼是手作步道？",
		summary: """
手作步道的定義，從字義上來看為「以人力方式運用非動力工具輔助進行步道施作，並依循相關基本原則，使步道降低對生態環境與歷史空間的擾動，增進步道的永續性與整體性」。

因此，手作步道不只是用手做或工法本身；從事前規劃開始，順應氣候、地質、生態與人文脈絡，兼顧使用者特性與棲地整體性，結合傳統工藝、在地知識與專業知能，進行因地制宜的「適切設計」。重視軟體與服務、減少不必要的硬體，善用現地特性材料；並透過民主對話、跨部門合作，建立常態維護體系。

2007 年起由民間與林務單位推動，2009 年正式命名「手作步道」，既非「自然步道」也不同於只強調樣態的「生態工法」。
""",
		imageName: "01"
	),
	Intro(
		name: "手作步道、水泥步道有什麼不同？",
		summary: """
Ｑ：政府發包工程、鋪設水泥步道又快又專業，不是很專業嗎？
依賴大型機具和外來材料（尤其是水泥）的工程步道，多以施工便利、安全效益、快速完工為主，較少回應當地人文、生態、景觀與使用者需求；施工中與施作後常對山林造成過度擾動，留下難以回復的傷害。

Ｑ：手作步道和水泥步道，走起來有什麼差異？
手作步道保有現地材料的透水、透氣多孔性，配合適當安排，提升承載力與安全性；腳感柔軟、有彈性。水泥步道則欠缺緩衝，反作用力大，長時間踩踏易傷膝踝。

Ｑ：沒有欄杆等堅固設施會不會不安全？
手作步道破壞性低、穩定性高，使用者會自行評估能力而更謹慎；水泥鋼材常見難以常態維護的腐朽損壞與基礎不穩等隱患，卻易被誤以為「安全」而過度依賴。
""",
		imageName: "comparison"
	),
	Intro(
		name: "常見問答",
		summary: """
Ｑ：手作步道的工法有哪些？
路線整理、橫向排水（導流棒、截水溝、節制壩）、階梯（土木、砌石）、護坡（砌石/卵石）、橋（半邊橋等）。

Ｑ：要做多久？
視氣候、權責、危急程度、長度而定，沒有定論。

Ｑ：有一定標準嗎？
強調因地制宜、就地取材，目標是自然、生態、安全、舒適；在專業指導下把對生態的影響降到最低。

Ｑ：就地取材會破壞生態？
需在不明顯影響生態下進行，優先利用風倒木、崩落土石、或適當開挖的埋石。

Ｑ：現地找不到材料怎麼辦？
以人力傳遞或搬運車運輸；必要時採購能融入當地的材料，運送原則為不破壞生態。

Ｑ：遇到珍貴物種怎麼辦？
先勘察與設計；現地發現即討論並諮詢生態顧問，不適合則繞道。
""",
		imageName: "02"
	)
]

// MARK: - 手作步道工法資訊

let methodsPaving: [Method] = [
	Method(
		name: "路跡整理",
		summary: "清除雜草與鬆土、修順外傾與凹陷，使步跡穩定並恢復排水。",
		steps: [
			Step(title: "清理路幅", detail: "移除腐植層與絆腳物，避免積水並確保行走安全。"),
			Step(title: "修整邊坡", detail: "修順上邊坡、界定邊線，取得可通行路幅。"),
			Step(title: "洩水坡度", detail: "修成外傾 3–5%。"),
			Step(title: "補填夯實", detail: "碎石/土方補平後夯實。")
		],
		materials: ["在地土料"]
	),
	Method(
		name: "卵石鋪面",
		summary: "以在地卵石鋪設透水鋪面，提升耐久與止滑（需可取得卵石）。",
		steps: [
			Step(title: "埋設踏面石", detail: "選厚 15–20cm 卵石，平面向上，內傾略抬高。"),
			Step(title: "埋設護石", detail: "踏面兩側以小卵石緊靠咬合。"),
			Step(title: "向上施作", detail: "視坡度於適當位置抬升踏面高度。")
		],
		materials: ["踏面石：長邊寬度約 40–60cm", "護石：較小卵石作側護"]
	)
]

let methodsSubgrade: [Method] = [
	Method(
		name: "粗骨料級配路基",
		summary: "步道下蝕形成沖蝕溝時，以級配碎石分層夯實，提供穩固且透水的路基。",
		steps: [
			Step(title: "回填塊石", detail: "由大到小分層回填並剔除有機物，至表層下 5–10cm。"),
			Step(title: "鋪面施作", detail: "依第一節鋪面工法完成踏面。")
		],
		materials: ["塊石：各尺寸塊石，厚度不超過需回填深度"]
	)
]

let methodsDrainage: [Method] = [
	Method(
		name: "橫木導流棒",
		summary: "25% 內縱坡路段，以耐久原木橫置導水出路外，減少沖蝕（周邊可得疏伐木/倒木時適用）。",
		steps: [
			Step(title: "開挖導流溝", detail: "依導流角度(θ)開挖；深度≥20cm 並略向下邊坡外傾。"),
			Step(title: "埋放導流橫木", detail: "貼合路面並深入上邊坡，長度超過路幅且外伸下邊坡。"),
			Step(title: "固定木樁", detail: "下坡側中間與兩端內縮 10–15cm 引孔後垂直打樁，入土≥1/2 樁長。"),
			Step(title: "背填土石", detail: "橫木背面小塊石/碎石/岩屑/土方分層夯實，完成面略高於橫木。"),
			Step(title: "修整洩水坡度", detail: "沿步道方向修外傾，讓逕流順利排出。"),
			Step(title: "迎水坡面埋設塊石", detail: "迎水底部埋 5–10cm 塊石或 2–3cm 碎石混土並夯實。"),
			Step(title: "設置消能設施", detail: "出水點拋置塊石形成跌水消能。")
		],
		materials: ["橫木：Ø15–20cm","木樁：Ø5–8cm、長40–50cm（每根橫木≥3支）；小塊石：Ø5–15cm","回填土石：2–3cm 碎石混土"]
	),
	Method(
		name: "砌石導流棒",
		summary: "以砌石取代橫木的橫向導水設施，耐久度更高（現地塊石充足時適用）。",
		steps: [
			Step(title: "開挖導流溝", detail: "依(θ)開挖；深≥20cm、略向下邊坡外傾。"),
			Step(title: "埋放導流塊石", detail: "選高>20cm 平面作頂/立面，緊靠下緣埋放且不高於路面，鄰石緊咬；靠上邊坡者需深入。"),
			Step(title: "背填土石", detail: "背面小塊石/碎石/岩屑/土方夯實，面略高於砌石頂。"),
			Step(title: "修整坡面", detail: "整外傾，逕流自導流棒排出。"),
			Step(title: "迎水坡面埋設塊石", detail: "迎水底部 5–10cm 塊石或 2–3cm 碎石混土夯實。"),
			Step(title: "設置消能設施", detail: "出水點疊石跌水消能。")
		],
		materials: ["塊石：厚>20cm 且≥兩面平整","小塊石：Ø5–15cm","回填土石：2–3cm 碎石混土"]
	),
	Method(
		name: "砌石反向坡",
		summary: "局部形成向外微傾斜，引導水離開路面（塊石可得的縱坡路段）。",
		steps: [
			Step(title: "開挖二道橫溝", detail: "上溝依(θ)導出，下溝垂直路線；深≥20cm 並略向下邊坡外傾。"),
			Step(title: "埋放塊石", detail: "高>20cm 平面作頂/立面沿溝緣埋放，頂不高於路面；靠上邊坡者需深入。"),
			Step(title: "背填土石", detail: "兩道砌石間小塊石/碎石/岩屑/土方夯實。"),
			Step(title: "修整坡面", detail: "順路向整外傾，使水導向砌石排出。"),
			Step(title: "迎水坡面埋設塊石", detail: "迎水底部 5–10cm 塊石或 2–3cm 碎石混土夯實。"),
			Step(title: "設置消能設施", detail: "出水點拋置塊石形成跌水。")
		],
		materials: ["塊石：厚>20cm","小塊石：Ø5–15cm","回填土石：2–3cm","碎石混土"]
	),
	Method(
		name: "砌石截水溝",
		summary: "於坡面上方先行截流，將逕流導離步道（平緩路段或上方集中出水處）。",
		steps: [
			Step(title: "開挖截水溝", detail: "依斜角開挖；深≥20cm，溝底略向下邊坡外傾。"),
			Step(title: "埋放溝壁塊石", detail: "高>20cm 平面作頂/立面貼兩側溝壁埋放，完成溝寬約 15cm；入/出水端用較大石。"),
			Step(title: "鋪砌溝底塊石", detail: "溝底平面向上整平；出水端不得高於入水端，鄰石高差≤1.5cm、縫≤2cm；出水口石板外伸護邊。"),
			Step(title: "背填土石", detail: "溝壁背面分層夯實至路面高。"),
			Step(title: "設置消能設施", detail: "出水點疊石/護底避免淘刷。")
		],
		materials: ["塊石：厚>20cm","小塊石：Ø5–15cm","回填土石：2–3cm","碎石混土"]
	),
	Method(
		name: "砌石固床工",
		summary: "在沖蝕溝內設置小壩，讓水力背填土石以恢復溝床高度（難以改變排水路徑時）。",
		steps: [
			Step(title: "選定施作位置", detail: "坡度越陡越密，越緩可拉長；優先窄處。"),
			Step(title: "整理壩體基床", detail: "溝底垂直水流方向開挖；壩厚≈溝寬 1/2。"),
			Step(title: "埋放底層塊石", detail: "高≥30cm，至少埋入 1/3；鄰石緊咬、兩翼深入溝壁。"),
			Step(title: "接續往上疊砌", detail: "自下而上、交丁錯縫、逐層內退至設計高。"),
			Step(title: "放置壓頂石", detail: "最上層用大重石並留「凹」字形溢流口。"),
			Step(title: "溝底回填塊石", detail: "上游回填抗沖石；下游出水口護底拋石。")
		],
		materials: ["壩體塊石：>20cm 且平面足","小塊石：Ø5–15cm"]
	)
]

let methodsSlope: [Method] = [
	Method(
		name: "橫木護坡",
		summary: "下邊坡陡峭且路輻狹窄路段，以原木單層排列穩定邊坡與路肩並爭取路輻。",
		steps: [
			Step(title: "放置橫木", detail: "下邊坡側開挖座位，平行路線貼合地面放置。"),
			Step(title: "固定木樁", detail: "外側中間與兩端內縮 10–15cm 引孔後打樁，入土≥1/2 樁長。"),
			Step(title: "填塞塊石（排水層）", detail: "橫木與路面間填 10–15cm 塊石作排水層並防流失。"),
			Step(title: "回填夯實與整坡", detail: "踏面碎石土方回填夯實，外傾，完成面略高於橫木。")
		],
		materials: ["橫木：Ø15–20cm","木樁：Ø5–8cm、長40–50cm（每橫木≥3支）","塊石：Ø10–15cm","回填土石：2–3cm","碎石混土"]
	),
	Method(
		name: "木格框護坡",
		summary: "邊坡腹地足、需較高結構強度抵抗土壓時，以橫木組立體格框搭配回填石土。",
		steps: [
			Step(title: "整理護坡基床", detail: "開挖整平，開挖面略向上邊坡側傾。"),
			Step(title: "固定木樁", detail: "外側設樁防滑脫；數量與樁距視長度、坡度、地質。"),
			Step(title: "架設木格框", detail: "長邊平行路線、短邊垂直；短邊間距約 100–120cm。"),
			Step(title: "回填土石", detail: "外側先 15–20cm 大塊石封縫，再小石/碎石/土分層。"),
			Step(title: "逐層往上架設", detail: "自下而上略內退縮至預定高度，完成面微後傾。"),
			Step(title: "修坡夯實", detail: "踏面回填夯實並形成外傾。")
		],
		materials: ["橫木：Ø12–15cm","木樁：Ø8–10cm（入土≥1/2）","大塊石：Ø15–20cm","回填土石：2–3cm 碎石混土"]
	),
	Method(
		name: "打樁編柵",
		summary: "以連續竹樁＋竹柵引導自然回填，修復淘刷邊坡或沖蝕溝。",
		steps: [
			Step(title: "固定竹樁", detail: "中間與兩側各內縮約 20cm，引孔後打入；中間樁略向上坡退縮，入土≥1/2 樁長。"),
			Step(title: "橫向嵌入竹柵", detail: "長度約等於兩側溝壁距；左右樁在下方，中間樁在上方，自下而上逐層。"),
			Step(title: "逐層施作與回填", detail: "連續設置並同步以土石回填逐層穩固。"),
			Step(title: "各層間投置塊石", detail: "各層間投 10–15cm 塊石作排水與防護層。")
		],
		materials: ["竹柵：Ø8–20cm（2–3年生）","竹樁：Ø≈3cm、長40–50cm（每組≥3支）","塊石：Ø10–15cm"]
	),
	Method(
		name: "砌石護坡",
		summary: "利用在地塊石改善邊坡坍塌，可作上邊坡擋土或下邊坡鞏固路基。",
		steps: [
			Step(title: "整理護坡基床", detail: "清整並視需要拉水平線；平行步道開挖且面向內傾。"),
			Step(title: "埋放底層塊石", detail: "高>30cm 平面作頂/立面，每顆埋入≥1/3 並緊咬對齊。"),
			Step(title: "背填土石", detail: "背面小塊石/碎石/岩屑/土方回填。"),
			Step(title: "接續往上疊砌", detail: "自下而上交丁錯縫、逐層內退至預定高度。"),
			Step(title: "放置壓頂石", detail: "頂層用體積大自重足的平整石頭增穩。"),
			Step(title: "回填夯實", detail: "踏面回填夯實並形成外傾。")
		],
		materials: ["塊石：厚>20cm","小塊石：Ø5–15cm","回填土石：2–3cm","碎石混土"]
	),
	Method(
		name: "卵石護坡",
		summary: "以卵石砌築，與環境融合（周邊可取得卵石時）。",
		steps: [
			Step(title: "整理護坡基床", detail: "平行步道開挖，面向內傾使頂面微抬。"),
			Step(title: "放樣", detail: "牆面基準 1:0.3，H 100cm 退縮 30cm。"),
			Step(title: "埋放底層卵石", detail: "每顆至少埋入 1/3，高度穩固；鄰石緊咬、破裂面不外露，創造上層嵌入凹槽。"),
			Step(title: "背填土石", detail: "背面小石/碎石/岩屑/土方回填。"),
			Step(title: "接續往上疊砌", detail: "錯縫（六圍砌）逐層內退，牆高不超過長徑 5 倍；續高需內退後再砌。"),
			Step(title: "回填夯實", detail: "踏面回填夯實並外傾。")
		],
		materials: ["卵石：Ø20–40cm","小塊石：Ø5–15cm","回填土石：2–3cm","碎石混土"]
	)
]

let methodsStair: [Method] = [
	Method(
		name: "土木階梯",
		summary: "以橫木為階緣、木樁固定、側邊封邊；填碎石土方夯實成穩定踏面（需可得倒木與回填材料）。",
		steps: [
			Step(title: "放置橫木", detail: "垂直行進方向放置並左右水平貼地。"),
			Step(title: "固定木樁", detail: "下坡側兩端內縮 10–15cm 引孔後打樁，入土≥1/2。"),
			Step(title: "二側封邊", detail: "側埋塊石或橫木＋木樁，頂與橫木同高避免流失。"),
			Step(title: "踏面回填", detail: "先填塊石再碎石/土方夯實，面略高於橫木。")
		],
		materials: ["橫木：Ø15–20cm","木樁：Ø5–8cm、長40–50cm（每橫木2支）","封邊石/橫木：Ø15–20cm","回填：2–3cm 碎石混土"]
	),
	Method(
		name: "砌石階梯",
		summary: "以重量足、至少兩面平整的踏面石為主體，靠重力與回填夯實形成穩固階梯（可經母岩段且獲許可時得打鑿配合）。",
		steps: [
			Step(title: "埋設踏面石", detail: "高 15–20cm，至少埋入 1/3；基床向上坡內傾。"),
			Step(title: "埋放相鄰踏面塊石", detail: "同階鄰石緊咬切齊；下邊坡踏面石需較重以防位移。"),
			Step(title: "回填土石", detail: "內側夾縫先小石再碎石/土方夯實。"),
			Step(title: "依序往上施作", detail: "由下而上、踏面石大者可壓上階；上下層接縫交丁錯開。")
		],
		materials: ["踏面石：>25kg 且≥兩面平整","小塊石：Ø5–15cm","回填：2–3cm 碎石混土"]
	),
	Method(
		name: "卵石階梯",
		summary: "取用重量足、邊緣弧度小且有平整面的卵石為踏面，搭配護石緊靠咬合成穩固階梯。",
		steps: [
			Step(title: "埋設踏面石", detail: "高 15–20cm、長邊>60cm，埋至穩固並使踏面略向上抬。"),
			Step(title: "埋設護石", detail: "踏面兩側埋較小卵石，彼此緊靠咬合。"),
			Step(title: "依序往上施作", detail: "由下而上持續配置重量足之卵石。")
		],
		materials: ["踏面石：長邊>60cm、厚度足且不過圓","護石：較小卵石作側護"]
	)
]

let methodsBridge: [Method] = [
	Method(
		name: "橫木半邊橋",
		summary: "崩坍地難施作護坡時，以多根橫木平行路線架設半邊橋爭取路幅（兩端各外伸≥30cm）。",
		steps: [
			Step(title: "架設橫木", detail: "坍陷兩端與內側開挖座位，完成後略低於路面，自下坡向上坡平行排放。"),
			Step(title: "固定木樁", detail: "最外側橫木下坡兩端內縮 10–15cm 引孔後打樁，入土≥1/2。"),
			Step(title: "填塞塊石（排水層）", detail: "橫木間與路面間填 5–10cm 塊石作排水層。"),
			Step(title: "回填夯實與整坡", detail: "踏面回填夯實成外傾，完成面略高於橫木頂端。")
		],
		materials: ["橋體橫木：Ø15–20cm（長度依跨距）","木樁：Ø5–8cm、長40–50cm（兩端各≥1支）","塊石：Ø5–10cm","回填：2–3cm 碎石混土"]
	)
]

// MARK: - 工法分類
let categories: [MethodCategory] = [
	MethodCategory(name: "鋪面工法", methods: methodsPaving),
	MethodCategory(name: "路基工法", methods: methodsSubgrade),
	MethodCategory(name: "集排水工法", methods: methodsDrainage),
	MethodCategory(name: "護坡工法", methods: methodsSlope),
	MethodCategory(name: "階梯工法", methods: methodsStair),
	MethodCategory(name: "跨橋工法", methods: methodsBridge)
]

// MARK: - 案例
let caseStudies: [CaseStudy] = [
	CaseStudy(
		name: "小粗坑古道",
		location: "桃園市龍潭區",
		usedMethods: [methodsSlope[3]],
		notes: "使用在地塊石砌築護坡，穩定步道路基並與自然環境融合。",
		imageName: "小粗坑"
	),
	CaseStudy(
		name: "米棧古道",
		location: "花蓮縣壽豐鄉",
		usedMethods: [methodsDrainage[0]],
		notes: "利用橫木改善路面排水，減少逕流沖刷。",
		imageName: "米棧"
	),
	CaseStudy(
		name: "文山森林公園步道",
		location: "臺北市文山區",
		usedMethods: [methodsDrainage[3]],
		notes: "利用橫木改善路面排水，減少逕流沖刷。",
		imageName: "文山"
	),
	CaseStudy(
		name: "東吉嶼環島步道",
		location: "澎湖縣望安鄉",
		usedMethods: [methodsPaving[0]],
		notes: "利用橫木改善路面排水，減少逕流沖刷。",
		imageName: "東吉"
	),
	CaseStudy(
		name: "梅峰農場步道",
		location: "南投縣信義鄉",
		usedMethods: [methodsStair[0]],
		notes: "以橫木階梯穩固陡坡步道並提升行走舒適度。",
		imageName: "梅峰"
	),
	CaseStudy(
		name: "石角嶺古道",
		location: "臺北市士林區",
		usedMethods: [methodsStair[1]],
		notes: "以砌石階梯穩固陡坡步道並提升行走舒適度。",
		imageName: "士林"
	),
	CaseStudy(
		name: "外挖子山步道",
		location: "新北市中和區",
		usedMethods: [methodsSlope[0]],
		notes: "以橫木護坡穩定陡峭邊坡並鞏固路基。",
		imageName: "中和"
	),
	CaseStudy(
		name: "嘉明湖國家步道",
		location: "臺東縣海端鄉",
		usedMethods: [methodsSlope[3]],
		notes: "以橫木護坡穩定陡峭邊坡並鞏固路基。",
		imageName: "台東"
	)
]
let featuredCaseNames = ["嘉明湖", "東吉", "梅峰", "米棧"]
var featuredCases: [CaseStudy] {
	caseStudies.filter { cs in featuredCaseNames.contains(where: { cs.name.contains($0) }) }
}

// MARK: - 首頁章節與重點
let chapters: [Chapter] = [
	Chapter(
		title: "手作步道介紹與常見問答",
		highlights: [
			Highlight(title: "什麼是手作步道？", subtitle: "微介入・在地材料・順勢導水", imageName: "01", link: .intro(intros[0])),
			Highlight(title: "手作 vs. 水泥", subtitle: "腳感彈性・透水透氣・低擾動", imageName: "comparison", link: .intro(intros[1])),
			Highlight(title: "常見問答", subtitle: "工法類型・材料取得・生態避讓", imageName: "02", link: .intro(intros[2]))
		]
	),
	Chapter(
		title: "精選案例",
		highlights: featuredCases.map { cs in
			Highlight(title: cs.name, subtitle: cs.location, imageName: cs.imageName, link: .caseStudy(cs))
		}
	),
	Chapter(
		title: "如何參與",
		highlights: [
			Highlight(title: "千里步道協會", subtitle: "手作步道與國家綠道倡議 NGO", imageName: "04", link: .participate),
			Highlight(title: "臺大山徑行動社", subtitle: "全臺唯一手作步道大學社團", imageName: "03", link: .participate)
		]
	)
]
