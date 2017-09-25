:- style_check(-singleton).
:- style_check(-discontiguous).


% nome_personagem(Pessoa?, Loiro?, Homem?, Anão?).

personagem(y, n, y, n) :-
    write('Seu personagem é Daenerys Targaryen'), nl,
    write('Deseja jogar novamente? (y/n)'), nl,
    read(Play), nl, play(Play).


main :- nl.

play :- play(y).

play(n) :-
    write('Obrigado por jogar!'), nl.

play(y) :-
    write('Bem vindo ao Akinator of Thrones!'), nl, nl,
    write('Vamos começar!'), nl,
    write('Seu personagem é uma pessoa? (y, n)'), nl,
    read(Pessoa),
    personagem(Pessoa, _, _, _), nl.

guess1(y) :-
    nl, write('Hmmm, então é uma pessoa? Vamos ver...'), nl,
    write('Seu personagem é loiro? (y/n)'), nl,
    read(Choice),
    play(n).

guess1(n) :-
    play(n).
