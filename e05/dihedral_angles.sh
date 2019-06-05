#!/bin/bash
# ======= DOWNLOAD DATA =======
#scp -r (username)@login.bcp.fu-berlin.de:/home/janjoswig/MD18/Ex06/* ./ignore/
# ======= SET FOLDER =======
fldr=ignore
echo "Changing dir to ./$fldr"
cd $fldr
echo $(ls)
# ======= SET YOUR GROMACS SOURCE =======
#source /usr/local/gromacs/bin/GMXRC
source /home/mi/milleb92/mystorage/gromacs/bin/GMXRC
# DO A
gmx chi -f trajoutAref.xtc -s A.tpr -maxchi 4 -phi -psi -all -o orderA.xvg -g chiA.log
mkdir anglesA
mv orderA.xvg anglesA/
mv psi* anglesA/
mv phi* anglesA/
mv chi* anglesA/
mv histo* anglesA/
# DO B
gmx chi -f trajoutBref.xtc -s B.tpr -maxchi 4 -phi -psi -all -o orderB.xvg -g chiB.log
mkdir anglesB
mv orderB.xvg anglesB/
mv psi* anglesB/
mv phi* anglesB/
mv chi* anglesB/
mv histo* anglesB/