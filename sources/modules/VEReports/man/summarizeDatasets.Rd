% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QueryDatastore.R
\name{summarizeDatasets}
\alias{summarizeDatasets}
\title{Summarize the values in a table dataset according to the values in another
dataset in the table.}
\usage{
summarizeDatasets(Expr, Units_, By_ = NULL, Breaks_ls = NULL, Table,
  Group, QueryPrep_ls)
}
\arguments{
\item{Expr}{a string specifying an expression to use to summarize the
datasets. Operands in the expression are the names of datasets to use to
create the summary. The only operators that may be used are '+', '-', '*',
and '/'. The only functions that may be used are 'sum', 'count', 'mean', and
'wtmean'. The calculation can include data indexing (subsetting) expressions.
Note that all the datasets must be located in the table specified by the
'Table' argument.}

\item{Units_}{a named character vector identifying the units to be used for
each operand in the expression. The values are allowable VE units values.
The names are the names of the operands in the expression. The vector must
have an element for each operand in the expression. Setting the value equal
to "" for an operand will use the units stored in the datastore.}

\item{By_}{a vector identifying the names of the datasets that are used to
identify datasets to be used to group the expression calculation. If NULL,
then the entire datasets are used in the calculation. Note that all the
datasets must be located in the table specified by the 'Table' argument.}

\item{Breaks_ls}{a named list of vectors identifying the values to use for
splitting numeric datasets into categories. The names must be the same as
names of the datasets identified in the By_ vector. Each named component of
the list is a vector of values to be used to split the respective By
dataset into groups. Minimum and maximum values do not need to be specified
as they are computed from the dataset.}

\item{Table}{a string identifying the table where the datasets are located.}

\item{Group}{a string identifying the group where the dataset is located.}

\item{QueryPrep_ls}{a list created by calling the prepareForDatastoreQuery
function which identifies the datastore location(s), listing(s), and
functions for listing and read the datastore(s).}
}
\value{
If the By_ argument is NULL or has a length of 1, the value of the
specified expression is calculated. Note that if the expression produces a
vector of more than one number the entire vector of numbers will be returned.
Users should check their expression to confirm that it will produce a single
number if that is what is desired. If the By_ argument is not null, values
will be returned for each group in the datasets specified in the By_
argument.
}
\description{
\code{summarizeDataset} summarize the values in a table dataset according to
the values in another dataset in the table.
}
\details{
This function computes either the total, count, average, or weighted average
values for a table dataset or groups of a table dataset. For example, the
total income of households by Azone could be computed.
}
