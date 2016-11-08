winnings(abaris, 582).
winnings(careful,17).
winnings(jingling_silver, 300).
winnings(maloja, 356).

w(massinga, 858,
	a(braemar, 385,
		z(adela, 588, _, _),


	_),
	d(panorama, 158,
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
%?- lookup(adela, X, _).
%X = w(adela,_,_,_)

%?-lookup(nattleweed, X, 579), lookup(adela, X, 588), lookup(panorama, X, 158), lookup(braemar, X, 385).
%?-lookup(arbitraryconst1, X, 123), lookup(arbitraryconst2, X, 222), lookup(arbitraryconst3, X, 333), lookup(arbitraryconst4, X, 321).