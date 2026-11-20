MAIN = ejemplo1.sil
PDF = ejemplo1.pdf
CHAPTERS = $(wildcard prologo.sil cap*.sil)

# Compilar el libro (ejecuta dos veces para actualizar �ndice y referencias)
all: $(PDF)

$(PDF): $(MAIN) $(CHAPTERS)
	sile $(MAIN)
	sile $(MAIN)

# Compilar y abrir autom�ticamente en Windows
ver: $(PDF)
	papers $(PDF)

# Limpiar archivos temporales y el PDF generado
clean:
	rm -f $(PDF) *.toc
