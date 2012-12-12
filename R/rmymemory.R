#
#
#
langFROM <- "en"
langTO   <- "ru"

#
#
#
setpair <- function(from=langFROM, to=langTO){
  langFROM <- from
  langTO   <- to
}

#
#
#
translate <- function(txt, from=langFROM, to=langTO){
  
  url <- paste("http://mymemory.translated.net/api/get?q=", txt, "&langpair=", from, "|", to, sep="")
  url <- gsub(" ", "%20", url)
  
  json <- fromJSON(getURL(url))
  
  if(json$responseStatus == 403){
    tr <- txt
  }
  else{
    df <- as.data.frame(do.call(rbind, json$matches))
    tr <- unlist(df$translation[df$"created-by"=="MT!"])
    if(is.null(tr)){
      tr <- df$translation[[1]]
    }
  }
  
  return (as.character(tr))
}