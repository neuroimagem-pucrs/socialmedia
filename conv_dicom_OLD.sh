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
set subj = 022
set visit = visit1
set ult1 = 004
set ult2 = 003
set off1 = 009
set off2 = 010
set off3 = 011
set on1 = 006
set on2 = 007
set on3 = 008
set rst1 = 002
set rst2 = 005
set anat = 013


###########################@@@@@@@@@@@@@@@@@@@@
  
# get out of script folder
cd ..

# go inside subject folder
cd ${study}${subj}
cd ${visit}

# convert dicom images to nii
set subj_folder = `pwd`

dcm2nii -c -g -o ${subj_folder} dicom/*





##########################################################
if(1) then
# ULT_1
set image = ULT1
set number = ${ult1}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder
endif
##########################################################

# ULT_2
set image = ULT2
set number = ${ult2}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder

##########################################################
if(1) then
# OFF1
set image = OFF1
set number = ${off1}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder

##########################################################

# OFF2
set image = OFF2
set number = ${off2}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder

##########################################################

# OFF3
set image = OFF3
set number = ${off3}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder

##########################################################

# ON1
set image = ON1
set number = ${on1}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder

##########################################################

# ON2
set image = ON2
set number = ${on2}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder

##########################################################

# ON3
set image = ON3
set number = ${on3}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder

##########################################################

# Resting state_1
set image = RST1
set number = ${rst1}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder

##########################################################


# Resting state_2
set image = RST2
set number = ${rst2}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder


##########################################################


# T1 - Anatomical 
set image = ANAT
set number = ${anat}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
cd $subj_folder

endif
##########################################################


# remove the rest of the junk that comes from dcm2nii
rm -v *nii.gz

# Now we can compact the dicom folder
tar -zcvf dicom.tar.gz dicom

# Now we can delete the original dicom folder
rm -rfv dicom/



exit












set mrs_ref_sag = 010
set mrs_ref_axial = 008
set mrs_ref_coronal = 009

set mrs_ga = 012
set mrs_br = 013


##########################################################
# MRS - Spectroscopia 
set image = MRS
mkdir ${image}
cd ${image}

#set mrs_ref_sag
set number = ${mrs_ref_sag}
set subname = REF_SAG
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.${subname}.nii.gz


#set mrs_ref_axial
set number = ${mrs_ref_axial}
set subname = REF_AXI
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.${subname}.nii.gz


#set mrs_ref_coronal 
set number = ${mrs_ref_coronal}
set subname = REF_COR
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.${subname}.nii.gz

#set mrs_ga
set number = ${mrs_ga}
set subname = G_ANG
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.${subname}.nii.gz
mv ../2*s2*${number}*.nii.gz ${study}${subj}.${image}.${subname}_SS.nii.gz

#set mrs_br
set number = ${mrs_br}
set subname = BROD
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.${subname}.nii.gz
mv ../2*s2*${number}*.nii.gz ${study}${subj}.${image}.${subname}_SS.nii.gz

cd $subj_folder

##########################################################

# DTI
set image = DTI
set number = ${dti}
mkdir ${image}
cd ${image}
mv ../2*s${number}*.nii.gz ${study}${subj}.${image}.nii.gz
mv ../2*s${number}*.bval ${study}${subj}.${image}.bval
mv ../2*s${number}*.bvec ${study}${subj}.${image}.bvec
cd $subj_folder














