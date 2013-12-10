\name{setpair}
\alias{setpair}
\docType{data}
\title{
Sets languages pair for translation
}
\description{
Function can be used to set default languages pair for translation with \code{rmymemory} package.
}
\usage{
setpair(from, to)
}
\arguments{
  \item{from}{
ISO2 code of origin language, e.g. "en" or "de"
}
  \item{to}{
ISO2 code of target language
}
}
\details{
Default languages pair is English to Russian.
}
\value{
Function returns nothing.
}
%\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
%}
\references{
\url{http://mymemory.translated.net/}
}
\author{
Alexander Gedranovich <gedranovich@gmail.com>
}
\seealso{
\code{\link[rmymemory:translate]{translate}}
}
\examples{
# Set language pair for German to Spain translation
setpair("de", "es")
}
\keyword{ utilities }
