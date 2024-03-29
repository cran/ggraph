% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_node_text.R
\name{geom_node_text}
\alias{geom_node_text}
\alias{geom_node_label}
\title{Annotate nodes with text}
\usage{
geom_node_text(
  mapping = NULL,
  data = NULL,
  position = "identity",
  parse = FALSE,
  nudge_x = 0,
  nudge_y = 0,
  check_overlap = FALSE,
  show.legend = NA,
  repel = FALSE,
  ...
)

geom_node_label(
  mapping = NULL,
  data = NULL,
  position = "identity",
  parse = FALSE,
  nudge_x = 0,
  nudge_y = 0,
  label.padding = unit(0.25, "lines"),
  label.r = unit(0.15, "lines"),
  label.size = 0.25,
  show.legend = NA,
  repel = FALSE,
  ...
)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[ggplot2:aes]{ggplot2::aes()}}
or \code{\link[ggplot2:aes_]{ggplot2::aes_()}}. By default x and y are mapped to x and y in
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

\item{position}{Position adjustment, either as a string, or the result of
a call to a position adjustment function. Cannot be jointly specified with
\code{nudge_x} or \code{nudge_y}.}

\item{parse}{If \code{TRUE}, the labels will be parsed into expressions and
displayed as described in \code{?plotmath}.}

\item{nudge_x, nudge_y}{Horizontal and vertical adjustment to nudge labels by.
Useful for offsetting text from points, particularly on discrete scales.}

\item{check_overlap}{If \code{TRUE}, text that overlaps previous text in the
same layer will not be plotted. \code{check_overlap} happens at draw time and in
the order of the data. Therefore data should be arranged by the label
column before calling \code{geom_text()}. Note that this argument is not
supported by \code{geom_label()}.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.
It can also be a named logical vector to finely select the aesthetics to
display.}

\item{repel}{If \code{TRUE}, text labels will be repelled from each other
to avoid overlapping, using the \code{GeomTextRepel} geom from the
ggrepel package.}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}

\item{label.padding}{Amount of padding around label. Defaults to 0.25 lines.}

\item{label.r}{Radius of rounded corners. Defaults to 0.15 lines.}

\item{label.size}{Size of label border, in mm.}
}
\description{
These geoms are equivalent in functionality to \code{\link[ggplot2:geom_text]{ggplot2::geom_text()}} and
\code{\link[ggplot2:geom_text]{ggplot2::geom_label()}} and allows for simple annotation of nodes.
}
\section{Aesthetics}{

\code{geom_node_text} understands the following aesthetics. Bold aesthetics are
automatically set, but can be overwritten. Italic aesthetics are required but
not set by default
\itemize{
\item \strong{x}
\item \strong{y}
\item \emph{label}
\item alpha
\item angle
\item colour
\item family
\item fontface
\item hjust
\item lineheight
\item size
\item vjust
}
}

\examples{
require(tidygraph)
gr <- create_notable('bull') \%>\%
  mutate(class = sample(letters[1:3], n(), replace = TRUE))

ggraph(gr, 'stress') +
  geom_node_point(aes(label = class))

ggraph(gr, 'stress') +
  geom_node_label(aes(label = class), repel = TRUE)
}
\seealso{
Other geom_node_*: 
\code{\link{geom_node_arc_bar}()},
\code{\link{geom_node_circle}()},
\code{\link{geom_node_point}()},
\code{\link{geom_node_range}()},
\code{\link{geom_node_sf}()},
\code{\link{geom_node_tile}()},
\code{\link{geom_node_voronoi}()}
}
\author{
Thomas Lin Pedersen
}
\concept{geom_node_*}
