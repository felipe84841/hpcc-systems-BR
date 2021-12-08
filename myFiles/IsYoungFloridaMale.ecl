IMPORT $;

IsFloridian := $.Persons.State = 'FL';

IsMale := $.Persons.Gender = 'M';

IsBorn80 := $.Persons.BirthDate[1..4] <> '' AND
			$.Persons.BirthDate[1..4] > '1980';

export IsYoungFloridaMale := IsFloridian AND IsMale AND IsBorn80;