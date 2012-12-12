\name{rmymemory-package}
\alias{rmymemory-package}
\alias{rmymemory}
\docType{package}
\title{
rmymemory: Provides machine translation from/to multiple languages
}
\description{
rmymemory uses <http://mymemory.translated.net> translation API to provide simple interface to this service
}
\details{
\tabular{ll}{
Package: \tab rmymemory\cr
Type: \tab Package\cr
Version: \tab 0.0.1\cr
Date: \tab 2012-12-09\cr
License: \tab MIT\cr
Depends: \tab R (>= 2.15.0), RCurl, RJSONIO\cr
Built: \tab R 2.15.1; ; 2012-12-09 19:27:08 UTC; unix\cr
}

Index:
\preformatted{
rmymemory-package       rmymemory: Provides machine translation from/to
                        multiple languages
}
%~~ An overview of how to use the package, including the most important functions ~~
}
\author{
Alexander Gedranovich <gedranovich@gmail.com>

Maintainer: Alexander Gedranovich <gedranovich@gmail.com>
}
\references{
\url{http://mymemory.translated.net}
}

\keyword{ utilities }
\seealso{
\code{\link[rmymemory:translate]{translate}}
}
\examples{
# Default translation from English to Russian
translate("Hello")

# Translation from English to German
translate("Hello", to="de")

# Translation from German to Spanish
translate("Hallo", from="de", to="es")

# Sentence translation
translate("To be or not to be?")

# Multiple texts translation
txt <- c("Hello", "world", "To be or not to be?")
sapply(txt, translate, to="es")
}