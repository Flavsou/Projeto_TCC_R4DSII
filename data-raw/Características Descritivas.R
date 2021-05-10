`%>%` <- magrittr::`%>%`

source("R/Remover NA.R")

pokemon <- readr::read_rds("data/pokemon.rds") %>%
  tirando_na(id_geracao)


# Quantos pokémos de cada geração são apresentados ------------------------

pokemon %>%
  dplyr::mutate(id_geracao = forcats::as_factor(id_geracao)) %>%
  dplyr::group_by(id_geracao) %>%
  dplyr::summarise(quantidade = dplyr::n()) %>%
  ggplot2::ggplot(ggplot2::aes(x = id_geracao, y = quantidade))+
  ggplot2::geom_col()+
  Rokemon::theme_gameboy()+
  ggplot2::labs(x = "Geração dos Pokémons",
                y = "Quantidade de Pokémons",
                title = "Quantidade de Pokémons Por Cada Geração"
  )+
  ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5))+
  ggplot2::geom_label(ggplot2::aes(x = id_geracao, y = quantidade,label = quantidade))



# Pokémons por tipo e por geração -----------------------------------------

pokemon %>%
  tidyr::pivot_longer(
    cols = dplyr::starts_with("tipo"),
    names_to = "especificacao",
    values_to = "tipos") %>%
  tirando_na(tipos) %>%
  dplyr::mutate(id_geracao = forcats::as_factor(id_geracao)) %>%
  dplyr::group_by(id_geracao, tipos) %>%
  dplyr::summarise(quantidade = dplyr::n()) %>%
  ggplot2::ggplot(ggplot2::aes(x = quantidade, y = tipos, fill = id_geracao))+
  ggplot2::geom_col()+
  ggplot2::labs(x = "Quantidade",
                y = "Tipos",
                title = "Pokémons por Tipo e po Geração"
  )+
  ggplot2::guides(fill= ggplot2::guide_legend(title = "Gerações"))+
  ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5))


