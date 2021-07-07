# Criando o diretorio 
dir.create("plot3d")

# Estrutura do arquivo de imagens (png)
png(file="plot3d/tet%1d.png", width=602, height=462)

# Loop
par(mar=c(4,4,1,1))
for(a in 10:80){
  scatterplot3d(exptetra, type="h", 
                angle=a, pch=16, 
                xlim = c(0,5),
                ylim = c(0,5),
                #box = FALSE,
                grid = FALSE,
                main="Experimento dos tetraedros")
  
addgrids3d(exptetra, grid = c("xy", "xz", "yz"), xlim = c(0,5),
             ylim = c(0,5), angle=a, col.grid = "lightblue")
  
}
dev.off()