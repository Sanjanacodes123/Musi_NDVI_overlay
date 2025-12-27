# Musi_NDVI_overlay
NDVI of Musi river using overlay method

This project demonstrates the extraction and analysis of vegetation index for the Musi River region in Hyderabad using Landsat 8 imagery. The workflow is implemented in R with the terra and sf packages. It includes:

Reading and plotting Landsat 8 raster bands

Cropping and masking rasters using a vector boundary of the Musi River

Calculating NDVI (Normalized Difference Vegetation Index)

NDVI calculation is demonstrated using the overlay method (app() in terra)

Exporting individual index rasters for further analysis
