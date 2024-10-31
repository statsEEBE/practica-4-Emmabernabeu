 # a) APARTADO 1 --> P(T>=13000) = 1- P(T<=13000)
#Tiempo --> exp
#E(T)=10000 =1/parametro

1- pexp(13000,1/10000)

# APARTADO 2 --> P(T<=t)=0.8
qexp(0.2,1/10000)


# b)APARTADO 1
set.seed(85)
simul <- rexp(100,1/10000)
simul
mean(simul)
median(simul)
var(simul)
