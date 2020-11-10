extends CanvasLayer

func _ready():
	pass # Replace with function body.

func _on_CalculateButton_pressed():
	var sensor_width = float($SensorWidthInput.text)
	var pixel_width = float($PixelWidthInput.text)
	var fstop = float($FStopInput.text)
	var focal_length = float($FocalLengthInput.text)
	var pixel_pitch = ((sensor_width / pixel_width) * 1_000)
	var exposure_time = (((35 * fstop) + (30 * pixel_pitch)) / focal_length)
	$ResultMessage.text = "Exposure time is aprox. " + str(exposure_time) + "\""
