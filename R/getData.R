#' Get tickers data
#'
#' Get tickers data based on suggested list of tickers
#'
#' @param tickers
#'
#' @return Tickers Data
#'
#' @examples
#' getData()
#'
#' @export
getData<-function (tickers,from="2014-01-01",to=Sys.Date()){
  data<-lapply(tickers,getSymbols,from=from,to=to,auto.assign=FALSE)
  adjustedData<-NULL
  for(d in data){
    adjustedData<-cbind(adjustedData,d[,6])
  }
  # dataDf<-cbind(as.Date(row.names(dataDf)),dataDf)
  plot(adjustedData)
  return(adjustedData)
}
