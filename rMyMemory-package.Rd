\name{rMyMemory-package}
\alias{rMyMemory-package}
\alias{rMyMemory}
\docType{package}
\title{
rMyMemory: Provides machine translation from/to multiple languages
}
\description{
rMyMemory uses <http://mymemory.translated.net> translation API to provide simple interface to this service
~~ A concise (1-5 lines) description of the package ~~
}
\details{
\tabular{ll}{
Package: \tab rMyMemory\cr
Type: \tab Package\cr
Version: \tab 0.0.1\cr
Date: \tab 2012-12-09\cr
License: \tab MIT\cr
Depends: \tab R (>= 2.15.0), RCurl, RJSONIO\cr
Built: \tab R 2.15.1; ; 2012-12-09 19:27:08 UTC; unix\cr
}

Index:
\preformatted{
rMyMemory-package       rMyMemory: Provides machine translation from/to
                        multiple languages
}
~~ An overview of how to use the package, including the most important functions ~~
}
\author{
Alexander Gedranovich <gedranovich@gmail.com>

Maintainer: Alexander Gedranovich <gedranovich@gmail.com>
}
\references{
http://mymemory.translated.net
}
~~ Optionally other standard keywords, one per line, from file KEYWORDS in the R documentation ~~
~~ directory ~~
\keyword{ package }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
# Default translation from English to Russian
translate("Hello")

# Translation from English to German
translate("Hello", to="de")

# Translation from German to Spanish
translate("Hallo", from="de", to="es")
}