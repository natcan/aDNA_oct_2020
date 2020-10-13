# aDNA_oct_2020

## Introducción
 
Para demostrar qué pasos se siguen para el análisis genómico de muestras antiguas, usaremos los datos disponibles de esta publicación sobre _Yersinia pestis_: https://www.nature.com/articles/nature10549
.
.
.

## Análisis bioinformático para la autenticación y limpieza de aDNA
.
.
.
### Software

AdapterRemoval v2.3.1 (Schubert et al., 2016) [https://github.com/mikkelschubert/adapterremoval]

BWA v. 0.7.17 (Li, 2013) [https://github.com/lh3/bwa]

FastQC v. 0.11.9 (Andrews, n.d.) [https://github.com/s-andrews/FastQC]

samtools v. 1.10 (Li et al., 2009) [https://github.com/samtools/samtools]

DeDup v. 0.12.6 (Peltzer et al., 2016) [https://github.com/apeltzer/DeDup]

mapDamage v. 2.2.1 (Jónsson et al., 2013) [https://github.com/ginolhac/mapDamage]

### Files

Genoma de referencia: https://www.ncbi.nlm.nih.gov/nuccore/NC_003143.1/

Datos de aDNA: https://www.ebi.ac.uk/ena/browser/view/SRP008060

### Create directories

### Remove adaptors (trimming/cleaning)

### Control de calidad

### Mapping al genoma de referencia
.
.
.
Convertir a formato .sam

### Filtrar duplicados de PCR

### Análisis de daño asociado a DNA antiguo

con maDamage


## O la forma fácil usando pipelines

### paleomix

bam_pipeline
