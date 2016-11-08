w(massinga, 858,
	w(braemar, 385,
		w(adela, 588, _, _),

	_),
	w(panorama, 158,
		w(nettleweed, 579, _, _),
	_)
).

lookup(H, w(H, G, _, _), G1):-!, G=G1.
lookup(H, w(H1, _, Before, _), G):-
	H @< H1,
	lookup(H, Before, G).
lookup(H, w(H1, _, _, After), G):-
	H @> H1,
	lookup(H, After, G).

%?- lookup(abaris, X, 582), lookup(maloja, X, 356).