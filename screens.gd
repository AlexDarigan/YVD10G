extends Node
class_name Screens

enum {
	NONE,
	DECK_EDITOR,
	CONNECT,
	DATABASE,
	GAME,
	SETTINGS,
	MAX
}

@onready var DeckEditor: Control = $DeckEditor
@onready var Database: Control = $Database
@onready var Connect: Control = $Connect
@onready var Game: Control = $Game 
@onready var Settings: Control = $Settings
var current_screen: Control
