MAIN = libro.sil
PDF = libro.pdf
CHAPTERS = $(wildcard prologo.sil cap*.sil)

# Compilar el libro (ejecuta dos veces para actualizar índice y referencias)
all: $(PDF)

$(PDF): $(MAIN) $(CHAPTERS)
	sile $(MAIN)
	sile $(MAIN)

# Compilar y abrir automáticamente en Windows
ver: $(PDF)
	explorer.exe $(PDF)

# Limpiar archivos temporales y el PDF generado
clean:
	rm -f $(PDF) *.toc
