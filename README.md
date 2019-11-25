# Prerequisites

This function is a modification of the 'rorcid' package, for quick consultation of researchers. The package is installed and loaded into the function.

```{r}
install.packages('rorcid')
require(rorcid)
```

For authentication and use of the function it is necessary to log in to the ORCID website.

# Output

This function obtains information from the ORCID database with the indicators shown below (if public):

* ORCID
* Scopus ID
* First Name
* Laste Name
* email
* Career position
* Keywords
* Country

The output of the function is a data.frame object with the above indicators as variables.


# Limitation

Only 200 observations can be obtained for each query.

# Usage example

```{r}
query = get.orcid.info('Machine Learning , bioinformatics')
```