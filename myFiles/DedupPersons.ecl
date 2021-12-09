IMPORT $;

sortedPersons := SORT($.Persons, LastName, FirstName, RecId);

EXPORT DedupPersons := DEDUP(sortedPersons, 
								LEFT.LastName = RIGHT.LastName AND 
								LEFT.FirstName = RIGHT.FirstName)
						:PERSIST('CLASS::FDF::PERSIST::DedupPersons');

