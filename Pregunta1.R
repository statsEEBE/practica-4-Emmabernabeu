# poisson = contar eventos en un intervalo
# x= nº llamadas en 1 h
# x --> Poisson("parametro")
# E(x) = "parametro"(media de x)

#exp(-25)*(25^20)/factorial(20) = f(x)= dpois(20,25) [en R]

dpois(20,25)
X <-(0:50)
plot(X,dpois(X,25), type="h",col="red")

#F(x)= P(18<= x<=22)= ppois(22,25)-ppois(17,25)
plot(X,ppois(X,25), type="s",col="red")

#valor mediana = qpois(0.5,25) = F^-1(g)
#primer quartil = qpois(0.25,25)

#P(y=30) en 2 horas
#y--> poisson("parametro"*2)

# EJERCICIO
#APARTADO 1 --> P(T=0.033) = 0
#T=tiempo entre dos llamadas (continuo) --->exponencial (tiempo de espera)

#APARTADO 2 --> P(T>=0.052) = 1- P(T<=0.052)
1- pexp(0.052,25)

#APARTADO 3 --> rexp(1,25) 1 tiempo de espara ventre dos llamadas
rexp(500000,25)
mean(rexp(500000,25))
