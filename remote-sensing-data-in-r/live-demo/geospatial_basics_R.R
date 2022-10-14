# installieren der packages
install.packages('ggplot2')
install.packages('terra')

# aktivieren der packages
library('ggplot2')
library('terra')

# working directory auf meinen Desktop setzen, um einfacher Dateien einzubinden
# Hier muss man natürlich seinen eigenen Speicherort angeben.
setwd("C:/Users/lucah/OneDrive/Desktop")

# speichern des DEM unter der Variable 'DEM'
DEM = rast('eu_dem_v11_E20N20.tif')

# plotten des DEMs 
plot(DEM)

# komrimieren des DEMs für schnellere Berechnungszeit
DEM = aggregate(DEM, fact = 15)

# umwandeln des DEMs in eine Data Frame, damit ggplot2 damit arbeiten kann
DEM_df = as.data.frame(DEM, xy = T)

# plotten des DEMs mit Hilfe von ggplot2
ggplot()+
  geom_tile(data = DEM_df, aes(x = x, y = y, fill = eu_dem_v11_E20N20))+
  scale_fill_viridis_c()

# slope des DEMs berechnen
# slope mithilfe von 'terrain' ermitteln
SLOPE = terrain(DEM, v = 'slope', unit = 'degrees')

# slope als data frame
SLOPE_df = as.data.frame(SLOPE, xy = T)

# plotten des slopes mithilfe von ggplot2
ggplot()+
  geom_tile(data = SLOPE_df, aes(x = x, y = y, fill = slope))+
  scale_fill_gradient()

# Dokumentation für die ganzen packages haben wir im GITHUB verlinkt. Viel spaß!
  




