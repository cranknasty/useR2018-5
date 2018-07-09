## oprah ####

library(memery)
src <- "images/oprah.gif"
img <- image_read(src)
img <- image_annotate(img, text = "YOU GET A VIGNETTE!", size = 20, 
               gravity = "north", location = "+0+10", color = "white", 
               font = "impact")
image_write(img, path = "images/oprah_vignette.gif")