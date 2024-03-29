% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layout_linear.R
\name{layout_tbl_graph_linear}
\alias{layout_tbl_graph_linear}
\title{Place nodes on a line or circle}
\usage{
layout_tbl_graph_linear(
  graph,
  circular,
  sort.by = NULL,
  use.numeric = FALSE,
  offset = pi/2,
  weight = NULL
)
}
\arguments{
\item{graph}{An \code{tbl_graph} object}

\item{circular}{Logical. Should the layout be transformed to a circular
representation. Defaults to \code{FALSE}.}

\item{sort.by}{The name of a node variable to sort the nodes by.}

\item{use.numeric}{Logical. Should a numeric sort.by attribute be used as the
actual x-coordinates in the layout. May lead to overlapping nodes. Defaults
to FALSE}

\item{offset}{If \code{circular = TRUE}, where should it begin. Defaults to
\code{pi/2} which is equivalent to 12 o'clock.}

\item{weight}{A weight for each node. Nodes will be spread out according to
their weight so that nodes with heigher weight will have more space around
them. Ignored if \code{use.numeric = TRUE}}
}
\value{
A data.frame with the columns \code{x}, \code{y}, \code{circular} as
well as any information stored as node variables in the tbl_graph object.
Further, if \code{circular = FALSE} a \code{width} column and if \code{circular = TRUE} a
\code{start}, \code{end}, and \code{r0} column.
}
\description{
This layout puts all nodes on a line, possibly sorted by a node attribute. If
\code{circular = TRUE} the nodes will be laid out on the unit circle instead.
In the case where the \code{sort.by} attribute is numeric, the numeric values
will be used as the x-position and it is thus possible to have uneven spacing
between the nodes.
}
\seealso{
Other layout_tbl_graph_*: 
\code{\link{layout_tbl_graph_auto}()},
\code{\link{layout_tbl_graph_backbone}()},
\code{\link{layout_tbl_graph_cactustree}()},
\code{\link{layout_tbl_graph_centrality}()},
\code{\link{layout_tbl_graph_circlepack}()},
\code{\link{layout_tbl_graph_dendrogram}()},
\code{\link{layout_tbl_graph_eigen}()},
\code{\link{layout_tbl_graph_fabric}()},
\code{\link{layout_tbl_graph_focus}()},
\code{\link{layout_tbl_graph_hive}()},
\code{\link{layout_tbl_graph_htree}()},
\code{\link{layout_tbl_graph_igraph}()},
\code{\link{layout_tbl_graph_manual}()},
\code{\link{layout_tbl_graph_matrix}()},
\code{\link{layout_tbl_graph_metro}()},
\code{\link{layout_tbl_graph_partition}()},
\code{\link{layout_tbl_graph_pmds}()},
\code{\link{layout_tbl_graph_sf}()},
\code{\link{layout_tbl_graph_stress}()},
\code{\link{layout_tbl_graph_treemap}()},
\code{\link{layout_tbl_graph_unrooted}()}
}
\concept{layout_tbl_graph_*}
