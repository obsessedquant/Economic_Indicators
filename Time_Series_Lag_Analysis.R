
# Use pacman to load add-on packages as desired
pacman::p_load(pacman, rio) 

# Import Data
# eco_ind <- import("Output/compiled_z_scores.csv")
eco_ind = read.csv('Output/compiled_z_scores.csv')
head(eco_ind) # Display data
ten_two_z.ts = ts(eco_ind$ten_two_z,start=c(1927,12), frequency=12)
head(ten_two_z.ts)

# Install Packages
# example
# install.packages("oaColors")
# Install from github example
# devtools::install_github("nickpoison/astsa/astsa_build")
install.packages('forecast',dependencies=TRUE)

# Load Packages
# ex. library(oaColors)
library(astsa)
library(forecast)

# Main code
plot(ten_two_z.ts, xlab='Year', ylab='Z-Score', main='10-2 Treasury Spread Z-Scores')
abline(h=0)

lag.plot(ten_two_z.ts, lags=12, do.line=FALSE)
lag.plot(whitenoise, lags=12, do.line=FALSE)

acf(ten_two_z.ts)

astsa::lag2.plot(10-2_Z.ts,SP500_Z.ts,36)

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)

install.Rtools(check=TRUE, check_r_update=TRUE)