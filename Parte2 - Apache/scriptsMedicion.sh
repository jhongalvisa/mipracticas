#!/bin/bash
# =================================================================
# Script de Mediciones de Compresión Web (Parte 2)
# =================================================================

# Definir la URL base con el directorio /parcial/ y el archivo a evaluar
BASE_URL="http://192.168.50.3/parcial"
ARCHIVO="parcial.css" # Cambiar por app.js o el archivo requerido
URL="${BASE_URL}/${ARCHIVO}"

echo "=========================================================="
echo " Evaluando rendimiento para: $URL"
echo "=========================================================="

# 1. Tamaño y tiempo SIN comprimir (Línea base)
echo -n "Sin comprimir: "
curl -s -H 'Accept-Encoding: identity' -o /dev/null -w 'sin=%{size_download}B t=%{time_total}s\n' "$URL"

# 2. Con gzip (mod_deflate) — Repita variando DeflateCompressionLevel (1, 6, 9)
echo -n "Con Gzip (Deflate): "
curl -s -H 'Accept-Encoding: gzip' -o /dev/null -w 'gzip=%{size_download}B t=%{time_total}s\n' "$URL"

# 3. Con Brotli (mod_brotli) — Repita variando BrotliCompressionQuality (5, 11)
echo -n "Con Brotli: "
curl -s -H 'Accept-Encoding: br' -o /dev/null -w 'br=%{size_download}B t=%{time_total}s\n' "$URL"

# 4. Verificar el encabezado de codificación aplicado
echo -n "Encabezado aplicado: "
curl -s -H 'Accept-Encoding: br,gzip' -I "$URL" | grep -i "content-encoding"
