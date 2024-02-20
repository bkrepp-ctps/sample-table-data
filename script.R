

# Sample reactable using TOWNSSURVEY_POLYM attribute data as input

library(reactable)

setwd('c:/users/bkrepp.ad/sample-table-data')
df <- read.csv('csv/townssurvey_polym.csv')

reactable(
	df,
	columns = list(
		town = colDef(name = 'Town'),
		town_id = colDef(name = 'Town ID'),
		type = colDef(name = 'Municipality Type'),
		sum_square_miles = colDef('Area (Sq Mi)'),
		sum_acres = colDef('Area (Acres)'),
		pop1980 = colDef(name = 'Population 1980'),
		pop1990 = colDef(name = 'Population 1990'),
		pop2000 = colDef(name = 'Population 2000'),
		pop2010 = colDef(name = 'Population 2010'),
		popch80_90 = colDef(name = 'Population Change 1980 1990'),
		popch90_00 = colDef(name = 'Population Change 1990 2000'),
		popch00_10 = colDef(name = 'Population Change 2000 2010'),
		fips_stco = colDef(name = 'FIPS Code'),
		fourcolor = colDef(name = '4-color Code'))
	)