#' Year Top 10 NBA players Function
#'
#'This function allows you to find the top 10 NBA players with highest points for a certain year.
#'Your input will be the year.
#' @param n  Input individual year. Example: 2000
#'
#' @return the name of the top 10 players
#' @export
#'
#' @examples
#' top_10_player_pts("dataset,2000")
top_10_player_pts <- function(dataset,n){

  a<-subset(dataset,dataset$Year==n)
  a<-a[,c(1,2,52)]
  a<-a[order(-a$PTS),]
  a[1:10,]
}

