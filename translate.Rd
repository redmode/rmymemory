\name{translate}
\alias{translate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
translate(txt, from = "en", to = "ru")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{txt}{
%%     ~~Describe \code{txt} here~~
}
  \item{from}{
%%     ~~Describe \code{from} here~~
}
  \item{to}{
%%     ~~Describe \code{to} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (txt, from = "en", to = "ru") 
{
    url <- paste("http://mymemory.translated.net/api/get?q=", 
        txt, "&langpair=", from, "|", to, sep = "")
    url <- gsub(" ", "\%20", url)
    json <- fromJSON(getURL(url))
    df <- as.data.frame(do.call(rbind, json$matches))
    tr <- unlist(df$translation[df$"created-by" == "MT!"])
    if (is.null(tr)) {
        tr <- df$translation[[1]]
    }
    return(tr)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
