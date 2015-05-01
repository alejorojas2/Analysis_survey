library(maps)
library(mapproj)
par(mfrow = c(1,1))

fields <- read.csv2("~/Google Drive/MSU/Chilvers Lab/01_Projects/01_Oomycete CAP/Analysis/GIS_data", header = TRUE,sep = "\t", dec = ".")

fields.2011 <- fields[fields$Year==2011,]
fields.2012 <- fields[fields$Year==2012,]

map(database="state", col="gray", xlim=c(-99,-82), ylim=c(31,49))
map("state",fields$State, add=TRUE, col="black", xlim=c(-99,-82), ylim=c(31,49))
points(fields.2011$Long, fields.2011$Lat, pch=21, bg="light blue", cex=0.6)
points(fields.2012$Long, fields.2012$Lat, pch=21, bg="light green", cex=0.6)
legend(-86.5,49.5, legend = c("2011","2012"), pch = c(21,21), bty ="n", pt.bg=c("light blue","light green"))
