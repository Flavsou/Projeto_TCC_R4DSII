`%>%` <- magrittr::`%>%`

pokemon <- readr::read_rds("data/pokemon.rds") %>%
  tirando_na(id_geracao)

# Ataque ------------------------------------------------------------------

# Gráfico não Ordenado
pokemon %>%
  dplyr::mutate(id_geracao = forcats::as_factor(id_geracao)) %>%
  dplyr::group_by(id_geracao) %>%
  dplyr::summarise(dplyr::across(
    .cols = c(hp, ataque, defesa, velocidade),
    .fns = mean, na.rm = TRUE)) %>%
  ggplot2::ggplot(ggplot2::aes(x = id_geracao, y = ataque))+
  ggplot2::geom_col()+
  Rokemon::theme_gameboy()+
  ggplot2::labs(x = "Geração",
                y = "Média de Força de Ataque",
                title = "Força de Ataque dos Pokemóns ao longo das Gerações"
  )+
  ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5))


# Gráfico Ordenado por maior média
pokemon %>%
  dplyr::mutate(id_geracao = forcats::as_factor(id_geracao)) %>%
  dplyr::group_by(id_geracao) %>%
  dplyr::summarise(dplyr::across(
    .cols = c(hp, ataque, defesa, velocidade),
    .fns = mean, na.rm = TRUE)) %>%
  dplyr::mutate(
    id_geracao = forcats::fct_reorder(id_geracao, ataque)
  ) %>%
  ggplot2::ggplot(ggplot2::aes(x = id_geracao, y = ataque))+
  ggplot2::geom_col()+
  Rokemon::theme_gameboy()+
  ggplot2::labs(x = "Geração",
                y = "Média de Força de Ataque",
                title = "Força de Ataque dos Pokemóns ao longo das Gerações"
  )+
  ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5))


# Defesa ------------------------------------------------------------------

# Gráfico não Ordenado
pokemon %>%
  dplyr::mutate(id_geracao = forcats::as_factor(id_geracao)) %>%
  dplyr::group_by(id_geracao) %>%
  dplyr::summarise(dplyr::across(
    .cols = c(hp, ataque, defesa, velocidade),
    .fns = mean, na.rm = TRUE)) %>%
  ggplot2::ggplot(ggplot2::aes(x = id_geracao, y = defesa))+
  ggplot2::geom_col()+
  Rokemon::theme_gameboy()+
  ggplot2::labs(x = "Geração",
                y = "Média de Força de Defesa",
                title = "Força de Defesa dos Pokemóns ao longo das Gerações"
  )+
  ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5))


# Gráfico Ordenado por maior média
pokemon %>%
  dplyr::mutate(id_geracao = forcats::as_factor(id_geracao)) %>%
  dplyr::group_by(id_geracao) %>%
  dplyr::summarise(dplyr::across(
    .cols = c(hp, ataque, defesa, velocidade),
    .fns = mean, na.rm = TRUE)) %>%
  dplyr::mutate(
    id_geracao = forcats::fct_reorder(id_geracao, defesa)
  ) %>%
  ggplot2::ggplot(ggplot2::aes(x = id_geracao, y = defesa))+
  ggplot2::geom_col()+
  Rokemon::theme_gameboy()+
  ggplot2::labs(x = "Geração",
                y = "Média de Força de Defesa",
                title = "Força de Defesa dos Pokemóns ao longo das Gerações"
  )+
  ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5))


# Velocidade --------------------------------------------------------------

# Gráfico não Ordenado
pokemon %>%
  dplyr::mutate(id_geracao = forcats::as_factor(id_geracao)) %>%
  dplyr::group_by(id_geracao) %>%
  dplyr::summarise(dplyr::across(
    .cols = c(hp, ataque, defesa, velocidade),
    .fns = mean, na.rm = TRUE)) %>%
  ggplot2::ggplot(ggplot2::aes(x = id_geracao, y = velocidade))+
  ggplot2::geom_col()+
  Rokemon::theme_gameboy()+
  ggplot2::labs(x = "Geração",
                y = "Média Velocidade",
                title = "A velocidade dos Pokemóns ao longo das Gerações"
  )+
  ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5))


# Gráfico Ordenado por maior média

pokemon %>%
  dplyr::mutate(id_geracao = forcats::as_factor(id_geracao)) %>%
  dplyr::group_by(id_geracao) %>%
  dplyr::summarise(dplyr::across(
    .cols = c(hp, ataque, defesa, velocidade),
    .fns = mean, na.rm = TRUE)) %>%
  dplyr::mutate(
    id_geracao = forcats::fct_reorder(id_geracao, velocidade)
  ) %>%
  ggplot2::ggplot(ggplot2::aes(x = id_geracao, y = velocidade))+
  ggplot2::geom_col()+
  Rokemon::theme_gameboy()+
  ggplot2::labs(x = "Geração",
                y = "Média Velocidade",
                title = "A velocidade dos Pokemóns ao longo das Gerações"
  )+
  ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5))



# HP ----------------------------------------------------------------------

# Gráfico não Ordenado
pokemon %>%
  dplyr::mutate(id_geracao = forcats::as_factor(id_geracao)) %>%
  dplyr::group_by(id_geracao) %>%
  dplyr::summarise(dplyr::across(
    .cols = c(hp, ataque, defesa, velocidade),
    .fns = mean, na.rm = TRUE)) %>%
  ggplot2::ggplot(ggplot2::aes(x = id_geracao, y = hp))+
  ggplot2::geom_col()+
  Rokemon::theme_gameboy()+
  ggplot2::labs(x = "Geração",
                y = "Média hp",
                title = "O Hp dos Pokemóns ao longo das Gerações"
  )+
  ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5))


# Gráfico Ordenado por maior média

pokemon %>%
  dplyr::mutate(id_geracao = forcats::as_factor(id_geracao)) %>%
  dplyr::group_by(id_geracao) %>%
  dplyr::summarise(dplyr::across(
    .cols = c(hp, ataque, defesa, velocidade),
    .fns = mean, na.rm = TRUE)) %>%
  dplyr::mutate(
    id_geracao = forcats::fct_reorder(id_geracao, hp)
  ) %>%
  ggplot2::ggplot(ggplot2::aes(x = id_geracao, y = hp))+
  ggplot2::geom_col()+
  Rokemon::theme_gameboy()+
  ggplot2::labs(x = "Geração",
                y = "Média hp",
                title = "O Hp dos Pokemóns ao longo das Gerações"
  )+
  ggplot2::theme(plot.title = ggplot2::element_text(hjust = 0.5))
