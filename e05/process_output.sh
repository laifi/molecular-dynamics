#!/bin/bash
#scp -r (username)@login.bcp.fu-berlin.de:/home/janjoswig/MD18/Ex06/* ./ignore/
echo "Changing dir to ./ignore"
cd ./ignore/
echo $(ls)
source /usr/local/gromacs/bin/GMXRC
echo "1" | gmx trjconv -f A.xtc -pbc mol -s A.tpr -o trajoutA.xtc
echo "4 1" | gmx trjconv -f trajoutA.xtc -fit rot+trans -s referenceA.gro -o trajoutAref.xtc
echo "1" | gmx trjconv -f B.xtc -pbc mol -s B.tpr -o trajoutB.xtc
echo "4 1" | gmx trjconv -f trajoutB.xtc -fit rot+trans -s referenceB.gro -o trajoutBref.xtc
