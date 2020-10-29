# aDNA_oct_2020

## Introducción
 
Para demostrar qué pasos se siguen para el análisis genómico de muestras antiguas, usaremos los datos disponibles de esta publicación sobre _Yersinia pestis_: https://www.nature.com/articles/nature10549


### Files

Genoma de referencia: https://www.ncbi.nlm.nih.gov/nuccore/NC_003143.1/
> GenBank (ahora .fasta) y Send to (ahora File)

Datos de aDNA: https://www.ebi.ac.uk/ena/browser/view/SRP008060
Descargar toda la data (7 files de human oral metagenome)

## Análisis bioinformático para la autenticación y limpieza de aDNA

```unzip ena_files.zip```# Descomprimir los archivos .zip

```gzip -d  SRR34196*.fastq.gz``` # Descomprimir los archivos .gz

```rm *.zip``` #eliminar el .zip

Tedioso? probar: Filezilla

```vim ``` editar el .yaml file de acuerdo a la configuración

### Software

AdapterRemoval v2.3.1 (Schubert et al., 2016) [https://github.com/mikkelschubert/adapterremoval]

BWA v. 0.7.17 (Li, 2013) [https://github.com/lh3/bwa]

FastQC v. 0.11.9 (Andrews, n.d.) [https://github.com/s-andrews/FastQC]

samtools v. 1.10 (Li et al., 2009) [https://github.com/samtools/samtools]

DeDup v. 0.12.6 (Peltzer et al., 2016) [https://github.com/apeltzer/DeDup]

mapDamage v. 2.2.1 (Jónsson et al., 2013) [https://github.com/ginolhac/mapDamage]

R v. 3.6

Bowtie2 v. 2.3.5.1

picard v. 2.21.1

PALEOMIX v. 1.2.14

### Create directories
mkdir evo_2020

In .yaml:

```QualityOffset: Solexa ``` la tecnología usada

```    Path: /cluster/work/users/natcan/evo_oct_2020/sequence_y_pestisCO92.fasta``` indica el genoma de referencia
    
```Ypestis:
  MySample:
    ypestis:
      Lane_1: /cluster/work/users/natcan/evo_oct_2020/ypestis_cat.fastq
```
las muestras
 
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

Memoria necesaria
uso de .yaml
bam_pipeline
