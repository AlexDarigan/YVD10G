extends Control

# Called when the node enters the scene tree for the first time.
@onready var DeckEditor: Control = $DeckEditor
@onready var Connect: Control = $Connect
@onready var Game: Control = $Game 
@onready var Settings: Control = $Settings
@onready var current_screen: Control = $DeckEditor

func _ready():
	$MainMenu.screen_selected.connect(_on_screen_selected)

func _on_screen_selected(screen: int):
	var next_screen: Control = current_screen
	match screen:
		Screens.DATABASE:
			next_screen = $Database
		Screens.DECK_EDITOR:
			next_screen = $DeckEditor
		Screens.SETTINGS:
			next_screen = $Settings
		Screens.CONNECT:
			next_screen = $Connect
		Screens.GAME:
			next_screen = $Game
		_:
			next_screen = current_screen
	current_screen.hide()
	current_screen = next_screen
	next_screen.show()
