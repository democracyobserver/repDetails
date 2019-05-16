# repDetails

R function for writing out session and machine information to add to scientific documents in the methodology or replication details section.

## Purpose

When engaging in scientific research, transparency and reproducibility are important parts of communicating the process and findings of any analysis. In quantitative approaches the use of open source statistical environments such as R have allowed researchers to be flexible, create custom functionality, and reduce costs. When researchers share their code files it improves transparency and reproducibility. This is increasingly common, thanks to repositories like [DataVerse](https://dataverse.harvard.edu/) and efforts by journals to promote such behavior-- yet it presents a potential issue for replication over time and across computing platforms.

Since R is highly user-customizable, there is a potential that specific choices by the researcher-- whether intentional or not-- will create a unique instance of the statistical environment. Without tracking the details of the researcher's unique instance, efforts to precisely replicate the process and findings of a study may be impossible. This function collects session, machine, and all loaded package details to create a complete picture of the unique instance created by the researcher's choices. 

## Usage

Install the function from [GitHub](https://github.com/democracyobserver/repDetails):

```R
## install devtools if not already
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
## install repDetails from Github
devtools::install_github("democracyobserver/repDetails")
```

Use the `type` argument to toggle between different output types. The same information is gathered and presented for all types; only the output of that information is affected. The default is to write out the information in a plain text file in the current R working directory. 

## Limitations

Currently there are only two options, to write out to a text file or to display in the R console. This feature is toggled with the `type` argument. There is a plan to also allow for both html and TeX options for `type` to easily add the information to a Markdown, LaTeX, or word processor document. 