import time

import os

def start():

    namef = open('flat.txt', 'r')

    name = namef.read()

    os.system(f"flatpak install flathub {name}")

    try:

        rname = name.split(".")[1]

        hmm = input(f"what would you name it? (default: {rname})\n->")

        if hmm:

            rname = hmm
        
        else:
            pass

    except IndexError:

        return

    content = open('.fl.sh', 'a')

    uh = '}'

    um = '{'

    rr = f'''function {rname}() {um}
    flatpak run {name}{uh}

    '''

    content.write(''.join(rr))

    content.close()

    namef.close()

    os.system("clear")

    print(f'if you want to launch the app next time, juste write "{rname}", enjoy!')

    time.sleep(2)

start()