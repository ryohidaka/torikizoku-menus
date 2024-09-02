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
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('categories',100);
COMMIT;
