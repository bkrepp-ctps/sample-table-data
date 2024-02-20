

# Sample reactable using TOWNSSURVEY_POLYM attribute data as input

library(reactable)

setwd('c:/users/bkrepp.ad/sample-table-data')
df <- read.csv('csv/townssurvey_polym.csv')

reactable(
	df,
	sortable = TRUE,		# accessibility issue?
	defaultSorted = c("town"),
	# filterable = TRUE,	# accessibility issue?
	# searchable = TRUE,	# accessibility issue?
	defaultPageSize = 20,
	outlined = TRUE,
	striped = TRUE,
	highlight = TRUE,
	resizable = TRUE,
	theme = reactableTheme(
		borderColor = "#dfe2e5",
		stripedColor = "#f6f8fa",
		highlightColor = "#f0f5f9",
		style = list(fontFamily = "Trebuchet MS, sans-serif")
	),
	columns = list(
		town = colDef(name = 'Town', width = 170),
		town_id = colDef(name = 'Town ID'),
		type = colDef(name = 'Type', style = list(textAlign = "center")),
		sum_square_miles = colDef('Area (Sq Mi)'),
		sum_acres = colDef('Area (Acres)'),
		pop1980 = colDef(name = 'Population 1980'),
		pop1990 = colDef(name = 'Population 1990'),
		pop2000 = colDef(name = 'Population 2000'),
		pop2010 = colDef(name = 'Population 2010'),
		popch80_90 = colDef(name = 'Population Change 1980 1990'),
		popch90_00 = colDef(name = 'Population Change 1990 2000'),
		popch00_10 = colDef(name = 'Population Change 2000 2010'),
		fips_stco = colDef(name = 'FIPS Code', style = list(textAlign = "center")),
		fourcolor = colDef(name = '4-color Code', style = list(textAlign = "center")))
	)