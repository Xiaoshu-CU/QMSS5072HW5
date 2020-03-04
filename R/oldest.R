#' Oldest Player Function
#'
#' This function provides the oldest player in the NBA data for that year.
#' The input should be an individual year.
#'
#' @param dataset
#' @param n Input individual year. Example: 2000
#' @export
#' @examples
#' oldest("dataset,2000")

oldest<- function(dataset,n){

  a<-subset(dataset,dataset$Year==n)
  a<-a[,c(1,2,4)]
  a<-a[a$Age == max(a$Age),]
  a[1,]

}
