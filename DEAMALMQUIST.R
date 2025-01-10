library(deaR)

dados_malmquist1 <- make_malmquist(M1,
                                 nper = 3,
                                 arrangement = "horizontal",
                                 ni = 1,
                                 no =2)
dados_malmquist2 <- make_malmquist(M2,
                                   nper = 3,
                                   arrangement = "horizontal",
                                   ni =3,
                                   no =2)
dados_malmquist3 <- make_malmquist(M3,
                                   nper = 3,
                                   arrangement = "horizontal",
                                   ni =2,
                                   no =2)
resultado_malmquist1 <- malmquist_index(dados_malmquist1, orientation = "oo")
resultado_malmquist2 <-malmquist_index(dados_malmquist2, orientation = "oo")
resultado_malmquist3 <- malmquist_index(dados_malmquist3, orientation = "oo")
                                 
summary(resultado_malmquist1, exportExcel = TRUE, filename = "M1M.XLSX")
summary(resultado_malmquist2, exportExcel = TRUE, filename = "M2M.XLSX")
summary(resultado_malmquist3, exportExcel = TRUE, filename = "M3M.XLSX")