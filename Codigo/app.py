from flask import Flask, render_template, request
from reparteCartas import repartir_cartas, obtener_primeros_n

app = Flask(__name__)

# Available deck types and their total number of cards
# Changed French to German with a 32-card deck
DECKS = {
    'Spanish': 40,
    'English': 52,
    'German': 32
}

@app.route('/', methods=['GET', 'POST'])
def index():
    # Default form values
    selected_deck = request.form.get('deck', 'Spanish')
    num_players = int(request.form.get('num_players', 4))
    cards_per_player = int(request.form.get('cards_per_player', 5))
    total_cards = DECKS[selected_deck]
    hands = []
    error = None

    if request.method == 'POST':
        try:
            seed = obtener_primeros_n(10)
            hands = repartir_cartas(total_cards, num_players, cards_per_player, seed)
        except ValueError as e:
            error = str(e)

    return render_template(
        'index.html',
        decks=DECKS.keys(),
        selected_deck=selected_deck,
        num_players=num_players,
        cards_per_player=cards_per_player,
        total_cards=total_cards,
        hands=hands  # list of lists
    )

if __name__ == '__main__':
    app.run(debug=True)
