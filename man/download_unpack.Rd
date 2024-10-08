% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_unpack.R
\name{download_unpack}
\alias{download_unpack}
\title{Download and unpack compressed data from repositories}
\usage{
download_unpack(
  input,
  targetdir = "input",
  repositories = NULL,
  debug = FALSE,
  unpack = TRUE,
  stopOnMissing = FALSE
)
}
\arguments{
\item{input}{a vector of files to be downloaded or a cfg list with settings to be used (e.g. containing
cfg$input, cfg$repositories). Settings in the config list will be overwritten by other arguments of
this function if they are not set to NULL}

\item{targetdir}{directory the files should be downloaded and extracted to}

\item{repositories}{a list of repositories (please pay attention to the list format!) in which the files
should be searched for. Files will be searched in all repositories until found, always starting with the
first repository in the list. The argument must have the format of a named list with the url of the repository
as name and a corresponding list of options such as username or password to access the repository as value. If
no options are required the value has to be NULL. (e.g.
list("ftp://my_pw_protected_server.de/data"=list(user="me",password=12345), "http://free_server.de/dat"=NULL))}

\item{debug}{switch for debug mode with additional diagnostic information}

\item{unpack}{if switched off the source files are purley downloaded}

\item{stopOnMissing}{Boolean indicating whether to stop if any file in
\code{files} could not be downloaded. Off (\code{FALSE}) by default. Can either be defined as a single boolean, which then
applies equally to all elements of \code{files}, or can be defined individually for each element in \code{files}.}
}
\value{
Information about the download process in form of a data.frame with data sets as row names and repositories
(where it was downloaded from) and corresponding md5sum as columns
}
\description{
Downloads a list of tgz files from a list of repos and unpacks them. If a file is no .tgz-file it will
be only downloaded.
}
\author{
Jan Philipp Dietrich
}
