#!/bin/bash

#working directory
cd /media/sp/SPHD/Work/Copernicus/

#unzip all files
#for z in *.zip; do unzip "$z"; done

#creating complete raster file
gdal_merge.py -n 255 -a_nodata 255 -ot Byte -of GTiff \
    -o /media/sp/SPHD/Work/Copernicus/Africa_crop-coverfraction-layer_ESPG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/E000N00_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/E000N20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
  
  
  
    /media/sp/SPHD/Work/Copernicus/E000N40_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/E000S20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/E020N00_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/E020N20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/E020N40_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/E020S20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/E040N00_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/E040N20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/E040S20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/W020N20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \
    /media/sp/SPHD/Work/Copernicus/W020N40_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif \


# Create a vrt file with required rasters
gdalbuildvrt -resolution average -a_srs EPSG:4326 -r nearest -srcnodata "255" \
    -input_file_list GitHub/acidsoils/mergerasters_file.txt \
    /media/sp/SPHD/Copernicus/Africa_crop-coverfraction-layer_ESPG-4326.vrt


gdal_translate -a_srs EPSG:4326 -a_nodata 255.0 -of GTiff \ 
    /media/sp/SPHD/Copernicus/africa.vrt \ 
    /media/sp/SPHD/Copernicus/Africa_crop-coverfraction-layer_ESPG-4326.tif


