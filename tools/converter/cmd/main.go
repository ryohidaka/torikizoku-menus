package main

import (
	"converter/internal"
	"database/sql"
	"flag"
	"log"
)

// CSV、JSON、Markdownのいずれかの形式でデータをエクスポートする
func main() {
	csvFlag := flag.Bool("csv", false, "CSV形式でエクスポート")
	jsonFlag := flag.Bool("json", false, "JSON形式でエクスポート")
	mdFlag := flag.Bool("md", false, "Markdown形式でエクスポート")

	flag.Parse()

	if !(*csvFlag || *jsonFlag || *mdFlag) {
		log.Fatalf("使用方法: %s --csv --json --md のいずれかを指定してください", flag.CommandLine.Name())
	}

	// 各フラグに応じてエクスポート処理を実行
	if *csvFlag {
		exportData("csv", "../../dist/torikizoku.csv")
	}
	if *jsonFlag {
		exportData("json", "../../dist/torikizoku.json")
	}
	if *mdFlag {
		exportData("md", "../../dist/torikizoku.md")
	}
}

// exportData関数は、指定された形式（CSV、JSON、Markdown）でデータをエクスポートする
// formatには"csv", "json", "md"のいずれかを指定する
// outputPathはエクスポート先のファイルパス
func exportData(format string, outputPath string) {
	dbPath := "../../db/torikizoku.db"
	sqlFile := "./scripts/query.sql"

	rows, err := internal.ExecuteSQL(dbPath, sqlFile)
	if err != nil {
		log.Fatalf("SQLの実行に失敗しました: %v", err)
	}
	defer rows.Close()

	var menus []internal.Menu

	// データを読み込んで構造体に格納
	for rows.Next() {
		var menu internal.Menu
		var imagePath sql.NullString

		err := rows.Scan(
			&menu.ID, &menu.Name,
			&menu.Category, &imagePath, &menu.Calories,
		)
		if err != nil {
			log.Fatalf("データの読み取りに失敗しました: %v", err)
		}

		var baseImageURL = "https://torikizoku.co.jp/assets/uploads/"

		// NULL許容のフィールドを代入
		if imagePath.String != "" {
			menu.ImagePath = baseImageURL + imagePath.String
		}

		menus = append(menus, menu)
	}

	// 保存処理
	switch format {
	case "csv":
		err = internal.SaveAsCSV(menus, outputPath)
	case "json":
		err = internal.SaveAsJSON(menus, outputPath)
	case "md":
		err = internal.SaveAsMarkdown(menus, outputPath)
	}

	if err != nil {
		log.Fatalf("%sの保存に失敗しました: %v", format, err)
	}

	log.Printf("%s形式でのエクスポートが成功しました。\n", format)
}
