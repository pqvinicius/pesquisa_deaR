# pesquisa_deaR
# Análise DEA (Data Envelopment Analysis) com Modelos CRS e VRS

Este projeto utiliza o pacote `deaR` no R para rodar modelos de análise envoltória de dados (DEA) usando as abordagens CRS (Constant Returns to Scale) e VRS (Variable Returns to Scale). O código foi otimizado e inspirado em Rodolfo Rocha Dos Santos, da UFSC (2023), para facilitar a análise e exportação dos resultados para arquivos Excel durante o meu trabalho de conclusão de curso na universidade federal de viçosa.

## Objetivo

O objetivo do código é realizar a análise de eficiência de diferentes conjuntos de dados de três anos (2021, 2022, 2023) usando dois modelos diferentes: CRS e VRS. Os resultados são exportados automaticamente para arquivos Excel com base no ano e no modelo utilizado.

## Estrutura do Código

### 1. Preparação dos Dados

Os dados são agrupados em listas, onde cada lista contém três conjuntos de dados para cada ano. Cada conjunto de dados representa as variáveis de entrada (inputs) e saída (outputs) do modelo DEA.

### 2. Função `rodar_modelo`

A função `rodar_modelo` é responsável por criar a base de dados, rodar o modelo DEA (tanto CRS quanto VRS), calcular as eficiências e exportar os resultados para arquivos Excel. Ela recebe os seguintes parâmetros:

- `dados`: Conjunto de dados a ser analisado.
- `modelo`: O modelo DEA a ser utilizado ("crs" ou "vrs").
- `ano`: O ano correspondente ao conjunto de dados (2021, 2022, ou 2023).
- `ni`: Número de variáveis de entrada (inputs).
- `no`: Número de variáveis de saída (outputs).

### 3. Loop de Execução

Os loops percorrem os anos e modelos para rodar as análises em cada conjunto de dados. A função `rodar_modelo` é chamada para cada combinação de dados, ano e modelo.

### 4. Exportação de Resultados

Os resultados de cada execução são exportados para arquivos Excel nomeados conforme o formato: `m<ano>model_<modelo>.xlsx`.

## Como Usar

1. **Instalar o pacote `deaR`**: Caso ainda não tenha o pacote `deaR` instalado, você pode instalá-lo utilizando o comando:
   ```R
   install.packages("deaR")

# pesquisa_deaR
