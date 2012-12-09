require(RCurl)
require(RJSONIO)

#
#
#
translate <- function(txt, from="en", to="ru"){
  
  url <- paste("http://mymemory.translated.net/api/get?q=", txt, "&langpair=", from, "|", to, sep="")
  url <- gsub(" ", "%20", url)
  
  json <- fromJSON(getURL(url))
  
  df <- as.data.frame(do.call(rbind, json$matches))
  tr <- unlist(df$translation[df$"created-by"=="MT!"])
  if(is.null(tr)){
    tr <- df$translation[[1]]
  }
  
  return (tr)
}