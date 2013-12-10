'rmymemory' package uses <http://mymemory.translated.net> translation API to provide simple interface to this service

Run to install:
```{r}
install.packages("devtools")
library(devtools)
install_github("rmymemory", "redmode")
```

Usage:
```{r}
# Translation from English to French
translate("Hello!", from="en", to="fr")

# Default translation from English to Russian
translate("To be or not to be?")

# Change translate pair to 'English'->'Spanish'
setpair("en", "es")
translate("To be or not to be?")

# Batch translation
txt <- c("Hello", "world", "To be or not to be?")
sapply(txt, translate, to="de")
```