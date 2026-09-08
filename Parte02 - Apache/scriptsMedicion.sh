#!/bin/bash

URL="http://localhost/pruebas/prueba.html"

echo "=========================================="
echo " MEDICION DE COMPRESION APACHE"
echo "=========================================="
echo "Recurso: $URL"
echo

echo "=== SIN COMPRESION ==="
curl -s -H "Accept-Encoding: identity" -o /dev/null \
-w "identity=%{size_download}B tiempo=%{time_total}s\n" "$URL"

echo
echo "=== GZIP ==="
echo "Nivel utilizado por Apache: revisar DeflateCompressionLevel"
curl -s -H "Accept-Encoding: gzip" -o /dev/null \
-w "gzip=%{size_download}B tiempo=%{time_total}s\n" "$URL"

echo
echo "=== BROTLI ==="
echo "Calidad utilizada por Apache: revisar BrotliCompressionQuality"
curl -s -H "Accept-Encoding: br" -o /dev/null \
-w "brotli=%{size_download}B tiempo=%{time_total}s\n" "$URL"

echo
echo "=== CODIFICACION APLICADA ==="
curl -s -H "Accept-Encoding: br,gzip" -I "$URL" \
| grep -i "Content-Encoding"

echo
echo "=========================================="
