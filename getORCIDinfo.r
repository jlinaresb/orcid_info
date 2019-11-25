get.orcid.info = function(query){
  
  if (!('rorcid' %in% installed.packages()[,"Package"])){
    message('Installing packages...')
    install.packages('rorcid')
  } else {
    require(rorcid)
  }
  
  q = orcid(query = query, rows = 200)
  ids = q$`orcid-identifier.path`
  
  data = list()
  info = list()
  for (i in 1:length(ids)) {
    
    info[[i]] = as.orcid(x = ids[i])
    
    data[[i]] = list(
      orcid = ids[i],
      scopus.id = info[[i]][[1]]$`external-identifiers`$`external-identifier`$`external-id-value`,
      first.name = info[[i]][[1]]$name$`given-names`$value,
      last.name = info[[i]][[1]]$name$`family-name`$value,
      email = info[[i]][[1]]$emails$email$email,
      position = info[[i]][[1]]$biography$content,
      keywords = info[[i]][[1]]$keywords$keyword$content,
      country = info[[i]][[1]]$addresses$address$country.value
    )
  }
  
  df = data.frame(do.call(rbind, data))
  df[df=="NULL"] <- NA
  
  return(df)
  
}