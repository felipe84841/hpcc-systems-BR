IMPORT $;

OUTPUT($.Persons);

COUNT($.Persons);

OUTPUT($.Persons, {RecID, LastName, FirstName});

OUTPUT($.Persons, {RecID, StreetAddress, City, State, ZipCode}
	, NAMED('Address_info'));

