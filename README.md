# Sile en el notebook

## instalacion en Linux
wsl --install

dnf install sile
apt update && sudo apt install -y sile

### validar
sile --version

### generar libro
sile libro.sil
sile libro.sil && sile libro.sil

## Tips

Resumen de comandos utiles para escribir tus capitulos

- Subtitulos dentro de un capitulo: \section{Nombre de la seccion}
- Cursiva y negrita: \em{texto en cursiva} y \strong{texto en negrita}
- Nota al pie: \footnote{Contenido de la nota}
- Compilar y abrir: Ejecuta make ver en tu terminal de WSL.

## Definicion de "estilos"

```
\begin{document}
% Definicion de "estilos"
\define[command=titulo-seccion]{
  \font[family=Libertinus Serif,size=16pt,weight=700]{\color[color=#1a365d]{#1}}
  \par
}

\define[command=destacado]{
  \em{\color[color=crimson]{#1}}
}

% Uso en el contenido
\titulo-seccion{Introduccion}
Este es un párrafo normal con un texto \destacado{resaltado} usando estilo propio.
\end{document}
```

