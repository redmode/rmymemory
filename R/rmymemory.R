#
# Environment for internal variables
#
rmem.env <- new.env()
rmem.env$langFROM <- "en"
rmem.env$langTO   <- "ru"

#
# Sets default translation pair
#
setpair <- function(from, to){
  rmem.env$langFROM <- from
  rmem.env$langTO   <- to
}

#
# Translates phrase using "MT!' translator, i.e. Google Translate
#
translate <- function(txt, from=rmem.env$langFROM, to=rmem.env$langTO){
  
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