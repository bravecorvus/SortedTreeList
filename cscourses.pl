course(principles_comp_sci, cs121,
	course(hardware_design, cs241,
		course(operating_systems, cs273, _, _),
		course(programming_languages, cs276, _, _),
	course(software_design, cs251,
		course(ethical_issues_in_software, cs263, _, _),
		course(mobile_computing_apps, cs284, _, _)))).

%FAIL
%?- course(X, cs121, _, _, _, _).