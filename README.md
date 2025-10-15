# Filogenia-NR2B
clase filogenía para nr2b
#checar versión de conda
conda --version 


#activar ambiente conda
conda activate 



 #crear un ambiente de trabajo
conda create -n evoNR2B python=3.10 -y   
conda activate evoNR2B


#Instalar ModelTest
conda install -c bioconda modeltest-ng -y


#Ver si se instalo Modeltest
modeltest-ng -h | head -n 5


#Analizar el mejor modelo matemático de nuestro archivo .fasta
modeltest-ng -i NR2B_FASTA.fasta -d aa -p 4 -o modeltest_out


#instalar raxml-ng
conda install -c bioconda raxml-ng -y

#ver si se instalo correctamente
raxml-ng -v | head -n 1

#generar el script con el que vamos a correr raxml
nano run_raxml.sh

#hacer ejecutable
chmod +x run_raxml.sh

#ejecutar
./run_raxml.sh

#abrir en figtree
figtree NR2B.raxml.support

