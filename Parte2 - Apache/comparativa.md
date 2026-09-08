# Tablas Comparativas de Compresión Web

**Reporte de rendimiento:** Comparación de algoritmos de compresión (`Gzip/Deflate` vs `Brotli`) en diferentes tipos de archivos (texto plano, código y binarios multimedia).

---

**1. Archivo HTML (`.html`)**

| Algoritmo / Nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 25,056 B | 1.0000 | 0.00 % | 0.2353 s |
| **gzip nivel 1** | 298 B | 0.01189 | 98.81 % | 0.2248 s |
| **gzip nivel 6** | 174 B | 0.00694 | 99.306 % | 0.2259 s |
| **gzip nivel 9** | 174 B | 0.00694 | 99.306 % | 0.2238 s |
| **brotli calidad 5** | 84 B | 0.00335 | 99.665 % | 0.2270 s |
| **brotli calidad 11** | 74 B | 0.00295 | 99.705 % | 0.2640 s |

---

**2. Archivo JSON (`.json`)**

| Algoritmo / Nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 267,431 B | 1.0000 | 0.00 % | 0.265159 s |
| **gzip nivel 1** | 17,606 B | 0.0658 | 93.42 % | 0.231438 s |
| **gzip nivel 6** | 17,682 B | 0.0661 | 93.39 % | 0.237267 s |
| **gzip nivel 9** | 17,148 B | 0.0641 | 93.59 % | 0.259200 s |
| **brotli calidad 5** | 7,442 B | 0.0278 | 97.22 % | 0.233614 s |
| **brotli calidad 11** | 7,633 B | 0.0285 | 97.15 % | 2.016411 s |

---

**3. Archivo JavaScript (`.js`)**

| Algoritmo / Nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 194,697 B | 1.0000 | 0.00 % | 0.295109 s |
| **gzip nivel 1** | 10,536 B | 0.0541 | 94.59 % | 0.236322 s |
| **gzip nivel 6** | 10,683 B | 0.0549 | 94.51 % | 0.229295 s |
| **gzip nivel 9** | 10,536 B | 0.0541 | 94.59 % | 0.230197 s |
| **brotli calidad 5** | 4,424 B | 0.0227 | 97.73 % | 0.247722 s |
| **brotli calidad 11** | 4,387 B | 0.0225 | 97.75 % | 1.065618 s |

---

**4. Archivo XML (`.xml`)**

| Algoritmo / Nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 166,723 B | 1.0000 | 0.00 % | 0.280127 s |
| **gzip nivel 1** | 9,393 B | 0.0563 | 94.37 % | 0.231493 s |
| **gzip nivel 6** | 9,222 B | 0.0553 | 94.47 % | 0.231018 s |
| **gzip nivel 9** | 9,216 B | 0.0553 | 94.47 % | 0.233286 s |
| **brotli calidad 5** | 3,926 B | 0.0235 | 97.65 % | 0.230105 s |
| **brotli calidad 11** | 3,926 B | 0.0235 | 97.65 % | 1.102580 s |

---

**5. Archivo CSS (`.css`)**

| Algoritmo / Nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 256,934 B | 1.0000 | 0.00 % | 0.243718 s |
| **gzip nivel 1** | 5,013 B | 0.0195 | 98.05 % | 0.228928 s |
| **gzip nivel 6** | 4,826 B | 0.0188 | 98.12 % | 0.227317 s |
| **gzip nivel 9** | 4,765 B | 0.0185 | 98.15 % | 0.230470 s |
| **brotli calidad 5** | 2,332 B | 0.0091 | 99.09 % | 0.235073 s |
| **brotli calidad 11** | 2,282 B | 0.0089 | 99.11 % | 2.403176 s |

---

**6. Archivo de Texto (`.txt`)**

| Algoritmo / Nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 1,297,500 B | 1.0000 | 0.00 % | 0.297451 s |
| **gzip nivel 1** | 9,925 B | 0.0076 | 99.24 % | 0.240507 s |
| **gzip nivel 6** | 5,195 B | 0.0040 | 99.60 % | 0.256487 s |
| **gzip nivel 9** | 5,195 B | 0.0040 | 99.60 % | 0.251785 s |
| **brotli calidad 5** | 141 B | 0.0001 | 99.99 % | 0.254099 s |
| **brotli calidad 11** | 130 B | 0.0001 | 99.99 % | 0.443988 s |

---

**7. Archivo de Imagen JPG (`.jpg`)**

| Algoritmo / Nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 1,048,576 B | 1.0000 | 0.00 % | ~0.245000 s |
| **gzip nivel 1** | 1,048,576 B | 1.0000 | 0.00 % | ~0.240000 s |
| **gzip nivel 6** | 1,048,576 B | 1.0000 | 0.00 % | ~0.241000 s |
| **gzip nivel 9** | 1,048,576 B | 1.0000 | 0.00 % | ~0.239000 s |
| **brotli calidad 5** | 1,048,576 B | 1.0000 | 0.00 % | ~0.242000 s |
| **brotli calidad 11** | 1,048,576 B | 1.0000 | 0.00 % | ~0.243000 s |

---

**8. Archivo de Imagen PNG (`.png`)**

| Algoritmo / Nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 1,048,576 B | 1.0000 | 0.00 % | ~0.248000 s |
| **gzip nivel 1** | 1,048,576 B | 1.0000 | 0.00 % | ~0.242000 s |
| **gzip nivel 6** | 1,048,576 B | 1.0000 | 0.00 % | ~0.240000 s |
| **gzip nivel 9** | 1,048,576 B | 1.0000 | 0.00 % | ~0.241000 s |
| **brotli calidad 5** | 1,048,576 B | 1.0000 | 0.00 % | ~0.243000 s |
| **brotli calidad 11** | 1,048,576 B | 1.0000 | 0.00 % | ~0.245000 s |

---

**9. Archivo de Video MP4 (`.mp4`)**

| Algoritmo / Nivel | Tamaño | Ratio | Ahorro % | Tiempo / CPU |
| :--- | :--- | :--- | :--- | :--- |
| **Sin comprimir (base)** | 2,097,152 B | 1.0000 | 0.00 % | ~0.265000 s |
| **gzip nivel 1** | 2,097,152 B | 1.0000 | 0.00 % | ~0.258000 s |
| **gzip nivel 6** | 2,097,152 B | 1.0000 | 0.00 % | ~0.260000 s |
| **gzip nivel 9** | 2,097,152 B | 1.0000 | 0.00 % | ~0.259000 s |
| **brotli calidad 5** | 2,097,152 B | 1.0000 | 0.00 % | ~0.261000 s |
| **brotli calidad 11** | 2,097,152 B | 1.0000 | 0.00 % | ~0.262000 s |
