#!/bin/bash
# ======================================================
# Script para correr RAxML-NG en el análisis de NR2B
# ======================================================

# Archivo de alineamiento
MSA="NR2B_FASTA.fasta"

# Modelo obtenido de ModelTest-NG
MODEL="JTT+G4+F"

# Nombre base de salida
PREFIX="NR2B"

# Número de réplicas de bootstrap (puedes cambiar a 1000 o 10000)
BOOTSTRAPS=10000

# Número de núcleos del procesador a usar
THREADS=4

# Semilla para reproducibilidad
SEED=12345

# ------------------------------------------------------
echo "Ejecutando RAxML-NG con modelo $MODEL y $BOOTSTRAPS bootstraps..."
echo "------------------------------------------------------"

# Comando principal (versión correcta y estable)
raxml-ng --all \
         --msa "$MSA" \
         --model "$MODEL" \
         --prefix "$PREFIX" \
         --seed "$SEED" \
         --threads "$THREADS" \
         --bs-trees "$BOOTSTRAPS"

echo "------------------------------------------------------"
echo "Análisis completado. Archivos generados con prefijo $PREFIX"
echo "Árbol con soporte bootstrap: ${PREFIX}.raxml.support"
echo "Para visualizarlo: figtree ${PREFIX}.raxml.support"
