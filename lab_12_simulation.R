generate_data = function(n,p) {
  covariates = matrix(rnorm(n*p,0,1),nrow=n,ncol=p)
  responses = rnorm(n,0,1)
  return(list(covariates,responses))
}


model_select = function(covariates,responses,cutoff) {
  linear.regression = lm(responses ~ covariates)
  linear.regression.low = covariates[linear.regression["p-value"] <= cutoff]
  return(lm(responses ~ linear.regression.low))
}


