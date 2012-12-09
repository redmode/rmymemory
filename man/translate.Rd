\name{translate}
\alias{translate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Simple machine translation of text
}
\description{
Function uses MyMemory Translation API to find first available machine translation of given phrase. If machine translation is not available function returns first human translation with maximum quality score.
}
\usage{
translate(txt, from = "en", to = "ru")
}
%- maybe also 'usage' for other objects documented here.
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
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Function returns single string with translation.
}
\references{
%% ~put references to the literature/web site here ~
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
%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
# Default translation from English to Russian
translate("Hello")

# Translation from English to German
translate("Hello", to="de")

# Translation from German to Spanish
translate("Hallo", from="de", to="es")
}