#!/bin/bash

# Ziel-Datei definieren
output_file="img_tags.txt"

# Falls die Datei schon existiert, leeren
> "$output_file"

# Durchsuche alle PNG-Dateien im Verzeichnis ./imgs/PBs
for img in ./imgs/PBs/*.png; do
  # Extrahiere nur den Dateinamen
  filename=$(basename "$img")
  
  # Erzeuge die gewünschte <img>-Zeile
  echo "        <img src=\"./imgs/PBs/$filename\" alt=\"\" class=\"fs-img\" oncontextmenu=\"return false\";>" >> "$output_file"
done

echo "Fertig! Die Datei $output_file wurde erstellt."
