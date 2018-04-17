#loading dplyr
library(dplyr)

#reading all files in from the desktop
y_tr<- read.table(file="/Users/jackbonacci/Desktop/train_activities.txt")
x_tr<- read.table(file="/Users/jackbonacci/Desktop/X_train.txt")
y_te<- read.table(file="/Users/jackbonacci/Desktop/test_activities.txt")
x_te<- read.table(file="/Users/jackbonacci/Desktop/X_test.txt")
sub_tr<- read.table(file="/Users/jackbonacci/Desktop/subject_train.txt")
sub_te<- read.table(file="/Users/jackbonacci/Desktop/subject_test.txt")
variables<- readLines("/Users/jackbonacci/Desktop/features.txt")

#converting files to the correct for of table to work with them in dplyr
ytrain<- tbl_df(y_tr)
xtrain<- tbl_df(x_tr)
ytest<- tbl_df(y_te)
xtest<- tbl_df(x_te)
sub_train<- tbl_df(sub_tr)
sub_test<- tbl_df(sub_te)

#binding xtrain on top of xtest
xdata<- rbind(xtrain, xtest)

#changing variable names of xtrain and xtest
names(xdata)<- variables

#extracting only the mean and standard deviation variables
new_x<-select(xdata, contains("-mean"), contains("-std"))

#binding ytrain on top of ytest. Also changing the column name
ydata<- rbind(ytrain, ytest)
names(ydata)<- ("Activity")

#binding train subjects on top of test subjects. Also changing the column name
subjects<- rbind(sub_train, sub_test)
names(subjects)<- ("Subject")

#binding subjects, ydata, and xdata to make a complete dataset
complete_data<- cbind(subjects, ydata, new_x)

#subsetting complete_data by subject number 
one<- subset(complete_data, Subject ==1, select=1:81)
two<- subset(complete_data, Subject ==2, select=1:81)
three<- subset(complete_data, Subject ==3, select=1:81)
four<- subset(complete_data, Subject ==4, select=1:81)
five<- subset(complete_data, Subject ==5, select=1:81)
six<- subset(complete_data, Subject ==6, select=1:81)
seven<- subset(complete_data, Subject ==7, select=1:81)
eight<- subset(complete_data, Subject ==8, select=1:81)
nine<- subset(complete_data, Subject ==9, select=1:81)
ten<- subset(complete_data, Subject ==10, select=1:81)
eleven<- subset(complete_data, Subject ==11, select=1:81)
twelve<- subset(complete_data, Subject ==12, select=1:81)
thirteen<- subset(complete_data, Subject ==13, select=1:81)
fourteen<- subset(complete_data, Subject ==14, select=1:81)
fifteen<- subset(complete_data, Subject ==15, select=1:81)
sixteen<- subset(complete_data, Subject ==16, select=1:81)
seventeen<- subset(complete_data, Subject ==17, select=1:81)
eighteen<- subset(complete_data, Subject ==18, select=1:81)
nineteen<- subset(complete_data, Subject ==19, select=1:81)
twenty<- subset(complete_data, Subject ==20, select=1:81)
twentyone<- subset(complete_data, Subject ==21, select=1:81)
twentytwo<- subset(complete_data, Subject ==22, select=1:81)
twentythree<- subset(complete_data, Subject ==23, select=1:81)
twentyfour<- subset(complete_data, Subject ==24, select=1:81)
twentyfive<- subset(complete_data, Subject ==25, select=1:81)
twentysix<- subset(complete_data, Subject ==26, select=1:81)
twentyseven<- subset(complete_data, Subject ==27, select=1:81)
twentyeight<- subset(complete_data, Subject ==28, select=1:81)
twentynine<- subset(complete_data, Subject ==29, select=1:81)
thirty<- subset(complete_data, Subject ==30, select=1:81)

#creating all mean rows for subject 1
walking1<-subset(one, Activity =="Walking", select=3:81)
walking1_means<- colMeans(walking1)
walking_up1<- subset(one, Activity == "Walking_Upstairs", select=3:81)
walking_up1_means<- colMeans(walking_up1)
walking_down1<- subset(one, Activity == "Walking_Downstairs", select=3:81)
walking_down1_means<- colMeans(walking_down1)
sitting1<- subset(one, Activity == "Sitting", select=3:81)
sitting1_means<- colMeans(sitting1)
standing1<- subset(one, Activity == "Standing", select=3:81)
standing1_means<- colMeans(standing1)
laying1<- subset(one, Activity == "Laying", select=3:81)
laying1_means<- colMeans(laying1)

#binding sunject 1's rows
sub1<- rbind(walking1_means, walking_up1_means, walking_down1_means, sitting1_means, standing1_means, laying1_means)

#creating all mean rows for subject 2
walking2<-subset(two, Activity =="Walking", select=3:81)
walking2_means<- colMeans(walking2)
walking_up2<- subset(two, Activity == "Walking_Upstairs", select=3:81)
walking_up2_means<- colMeans(walking_up2)
walking_down2<- subset(two, Activity == "Walking_Downstairs", select=3:81)
walking_down2_means<- colMeans(walking_down2)
sitting2<- subset(two, Activity == "Sitting", select=3:81)
sitting2_means<- colMeans(sitting2)
standing2<- subset(two, Activity == "Standing", select=3:81)
standing2_means<- colMeans(standing2)
laying2<- subset(two, Activity == "Laying", select=3:81)
laying2_means<- colMeans(laying2)

#binding sunject 2's rows
sub2<- rbind(walking2_means, walking_up2_means, walking_down2_means, sitting2_means, standing2_means, laying2_means)

#creating all mean rows for subject 3
walking3<-subset(three, Activity =="Walking", select=3:81)
walking3_means<- colMeans(walking3)
walking_up3<- subset(three, Activity == "Walking_Upstairs", select=3:81)
walking_up3_means<- colMeans(walking_up3)
walking_down3<- subset(three, Activity == "Walking_Downstairs", select=3:81)
walking_down3_means<- colMeans(walking_down3)
sitting3<- subset(three, Activity == "Sitting", select=3:81)
sitting3_means<- colMeans(sitting3)
standing3<- subset(three, Activity == "Standing", select=3:81)
standing3_means<- colMeans(standing3)
laying3<- subset(three, Activity == "Laying", select=3:81)
laying3_means<- colMeans(laying3)

#binding sunject 3's rows
sub3<- rbind(walking3_means, walking_up3_means, walking_down3_means, sitting3_means, standing3_means, laying3_means)

#creating all mean rows for subject 4
walking4<-subset(four, Activity =="Walking", select=3:81)
walking4_means<- colMeans(walking4)
walking_up4<- subset(four, Activity == "Walking_Upstairs", select=3:81)
walking_up4_means<- colMeans(walking_up4)
walking_down4<- subset(four, Activity == "Walking_Downstairs", select=3:81)
walking_down4_means<- colMeans(walking_down4)
sitting4<- subset(four, Activity == "Sitting", select=3:81)
sitting4_means<- colMeans(sitting4)
standing4<- subset(four, Activity == "Standing", select=3:81)
standing4_means<- colMeans(standing4)
laying4<- subset(four, Activity == "Laying", select=3:81)
laying4_means<- colMeans(laying4)

#binding sunject 4's rows
sub4<- rbind(walking4_means, walking_up4_means, walking_down4_means, sitting4_means, standing4_means, laying4_means)

#creating all mean rows for subject 5
walking5<-subset(five, Activity =="Walking", select=3:81)
walking5_means<- colMeans(walking5)
walking_up5<- subset(five, Activity == "Walking_Upstairs", select=3:81)
walking_up5_means<- colMeans(walking_up5)
walking_down5<- subset(five, Activity == "Walking_Downstairs", select=3:81)
walking_down5_means<- colMeans(walking_down5)
sitting5<- subset(five, Activity == "Sitting", select=3:81)
sitting5_means<- colMeans(sitting5)
standing5<- subset(five, Activity == "Standing", select=3:81)
standing5_means<- colMeans(standing5)
laying5<- subset(five, Activity == "Laying", select=3:81)
laying5_means<- colMeans(laying5)

#binding sunject 5's rows
sub5<- rbind(walking5_means, walking_up5_means, walking_down5_means, sitting5_means, standing5_means, laying5_means)


#creating all mean rows for subject 6
walking6<-subset(six, Activity =="Walking", select=3:81)
walking6_means<- colMeans(walking6)
walking_up6<- subset(six, Activity == "Walking_Upstairs", select=3:81)
walking_up6_means<- colMeans(walking_up6)
walking_down6<- subset(six, Activity == "Walking_Downstairs", select=3:81)
walking_down6_means<- colMeans(walking_down6)
sitting6<- subset(six, Activity == "Sitting", select=3:81)
sitting6_means<- colMeans(sitting6)
standing6<- subset(six, Activity == "Standing", select=3:81)
standing6_means<- colMeans(standing6)
laying6<- subset(six, Activity == "Laying", select=3:81)
laying6_means<- colMeans(laying6)

#binding sunject 6's rows
sub6<- rbind(walking6_means, walking_up6_means, walking_down6_means, sitting6_means, standing6_means, laying6_means)

#creating all mean rows for subject 7
walking7<-subset(seven, Activity =="Walking", select=3:81)
walking7_means<- colMeans(walking7)
walking_up7<- subset(seven, Activity == "Walking_Upstairs", select=3:81)
walking_up7_means<- colMeans(walking_up7)
walking_down7<- subset(seven, Activity == "Walking_Downstairs", select=3:81)
walking_down7_means<- colMeans(walking_down7)
sitting7<- subset(seven, Activity == "Sitting", select=3:81)
sitting7_means<- colMeans(sitting7)
standing7<- subset(seven, Activity == "Standing", select=3:81)
standing7_means<- colMeans(standing7)
laying7<- subset(seven, Activity == "Laying", select=3:81)
laying7_means<- colMeans(laying7)

#binding sunject 7's rows
sub7<- rbind(walking7_means, walking_up7_means, walking_down7_means, sitting7_means, standing7_means, laying7_means)

#creating all mean rows for subject 8
walking8<-subset(eight, Activity =="Walking", select=3:81)
walking8_means<- colMeans(walking8)
walking_up8<- subset(eight, Activity == "Walking_Upstairs", select=3:81)
walking_up8_means<- colMeans(walking_up8)
walking_down8<- subset(eight, Activity == "Walking_Downstairs", select=3:81)
walking_down8_means<- colMeans(walking_down8)
sitting8<- subset(eight, Activity == "Sitting", select=3:81)
sitting8_means<- colMeans(sitting8)
standing8<- subset(eight, Activity == "Standing", select=3:81)
standing8_means<- colMeans(standing8)
laying8<- subset(eight, Activity == "Laying", select=3:81)
laying8_means<- colMeans(laying8)

#binding sunject 8's rows
sub8<- rbind(walking8_means, walking_up8_means, walking_down8_means, sitting8_means, standing8_means, laying8_means)

#creating all mean rows for subject 9
walking9<-subset(nine, Activity =="Walking", select=3:81)
walking9_means<- colMeans(walking9)
walking_up9<- subset(nine, Activity == "Walking_Upstairs", select=3:81)
walking_up9_means<- colMeans(walking_up9)
walking_down9<- subset(nine, Activity == "Walking_Downstairs", select=3:81)
walking_down9_means<- colMeans(walking_down9)
sitting9<- subset(nine, Activity == "Sitting", select=3:81)
sitting9_means<- colMeans(sitting9)
standing9<- subset(nine, Activity == "Standing", select=3:81)
standing9_means<- colMeans(standing9)
laying9<- subset(nine, Activity == "Laying", select=3:81)
laying9_means<- colMeans(laying9)

#binding sunject 9's rows
sub9<- rbind(walking9_means, walking_up9_means, walking_down9_means, sitting9_means, standing9_means, laying9_means)

#creating all mean rows for subject 10
walking10<-subset(ten, Activity =="Walking", select=3:81)
walking10_means<- colMeans(walking10)
walking_up10<- subset(ten, Activity == "Walking_Upstairs", select=3:81)
walking_up10_means<- colMeans(walking_up10)
walking_down10<- subset(ten, Activity == "Walking_Downstairs", select=3:81)
walking_down10_means<- colMeans(walking_down10)
sitting10<- subset(ten, Activity == "Sitting", select=3:81)
sitting10_means<- colMeans(sitting10)
standing10<- subset(ten, Activity == "Standing", select=3:81)
standing10_means<- colMeans(standing10)
laying10<- subset(ten, Activity == "Laying", select=3:81)
laying10_means<- colMeans(laying10)

#binding sunject 10's rows
sub10<- rbind(walking10_means, walking_up10_means, walking_down10_means, sitting10_means, standing10_means, laying10_means)

#creating all mean rows for subject 10
walking10<-subset(ten, Activity =="Walking", select=3:81)
walking10_means<- colMeans(walking10)
walking_up10<- subset(ten, Activity == "Walking_Upstairs", select=3:81)
walking_up10_means<- colMeans(walking_up10)
walking_down10<- subset(ten, Activity == "Walking_Downstairs", select=3:81)
walking_down10_means<- colMeans(walking_down10)
sitting10<- subset(ten, Activity == "Sitting", select=3:81)
sitting10_means<- colMeans(sitting10)
standing10<- subset(ten, Activity == "Standing", select=3:81)
standing10_means<- colMeans(standing10)
laying10<- subset(ten, Activity == "Laying", select=3:81)
laying10_means<- colMeans(laying10)

#binding sunject 10's rows
sub10<- rbind(walking10_means, walking_up10_means, walking_down10_means, sitting10_means, standing10_means, laying10_means)

#creating all mean rows for subject 11
walking11<-subset(eleven, Activity =="Walking", select=3:81)
walking11_means<- colMeans(walking11)
walking_up11<- subset(eleven, Activity == "Walking_Upstairs", select=3:81)
walking_up11_means<- colMeans(walking_up11)
walking_down11<- subset(eleven, Activity == "Walking_Downstairs", select=3:81)
walking_down11_means<- colMeans(walking_down11)
sitting11<- subset(eleven, Activity == "Sitting", select=3:81)
sitting11_means<- colMeans(sitting11)
standing11<- subset(eleven, Activity == "Standing", select=3:81)
standing11_means<- colMeans(standing11)
laying11<- subset(eleven, Activity == "Laying", select=3:81)
laying11_means<- colMeans(laying11)

#binding sunject 11's rows
sub11<- rbind(walking11_means, walking_up11_means, walking_down11_means, sitting11_means, standing11_means, laying11_means)

#creating all mean rows for subject 12
walking12<-subset(twelve, Activity =="Walking", select=3:81)
walking12_means<- colMeans(walking12)
walking_up12<- subset(twelve, Activity == "Walking_Upstairs", select=3:81)
walking_up12_means<- colMeans(walking_up12)
walking_down12<- subset(twelve, Activity == "Walking_Downstairs", select=3:81)
walking_down12_means<- colMeans(walking_down12)
sitting12<- subset(twelve, Activity == "Sitting", select=3:81)
sitting12_means<- colMeans(sitting12)
standing12<- subset(twelve, Activity == "Standing", select=3:81)
standing12_means<- colMeans(standing12)
laying12<- subset(twelve, Activity == "Laying", select=3:81)
laying12_means<- colMeans(laying12)

#binding sunject 12's rows
sub12<- rbind(walking12_means, walking_up12_means, walking_down12_means, sitting12_means, standing12_means, laying12_means)

#creating all mean rows for subject 13
walking13<-subset(thirteen, Activity =="Walking", select=3:81)
walking13_means<- colMeans(walking13)
walking_up13<- subset(thirteen, Activity == "Walking_Upstairs", select=3:81)
walking_up13_means<- colMeans(walking_up13)
walking_down13<- subset(thirteen, Activity == "Walking_Downstairs", select=3:81)
walking_down13_means<- colMeans(walking_down13)
sitting13<- subset(thirteen, Activity == "Sitting", select=3:81)
sitting13_means<- colMeans(sitting13)
standing13<- subset(thirteen, Activity == "Standing", select=3:81)
standing13_means<- colMeans(standing13)
laying13<- subset(thirteen, Activity == "Laying", select=3:81)
laying13_means<- colMeans(laying13)

#binding sunject 13's rows
sub13<- rbind(walking13_means, walking_up13_means, walking_down13_means, sitting13_means, standing13_means, laying13_means)

#creating all mean rows for subject 14
walking14<-subset(fourteen, Activity =="Walking", select=3:81)
walking14_means<- colMeans(walking14)
walking_up14<- subset(fourteen, Activity == "Walking_Upstairs", select=3:81)
walking_up14_means<- colMeans(walking_up14)
walking_down14<- subset(fourteen, Activity == "Walking_Downstairs", select=3:81)
walking_down14_means<- colMeans(walking_down14)
sitting14<- subset(fourteen, Activity == "Sitting", select=3:81)
sitting14_means<- colMeans(sitting14)
standing14<- subset(fourteen, Activity == "Standing", select=3:81)
standing14_means<- colMeans(standing14)
laying14<- subset(fourteen, Activity == "Laying", select=3:81)
laying14_means<- colMeans(laying14)

#binding sunject 14's rows
sub14<- rbind(walking14_means, walking_up14_means, walking_down14_means, sitting14_means, standing14_means, laying14_means)

#creating all mean rows for subject 15
walking15<-subset(fifteen, Activity =="Walking", select=3:81)
walking15_means<- colMeans(walking15)
walking_up15<- subset(fifteen, Activity == "Walking_Upstairs", select=3:81)
walking_up15_means<- colMeans(walking_up15)
walking_down15<- subset(fifteen, Activity == "Walking_Downstairs", select=3:81)
walking_down15_means<- colMeans(walking_down15)
sitting15<- subset(fifteen, Activity == "Sitting", select=3:81)
sitting15_means<- colMeans(sitting15)
standing15<- subset(fifteen, Activity == "Standing", select=3:81)
standing15_means<- colMeans(standing15)
laying15<- subset(fifteen, Activity == "Laying", select=3:81)
laying15_means<- colMeans(laying15)

#binding sunject 15's rows
sub15<- rbind(walking15_means, walking_up15_means, walking_down15_means, sitting15_means, standing15_means, laying15_means)

#creating all mean rows for subject 16
walking16<-subset(sixteen, Activity =="Walking", select=3:81)
walking16_means<- colMeans(walking16)
walking_up16<- subset(sixteen, Activity == "Walking_Upstairs", select=3:81)
walking_up16_means<- colMeans(walking_up16)
walking_down16<- subset(sixteen, Activity == "Walking_Downstairs", select=3:81)
walking_down16_means<- colMeans(walking_down16)
sitting16<- subset(sixteen, Activity == "Sitting", select=3:81)
sitting16_means<- colMeans(sitting16)
standing16<- subset(sixteen, Activity == "Standing", select=3:81)
standing16_means<- colMeans(standing16)
laying16<- subset(sixteen, Activity == "Laying", select=3:81)
laying16_means<- colMeans(laying16)

#binding sunject 16's rows
sub16<- rbind(walking16_means, walking_up16_means, walking_down16_means, sitting16_means, standing16_means, laying16_means)

#creating all mean rows for subject 17
walking17<-subset(seventeen, Activity =="Walking", select=3:81)
walking17_means<- colMeans(walking17)
walking_up17<- subset(seventeen, Activity == "Walking_Upstairs", select=3:81)
walking_up17_means<- colMeans(walking_up17)
walking_down17<- subset(seventeen, Activity == "Walking_Downstairs", select=3:81)
walking_down17_means<- colMeans(walking_down17)
sitting17<- subset(seventeen, Activity == "Sitting", select=3:81)
sitting17_means<- colMeans(sitting17)
standing17<- subset(seventeen, Activity == "Standing", select=3:81)
standing17_means<- colMeans(standing17)
laying17<- subset(seventeen, Activity == "Laying", select=3:81)
laying17_means<- colMeans(laying17)

#binding sunject 17's rows
sub17<- rbind(walking17_means, walking_up17_means, walking_down17_means, sitting17_means, standing17_means, laying17_means)

#creating all mean rows for subject 18
walking18<-subset(eighteen, Activity =="Walking", select=3:81)
walking18_means<- colMeans(walking18)
walking_up18<- subset(eighteen, Activity == "Walking_Upstairs", select=3:81)
walking_up18_means<- colMeans(walking_up18)
walking_down18<- subset(eighteen, Activity == "Walking_Downstairs", select=3:81)
walking_down18_means<- colMeans(walking_down18)
sitting18<- subset(eighteen, Activity == "Sitting", select=3:81)
sitting18_means<- colMeans(sitting18)
standing18<- subset(eighteen, Activity == "Standing", select=3:81)
standing18_means<- colMeans(standing18)
laying18<- subset(eighteen, Activity == "Laying", select=3:81)
laying18_means<- colMeans(laying18)

#binding sunject 18's rows
sub18<- rbind(walking18_means, walking_up18_means, walking_down18_means, sitting18_means, standing18_means, laying18_means)

#creating all mean rows for subject 19
walking19<-subset(nineteen, Activity =="Walking", select=3:81)
walking19_means<- colMeans(walking19)
walking_up19<- subset(nineteen, Activity == "Walking_Upstairs", select=3:81)
walking_up19_means<- colMeans(walking_up19)
walking_down19<- subset(nineteen, Activity == "Walking_Downstairs", select=3:81)
walking_down19_means<- colMeans(walking_down19)
sitting19<- subset(nineteen, Activity == "Sitting", select=3:81)
sitting19_means<- colMeans(sitting19)
standing19<- subset(nineteen, Activity == "Standing", select=3:81)
standing19_means<- colMeans(standing19)
laying19<- subset(nineteen, Activity == "Laying", select=3:81)
laying19_means<- colMeans(laying19)

#binding sunject 19's rows
sub19<- rbind(walking19_means, walking_up19_means, walking_down19_means, sitting19_means, standing19_means, laying19_means)

#creating all mean rows for subject 20
walking20<-subset(twenty, Activity =="Walking", select=3:81)
walking20_means<- colMeans(walking20)
walking_up20<- subset(twenty, Activity == "Walking_Upstairs", select=3:81)
walking_up20_means<- colMeans(walking_up20)
walking_down20<- subset(twenty, Activity == "Walking_Downstairs", select=3:81)
walking_down20_means<- colMeans(walking_down20)
sitting20<- subset(twenty, Activity == "Sitting", select=3:81)
sitting20_means<- colMeans(sitting20)
standing20<- subset(twenty, Activity == "Standing", select=3:81)
standing20_means<- colMeans(standing20)
laying20<- subset(twenty, Activity == "Laying", select=3:81)
laying20_means<- colMeans(laying20)

#binding sunject 20's rows
sub20<- rbind(walking20_means, walking_up20_means, walking_down20_means, sitting20_means, standing20_means, laying20_means)

#creating all mean rows for subject 21
walking21<-subset(twentyone, Activity =="Walking", select=3:81)
walking21_means<- colMeans(walking21)
walking_up21<- subset(twentyone, Activity == "Walking_Upstairs", select=3:81)
walking_up21_means<- colMeans(walking_up21)
walking_down21<- subset(twentyone, Activity == "Walking_Downstairs", select=3:81)
walking_down21_means<- colMeans(walking_down21)
sitting21<- subset(twentyone, Activity == "Sitting", select=3:81)
sitting21_means<- colMeans(sitting21)
standing21<- subset(twentyone, Activity == "Standing", select=3:81)
standing21_means<- colMeans(standing21)
laying21<- subset(twentyone, Activity == "Laying", select=3:81)
laying21_means<- colMeans(laying21)

#binding sunject 21's rows
sub21<- rbind(walking21_means, walking_up21_means, walking_down21_means, sitting21_means, standing21_means, laying21_means)

#creating all mean rows for subject 22
walking22<-subset(twentytwo, Activity =="Walking", select=3:81)
walking22_means<- colMeans(walking22)
walking_up22<- subset(twentytwo, Activity == "Walking_Upstairs", select=3:81)
walking_up22_means<- colMeans(walking_up22)
walking_down22<- subset(twentytwo, Activity == "Walking_Downstairs", select=3:81)
walking_down22_means<- colMeans(walking_down22)
sitting22<- subset(twentytwo, Activity == "Sitting", select=3:81)
sitting22_means<- colMeans(sitting22)
standing22<- subset(twentytwo, Activity == "Standing", select=3:81)
standing22_means<- colMeans(standing22)
laying22<- subset(twentytwo, Activity == "Laying", select=3:81)
laying22_means<- colMeans(laying22)

#binding sunject 22's rows
sub22<- rbind(walking22_means, walking_up22_means, walking_down22_means, sitting22_means, standing22_means, laying22_means)

#creating all mean rows for subject 23
walking23<-subset(twentythree, Activity =="Walking", select=3:81)
walking23_means<- colMeans(walking23)
walking_up23<- subset(twentythree, Activity == "Walking_Upstairs", select=3:81)
walking_up23_means<- colMeans(walking_up23)
walking_down23<- subset(twentythree, Activity == "Walking_Downstairs", select=3:81)
walking_down23_means<- colMeans(walking_down23)
sitting23<- subset(twentythree, Activity == "Sitting", select=3:81)
sitting23_means<- colMeans(sitting23)
standing23<- subset(twentythree, Activity == "Standing", select=3:81)
standing23_means<- colMeans(standing23)
laying23<- subset(twentythree, Activity == "Laying", select=3:81)
laying23_means<- colMeans(laying23)

#binding sunject 23's rows
sub23<- rbind(walking23_means, walking_up23_means, walking_down23_means, sitting23_means, standing23_means, laying23_means)

#creating all mean rows for subject 24
walking24<-subset(twentyfour, Activity =="Walking", select=3:81)
walking24_means<- colMeans(walking24)
walking_up24<- subset(twentyfour, Activity == "Walking_Upstairs", select=3:81)
walking_up24_means<- colMeans(walking_up24)
walking_down24<- subset(twentyfour, Activity == "Walking_Downstairs", select=3:81)
walking_down24_means<- colMeans(walking_down24)
sitting24<- subset(twentyfour, Activity == "Sitting", select=3:81)
sitting24_means<- colMeans(sitting24)
standing24<- subset(twentyfour, Activity == "Standing", select=3:81)
standing24_means<- colMeans(standing24)
laying24<- subset(twentyfour, Activity == "Laying", select=3:81)
laying24_means<- colMeans(laying24)

#binding sunject 24's rows
sub24<- rbind(walking24_means, walking_up24_means, walking_down24_means, sitting24_means, standing24_means, laying24_means)

#creating all mean rows for subject 25
walking25<-subset(twentyfive, Activity =="Walking", select=3:81)
walking25_means<- colMeans(walking25)
walking_up25<- subset(twentyfive, Activity == "Walking_Upstairs", select=3:81)
walking_up25_means<- colMeans(walking_up25)
walking_down25<- subset(twentyfive, Activity == "Walking_Downstairs", select=3:81)
walking_down25_means<- colMeans(walking_down25)
sitting25<- subset(twentyfive, Activity == "Sitting", select=3:81)
sitting25_means<- colMeans(sitting25)
standing25<- subset(twentyfive, Activity == "Standing", select=3:81)
standing25_means<- colMeans(standing25)
laying25<- subset(twentyfive, Activity == "Laying", select=3:81)
laying25_means<- colMeans(laying25)

#binding sunject 25's rows
sub25<- rbind(walking25_means, walking_up25_means, walking_down25_means, sitting25_means, standing25_means, laying25_means)

#creating all mean rows for subject 26
walking26<-subset(twentysix, Activity =="Walking", select=3:81)
walking26_means<- colMeans(walking26)
walking_up26<- subset(twentysix, Activity == "Walking_Upstairs", select=3:81)
walking_up26_means<- colMeans(walking_up26)
walking_down26<- subset(twentysix, Activity == "Walking_Downstairs", select=3:81)
walking_down26_means<- colMeans(walking_down26)
sitting26<- subset(twentysix, Activity == "Sitting", select=3:81)
sitting26_means<- colMeans(sitting26)
standing26<- subset(twentysix, Activity == "Standing", select=3:81)
standing26_means<- colMeans(standing26)
laying26<- subset(twentysix, Activity == "Laying", select=3:81)
laying26_means<- colMeans(laying26)

#binding sunject 26's rows
sub26<- rbind(walking26_means, walking_up26_means, walking_down26_means, sitting26_means, standing26_means, laying26_means)

#creating all mean rows for subject 27
walking27<-subset(twentyseven, Activity =="Walking", select=3:81)
walking27_means<- colMeans(walking27)
walking_up27<- subset(twentyseven, Activity == "Walking_Upstairs", select=3:81)
walking_up27_means<- colMeans(walking_up27)
walking_down27<- subset(twentyseven, Activity == "Walking_Downstairs", select=3:81)
walking_down27_means<- colMeans(walking_down27)
sitting27<- subset(twentyseven, Activity == "Sitting", select=3:81)
sitting27_means<- colMeans(sitting27)
standing27<- subset(twentyseven, Activity == "Standing", select=3:81)
standing27_means<- colMeans(standing27)
laying27<- subset(twentyseven, Activity == "Laying", select=3:81)
laying27_means<- colMeans(laying27)

#binding sunject 27's rows
sub27<- rbind(walking27_means, walking_up27_means, walking_down27_means, sitting27_means, standing27_means, laying27_means)

#creating all mean rows for subject 28
walking28<-subset(twentyeight, Activity =="Walking", select=3:81)
walking28_means<- colMeans(walking28)
walking_up28<- subset(twentyeight, Activity == "Walking_Upstairs", select=3:81)
walking_up28_means<- colMeans(walking_up28)
walking_down28<- subset(twentyeight, Activity == "Walking_Downstairs", select=3:81)
walking_down28_means<- colMeans(walking_down28)
sitting28<- subset(twentyeight, Activity == "Sitting", select=3:81)
sitting28_means<- colMeans(sitting28)
standing28<- subset(twentyeight, Activity == "Standing", select=3:81)
standing28_means<- colMeans(standing28)
laying28<- subset(twentyeight, Activity == "Laying", select=3:81)
laying28_means<- colMeans(laying28)

#binding sunject 28's rows
sub28<- rbind(walking28_means, walking_up28_means, walking_down28_means, sitting28_means, standing28_means, laying28_means)

#creating all mean rows for subject 29
walking29<-subset(twentynine, Activity =="Walking", select=3:81)
walking29_means<- colMeans(walking29)
walking_up29<- subset(twentynine, Activity == "Walking_Upstairs", select=3:81)
walking_up29_means<- colMeans(walking_up29)
walking_down29<- subset(twentynine, Activity == "Walking_Downstairs", select=3:81)
walking_down29_means<- colMeans(walking_down29)
sitting29<- subset(twentynine, Activity == "Sitting", select=3:81)
sitting29_means<- colMeans(sitting29)
standing29<- subset(twentynine, Activity == "Standing", select=3:81)
standing29_means<- colMeans(standing29)
laying29<- subset(twentynine, Activity == "Laying", select=3:81)
laying29_means<- colMeans(laying29)

#binding sunject 29's rows
sub29<- rbind(walking29_means, walking_up29_means, walking_down29_means, sitting29_means, standing29_means, laying29_means)

#creating all mean rows for subject 30
walking30<-subset(thirty, Activity =="Walking", select=3:81)
walking30_means<- colMeans(walking30)
walking_up30<- subset(thirty, Activity == "Walking_Upstairs", select=3:81)
walking_up30_means<- colMeans(walking_up30)
walking_down30<- subset(thirty, Activity == "Walking_Downstairs", select=3:81)
walking_down30_means<- colMeans(walking_down30)
sitting30<- subset(thirty, Activity == "Sitting", select=3:81)
sitting30_means<- colMeans(sitting30)
standing30<- subset(thirty, Activity == "Standing", select=3:81)
standing30_means<- colMeans(standing30)
laying30<- subset(thirty, Activity == "Laying", select=3:81)
laying30_means<- colMeans(laying30)

#binding sunject 30's rows
sub30<- rbind(walking30_means, walking_up30_means, walking_down30_means, sitting30_means, standing30_means, laying30_means)

#compiling the final dataset
tidy<-rbind(sub1,sub2,sub3,sub4,sub5,sub6,sub7,sub8,sub9,sub10,sub11,sub12,sub13,sub14,sub15,sub16,sub17,sub18,sub19,sub20,sub21,sub22,sub23,sub24,sub25,sub26,sub27,sub28,sub29,sub30)
tidy2<-tbl_df(tidy)
 subject_names<- c(1,1,
                  1,
                  1,
                  1,
                  1,
                  2,
                  2,
                  2,
                  2,
                  2,
                  2,
                  3,
                  3,
                  3,
                  3,
                  3,
                  3,
                  4,
                  4,
                  4,
                  4,
                  4,
                  4,
                  5,
                  5,
                  5,
                  5,
                  5,
                  5,
                  6,
                  6,
                  6,
                  6,
                  6,
                  6,
                  7,
                  7,
                  7,
                  7,
                  7,
                  7,
                  8,
                  8,
                  8,
                  8,
                  8,
                  8,
                  9,
                  9,
                  9,
                  9,
                  9,
                  9,
                  10,
                  10,
                  10,
                  10,
                  10,
                  10,
                  11,
                  11,
                  11,
                  11,
                  11,
                  11,
                  12,
                  12,
                  12,
                  12,
                  12,
                  12,
                  13,
                  13,
                  13,
                  13,
                  13,
                  13,
                  14,
                  14,
                  14,
                  14,
                  14,
                  14,
                  15,
                  15,
                  15,
                  15,
                  15,
                  15,
                  16,
                  16,
                  16,
                  16,
                  16,
                  16,
                  17,
                  17,
                  17,
                  17,
                  17,
                  17,
                  18,
                  18,
                  18,
                  18,
                  18,
                  18,
                  19,
                  19,
                  19,
                  19,
                  19,
                  19,
                  20,
                  20,
                  20,
                  20,
                  20,
                  20,
                  21,
                  21,
                  21,
                  21,
                  21,
                  21,
                  22,
                  22,
                  22,
                  22,
                  22,
                  22,
                  23,
                  23,
                  23,
                  23,
                  23,
                  23,
                  24,
                  24,
                  24,
                  24,
                  24,
                  24,
                  25,
                  25,
                  25,
                  25,
                  25,
                  25,
                  26,
                  26,
                  26,
                  26,
                  26,
                  26,
                  27,
                  27,
                  27,
                  27,
                  27,
                  27,
                  28,
                  28,
                  28,
                  28,
                  28,
                  28,
                  29,
                  29,29,29,29,29,30,30,30,30,30,30)    
subs_1<- tbl_df(subject_names)
names(subs_1)<- "Subject"

#Making the activity column
activity_names<- c("Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying","Walking", "Walking_Upstairs","Walking_Downstairs", "Sitting", "Standing", "Laying")
act_names<- tbl_df(activity_names)
names(act_names)<- "Activity"

#Final binding
tidy1<- cbind(subs_1, act_names, tidy2)

#Saving results as tidy1.txt
write.table(tidy1, file = "tidy1.txt")

