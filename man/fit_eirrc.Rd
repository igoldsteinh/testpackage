% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_eirrc.R
\name{fit_eirrc}
\alias{fit_eirrc}
\title{fit_eirrc}
\usage{
fit_eirrc(
  data,
  obstimes,
  param_change_times,
  priors_only,
  n_samples = 250,
  n_chains = 4,
  seed = 1,
  gamma_sd = 0.2,
  gamma_mean = log(1/4),
  nu_sd = 0.2,
  nu_mean = log(1/7),
  eta_sd = 0.2,
  eta_mean = log(1/18),
  rho_gene_sd = 1,
  rho_gene_mean = 0,
  tau_sd = 1,
  tau_mean = 0,
  I_init_sd = 0.05,
  I_init_mean = 489,
  R1_init_sd = 0.05,
  R1_init_mean = 2075,
  E_init_sd = 0.05,
  E_init_mean = 225,
  lambda_mean = 5.685528,
  lambda_sd = 2.178852,
  df_shape = 2,
  df_scale = 10,
  sigma_rt_sd = 0.2,
  sigma_rt_mean = log(0.1),
  rt_init_sd = 0.1,
  rt_init_mean = log(0.88)
)
}
\arguments{
\item{data}{vector: log RNA concentrations}

\item{obstimes}{vector: times RNA concentrations are observed}

\item{param_change_times}{vector: times reproduction number is allowed to change}

\item{priors_only}{boolean: if true, function produces draws from the joint prior}

\item{n_samples}{integer: number of posterior samples AFTER burn-in, total will be twice n_samples}

\item{n_chains}{integer: number of chains}

\item{seed}{integer: random seed}

\item{gamma_sd}{float64: standard deviation for normal prior of log gamma}

\item{gamma_mean}{float64: mean for normal prior of log gamma}

\item{nu_sd}{float64: standard deviation for normal prior of log nu}

\item{nu_mean}{float64: mean for normal prior of log nu}

\item{eta_sd}{float64: standard deviation for normal prior of log eta}

\item{eta_mean}{float64: mean for normal prior of log eta}

\item{rho_gene_sd}{float64: standard devation for normal prior of log rho}

\item{rho_gene_mean}{float64: mean for normal prior of log rho}

\item{tau_sd}{float64: standard deviation for normal prior of log tau}

\item{tau_mean}{float64: mean for normal prior of log tau}

\item{I_init_sd}{float64: standard deviation for normal prior of I_init}

\item{I_init_mean}{float64: mean for normal prior of I_init}

\item{R1_init_sd}{float64: standard deviation for normal prior of R1_init}

\item{R1_init_mean}{float64: mean for normal prior of R1_init}

\item{E_init_sd}{float64: standard deviation for normal prior of E_init}

\item{E_init_mean}{float64: mean for normal prior of E_init}

\item{lambda_mean}{float64: mean for normal prior of logit lambda}

\item{lambda_sd}{float64: standard deviation for normal prior of logit lambda}

\item{df_shape}{float64: shape parameter for gamma prior of df}

\item{df_scale}{float64: scale parameter for gamma prior of df}

\item{sigma_rt_sd}{float64: standard deviation for normal prior on log sigma rt}

\item{sigma_rt_mean}{float64: mean for normal prior on log sigma rt}

\item{rt_init_sd}{float64: standard deviation for normal prior on log rt_init}

\item{rt_init_mean}{float64: mean for normal prior on log rt_init}
}
\value{
A Turing chains object
}
\description{
Call `fit_eirrc` in julia to fit the EIRR model to observed wastewater concentrations.
}
\details{
Default priors are for scenario 1, and assume the model is being fit to a daily time scale
}
