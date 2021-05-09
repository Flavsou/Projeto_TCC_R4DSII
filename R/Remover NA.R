tirando_na <- function(df, col){
  df %>% dplyr::filter(!is.na({{col}}))
}
