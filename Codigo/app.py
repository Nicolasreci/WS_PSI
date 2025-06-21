import os
from flask import Flask, render_template, request, url_for
from reparteCartas import repartir_cartas, obtener_primeros_n

app = Flask(__name__)

# Nombres de carpetas dentro de static/Cartas/
DECK_NAMES = ['Spanish', 'English', 'German']

# Calculamos cuántas imágenes .png hay en cada carpeta
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DECK_SIZES = {}
for name in DECK_NAMES:
    folder = os.path.join(BASE_DIR, 'static', 'Cartas', name)
    try:
        files = [f for f in os.listdir(folder) if f.lower().endswith('.png')]
        DECK_SIZES[name] = len(files)
    except FileNotFoundError:
        DECK_SIZES[name] = 0

@app.route('/', methods=['GET', 'POST'])
def index():
    # Valores por defecto = 4 jugadores y 5 cartas/paciente
    selected_deck      = request.form.get('deck', DECK_NAMES[0])
    num_players        = int(request.form.get('players',   '4'))
    cards_per_player   = int(request.form.get('cards_per', '5'))

    hands = None
    error_message = None

    if request.method == 'POST':
        total_cartas = DECK_SIZES[selected_deck]
        seed = obtener_primeros_n(10)
        try:
            hands = repartir_cartas(
                total_cartas,
                num_players,
                cards_per_player,
                seed
            )
        except ValueError as e:
            error_message = str(e)
            hands = None

    return render_template(
        'index.html',
        decks=DECK_SIZES,
        selected_deck=selected_deck,
        num_players=num_players,
        cards_per_player=cards_per_player,
        hands=hands,
        error_message=error_message
    )

if __name__ == '__main__':
    app.run(debug=True)
