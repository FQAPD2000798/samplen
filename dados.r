devtools::document()

library(readxl) # ler arquivo xls
library(bootstrap) # obter o bootstrap
library(Rmisc) # obter o Intervalo de Confiança

cookie<-read_excel('estado.xlsx',sheet = 2)
muffin<-read_excel('estado.xlsx',sheet = 3)
pancake<-read_excel('estado.xlsx',sheet = 4)
sfiha<-read_excel('estado.xlsx',sheet = 5)
bread<-read_excel('estado.xlsx',sheet = 6)

save(cookie, file = 'data/cookie.RData')
save(muffin, file = 'data/muffin.RData')
save(pancake, file = 'data/pancake.RData')
save(sfiha, file = 'data/sfiha.RData')
save(bread, file = 'data/bread.RData')

View(muffin)
?data
rm(dados)
