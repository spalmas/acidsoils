#packages
library(terra)

#original maize price prediction from Kevin
maize_price <- rast("F:/Work/MaizePricePredictions/EthPriceRasters$ Seasons/8Retailprice2011ECcsv.tif")

#reduce resolution to 1km
maize_price <- aggregate(maize_price, fact=4)

#factor to apply to maize_price
barley_factor <- 1.6
wheat_factor <- 1.7

#Creating rasters using the factor
barley_price <- maize_price * barley_factor
wheat_price <- maize_price * wheat_factor

#write rasters
writeRaster(barley_price, "Data/prices/barley_price.tif", overwrite=TRUE)
writeRaster(maize_price, "Data/prices/maize_price.tif", overwrite=TRUE)
writeRaster(wheat_price, "Data/prices/wheat_price.tif", overwrite=TRUE)
