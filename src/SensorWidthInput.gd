extends LineEdit

var my_style = StyleBoxFlat.new()

func _ready():
	my_style.set_bg_color(Color("#f7f7f7"))
	my_style.set_border_color(Color("#f7f7f7"))
	set("custom_styles/normal", my_style)
