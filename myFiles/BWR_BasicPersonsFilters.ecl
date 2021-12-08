IMPORT $;

FLORIDA := $.Persons(State='FL');
COUNT(FLORIDA); //46887

MIAMI := $.Persons(State='FL', City='MIAMI');
COUNT(MIAMI); //2821

zip_33102 := $.Persons(ZipCode = '33102');
COUNT(zip_33102); //53

firstName_b := $.Persons(FirstName[1] = 'B');
COUNT(firstName_b); //35619

a_2000 := $.Persons((INTEGER)FileDate[1..4] > 2000); //$.Persons(FileDate[1..4] > '2000');
COUNT(a_2000); //785