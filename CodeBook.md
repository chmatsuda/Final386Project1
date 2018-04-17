---
title: "CodeBook"
author: "Group2"
date: "4/9/2018"
output: html_document

---
Description: This code book describes each of the variables, the data, and any transformations or work that we performed to clean up the data

## Task 1
Variable Name          | Description                                | 
-----------------------| -------------------------------------------|
y_tr	| holds the orignal y training data
x_tr	| holds the orignal x training data
y_te	| holds the orignal y testing data
x_te	| holds the orignal x testing data
sub_tr	| holds the subject numbers for training data
sub_te	| holds the subject numbers for testing data
variables	| holds all of the original variable names
ytrain	| holds original y training data converted to a table data frame
xtrain	| holds original x training data converted to a table data frame
ytest	| holds original y testing data converted to a table data frame
xtest	| holds original x testing data converted to a table data frame
sub_train	| holds original subject training data converted to table data frame
sub_test	| holds original subject testing data converted to table data frame
xdata	| holds x training data bound on top of x testing data
new_x	| subset of xdata with just mean and standard deviation measurements 
ydata	| holds y training data bound on top of y testing data
complete_data	| holds both y data (both training and testing) bound to x data (both training and testing)
one:thirty	| subsets of complete_data for each subject number 
walking(i), for i=1:30	| subsets of all walking observations for each subject 
walking(i)_means	| array holding column means each subject number and all of its "walking" observations
walking_up(i), for i=1:30	| subsets of all walking_upstairs observations for each subject 
walking_up(i)_means	| array holding column means each subject number and all of its "walking_upstairs" observations
walking_down(i), for i=1:30	| subsets of all walking_downstairs observations for each subject 
walking_down(i)_means	| array holding column means each subject number and all of its "walking_downstairs" observations
sitting(i), for i=1:30	|subsets of all sitting observations for each subject 
sitting(i)_means | array holding column means each subject number and all of its "sitting" observations
standing(i), for i=1:30	| subsets of all standing observations for each subject 
standing(i)_means	| array holding column means each subject number and all of its "standing" observations
laying(i), for i=1:30	| subsets of all laying observations for each subject 
laying(i)_means	| array holding column means each subject number and all of its "laying" observations
sub(i) for i=1:30	| data frames containing observation means for every activity for each subject 
tidy	| one data set that binds together each of the 30 sub(i) datasets with rbind
tidy2	| same as tidy, but converted to table data frame with tbl_df()
subject_names	| array of all subject names as is appropriate for the final dataset.
subs_1	| converted the "subject_names" array into a data frame with tbl_df
acitivty_names	| array of all activity names as is appropriate for the final dataset.
act_names	| converted the "activity_names" array into a data frame with tbl_df
tidy1	| final data set created by binding subs_1, act_names, and tidy2 with cbind
tidy1.txt	| converted tidy1 data frame into .txt file




## Task 2
1) The data was imported, given column titles, and saved as Panel_8595.2  
2) Panel_8595.2 was compared to the research paper to better label the variables. The research paper gave only the data for years 1987 and 1995, so we only looked at the summary statistics for 1987 (or 1995) in order to figure out which variables belonged to each column.  
3) Panel_8595.2 was relabeled with better names and superfluous variables (such as the column with periods and the last two columns) were removed from the data table. This was saved as Panel_8595.3.  
4) Panel_8595.6 contains all the converted data after Energy was converted to MWh and $ were converted to 2017 dollars. See conversions below.  
5) Panel_8595.7 is the data table after we added another variable, Phase1 which indicates whether the Phase 1 of the Clean Air Act had been initiated.   
6) We saved this table as a text file, "tidy2.txt".  
7) tidy2.txt was analyzed to find the average of all variables across all years for each plant for the 11 year period. This became tidy2_a.txt.  
8) tidy2.txt was analyzed to add all variables across all variables within a particular year across all 92 plants. That will give you the totals for each year. For example, the total Energy per day used by all plants in 1990. This became tidy2_b.txt. 





Variable     | Variable Name   | Description                |Units (Initial)  | Units (Final)
-------------| ----------------|----------------------------|-----------------|--------------
Plant ID     | PlantID         | Plant Identification No.   |                 |
Years        | Years           | Years                      |Years                 |Years
Electricity  | Electricity     | Net electrical generation    |Yearly Wh             |  Daily MWh
SO2          | SO2             | Bad output sulfur dioxide    |Yearly short tons|      Daily short tons
NOX          | NOX             | Bad output nitrogen oxides   |Yearly short tons|      Daily short tons
Capital Stock| CapStock        | Input                        |$ (1973)| $ (2017)
Employees    | Employees       |Input                         |Workers|           Workers
Heat Content Coal | HC_Coal    |Input                         |Yearly Btu |    Daily MWh
Heat Content Oil | HC_Oil      |Input                         |Yearly Btu|Daily MWh
Heat Content Gas | HC_Gas      |Input                         |Yearly Btu|Daily MWh
Phase 1 CAA | Phase1           |Whether or not Phase 1 of CAA has been announced | Unitless (1= Announced, 0 = Not announced)|Unitless (1= Announced, 0 = Not announced)

##### Conversions:  
(Wh/year)(1 year/ 365 days)(1MWh/1E6 Wh) = MWh/day  
(Btu/year)(1 year/ 365 days)(2.93E-7 MWh / 1Btu) = MWh/day  
$1 in 1973 = $5.52 in 2017