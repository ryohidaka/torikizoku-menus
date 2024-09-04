package internal

type Menu struct {
	ID        int     `json:"id" csv:"id" md:"id"`
	Name      string  `json:"name" csv:"name" md:"name"`
	Category  string  `json:"category" csv:"category" md:"category"`
	ImagePath string  `json:"image_url" csv:"image_url" md:"image"`
	Calories  int     `json:"calories" csv:"calories" md:"calories"`
	Salt      float64 `json:"salt" csv:"salt" md:"salt"`
}
