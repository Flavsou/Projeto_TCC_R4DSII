#' Tirando NAs
#'
#' A função objetiva retirar os valores ausêntes (NA) de uma coluna específica.
#'
#' @param df Base de Dados
#' @param col Nome de uma coluna da base de dados.
#'
#' @return Retorna a base de dados sem os valores NAs da coluna especificada.
#'
tirando_na <- function(df, col){
  df %>% dplyr::filter(!is.na({{col}}))
}
