\name{clean.up.gamma.gee}
\alias{clean.up.gamma.gee}
\title{Remove Negative Simulations from Gamma GEE Parameter Simulations}
\usage{
  clean.up.gamma.gee(object, x, x1 = NULL,
    bootstrap = FALSE, bootfn = NULL, data = NULL, param,
    num = 1000)
}
\arguments{
  \item{object}{a \code{zelig} object}

  \item{x}{a \code{setx} object}

  \item{x1}{a \code{setx} object}

  \item{bootstrap}{a logical specifying whether the model
  is using a boot function}

  \item{bootfn}{the boot function}

  \item{data}{a data.frame used to simulated parameters}

  \item{param}{the original \code{param} object}

  \item{num}{an integer specifying the number of
  simulations to produce}
}
\description{
  Remove Negative Simulations from Gamma GEE Parameter
  Simulations
}

