\name{clean.up.gamma.gee}
\alias{clean.up.gamma.gee}
\title{Remove Negative Simulations from Gamma GEE Parameter Simulations...}
\usage{clean.up.gamma.gee(object, x, x1, bootstrap=FALSE, bootfn, data, param,
    num=1000)}
\description{Remove Negative Simulations from Gamma GEE Parameter Simulations}
\arguments{\item{object}{a \code{zelig} object}
\item{x}{a \code{setx} object}
\item{x1}{a \code{setx} object}
\item{bootstrap}{a logical specifying whether the model is using a boot function}
\item{bootfn}{the boot function}
\item{data}{a data.frame used to simulated parameters}
\item{param}{the original \code{param} object}
\item{num}{an integer specifying the number of simulations to produce}}
