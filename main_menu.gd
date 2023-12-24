extends HBoxContainer

signal screen_selected(screen: int)

func _ready():
	$DeckEditor.pressed.connect(_on_button_pressed.bind(Screens.DECK_EDITOR))
	$Database.pressed.connect(_on_button_pressed.bind(Screens.DATABASE))
	$Game.pressed.connect(_on_button_pressed.bind(Screens.GAME))
	$Connect.pressed.connect(_on_button_pressed.bind(Screens.CONNECT))
	$Settings.pressed.connect(_on_button_pressed.bind(Screens.SETTINGS))
	
func _on_button_pressed(pressed: int):
	screen_selected.emit(pressed)
