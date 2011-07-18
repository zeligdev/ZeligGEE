\name{robust.hook}
\alias{robust.hook}
\title{Classify Fitted Object as Naive or Robust...}
\usage{robust.hook(obj, Zall, Call, robust, ...)}
\description{Classify Fitted Object as Naive or Robust}
\details{This hook is ran after the call to the external mode. It sets the class of
the object (in addition to its other designations) as 'gee.naive' or 
'gee.robust' depending on the value of the \code{robust} parameter.}
\value{a \code{zelig} object with the additional class \code{gee.robust}
or \code{gee.naive}}
\author{Skyler}
\arguments{\item{obj}{a \code{zelig} object}
\item{Zall}{the call made to the \code{zelig} function}
\item{Call}{the call made to the external model}
\item{robust}{a logical specifying whether to use the naive or robust
covariance matrix}
\item{...}{ignored parameters}}
