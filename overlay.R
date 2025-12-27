library(terra)
library(sf)
raster1 <- rast("C://Users//sanja//Downloads//catalog_automation//LC08_L2SP_144048_20251108_20251128_02_T1_SR_B4.TIF")
raster1
raster2 <- rast("C://Users//sanja//Downloads//catalog_automation//LC08_L2SP_144048_20251108_20251128_02_T1_SR_B5.TIF")
raster2
vector <- st_read("C://Users//sanja//Downloads//hyderabad boundary//MUSI BUFFER_FINAL")
vect_terra <- vect(vector)
plot(vect_terra)

overlay_NDVI <- app(c(raster2, raster1), fun = function(x) ({(x[,1] - x[,2]) / (x[,1] + x[,2])}))
plot(overlay_NDVI)

cropped1 <- crop(overlay_NDVI, vect_terra)
plot(cropped1)
masked_NDVI2 <- mask(cropped1, vect_terra)
plot(masked_NDVI2)

writeRaster(masked_NDVI2, "Musi_NDVI_overlay.tif", overwrite=TRUE)