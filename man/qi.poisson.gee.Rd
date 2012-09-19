\name{qi.poisson.gee}
\alias{qi.poisson.gee}
\title{Compute quantities of interest for ``poisson.gee'' Zelig models}
\usage{
  \method{qi}{poisson.gee}(obj, x, x1=NULL, y=NULL,
    num=1000, param=NULL)
}
\arguments{
  \item{obj}{a \code{zelig} object}

  \item{x}{a 'setx' object or NULL}

  \item{x1}{an optional 'setx' object}

  \item{y}{this parameter is reserved for simulating
  average treatment effects, though this feature is
  currently supported by only a handful of models}

  \item{num}{an integer specifying the number of
  simulations to compute}

  \item{param}{a parameters object}
}
\value{
  a list of key-value pairs specifying pairing titles of
  quantities of interest with their simulations
}
\description{
  Compute quantities of interest for ``poisson.gee'' Zelig
  models
}
\author{
  Matt Owen \email{mowen@iq.harvard.edu}
}

