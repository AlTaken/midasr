% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/midas_nlpr_methods.R
\name{predict.midas_nlpr}
\alias{predict.midas_nlpr}
\title{Predict method for non-linear parametric MIDAS regression fit}
\usage{
\method{predict}{midas_nlpr}(object, newdata, na.action = na.omit, ...)
}
\arguments{
\item{object}{\code{\link{midas_nlpr}} object}

\item{newdata}{a named list containing data for mixed frequencies. If omitted, the in-sample values are used.}

\item{na.action}{function determining what should be done with missing values in \code{newdata}. The most likely cause of missing values is the insufficient data for the lagged variables. The default is to omit such missing values.}

\item{...}{additional arguments, not used}
}
\value{
a vector of predicted values
}
\description{
Predicted values based on \code{midas_nlpr} object.
}
\details{
\code{predict.midas_nlpr} produces predicted values, obtained by evaluating regression function in the frame \code{newdata}. This means that the appropriate model matrix is constructed using only the data in \code{newdata}. This makes this function not very convenient for forecasting purposes. If you want to supply the new data for forecasting horizon only use the function \link{forecast.midas_r}. Also this function produces only static predictions, if you want dynamic forecasts use the \link{forecast.midas_r}.
}
\author{
Virmantas Kvedaras, Vaidotas Zemlys
}
