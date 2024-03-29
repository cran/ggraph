% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_node_sf.R
\name{geom_node_sf}
\alias{geom_node_sf}
\title{Show nodes as POINTs in geographical space}
\usage{
geom_node_sf(
  mapping = NULL,
  data = get_sf_nodes(),
  position = "identity",
  show.legend = NA,
  ...
)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[ggplot2:aes]{ggplot2::aes()}}
or \code{\link[ggplot2:aes_]{ggplot2::aes_()}}. By default geometry is mapped to the geometry in
the node data.}

\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[ggplot2:ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[ggplot2:fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{position}{Position adjustment, either as a string naming the adjustment
(e.g. \code{"jitter"} to use \code{position_jitter}), or the result of a call to a
position adjustment function. Use the latter if you need to change the
settings of the adjustment.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.

You can also set this to one of "polygon", "line", and "point" to
override the default legend.}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}
}
\description{
This geom is equivalent in functionality to \code{\link[ggplot2:ggsf]{ggplot2::geom_sf()}} for \code{POINT}
geometries and allows for plotting of nodes in their geographical space in
different shapes, colours and sizes.
}
\section{Aesthetics}{

\code{geom_node_sf} understand the following aesthetics.
\itemize{
\item alpha
\item colour
\item shape
\item size
\item filter
}
}

\examples{
library(tidygraph)

if (require("sfnetworks", quietly = TRUE)) {
  gr <- sfnetworks::as_sfnetwork(roxel)
  ggraph(gr, 'sf') +
    geom_node_sf(aes(color = centrality_betweenness()))
}

}
\seealso{
Other geom_node_*: 
\code{\link{geom_node_arc_bar}()},
\code{\link{geom_node_circle}()},
\code{\link{geom_node_point}()},
\code{\link{geom_node_range}()},
\code{\link{geom_node_text}()},
\code{\link{geom_node_tile}()},
\code{\link{geom_node_voronoi}()}
}
\author{
Lorena Abad
}
\concept{geom_node_*}
