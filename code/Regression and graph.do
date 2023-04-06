*Tasks 9, 10 and 11
use "Data\wage_experiments_columns.dta"
//regressing job quit on wage and treatment
regress quitjob treatment grosswage, robust

//Showing the relationship of quitting job and treatment in a graph
histogram quitjob, by(treatment)

//Exporting figure
graph export "Graphs/treatment_quit.pdf", replace