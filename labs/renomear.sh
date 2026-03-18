#!/bin/bash
for i in {01..16}; do
    pasta="lab$i/image"
    if [ -d "$pasta" ]; then
        echo "Processando $pasta..."
        n=1
        for f in $(ls "$pasta"/*.png 2>/dev/null | sort -V); do
            mv "$f" "$pasta/$n.${f##*.}"
            echo "  $f -> $n.${f##*.}"
            ((n++))
        done
fi
done
