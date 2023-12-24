extends VBoxContainer

@onready var screens: Screens = $Screens
@onready var current_screen: Control = screens.DeckEditor

func _ready():
	$MainMenu.screen_selected.connect(_on_screen_selected)

func _on_screen_selected(screen: int):
	var next_screen: Control = screens.current_screen
	match screen:
		Screens.DATABASE:
			next_screen = screens.Database
		Screens.DECK_EDITOR:
			next_screen = screens.DeckEditor
		Screens.SETTINGS:
			next_screen = screens.Settings
		Screens.CONNECT:
			next_screen = screens.Connect
		Screens.GAME:
			next_screen = screens.Game
		_:
			next_screen = current_screen
	current_screen.hide()
	current_screen = next_screen
	next_screen.show()
