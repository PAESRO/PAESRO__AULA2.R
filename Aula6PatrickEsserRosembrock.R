Aula 6
# API (PORTA/FORMA DE ACESSO REMOTO)
# ACESSAMOS OS DADOS DO BANCO MUNDIAL (WORLD BANK)
# WORLD DEVELOPMENT INDICATORS (WDI)
# INDICADORES DE DESENVOLVIMENTO MUNDIAL

# PIB (PRODUTO INTERNO BRUTO)

library(WDI) # CARREGAR BIBLIOTECA/PACOTE

options(scipen = 999) # REMOVER A NOT. CIENT.
# DADOS EM PAINEL
dadospib <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD')

paises <- c('BR', 'US')

dadospibbrus <- WDI(country = paises,
                    indicator = 'NY.GDP.MKTP.CD')

# CORTE TRANSVERSAL
dadospib2023 <- WDI(country = 'all',
                    indicator = 'NY.GDP.MKTP.CD',
                    start = 2023, end = 2023)

# SÉRIE TEMPORAL
dadospibbr <- WDI(country = 'BR',
                  indicator = 'NY.GDP.MKTP.CD')

#gráficos
# Biblioteca ggplot2(tidyverse)
install.packages('tidyverse')

## Dado em Painel
library("tidyverse")

grafpainel <- ggplot( dadospib,
                     mapping = aes(y = NY.GDP.MKTP.CD,
                                    x = year)) +
  geom_point()

print(grafpainel)

# CORTE TRANSVERSAL 

grafcorte <- ggplot(dadospib2023,
                    mapping = aes(y = NY.GDP.MKTP.CD,
                                   x = year)) + 
  geom_point()
 print(grafcorte)

 # série temporal 
 
 grafserie <- ggplot(dadospibbr,
                     mapping = aes(y = NY.GDP.MKTP.CD,
                                   x = year)) +
   geom_line(color = 'red')
print(grafserie) 

install.packages("plotly")

library(plotly)

ggplotly(grafserie)