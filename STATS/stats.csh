#! /bin/csh

set visit = visit1
set study = FAC
set mask_dset = mask2.3x3x3+tlrc
set stats_loc = `pwd`

cd ../
set base_folder = `pwd`


cd ${stats_loc}
##############################################################################################################
# Fazendo a ttest
##############################################################################################################


	set con = ON_vs_OFF
	
	
	3dttest++ -prefix ${con}  \
	-mask $stats_loc/$mask_dset \
	-labelA On_vs_Off \
	-setA \
	"${base_folder}/${study}001/visit1/PROC.ON_OFF/stats.FAC001+tlrc[49]" \
	"${base_folder}/${study}002/visit1/PROC.ON_OFF/stats.FAC002+tlrc[49]" \
	"${base_folder}/${study}003/visit1/PROC.ON_OFF/stats.FAC003+tlrc[49]" \
	"${base_folder}/${study}004/visit1/PROC.ON_OFF/stats.FAC004+tlrc[49]" \
	"${base_folder}/${study}005/visit1/PROC.ON_OFF/stats.FAC005+tlrc[49]" \
	"${base_folder}/${study}006/visit1/PROC.ON_OFF/stats.FAC006+tlrc[49]" \
	"${base_folder}/${study}007/visit1/PROC.ON_OFF/stats.FAC007+tlrc[49]" \
	"${base_folder}/${study}008/visit1/PROC.ON_OFF/stats.FAC008+tlrc[49]" \
	"${base_folder}/${study}009/visit1/PROC.ON_OFF/stats.FAC009+tlrc[49]" \
	"${base_folder}/${study}010/visit1/PROC.ON_OFF/stats.FAC010+tlrc[49]" \
	"${base_folder}/${study}011/visit1/PROC.ON_OFF/stats.FAC011+tlrc[49]" 

	
	
	
	
	