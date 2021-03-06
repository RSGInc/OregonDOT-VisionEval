% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validation.R
\name{SpecRequirements}
\alias{SpecRequirements}
\title{List basic module specifications to check for correctness}
\usage{
SpecRequirements()
}
\value{
A list comprised of six named components: RunBy, NewInpTable,
NewSetTable, Inp, Get, Set. Each main component is a list that has a
component for each specification item that has values to be checked. For each
such item there is a list having two components: ValueType and ValuesAllowed.
The ValueType component identifies the data type that the data entry for the
item must have (e.g. character, integer). The ValuesAllowed item identifies
what values the item may have.
}
\description{
\code{SpecRequirements} a visioneval framework control function that returns
a list of basic requirements for module specifications to be used for
checking correctness of specifications.
}
\details{
This function returns a list of the basic requirements for module
specifications. The main components of the list are the components of module
specifications: RunBy, NewInpTable, NewSetTable, Inp, Get, Set. For each
item of each module specifications component, the list identifies the
required data type of the attribute entry and the allowed values for the
attribute entry.
}
