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
gmx chi -f trajoutAref.xtc -s A.tpr -maxchi 4 -phi -psi -o anglesA.xvg
# gmx chi -f trajoutBref.xtc -s B.tpr -maxchi 4 -phi -psi -o anglesB.xvg
rm *chi* # clean up the extra crap that gets made