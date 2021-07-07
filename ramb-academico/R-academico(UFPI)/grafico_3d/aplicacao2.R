library(MASS)
library(scatterplot3d)
x <- c(1, 1, 1, 1, 2, 2, 2, 3, 3, 4)
y <- c(1, 2, 3, 4, 2, 3, 4, 3, 4, 4)
p <- c(1/16, 1/16, 1/16, 1/16, 2/16, 
       1/16, 1/16, 3/16, 1/16, 4/16)

exptetra <- data.frame(x,y,Prob = fractions(p))

# Grafico 3d
par(mfrow = c(1,1))
a = 15 #angle
plot3d <- scatterplot3d(exptetra, type="h", 
              angle=a, pch=16, 
              xlim = c(0,5),
              ylim = c(0,5),
              zlim = c(0, 0.25),
              zlab = expression(P[XY](xy)),
              box = T,
              grid = FALSE,
              main="Experimento dos tetraedros")

addgrids3d(exptetra, grid = c("xy", "xz", "yz"), xlim = c(0,5),
           ylim = c(0,5), zlim = c(0,0.25), angle=a, col.grid = "lightblue")

plot3d$points3d(exptetra, type = "p", cex = 2,pch = 20)



