# This script creates seasonal rainfall raster mean for multiple seasons

library(terra)

#Rainfall seasons to analyze
belg_rainfall_seas <- c("02", "03", "04", "05") #february to may 
kiremt_seas <- c("06", "07", "08","09")
meher_barley_rainfall_seas <- c("05", "06", "07", "08","09", "10") #may to october
meher_maize_rainfall_seas <- c("03", "04", "05", "06", "07", "08", "09") #march to september
meher_wheat_rainfall_seas <- c("05", "06", "07", "08","09", "10") #march to september
#list of seasons names to use in the loop
rainfall_seasons <- c("belg_rainfall_seas", "meher_barley_rainfall_seas", "meher_maize_rainfall_seas", "meher_wheat_rainfall_seas")

#dekads to use
dekads <- c(1,2,3)

#years to extract
years <- c(2013:2019)

#Layer to use for projection and masking
PH <- rast("F:/Work/MarkusStacks/ET_250m_2019/ET_500m_2019_resampled/PH.tif")

#layer to use for croppping
ETH_gadm <- vect("F:/Work/GADM/gadm36_levels_shp/gadm36_ETH_shp/gadm36_ETH_0.shp")

for(rainfall_season in rainfall_seasons){
  #rainfall_season <-  rainfall_seasons[1]
  
  #We also need to create mean rasters for these seasons to use in the complete raster prediction
  rainfall_season_rasters <- rast(apply(expand.grid("F:/Work/CHIRPS/ftp.chg.ucsb.edu/pub/org/chg/products/CHIRPS-2.0/africa_dekad/tifs/chirps-v2.0.",
                                                    years, ".", get(rainfall_season), ".", dekads, ".tif"), 1, paste, collapse=""))
  
  #Check if all years have all data
  if (length(names(rainfall_season_rasters)) == length(years) * length(dekads) * length(get(rainfall_season)) ){
    rainfall_season_mean_AFR <- app(rainfall_season_rasters, fun = function(x){return(sum(x)/length(years))},
                                filename = paste0("data/rainfall/", rainfall_season, "_mean_AFR.tif"), overwrite=TRUE)
    
    #cropping to extent of ETH layer
    rainfall_season_mean_ETH <- crop(rainfall_season_mean_AFR, ETH_gadm)
    
    #eliminate ocean values for better interpolation
    values(rainfall_season_mean_ETH)[values(rainfall_season_mean_ETH) < 0] <- NA
    
    #resample to project common resolution 
    rainfall_season_mean_ETH <- resample(rainfall_season_mean_ETH, PH, method = "bilinear",
                                         filename = paste0("data/rainfall/", rainfall_season, "_mean_ETHx.tif"), overwrite=TRUE,
                                         wopt = list(names=rainfall_season))
    
    names(rainfall_season_mean_ETH) <- rainfall_season
    
    writeRaster(rainfall_season_mean_ETH,                                          
                filename = paste0("data/rainfall/", rainfall_season, "_mean_ETH.tif"), overwrite=TRUE)
  }
}
