PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "categories" (
	"id"	INTEGER NOT NULL UNIQUE,
	"name"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO categories VALUES(1,'貴族焼');
INSERT INTO categories VALUES(2,'塩焼');
INSERT INTO categories VALUES(3,'たれ焼');
INSERT INTO categories VALUES(4,'串焼き');
INSERT INTO categories VALUES(5,'スピードメニュー');
INSERT INTO categories VALUES(6,'逸品料理');
INSERT INTO categories VALUES(7,'ご飯もの');
INSERT INTO categories VALUES(8,'デザート');
INSERT INTO categories VALUES(21,'ビール');
INSERT INTO categories VALUES(22,'メガ');
INSERT INTO categories VALUES(23,'チューハイ');
INSERT INTO categories VALUES(24,'レモンサワー');
INSERT INTO categories VALUES(25,'ウイスキー');
INSERT INTO categories VALUES(26,'ハイボール');
INSERT INTO categories VALUES(27,'お茶ハイ');
INSERT INTO categories VALUES(28,'国産ジン');
INSERT INTO categories VALUES(29,'カクテル');
INSERT INTO categories VALUES(30,'果実酒');
INSERT INTO categories VALUES(31,'ワイン');
INSERT INTO categories VALUES(32,'焼酎');
INSERT INTO categories VALUES(33,'日本酒');
INSERT INTO categories VALUES(34,'梅酒');
INSERT INTO categories VALUES(35,'ノンアルコール');
INSERT INTO categories VALUES(41,'ソフトドリンク');
INSERT INTO categories VALUES(42,'クラフトジュース');
INSERT INTO categories VALUES(43,'コーヒー');
INSERT INTO categories VALUES(99,'数量限定');
CREATE TABLE IF NOT EXISTS "menus" (
	"id"	INTEGER NOT NULL UNIQUE,
	"name"	TEXT NOT NULL UNIQUE,
	"category_id"	INTEGER NOT NULL,
	FOREIGN KEY(category_id) REFERENCES categories(id),
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO menus VALUES(101,'もも貴族焼(たれ)',1);
INSERT INTO menus VALUES(102,'もも貴族焼(塩)',1);
INSERT INTO menus VALUES(103,'もも貴族焼(スパイス)',1);
INSERT INTO menus VALUES(104,'むね貴族焼(たれ)',1);
INSERT INTO menus VALUES(105,'むね貴族焼(塩)',1);
INSERT INTO menus VALUES(106,'むね貴族焼(スパイス)',1);
INSERT INTO menus VALUES(201,'ちからこぶ塩',2);
INSERT INTO menus VALUES(202,'手羽先塩',2);
INSERT INTO menus VALUES(203,'三角（ぼんじり）',2);
INSERT INTO menus VALUES(204,'つくね塩',2);
INSERT INTO menus VALUES(205,'ささみ塩焼 -わさび粗おろし添え-',2);
INSERT INTO menus VALUES(206,'ハート（ハツ）塩',2);
INSERT INTO menus VALUES(207,'砂ずり（砂肝）',2);
INSERT INTO menus VALUES(208,'かわ塩',2);
INSERT INTO menus VALUES(209,'やげんなんこつ',2);
INSERT INTO menus VALUES(210,'ひざなんこつ',2);
INSERT INTO menus VALUES(211,'せせり',2);
INSERT INTO menus VALUES(301,'ちからこぶたれ',3);
INSERT INTO menus VALUES(302,'手羽先たれ',3);
INSERT INTO menus VALUES(303,'みたれ（もも肉）',3);
INSERT INTO menus VALUES(304,'きも（レバー）',3);
INSERT INTO menus VALUES(305,'つくねチーズ焼',3);
INSERT INTO menus VALUES(306,'つくねたれ',3);
INSERT INTO menus VALUES(307,'かわたれ',3);
INSERT INTO menus VALUES(308,'ハート（ハツ）たれ',3);
INSERT INTO menus VALUES(401,'きも焼 -塩ごま油添え-',4);
INSERT INTO menus VALUES(402,'ピーマン肉詰 -ポン酢味-',4);
INSERT INTO menus VALUES(403,'むね明太マヨ焼',4);
INSERT INTO menus VALUES(404,'もちもちチーズ焼',4);
INSERT INTO menus VALUES(405,'牛串焼 -果実とにんにくの旨味-',4);
INSERT INTO menus VALUES(406,'豚バラ串焼',4);
INSERT INTO menus VALUES(501,'トリキのチャンジャ',5);
INSERT INTO menus VALUES(502,'北海道産 蛸わさび',5);
INSERT INTO menus VALUES(503,'味付煮玉子',5);
INSERT INTO menus VALUES(504,'親鶏炙り焼マヨサラダ',5);
INSERT INTO menus VALUES(505,'超！白ねぎ塩こんぶ',5);
INSERT INTO menus VALUES(506,'ホルモンねぎ盛ポン酢',5);
INSERT INTO menus VALUES(507,'国産枝豆',5);
INSERT INTO menus VALUES(508,'キャベツ盛',5);
INSERT INTO menus VALUES(509,'塩だれキューリ',5);
INSERT INTO menus VALUES(510,'冷やしトマト',5);
INSERT INTO menus VALUES(601,'トリキの唐揚',6);
INSERT INTO menus VALUES(602,'ふんわり山芋の鉄板焼',6);
INSERT INTO menus VALUES(603,'和風とりポテトサラダ',6);
INSERT INTO menus VALUES(604,'北海道 海と大地のポテトサラダ',6);
INSERT INTO menus VALUES(605,'ポテトフライ',6);
INSERT INTO menus VALUES(606,'チキン南蛮',6);
INSERT INTO menus VALUES(607,'とり天 -梅肉ソース添え-',6);
INSERT INTO menus VALUES(608,'カマンベールコロッケ',6);
INSERT INTO menus VALUES(609,'ひざなんこつ唐揚',6);
INSERT INTO menus VALUES(610,'鶏皮チップ',6);
INSERT INTO menus VALUES(701,'とり釜飯',7);
INSERT INTO menus VALUES(702,'とり白湯めん',7);
INSERT INTO menus VALUES(703,'とり雑炊',7);
INSERT INTO menus VALUES(704,'鶏スパイス丼 -バター醤油風味-',7);
INSERT INTO menus VALUES(705,'ご飯セット -温玉添え-',7);
INSERT INTO menus VALUES(801,'鳥貴ドームアイス ～いちご～',8);
INSERT INTO menus VALUES(802,'鳥貴ドームアイス ～みたらし～',8);
INSERT INTO menus VALUES(803,'魅惑のチョコレートみるく',8);
INSERT INTO menus VALUES(804,'チョコパフェ -チュロ添え-',8);
INSERT INTO menus VALUES(805,'カタラーナアイス',8);
INSERT INTO menus VALUES(2101,'ザ・プレミアム・モルツ',21);
INSERT INTO menus VALUES(2201,'メガレモンサワー',22);
INSERT INTO menus VALUES(2202,'メガハイボール（ジムビーム）',22);
INSERT INTO menus VALUES(2203,'メガ金麦 ※ビール系飲料',22);
INSERT INTO menus VALUES(2301,'男梅サワー',23);
INSERT INTO menus VALUES(2302,'カルピスチューハイ',23);
INSERT INTO menus VALUES(2401,'優しいレモンサワー',24);
INSERT INTO menus VALUES(2402,'こだわり酒場のレモンサワー',24);
INSERT INTO menus VALUES(2601,'角ハイボール',26);
INSERT INTO menus VALUES(2602,'知多ハイボール',26);
INSERT INTO menus VALUES(2603,'コーラハイ',26);
INSERT INTO menus VALUES(2604,'ジンジャーハイ',26);
INSERT INTO menus VALUES(2701,'緑茶ハイ',27);
INSERT INTO menus VALUES(2702,'ウーロンハイ',27);
INSERT INTO menus VALUES(2801,'翠ジンソーダ',28);
INSERT INTO menus VALUES(2802,'翠ジントニック',28);
INSERT INTO menus VALUES(2803,'翠ジンオレンジ',28);
INSERT INTO menus VALUES(2804,'翠ジンジンジャーエール',28);
INSERT INTO menus VALUES(2805,'翠ジンコーラ',28);
INSERT INTO menus VALUES(2901,'優しいカシスミルク割',29);
INSERT INTO menus VALUES(2902,'優しいカシスオレンジ割',29);
INSERT INTO menus VALUES(2903,'優しいレモンとカシス',29);
INSERT INTO menus VALUES(3001,'優しいみかんのお酒オレンジ割',30);
INSERT INTO menus VALUES(3101,'トリキホワイト',31);
INSERT INTO menus VALUES(3102,'トリキレッド',31);
INSERT INTO menus VALUES(3201,'大隅焼酎ソーダ',32);
INSERT INTO menus VALUES(3202,'大隅（麦）',32);
INSERT INTO menus VALUES(3203,'黒霧島（芋）',32);
INSERT INTO menus VALUES(3301,'松竹梅 豪快 純米酒＜カップ酒＞',33);
INSERT INTO menus VALUES(3401,'紀州の南高梅酒',34);
INSERT INTO menus VALUES(3501,'オールフリー',35);
INSERT INTO menus VALUES(4101,'ウーロン茶',41);
INSERT INTO menus VALUES(4102,'オレンジジュース',41);
INSERT INTO menus VALUES(4103,'ジンジャーエール',41);
INSERT INTO menus VALUES(4104,'レモネード',41);
INSERT INTO menus VALUES(4105,'レモンスカッシュ',41);
INSERT INTO menus VALUES(4106,'コーラ',41);
INSERT INTO menus VALUES(4107,'カルピスウォーター',41);
INSERT INTO menus VALUES(4108,'ホットウーロン茶',41);
INSERT INTO menus VALUES(4201,'ミックスジュース',42);
INSERT INTO menus VALUES(4202,'大人のホットジンジャー',42);
INSERT INTO menus VALUES(4203,'大人のジンジャーソーダ',42);
INSERT INTO menus VALUES(4204,'やさしい苺とミルク',42);
INSERT INTO menus VALUES(4301,'アイスコーヒー',43);
INSERT INTO menus VALUES(4302,'ホットコーヒー',43);
INSERT INTO menus VALUES(9901,'抜刀唐揚 ～紅生姜編～',99);
INSERT INTO menus VALUES(9902,'ちからこぶの黒胡椒串焼',99);
INSERT INTO menus VALUES(9903,'デカい塩むすび ～鮭梅のせ～',99);
INSERT INTO menus VALUES(9904,'大隅和のチューハイ',99);
INSERT INTO menus VALUES(9905,'ザクロベリーソーダ',99);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('categories',100);
INSERT INTO sqlite_sequence VALUES('menus',9905);
COMMIT;
