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
	"image_path"	TEXT, calories INTEGER NOT NULL DEFAULT 0, salt REAL, is_drink INTEGER DEFAULT 0, is_alcohol INTEGER DEFAULT 0,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("category_id") REFERENCES "categories"("id")
);
INSERT INTO menus VALUES(101,'もも貴族焼(たれ)',1,'2024/03/momo_kizokuyaki_tare.jpg',231,1.8999999999999999111,0,0);
INSERT INTO menus VALUES(102,'もも貴族焼(塩)',1,'2024/03/momo_kizokuyaki_shio.jpg',208,1.8000000000000000444,0,0);
INSERT INTO menus VALUES(103,'もも貴族焼(スパイス)',1,'2024/03/momo_kizokuyaki_spice.jpg',215,4.5,0,0);
INSERT INTO menus VALUES(104,'むね貴族焼(たれ)',1,'2024/03/mune_kizokuyaki_tare.jpg',165,1.5,0,0);
INSERT INTO menus VALUES(105,'むね貴族焼(塩)',1,'2024/03/mune_kizokuyaki_shio.jpg',146,1.6999999999999999555,0,0);
INSERT INTO menus VALUES(106,'むね貴族焼(スパイス)',1,'2024/03/mune_kizokuyaki_spice.jpg',152,4.2999999999999998223,0,0);
INSERT INTO menus VALUES(201,'ちからこぶ塩',2,'2023/05/shio_chikarakobu.jpg',125,0.9000000000000000222,0,0);
INSERT INTO menus VALUES(202,'手羽先塩',2,'2023/05/shio_tebasaki.jpg',253,0.9000000000000000222,0,0);
INSERT INTO menus VALUES(203,'三角（ぼんじり）',2,'2023/05/shio_sankaku.jpg',219,1.1000000000000000888,0,0);
INSERT INTO menus VALUES(204,'つくね塩',2,'2023/05/shio_tsukune.jpg',152,1.1000000000000000888,0,0);
INSERT INTO menus VALUES(205,'ささみ塩焼 -わさび粗おろし添え-',2,'2023/05/shio_sasami.jpg',75,0.69999999999999995559,0,0);
INSERT INTO menus VALUES(206,'ハート（ハツ）塩',2,'2023/05/shio_heart.jpg',105,0.5,0,0);
INSERT INTO menus VALUES(207,'砂ずり（砂肝）',2,'2023/05/shio_sunazuri.jpg',49,0.59999999999999997779,0,0);
INSERT INTO menus VALUES(208,'かわ塩',2,'2023/05/shio_kawa.jpg',356,2.1000000000000000888,0,0);
INSERT INTO menus VALUES(209,'やげんなんこつ',2,'2023/05/shio_yagen.jpg',95,1.1999999999999999555,0,0);
INSERT INTO menus VALUES(210,'ひざなんこつ',2,'2023/05/shio_nankotsu.jpg',27,1.1999999999999999555,0,0);
INSERT INTO menus VALUES(211,'せせり',2,'2023/05/shio_seseri.jpg',170,0.59999999999999997779,0,0);
INSERT INTO menus VALUES(301,'ちからこぶたれ',3,'2023/05/tare_chikarakobu.jpg',141,0.9000000000000000222,0,0);
INSERT INTO menus VALUES(302,'手羽先たれ',3,'2023/05/tare_tebasaki.jpg',270,1.6000000000000000888,0,0);
INSERT INTO menus VALUES(303,'みたれ（もも肉）',3,'2023/05/tare_mi.jpg',146,1.1000000000000000888,0,0);
INSERT INTO menus VALUES(304,'きも（レバー）',3,'2023/05/tare_kimo.jpg',77,1.1999999999999999555,0,0);
INSERT INTO menus VALUES(305,'つくねチーズ焼',3,'2023/05/tare_tsukunecheese.jpg',212,1.8000000000000000444,0,0);
INSERT INTO menus VALUES(306,'つくねたれ',3,'2023/05/tare_tsukune.jpg',171,2.0,0,0);
INSERT INTO menus VALUES(307,'かわたれ',3,'2023/05/tare_kawa.jpg',390,2.3999999999999999111,0,0);
INSERT INTO menus VALUES(308,'ハート（ハツ）たれ',3,'2023/05/tare_heart.jpg',111,0.59999999999999997779,0,0);
INSERT INTO menus VALUES(401,'きも焼 -塩ごま油添え-',4,'2023/05/kushi_kimo_shiogomaabura.jpg',208,5.5999999999999996447,0,0);
INSERT INTO menus VALUES(402,'ピーマン肉詰 -ポン酢味-',4,'2023/05/kushi_piman.jpg',76,1.3000000000000000444,0,0);
INSERT INTO menus VALUES(403,'むね明太マヨ焼',4,'2023/05/kushi_munementai.jpg',131,0.9000000000000000222,0,0);
INSERT INTO menus VALUES(404,'もちもちチーズ焼',4,'2023/05/kushi_mochicheese.jpg',119,0.5,0,0);
INSERT INTO menus VALUES(405,'牛串焼 -果実とにんにくの旨味-',4,'2023/05/kushi_gyu.jpg',127,0.8000000000000000444,0,0);
INSERT INTO menus VALUES(406,'豚バラ串焼',4,'2023/05/kushi_butabara.jpg',166,0.4000000000000000222,0,0);
INSERT INTO menus VALUES(501,'トリキのチャンジャ',5,'2023/08/chanja.jpg',27,1.3000000000000000444,0,0);
INSERT INTO menus VALUES(502,'北海道産 蛸わさび',5,'2023/08/takowasa.jpg',50,1.5,0,0);
INSERT INTO menus VALUES(503,'味付煮玉子',5,'2023/08/nitamago.jpg',157,2.2000000000000001776,0,0);
INSERT INTO menus VALUES(504,'親鶏炙り焼マヨサラダ',5,'2023/05/oyadori_aburimayo.jpg',182,1.1000000000000000888,0,0);
INSERT INTO menus VALUES(505,'超！白ねぎ塩こんぶ',5,'2023/05/shironegi_shiokonbu.jpg',90,1.5,0,0);
INSERT INTO menus VALUES(506,'ホルモンねぎ盛ポン酢',5,'2023/05/hormone.jpg',98,1.1000000000000000888,0,0);
INSERT INTO menus VALUES(507,'国産枝豆',5,'2023/05/edamame.jpg',125,0.59999999999999997779,0,0);
INSERT INTO menus VALUES(508,'キャベツ盛',5,'2023/05/cabbagemori.jpg',36,3.0,0,0);
INSERT INTO menus VALUES(509,'塩だれキューリ',5,'2023/05/shiodare_kyuri.jpg',52,2.3999999999999999111,0,0);
INSERT INTO menus VALUES(510,'冷やしトマト',5,'2024/02/hiyashi_tomato.jpg',66,0.10000000000000000555,0,0);
INSERT INTO menus VALUES(601,'トリキの唐揚',6,'2023/05/karaage.jpg',322,3.3999999999999999111,0,0);
INSERT INTO menus VALUES(602,'ふんわり山芋の鉄板焼',6,'2023/05/yamaimo_teppan.jpg',128,1.8000000000000000444,0,0);
INSERT INTO menus VALUES(603,'和風とりポテトサラダ',6,'2024/02/wafu_toripotato_sarada.jpg',335,2.2999999999999998223,0,0);
INSERT INTO menus VALUES(604,'北海道 海と大地のポテトサラダ',6,'2023/05/potato_sarada.jpg',378,2.6000000000000000888,0,0);
INSERT INTO menus VALUES(605,'ポテトフライ',6,'2023/08/french-fries.jpg',359,0.69999999999999995559,0,0);
INSERT INTO menus VALUES(606,'チキン南蛮',6,'2023/05/chicken_namban.jpg',490,2.2000000000000001776,0,0);
INSERT INTO menus VALUES(607,'とり天 -梅肉ソース添え-',6,'2023/05/toriten.jpg',306,2.0,0,0);
INSERT INTO menus VALUES(608,'カマンベールコロッケ',6,'2023/05/camembert_croquette.jpg',257,1.8999999999999999111,0,0);
INSERT INTO menus VALUES(609,'ひざなんこつ唐揚',6,'2023/05/nankotsu_karaage.jpg',168,1.8999999999999999111,0,0);
INSERT INTO menus VALUES(610,'鶏皮チップ',6,'2023/05/torikawa.jpg',380,1.1999999999999999555,0,0);
INSERT INTO menus VALUES(701,'とり釜飯',7,'2023/05/torikamameshi.jpg',416,3.6000000000000000888,0,0);
INSERT INTO menus VALUES(702,'とり白湯めん',7,'2023/08/toripaitan.jpg',251,7.2999999999999998223,0,0);
INSERT INTO menus VALUES(703,'とり雑炊',7,'2023/05/torizousui.jpg',239,5.4000000000000003552,0,0);
INSERT INTO menus VALUES(704,'鶏スパイス丼 -バター醤油風味-',7,'2023/05/tori_spice_don.jpg',383,3.5,0,0);
INSERT INTO menus VALUES(705,'ご飯セット -温玉添え-',7,'2023/05/rice_set.jpg',526,3.1000000000000000888,0,0);
INSERT INTO menus VALUES(801,'鳥貴ドームアイス ～いちご～',8,'2024/02/toriki_domu_ice_ichigo.jpg',224,0.10000000000000000555,0,0);
INSERT INTO menus VALUES(802,'鳥貴ドームアイス ～みたらし～',8,'2024/02/toriki_domu_ice_mitarashi.jpg',218,0.29999999999999998889,0,0);
INSERT INTO menus VALUES(803,'魅惑のチョコレートみるく',8,'2023/08/chocolate-milk.jpg',326,0.4000000000000000222,0,0);
INSERT INTO menus VALUES(804,'チョコパフェ -チュロ添え-',8,'2023/05/choco_parfait.jpg',287,0.29999999999999998889,0,0);
INSERT INTO menus VALUES(805,'カタラーナアイス',8,'2023/05/catalana_ice_cream.jpg',238,0.10000000000000000555,0,0);
INSERT INTO menus VALUES(2101,'ザ・プレミアム・モルツ',21,NULL,120,NULL,1,1);
INSERT INTO menus VALUES(2201,'メガレモンサワー',22,NULL,116,NULL,1,1);
INSERT INTO menus VALUES(2202,'メガハイボール（ジムビーム）',22,NULL,135,NULL,1,1);
INSERT INTO menus VALUES(2203,'メガ金麦 ※ビール系飲料',22,NULL,249,NULL,1,1);
INSERT INTO menus VALUES(2301,'男梅サワー',23,NULL,94,NULL,1,1);
INSERT INTO menus VALUES(2302,'カルピスチューハイ',23,NULL,205,NULL,1,1);
INSERT INTO menus VALUES(2401,'優しいレモンサワー',24,NULL,85,NULL,1,1);
INSERT INTO menus VALUES(2402,'こだわり酒場のレモンサワー',24,NULL,72,NULL,1,1);
INSERT INTO menus VALUES(2601,'角ハイボール',26,NULL,70,NULL,1,1);
INSERT INTO menus VALUES(2602,'知多ハイボール',26,NULL,68,NULL,1,1);
INSERT INTO menus VALUES(2603,'コーラハイ',26,NULL,129,NULL,1,1);
INSERT INTO menus VALUES(2604,'ジンジャーハイ',26,NULL,119,NULL,1,1);
INSERT INTO menus VALUES(2701,'緑茶ハイ',27,NULL,67,NULL,1,1);
INSERT INTO menus VALUES(2702,'ウーロンハイ',27,NULL,65,NULL,1,1);
INSERT INTO menus VALUES(2801,'翠ジンソーダ',28,NULL,68,NULL,1,1);
INSERT INTO menus VALUES(2802,'翠ジントニック',28,NULL,113,NULL,1,1);
INSERT INTO menus VALUES(2803,'翠ジンオレンジ',28,NULL,127,NULL,1,1);
INSERT INTO menus VALUES(2804,'翠ジンジンジャーエール',28,NULL,120,NULL,1,1);
INSERT INTO menus VALUES(2805,'翠ジンコーラ',28,NULL,130,NULL,1,1);
INSERT INTO menus VALUES(2901,'優しいカシスミルク割',29,NULL,150,NULL,1,1);
INSERT INTO menus VALUES(2902,'優しいカシスオレンジ割',29,NULL,132,NULL,1,1);
INSERT INTO menus VALUES(2903,'優しいレモンとカシス',29,NULL,140,NULL,1,1);
INSERT INTO menus VALUES(3001,'優しいみかんのお酒オレンジ割',30,NULL,117,NULL,1,1);
INSERT INTO menus VALUES(3101,'トリキホワイト',31,NULL,131,NULL,1,1);
INSERT INTO menus VALUES(3102,'トリキレッド',31,NULL,122,NULL,1,1);
INSERT INTO menus VALUES(3201,'大隅焼酎ソーダ',32,NULL,129,NULL,1,1);
INSERT INTO menus VALUES(3202,'大隅（麦）',32,NULL,129,NULL,1,1);
INSERT INTO menus VALUES(3203,'黒霧島（芋）',32,NULL,128,NULL,1,1);
INSERT INTO menus VALUES(3301,'松竹梅 豪快 純米酒＜カップ酒＞',33,NULL,181,NULL,1,1);
INSERT INTO menus VALUES(3401,'紀州の南高梅酒',34,NULL,157,NULL,1,1);
INSERT INTO menus VALUES(3501,'オールフリー',35,NULL,0,NULL,1,0);
INSERT INTO menus VALUES(4101,'ウーロン茶',41,NULL,2,NULL,1,0);
INSERT INTO menus VALUES(4102,'オレンジジュース',41,NULL,107,NULL,1,0);
INSERT INTO menus VALUES(4103,'ジンジャーエール',41,NULL,94,NULL,1,0);
INSERT INTO menus VALUES(4104,'レモネード',41,NULL,121,NULL,1,0);
INSERT INTO menus VALUES(4105,'レモンスカッシュ',41,NULL,121,NULL,1,0);
INSERT INTO menus VALUES(4106,'コーラ',41,NULL,113,NULL,1,0);
INSERT INTO menus VALUES(4107,'カルピスウォーター',41,NULL,211,NULL,1,0);
INSERT INTO menus VALUES(4108,'ホットウーロン茶',41,NULL,2,NULL,1,0);
INSERT INTO menus VALUES(4201,'ミックスジュース',42,NULL,219,NULL,1,0);
INSERT INTO menus VALUES(4202,'大人のホットジンジャー',42,NULL,141,NULL,1,0);
INSERT INTO menus VALUES(4203,'大人のジンジャーソーダ',42,NULL,141,NULL,1,0);
INSERT INTO menus VALUES(4204,'やさしい苺とミルク',42,NULL,164,NULL,1,0);
INSERT INTO menus VALUES(4301,'アイスコーヒー',43,NULL,47,NULL,1,0);
INSERT INTO menus VALUES(4302,'ホットコーヒー',43,NULL,39,NULL,1,0);
INSERT INTO menus VALUES(9901,'抜刀唐揚 ～紅生姜編～',99,'2024/07/karaagre_benishouga.jpg',362,2.2000000000000001776,0,0);
INSERT INTO menus VALUES(9902,'ちからこぶの黒胡椒串焼',99,'2024/07/tikarakobu_kurokoshou.jpg',211,2.2999999999999998223,0,0);
INSERT INTO menus VALUES(9903,'デカい塩むすび ～鮭梅のせ～',99,'2024/07/dekaisiomusubi.jpg',534,4.0999999999999996447,0,0);
INSERT INTO menus VALUES(9904,'大隅和のチューハイ',99,'2024/07/osumiwanochuhai.jpg',73,NULL,1,1);
INSERT INTO menus VALUES(9905,'ザクロベリーソーダ',99,'2024/07/zakuroberrysoda.jpg',156,NULL,1,0);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('categories',100);
INSERT INTO sqlite_sequence VALUES('menus',9905);
COMMIT;
