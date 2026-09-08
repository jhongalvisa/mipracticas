# Parte 1 - DNS

## Descripción

Implementación de un servicio DNS utilizando BIND9 con una
arquitectura maestro-esclavo.

El servidor maestro administra la zona `empresa.local` y el
servidor esclavo mantiene una copia sincronizada de la zona.

## Arquitectura

| Equipo | Rol | Dirección IP |
|---|---|---|
| servidor | DNS maestro | 192.168.50.3 |
| cliente | DNS esclavo | 192.168.50.2 |

La red utilizada es:

`192.168.50.0/24`

## Zona directa

Zona:

`empresa.local`

El maestro contiene registros para:

- ns1
- ns2
- www
- prueba
- mail
- ftp
- MX

También se configuraron registros IPv4 e IPv6.

## Zona inversa

Zona:

`50.168.192.in-addr.arpa`

Se configuraron registros PTR para permitir la resolución
inversa de las direcciones IP de la red.

## Transferencia de zona

Las transferencias entre maestro y esclavo se protegen mediante
una clave TSIG denominada:

`esclavo-transfer`

Algoritmo:

`hmac-sha256`

Se comprobó:

- AXFR autenticado mediante TSIG.
- Rechazo de AXFR sin autenticación.
- IXFR después de modificar la zona.
- Sincronización automática del servidor esclavo.

El secreto de la clave TSIG no se incluye en este repositorio.

## IXFR

Para comprobar la transferencia incremental se habilitó:

```conf
ixfr-from-differences yes;