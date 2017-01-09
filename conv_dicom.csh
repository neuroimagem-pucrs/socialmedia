#! /bin/csh 


### In this script we will read the dicom files and convert them to NII. In the process we will also create the 
### subject folders as well as putting th nii files in the correct location. 
### Note, this script assumes that the subject folder exists, and inside it there is a "dicom" folder in it with the 
### dicom files in it
### 
### Author: Alexandre Franco
### Dez 17, 2013

### SOMENTE EDITAR ESTA PARTE PARA CADA SUJEITO@@@@@
set study = FAC
set subj = ${1}
set visit = visit1




###########################@@@@@@@@@@@@@@@@@@@@
 
# get out of script folder
cd ..

# go inside subject folder
cd ${study}${subj}
cd ${visit}
set subj_loc = `pwd`



##########################################################

# T1 - Anatomical
set image = ANAT
set name = AXI3DFSPGRBRAVO
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz
rm c*nii*
rm o*nii*


 
cd ${subj_loc}
##########################################################
# Resting state 1
set image = RST1
set name = RST1_
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz


cd ${subj_loc}
##########################################################
# Resting state 2
set image = RST2
set name = RST2_
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz


cd ${subj_loc}
##########################################################
# OFF1
set image = OFF1
set name = ONOFF1_
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz


cd ${subj_loc}
##########################################################
# OFF2
set image = OFF2
set name = ONOFF2_
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz


cd ${subj_loc}
##########################################################
# OFF3
set image = OFF3
set name = ONOFF3_
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz

cd ${subj_loc}
##########################################################
# ON1
set image = ON1
set name = ONOFF4_
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz

cd ${subj_loc}
##########################################################
# ON2
set image = ON2
set name = ONOFF5_
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz

cd ${subj_loc}
##########################################################
# ON3
set image = ON3
set name = ONOFF6_
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz



cd ${subj_loc}
##########################################################
# Ultimatum 1
set image = ULT1
set name = ULT1_
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz


cd ${subj_loc}
##########################################################
# Ultimatum 1
set image = ULT2
set name = ULT2_
mkdir ${image}
cd ${image}
set output = `pwd`
dcm2nii -c -g -o ${output} ${subj_loc}/dicom/${name}*/*
mv 2*nii* ${study}${subj}.${image}.nii.gz



cd ${subj_loc}
tar -zcvf dicom.tar.gz dicom


# Now we can delete the original dicom folder
rm -rfv dicom/



exit















