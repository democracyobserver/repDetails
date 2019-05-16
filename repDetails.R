##
##  Created by Nicholas R. Davis (nicholas@democracyobserver.org)
##  on 2018-06-13 16:03:25. Intended for GitHub distribution.
##
##########################################################

# function to write out session and machine information to add to scientific documents 
repDetails <- function(outDir = getwd(), type = "file"){
	
	# create filename -- note you can supply a destination directory with "outDir"
	fileName <- paste0(outDir,"R-replication-", Sys.Date(), ".txt")
	# create object with correct attributes to write out
	sesh.out <- rbind(
		# there are 10 items in the list from sessionInfo()
		paste0(sessionInfo()$R.version$version.string, "\n"),
		paste0(sessionInfo()$running, " running on ", sessionInfo()$R.version$system, "\n"),
		"Packages currently loaded (beyond base R): \n"
	)
	# add the packages loaded beyond base R
	for(i in 1:length(sessionInfo()$otherPkgs)){
		sesh.out <- rbind(sesh.out, paste0(sessionInfo()$otherPkgs[[i]]$Package, " ", sessionInfo()$otherPkgs[[i]]$Version)
		)}

	# report the replication information following the convention in "type"
	switch(type, 
		"file" = {
			
			writeLines(sesh.out, con = fileName)
		},
		"screen" = {
			cat(sesh.out, fill = 2)
		}#,
		# "html" = {

		# }
	)
}
