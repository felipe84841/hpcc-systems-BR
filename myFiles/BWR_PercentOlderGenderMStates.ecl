IMPORT $;

IsOlderPerson := $.Persons.BirthDate[1..4] < '1980' AND $.Persons.BirthDate[1..4] != '';

c1 := COUNT($.MenInMStatesPersons(IsOlderPerson));
c2 := COUNT($.Persons(Gender = 'M', IsOlderPerson));
PercOlderMallesInMStates := (DECIMAL5_2)  (c1/c2 * 100);

OlderFemaleInMStates := COUNT($.Persons(State IN $.SetMStates, IsOlderPerson, Gender = 'F'));
AllOlderFemale := COUNT($.Persons(Gender = 'F', IsOlderPerson));
PercOlderFemalesInMStates := (DECIMAL5_2)  (OlderFemaleInMStates / AllOlderFemale * 100);

OUTPUT(PercOlderMallesInMStates, NAMED('Men_Pecentage'));     // 14.85
OUTPUT(PercOlderFemalesInMStates, NAMED('Female_Pecentage')); //14.84
