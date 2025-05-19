import random
import os
import subprocess


def repartir_cartas(total_cartas, num_jugadores, cartas_por_jugador, semilla):
    # Comprobamos que haya suficientes cartas para repartir
    random.seed(semilla)
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

def obtener_primeros_n(n):
    # Directorio del script reparteCartas.py
    base_dir = os.path.dirname(os.path.abspath(__file__))
    # Construir la ruta completa del ejecutable
    ejecutable = os.path.join(base_dir, "albatross-master", "albatross-master", "CyclicGroup", "albatross")
    
    # Comando a ejecutar
    cmd = [ejecutable, "-f128"]
    
    # Ejecutar el comando y capturar la salida
    result = subprocess.run(cmd, capture_output=True, text=True)
    output = result.stdout.strip()
    
    # Eliminar corchetes y espacios para obtener una secuencia continua de dígitos
    salida_continua = output.strip("[]").replace(" ", "")
    
    # Retornar los primeros n dígitos
    return salida_continua[:n]

def main():
    seed = obtener_primeros_n(10)
    print("Semilla obtenida:", seed)
    random.seed(seed)  # Establecer la semilla para la aleatoriedad
    num_jugadores = 4
    cartas_por_jugador = 5
    total_cartas = 52
    manos = repartir_cartas(total_cartas, num_jugadores, cartas_por_jugador)
    print("Manos repartidas:", manos)

#main()
