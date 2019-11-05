# Prerequisites

Esta función se basa en el paquete 'rorcid', por lo que su previa instalación es necesaria.

```{r}
install.packages('rorcid')
require(rorcid)
```


# Objective

Esta función obtiene información de la base de datos de ORCID con los indicadores que se muestran a continuación:

* ORCID
* Scopus ID
* First Name
* Laste Name
* email
* Career position
* Keywords
* Country

Es útil en la búsqueda de nuevos colaboradores entre diferentes grupos de investigación.