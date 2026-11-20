wsl --install

sudo apt update && sudo apt install -y sile
sile --version

sile libro.sil
sile libro.sil && sile libro.sil

Tips

Resumen de comandos utiles para escribir tus capitulos

- Subtitulos dentro de un capitulo: \section{Nombre de la seccion}
- Cursiva y negrita: \em{texto en cursiva} y \strong{texto en negrita}
- Nota al pie: \footnote{Contenido de la nota}
- Compilar y abrir: Ejecuta make ver en tu terminal de WSL.
