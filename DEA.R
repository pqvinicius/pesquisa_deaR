library(deaR)

# Codigo otimizado e inspirado em Rodolfo Rocha Dos Santos, da UFSC (2023)

# Dados em uma lista para facilitar o processamento
dados <- list(
  list(dea1m1, dea1m2, dea1m3),
  list(dea2m1, dea2m2, dea2m3),
  list(dea3m1, dea3m2, dea3m3)
)

anos <- c(2021, 2022, 2023)
modelos <- c("crs", "vrs")
multiplier <- TRUE

# Função para criar e rodar os modelos DEA
rodar_modelo <- function(dados, modelo, ano, ni, no) {
  # Criar base DEA
  dados_DEA <- make_deadata(dados, ni = ni, no = no)
  
  # Executar o modelo
  resultado <- model_basic(dados_DEA,
                           dmu_ref = 1:12,
                           dmu_eval = 1:12,
                           orientation = "oo",
                           rts = modelo,
                           compute_multiplier = multiplier)
  
  # Exportar o resumo para Excel
  summary(resultado, exportExcel = TRUE, filename = paste0("m", ano, "model_", modelo, ".xlsx"))
  
  # Retornar resultado
  return(resultado)
}

# Loop para rodar os modelos para todos os dados e anos
for (ano in anos) {
  for (modelo in modelos) {
    for (i in 1:3) {
      # Definir ni e no com base nos dados
      ni <- ifelse(i == 1, 1, ifelse(i == 2, 3, 2))
      no <- 2
      
      # Rodar o modelo
      rodar_modelo(dados[[i]][[i]], modelo, ano, ni, no)
    }
  }
}
