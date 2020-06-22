#!/bin/bash

#working directory
#cd /mnt/f/Work/

#unzip all files
#for z in *.zip; do unzip "$z"; done

################################################################################
############### RESAMPLE MARKUS STACK FOR ETHIOPIA TO 500m
################################################################################
gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/BIO1.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/BIO1.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/BIO7.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/BIO7.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/BIO12.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/BIO12.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/BIO15.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/BIO15.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/CEC.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/CEC.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/DCELL.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/DCELL.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/DGRID.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/DGRID.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/DNFPA.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/DNFPA.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/DOR1.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/DOR1.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/DOR2.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/DOR2.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/DOWS.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/DOWS.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250_2019/DPARK.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/DPARK.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/DPOP1.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/DPOP1.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/DPOP2.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/DPOP2.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/DWRES.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/DWRES.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/EVI.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/EVI.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/LCB.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/LCB.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/LCC.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/LCC.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/LCS.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/LCS.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/LCT.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/LCT.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/LCU.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/LCU.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/LSTD.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/LSTD.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/LSTN.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/LSTN.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/MB1.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/MB1.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/MB2.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/MB2.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/MB3.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/MB3.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/MB7.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/MB7.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/MDEM.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/MDEM.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/NLT.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/NLT.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/NPPA.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/NPPA.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/NPPS.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/NPPS.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/PARA.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/PARA.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/PARV.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/PARV.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/PH.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/PH.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/S1VV.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/S1VV.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/S2B08.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/S2B08.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/S2B11.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/S2B11.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/S2B12.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/S2B12.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/SLOPE.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/SLOPE.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/SND.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/SND.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/SOC.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/SOC.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/TIM.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/TIM.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r bilinear -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/WPOP.tif \
    /mnt/f/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/WPOP.tif

#Creating lat long using GRASS and running in Windows


################################################################################
############### ISRIC pH 
################################################################################
gdalwarp -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of Gtiff -co compress=lsw -overwrite -ot Byte -t_srs EPSG:4326 \
    /mnt/f/work/files.isric.org/public/afsis250m/af_PHIHOX_T__M_sd1_250m.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/afsis250m/af_PHIHOX_T__M_sd1_250m_SSA.tif

#Getting acidsoils layer
gdal_calc.py -A /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/afsis250m/af_PHIHOX_T__M_sd1_250m_SSA.tif \
    --outfile=/mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/afsis250m/af_PHIHOX_T__M_sd1_250m_SSA_under56.tif \
    --calc="A<56"

gdalinfo /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/afsis250m/af_PHIHOX_T__M_sd1_250m_SSA_under56.tif


#Ph layer only for Ethiopia
gdalwarp -cutline /mnt/f/Work/GADM/gadm36_levels_shp/gadm36_ETH_shp/gadm36_ETH_0.shp -crop_to_cutline \
    -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -tr 500 500 \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/work/files.isric.org/public/afsis250m/af_PHIHOX_T__M_sd1_250m.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/afsis250m/af_PHIHOX_T__M_sd1_250m_ETH.tif

gdalinfo /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/afsis250m/af_PHIHOX_T__M_sd1_250m_ETH.tif


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
#the original file is way to big for FAT32 system of external harddrive
#WE take the mode 
########################################
gdalwarp -t_srs EPSG:4326 -ts 28616 30838 -r mode \
    -cutline /mnt/f/Work/Africa/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/d/LargeFiles/ESACCI-LC-L4-LC10-Map-20m-P1Y-2016-v1.0/ESACCI-LC-L4-LC10-Map-20m-P1Y-2016-v1.0.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/ESACCI-LC-L4-LC10-Map-20m-P1Y-2016-v1.0_SSA.tif

#Getting cropland layer
gdal_calc.py -A /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/ESACCI-LC-L4-LC10-Map-20m-P1Y-2016-v1.0_SSA.tif \
    --outfile=/mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/ESACCI-LC-L4-LC10-Map-250m-P1Y-2016-v1.0_SSA_croplands.tif \
    --calc="A==4"


########################################
#Globcover2009_V2.3_Global_
########################################
gdalwarp -cutline /mnt/f/Work/GADM/admin/SSA/SSA_admin_simplified.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/Globcover/Globcover2009_V2.3_Global_/GLOBCOVER_L4_200901_200912_V2.3.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/GLOBCOVER_L4_200901_200912_V2.3_SSA.tif

#Ethiopia LC
gdalwarp -cutline /mnt/f/Work/GADM/gadm36_levels_shp/gadm36_ETH_shp/gadm36_ETH_0.shp -crop_to_cutline \
    -t_srs EPSG:4326 -ts 6496 5157 \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/Globcover/Globcover2009_V2.3_Global_/GLOBCOVER_L4_200901_200912_V2.3.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/GLOBCOVER_L4_200901_200912_V2.3_ETH.tif

gdalinfo /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/croplands/GLOBCOVER_L4_200901_200912_V2.3_ETH.tif

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

# Ethiopia
gdalwarp -cutline /mnt/f/Work/GADM/gadm36_levels_shp/gadm36_ETH_shp/gadm36_ETH_0.shp -crop_to_cutline \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/SPAM/spam2010v1r1/spam2010v1r1_global_phys_area.geotiff/spam2010V1r1_global_A_MAIZ_A.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/SPAM/spam2010V1r1_global_A_MAIZ_A_ETH.tif
gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -of GTiff -co compress=lzw -overwrite \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/SPAM/spam2010V1r1_global_A_MAIZ_A_ETH.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/SPAM/spam2010V1r1_global_A_MAIZ_A_ETH_500m.tif



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

########################################
#RASTERIZE ROADS
########################################
gdal_rasterize -at -a fclass -l eth_trs_roads_osm \
    -ts 6496 5157 \
    -of Gtiff -co compress=lzw \
    /mnt/f/Work/Ethiopia/OSM/eth_trs_roads_osm/eth_trs_roads_osm.shp \
    /mnt/f/Work/Ethiopia/OSM/eth_trs_roads_osm/eth_trs_roads_osm.tif
    

########################################
#RASTERIZE AG SYSTEM CODE (MEHER & BELG)
########################################
gdal_rasterize -at -a AgSysCode -l Meher_Belg_regions \
    -ts 6496 5157 \
    -of Gtiff -co compress=lzw \
    /mnt/f/Work/Ethiopia/Meher_Belg_Regions/Meher_Belg_regions.shp \
    /mnt/f/Work/Ethiopia/Meher_Belg_Regions/Meher_Belg_regions.tif

gdalwarp -t_srs '+proj=laea +lat_0=5 +lon_0=20 +x_0=0 +y_0=0 +ellps=WGS84 +units=m +no_defs' -te 1430500 -156250 3054750 1133250 -tr 500 500 \
    -r near -of GTiff -co compress=lzw -overwrite \
    /mnt/f/Work/Ethiopia/Meher_Belg_Regions/Meher_Belg_regions.tif \
    /mnt/c/Users/S.PALMAS/source/repos/spalmas/acidsoils/data/Meher_Belg_Regions/Meher_Belg_Regions.tif

    
