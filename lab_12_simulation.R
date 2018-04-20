generate_data(n,p) = function {
  covariates = matrix(rnorm(n*p,0,1),nrow=n,ncol=p)
  responses = rnorm(n,0,1)
  return(list(covariates,responses))
}


