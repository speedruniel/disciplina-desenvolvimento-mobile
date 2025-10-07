extends Control

# Referências aos nós
@onready var nome_input: LineEdit = $VBoxContainer/HBoxContainer/LineEdit
@onready var idade_input: LineEdit = $VBoxContainer/HBoxContainer2/LineEdit
@onready var resultado_label: Label = $VBoxContainer/ResultadoLabel
@onready var botao: Button = $VBoxContainer/BtnMostrar

func _ready():
	# Conecta o clique do botão à função
	botao.pressed.connect(_on_botao_pressed)

func _on_botao_pressed():
	var nome = nome_input.text
	var idade = idade_input.text

	if nome == "" or idade == "":
		resultado_label.text = "Por favor, preencha todos os campos."
	else:
		resultado_label.text = "Nome: %s | Idade: %s anos" % [nome, idade]
