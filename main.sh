function flatnac() {
	mkdir flat
	mv ~/.local/share/NacreousDawn596/flatnac/.fl.sh flat/
	cd flat
	echo $2 > flat.txt
	python3 ~/.local/share/NacreousDawn596/flatnac/main.py
	cd ..
	mv flat/.fl.sh ~/.local/share/NacreousDawn596/flatnac/
	rm -rf flat
}