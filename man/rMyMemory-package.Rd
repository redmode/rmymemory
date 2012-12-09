\name{rMyMemory-package}
\alias{rMyMemory-package}
\alias{rMyMemory}
\docType{package}
\title{
rMyMemory: Provides machine translation from/to multiple languages
}
\description{
rMyMemory uses <http://mymemory.translated.net> translation API to provide simple interface to this service
}
\details{
\tabular{ll}{
Package: \tab rMyMemory\cr
Type: \tab Package\cr
Version: \tab 0.0.1\cr
Date: \tab 2012-12-09\cr
License: \tab MIT\cr
}
~~ An overview of how to use the package, including the most important functions ~~
}
\author{
Author: Alexander Gedranovich <gedranovich@gmail.com>

Maintainer: Alexander Gedranovich <gedranovich@gmail.com>
}
\references{
http://mymemory.translated.net
}
~~ Optionally other standard keywords, one per line, from file KEYWORDS in the R ~~
~~ documentation directory ~~
\keyword{ package }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
translate("Hello")
[1] "Привет"

translate("Hello", to="de")
[1] "Hallo"

translate("Hello", to="es")
[1] "¡Hola"
}
