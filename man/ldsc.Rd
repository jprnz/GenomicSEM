\name{ldsc}
\alias{ldsc}
\title{build a convariance structure using LD score regression in R}
\description{
Function to run LD score regression (\link{https://github.com/bulik/ldsc}) to compute the genetic covariance between a series of traits based on genome wide summary statistics obtained from GWAS. The results generate by this function are necessary and sufficient to facilitate the fit of structural equation models (or other multivariate models) to the genetic covariance matrix.
}
\usage{
ldsc(traits,sample.prev,population.prev,ld,wld,trait.names=NULL, sep_weights = FALSE, \dots)

}
\arguments{
   \item{traits}{A vector of strings which point to  LDSC munged files for trait you want to include in a Genomic SEM model.}
   \item{sample.prev}{A vector of sample prevalences for dichotomous traits and \code{NA} for continous traits}
   \item{population.prev}{A vector of population prevalences for dichotomous traits and \code{NA} for continous traits}
   \item{ld}{String which contains the path to the folder in which the LD scores used in the analysis are located. Expects LD scores formated as required by the original LD score regression software. }
   \item{wld}{String which contains the path to the folder in which the LD score weights used in the analysis are located. Expects LD scores formated as required by the original LD score regression software. }
   \item{trait.names}{A character vector specifying how the traits should be named in the genetic covariance (S) matrix. These variable names can subsequently be used in later steps for model specification. If no value is provided, the function will automatically name the variables using the generic from of V1-VX.}
   \item{sep_weights}{Lological which indicates wheter the weights are different form the LD scores used for the regression, defaults to FALSE. }
}

\value{
   The function returns a list with 5 named entries
   \item{S}{estimated genetic covariance matrix}
   \item{V}{variance covariance matrix of the parameter estimates in S}
   \item{I}{matrix containing the "cross trait intercepts", or the error covariance between traits induced by overlap, in terms of subjects, between the GWASes on which the analyses are based}
   \item{N}{a vector contsaining the sample size (for the genetic variances) and the geometric mean of sample sizes (i.e. sqrt(N1,N2)) between two samples for the covariances }
   \item{m}{number of SNPs used to compute the LD scores with. }
}



\examples{

}
