# Medida de locacao e dispersao
library(manipulate)


#manipulate(dnorm(x))
manipulate(curve(dnorm(x, mean = media, 
            sd = variancia), -15, 15, ylim = c(0,0.4), 
            ylab = "f(x)"), media = slider(-4, 4), 
           variancia = slider(1, 5))
