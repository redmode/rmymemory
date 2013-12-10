\name{translate}
\alias{translate}
\title{
Simple machine translation of text
}
\description{
Function uses MyMemory Translation API to find first available machine translation of given phrase. If machine translation is not available function returns first human translation with maximum quality score.
}
\usage{
translate(txt, from = langFROM, to = langTO)
}
\arguments{
  \item{txt}{
Text to translate
}
  \item{from}{
ISO2 code of origin language, e.g. "en" or "de"
}
  \item{to}{
ISO2 code of target language
}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
Function returns single string with translation.
}
\references{
\url{http://mymemory.translated.net/}
}
\author{
Alexander Gedranovich <gedranovich@gmail.com>
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\keyword{ utilities }
\seealso{
\code{\link[rmymemory:setpair]{setpair}}
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

# Batch translation
txt <- c("Hello", "world", "To be or not to be?")
sapply(txt, translate, to="es")
}