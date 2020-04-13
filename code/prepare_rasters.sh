#!/bin/bash

#working directory
#cd /mnt/f/Work/

#unzip all files
#for z in *.zip; do unzip "$z"; done


################################################################################
############### ISRIC pH 
################################################################################
gdalwarp -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of Gtiff -co compress=lsw -overwrite -ot Byte -t_srs EPSG:4326 \
    /mnt/f/work/files.isric.org/public/afsis250m/af_PHIHOX_T__M_sd1_250m.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/afsis250m/af_PHIHOX_T__M_sd1_250m_SSA.tif

gdalinfo /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/afsis250m/af_PHIHOX_T__M_sd1_250m_SSA.tif

################################################################################
############### CREATING CROPLAND RATERS CROPPED TO SSA
################################################################################

########################################
#Copernicus 2018
#Buchhorn, M. ; Smets, B. ; Bertels, L. ; Lesiv, M. ; Tsendbazar, N. - E. ; Herold, M. ; Fritz, S.
#Copernicus Global Land Service: Land Cover 100m: epoch 2018: Africa demo 2019.
#DOI 10.5281/zenodo.3518087
########################################
gdalwarp -s_srs EPSG:4326 -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of Gtiff -co compress=lsw -overwrite -ot Byte -t_srs EPSG:4326 \
    /mnt/f/work/Copernicus/ProbaV_LC100_epoch2018_nrt_Africa_v2.1.1/ProbaV_LC100_epoch2018-nrt_Africa_v2.1.1_crops-coverfraction-layer_EPSG-4326.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/ProbaV_LC100_epoch2018-nrt_Africa_v2.1.1_crops-coverfraction-layer_EPSG-4326_SSA.tif

########################################
#C3S-LC-L4-LCCS
########################################
gdalwarp -s_srs EPSG:4326 -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of Gtiff -co compress=lsw -overwrite -ot Byte -t_srs EPSG:4326 \
    NETCDF:/mnt/f/Work/C3S-LC-L4-LCCS/C3S-LC-L4-LCCS-Map-300m-P1Y-2018-v2.1.1.nc:lccs_class \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/C3S-LC-L4-LCCS-Map-300m-P1Y-2018-v2.1.1_SSA.tif


########################################
#ESACCI-LC-L4
#the original file is way to big for FAT32
########################################
gdalwarp -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/ESACCI-LC-L4-LC10-Map-20m-P1Y-2016-v1.0/ESACCI-LC-L4-LC10-Map-20m-P1Y-2016-v1.0.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/ESACCI-LC-L4-LC10-Map-20m-P1Y-2016-v1.0/ESACCI-LC-L4-LC10-Map-20m-P1Y-2016-v1.0_SSA.tif

########################################
#Globcover2009_V2.3_Global_
########################################
gdalwarp -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/Globcover/Globcover2009_V2.3_Global_/GLOBCOVER_L4_200901_200912_V2.3.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/GLOBCOVER_L4_200901_200912_V2.3_SSA.tif


########################################
#SPAM
########################################
#AREA
gdalwarp -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/SPAM/spam2010v1r1/spam2010v1r1_global_phys_area.geotiff/spam2010V1r1_global_A_BARL_A.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/SPAM/spam2010V1r1_global_A_BARL_A_SSA.tif

gdalwarp -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/SPAM/spam2010v1r1/spam2010v1r1_global_phys_area.geotiff/spam2010V1r1_global_A_MAIZ_A.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/SPAM/spam2010V1r1_global_A_MAIZ_A_SSA.tif

gdalwarp -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/SPAM/spam2010v1r1/spam2010v1r1_global_phys_area.geotiff/spam2010V1r1_global_A_RICE_A.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/SPAM/spam2010V1r1_global_A_RICE_A_SSA.tif

#PRODUCTION
gdalwarp -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/SPAM/spam2010v1r1/spam2010v1r1_global_prod.geotiff/spam2010V1r1_global_P_BARL_A.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/SPAM/spam2010V1r1_global_P_BARL_A_SSA.tif

gdalwarp -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/SPAM/spam2010v1r1/spam2010v1r1_global_prod.geotiff/spam2010V1r1_global_P_MAIZ_A.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/SPAM/spam2010V1r1_global_P_MAIZ_A_SSA.tif

gdalwarp -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/SPAM/spam2010v1r1/spam2010v1r1_global_prod.geotiff/spam2010V1r1_global_P_RICE_A.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/SPAM/spam2010V1r1_global_P_RICE_A_SSA.tif



