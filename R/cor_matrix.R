#' Correlation Matrix Function
#'
#' The input for this function should be an individual year.
#' The function should limit the data for that year to include numeric continuous variables only (not categorical data).
#' The output should be the correlation matrix for all numeric variables in the data for that year.
#'
#' @param dataset
#' @param n  Input individual year. Example: 2000
#' @export
#' @examples
#' cor_matrix_nba("dataset,2000")

cor_matrix <- function(dataset,n){
  year_nba<-subset(dataset,dataset$Year==n)
  numeric <- purrr::keep(year_nba,is.numeric)
  numeric<-na.omit(numeric)
  M<-cor(numeric)
  head(round(M,2))
  corrplot::corrplot(M, method="circle")
}
