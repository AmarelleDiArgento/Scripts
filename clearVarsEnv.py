from getpass import getuser

USER=getuser()
PATH= f'/home/{USER}/.'


def leer(consola):
    path = f'{PATH}{consola}rc'
    nuevoArchivo = []
    original = True    
    guia = 'PERSONALIZADAS'
    fila = 0

    with open(path, "r", encoding="utf-8") as archivo:
        for linea in archivo:

            if guia in linea:
                original = not original

            nuevoArchivo.append(
                {
                "fila": fila,
                "bloque": original, 
                "texto": linea
                })
            fila = fila + 1

    bloque = [linea["fila"] for linea in nuevoArchivo if linea["bloque"] == False]
    if bloque:
        nuevoArchivo[max(bloque)+1]["bloque"] = False

        with open(path, "w", encoding="utf-8") as archivo:
            for linea in nuevoArchivo:
                if linea["bloque"] == True:
                    archivo.write(linea["texto"])


def run():
    consolas = ["bash", "zsh"]
    for k in consolas:
        print(f'Editando archivo de configuracion de consola {k}')
        leer(k)
        print(f'{k} OK!')


if __name__ == "__main__":
    run()
