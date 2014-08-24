library(lubridate)

# Number of observations
n = 10000
set.seed(168168)

# Generate application
application = runif(n, min = 1, max = 5)
application = floor(application)
application = pmin(floor(application), 4)
application = factor(application, labels = c("Maps", "Mail", "Agenda", "Web"))
application = as.character(application)

# Generate types of case
## Get some more requests than incidents
type = runif(n, min = 1, max = 2.7)
type = floor(type)
type = pmin(floor(type), 2)
type = factor(type, labels = c("Request", "Incident"))
type = as.character(type)

# Generate dates
maintenant = unclass(as.Date(now()))
open_date = runif(n, min = maintenant - 13*31, max = maintenant)
open_date = floor(open_date)
class(open_date) = "Date"

# Create dataframe
data = data.frame(application = application, type = type, open_date = open_date)