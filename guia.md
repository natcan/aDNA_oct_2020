# aDNA_oct_2020

## Introducción
 
Para demostrar qué pasos se siguen para el análisis genómico de muestras antiguas, usaremos una muestra de _Cinchona calisaya_ del 1852, cuyo registro señala que tiene origen en América del Sur.
Usaremos Paleomix (bam_pipeline) para obtener reads limpios y hacer un consenso del genoma del cloroplasto de _C. calisaya_ (1852)

### Files

Genoma de referencia: _Cinchona pubescens_  

Si el genoma de referencia está disponible, en NCBI (https://www.ncbi.nlm.nih.gov/)
> GenBank (ahora .fasta) y Send to (ahora File)

Datos de aDNA:

transferir de un backup
```scp ./old_gs/PRI-VIMCR-Ccalisaya3_S10_L008_R1_001.fastq.gz natcan@saga.sigma2.no:/cluster/work/users/natcan/evo_2020```

Tedioso?: Prueba Filezilla

### paleomix

Ver el uso de .yaml en https://paleomix.readthedocs.io/en/latest/bam_pipeline/

A tener en cuenta:
- Tiempo necesario
- Memoria necesaria


## Análisis bioinformático para la autenticación y limpieza de aDNA


Usando ```vim ``` editar el .yaml file de acuerdo a la configuración

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

### Create directories y set up the run

>mkdir evo_2020

Editar el file .yaml:

```    Path: /cluster/work/users/natcan/evo_oct_2020/CP9104_hyb_HP1_LSC_IR_SCC_IR_right_dir.fasta``` indica el genoma de referencia
    
```Ccalisaya:
  MySample:
    Ccalisaya:
      Lane_1: /cluster/work/users/natcan/evo_oct_2020/PRI-VIMCR-Ccalisaya3_S10_L008_R1_001.fastq.gz
```
la muestra

Editar el .sh file para mandar el job.

### Control de calidad

Con Fastqc, ver la calidad de los reads crudos y de los reads ya limpios.
 
### Remove adaptors (trimming/cleaning)

Con AdapterRemoval. Ver "Overrepresented sequences"

### Mapping al genoma de referencia

ver el .bam file en Geneious para visualizar el mapeo.

Luego obtener el genoma consenso. 

### Filtrar duplicados de PCR

Con Picard (MarkDuplicate) tools
Ver el .summary file para ver la cantidad de duplicados.

### Análisis de daño asociado a DNA antiguo

Con mapDamage ver los patrones de daño post-mortem.

Ver ejemplos en: https://ginolhac.github.io/mapDamage/#a5

Recordar:
- Red: C to T substitutions.
- Blue: G to A substitutions.

