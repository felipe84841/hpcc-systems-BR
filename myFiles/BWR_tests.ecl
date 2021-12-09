IMPORT $;

COUNT($.MenInMStatesPersons); 
COUNT($.YoungMaleFloriaPersons);

$.fn_LimitValue(3, 10); //3
$.fn_LimitValue(30, 10); //10
$.fn_Right4('Here is a long string'); // 'ring'
$.fn_Right4('336454668-1502                '); // '1502'


$.fn_Aggregates($.Persons, $.Persons.DependentCount);

COUNT($.DedupPersons);