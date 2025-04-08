# Carregar as bibliotecas necessárias
library(ggplot2)

# Dados hipotéticos sobre desastres naturais na Ásia entre 2000 e 2010 (em milhares)
anos <- c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010)
desastres <- c(120, 140, 110, 130, 160, 180, 150, 170, 200, 220, 240)  # Exemplo de desastres naturais

# Dados de países asiáticos (exemplo)
paises <- c("China", "Índia", "Indonésia", "Japão", "Filipinas", "Bangladesh", "Paquistão", "Nepal", "Sri Lanka", "Vietnã")

# Criando o dataframe
dados <- data.frame(anos, desastres, paises = rep(paises, length.out = length(anos)))

# Criar o gráfico
grafico <- ggplot(dados, aes(x = anos, y = desastres)) +
  geom_line(color = "black", size = 1.2) +  # Linha preta
  geom_point(color = "black", size = 3) +    # Pontos pretos
  theme_minimal(base_size = 15) +            # Tema minimalista
  theme(
    plot.background = element_rect(fill = "white"),  # Fundo branco
    panel.background = element_rect(fill = "white"), # Fundo do gráfico branco
    plot.title = element_text(color = "black", size = 20, face = "bold"),  # Título em preto
    axis.title = element_text(color = "black", size = 15),  # Títulos dos eixos em preto
    axis.text = element_text(color = "black", size = 12)    # Textos dos eixos em preto
  ) +
  labs(
    title = "Desastres Naturais na Ásia (2000-2010)",
    x = "Ano",
    y = "Número de Desastres (milhares)"
  )

# Exibir o gráfico
print(grafico)
