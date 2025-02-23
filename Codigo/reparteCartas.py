import random

def repartir_cartas(total_cartas, num_jugadores, cartas_por_jugador):
    # Comprobamos que haya suficientes cartas para repartir
    if num_jugadores * cartas_por_jugador > total_cartas:
        raise ValueError("No hay suficientes cartas para repartir.")
    
    # Creamos una lista de cartas numeradas del 1 al total_cartas
    baraja = list(range(1, total_cartas + 1))
    # Mezclamos la baraja para obtener un orden aleatorio
    random.shuffle(baraja)
    
    manos = []
    # Repartimos las cartas a cada jugador
    for i in range(num_jugadores):
        # Extraemos el subconjunto correspondiente a cada jugador
        mano = baraja[i*cartas_por_jugador:(i+1)*cartas_por_jugador]
        manos.append(tuple(mano))
    
    return manos

# Ejemplo de uso:
resultado = repartir_cartas(40, 5, 6)
for mano in resultado:
    print(mano)
