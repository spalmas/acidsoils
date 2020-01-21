### Script to create tables of limestone delivery prices and crop prices for woredas

##### Packages 3#####
library(tidyverse)
library(terra)

##### Reading rasters #####
limestone_delivery_price <- rast("output/limestone_delivery_price/lime_price.tif")

barley_price <- rast("output/crop_market_price/barley_price.tif") %>% 
  warp(limestone_delivery_price)   #warping to limestone raster

wheat_price <- rast("output/crop_market_price/wheat_price.tif") %>% 
  warp(limestone_delivery_price)   #warping to limestone raster

##### Woreda shapefile #####
adm3 <- vect("data/admin/ETH/gadm36_ETH_shp/gadm36_ETH_3.shp") %>% 
  project(crs(limestone_delivery_price))    #warping to limestone raster

#rasterizing the adm layer for zonal stats
adm3_raster <- rasterize(adm3, limestone_delivery_price)   #warping to limestone raster

##### Zonal stats #####
limestone_delivery_price_woreda <- zonal(limestone_delivery_price, adm3_raster, na.rm=TRUE)
barley_price_woreda <- zonal(barley_price, adm3_raster, na.rm=TRUE)
wheat_price_woreda <- zonal(wheat_price, adm3_raster, na.rm=TRUE)
                                          
#### Creating final table for export ####
woreda_prices <- adm3 %>% as.data.frame() %>% 
  mutate(woredaID=1:nrow(results),
         limestone_price = limestone_delivery_price_woreda$lime_price,
         barley_price = barley_price_woreda$lyr.1,
         wheat_price = wheat_price_woreda$lyr.1) %>% 
  select(woredaID, GID_3, NAME_3, CC_3, limestone_price, barley_price, wheat_price)

woredaID <- woreda_prices %>% select(woredaID, GID_3, NAME_3, CC_3)

#### Write tables ####
write_csv(woreda_prices, "output/woreda_summaries/woreda_prices.csv")
write_csv(woredaID, "output/woredaID.csv")
