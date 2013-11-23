entities
initEntities
	| ents |
	ents := Dictionary new.
	ents
		at: 'amp' put: $&;
		at: 'quot' put: $";
		at: 'apos' put: $';
		at: 'gt' put: $>;
		at: 'lt' put: $<.
	^ ents