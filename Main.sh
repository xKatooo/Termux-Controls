#! /bin/bash

# Crear el directorio .termux si no existe
if [ ! -d ~/.termux ]; then
  mkdir ~/.termux
fi

# Crear el archivo termux.properties si no existe
if [ ! -f ~/.termux/termux.properties ]; then
  touch ~/.termux/termux.properties
fi

# Escribir la configuración para activar las flechas de dirección
echo "extra-keys = [['ESC','TAB','CTRL','ALT','-','DOWN','UP']]" >> ~/.termux/termux.properties

# Escribir la configuración para agregar más botones
echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> ~/.termux/termux.properties

# Reiniciar Termux
termux-reload-settings
