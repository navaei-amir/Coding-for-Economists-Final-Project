clear
use "C:\Users\navaei_amirhooshang\Documents\Coding-Final Exam\Data\wfh_tidy_person.csv"

//Suppose that we are only intrested in personid, treatment, quitjob and grosswage variables.
keep personid treatment quitjob grosswage

*Manupulating very high and very low gross wages
replace grosswage = 1000 if grosswage <1000
replace grosswage = 3500 if grosswage > 3500

*Eliminating non-reasonable values for gross wages, quitjob and treatment
drop if missing(treatment, quitjob, grosswage)

save "C:\Users\navaei_amirhooshang\Documents\Coding-Final Exam\Data\wage_experiments_columns.dta", replace