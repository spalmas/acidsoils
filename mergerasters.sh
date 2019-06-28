#working directory
cd /media/sp/SPHD/Copernicus/

#unzip all files
#for z in *.zip; do unzip "$z"; done

# Merge all africa rasters 
gdal_merge.py -o /media/sp/SPHD/Copernicus/Africa_crop-coverfraction-layer_ESPG-4326.tif 
/media/sp/SPHD/Copernicus/E000N00_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
/media/sp/SPHD/Copernicus/E000N20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
/media/sp/SPHD/Copernicus/E000N40_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
/media/sp/SPHD/Copernicus/E000S20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
/media/sp/SPHD/Copernicus/E020N00_ProbaV_LC100_epoch2015s_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
/media/sp/SPHD/Copernicus/E020N20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
/media/sp/SPHD/Copernicus/E020N40_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
/media/sp/SPHD/Copernicus/E020S20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
/media/sp/SPHD/Copernicus/E040N00_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
/media/sp/SPHD/Copernicus/E040N20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
/media/sp/SPHD/Copernicus/E040S20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif

/media/sp/SPHD/Copernicus/W020S20_ProbaV_LC100_epoch2015_global_v2.0.1_crops-coverfraction-layer_EPSG-4326.tif
