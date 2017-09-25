%turning off singleton warnings
:- style_check(-singleton).
:- style_check(-discontiguous).

:- dynamic positive/1.
:- dynamic negative/1.
:- dynamic diagnostic/0.
:- dynamic akinator/0.
:- dynamic akinator/1.
:- dynamic hypothesis/1.
:- dynamic characteristic/1.
:- dynamic positive_symp/2.
:- dynamic analysis/0.
:- dynamic clearBase/1.
:- dynamic clearBase1/1.
:- dynamic main/0.
:- dynamic main/1.

%symbolic fact
positive(nothing).

akinator(n) :- nl, write('Obrigado por utilizar o Akinator of Thrones!'), nl, nl, !.

akinator :-	clearBase(positive(Characteristic)),
		nl, write('Bem-vindo ao Akinator of Thrones!'), nl, nl,
		hypothesis(Character).

akinator(y) :- akinator.

clearBase(X):- clearBase1(X), fail.
clearBase(X).

clearBase1(X):- retract(X).
clearBase1(X).

new_round :- write('Você gostaria de adivinhar outro personagem (y/n)? '),
	read(Desire),
	akinator(Desire).

hypothesis(flu) :-
	characteristic(person), diagnostic;
	characteristic(male), diagnostic;
	characteristic(blonde), diagnostic;
	characteristic(imp), final_diagnostic.

% other hypothesis(disease)

characteristic(person) :- write('Seu personagem é uma pessoa (y/n)? '), read(AnswerPerson), positive_symp(AnswerPerson, person).
characteristic(male) :- write('Seu personagem é homem (y/n)? '), read(AnswerMale), positive_symp(AnswerMale, male).
characteristic(blonde) :- write('Seu personagem é loiro(a) (y/n)? '), read(AnswerBlonde), positive_symp(AnswerBlonde, blonde).
characteristic(imp) :- write('Seu personagem é anão (y/n)? '), read(AnswerImp), positive_symp(AnswerImp, imp).

positive_symp('y', Characteristic) :- asserta(positive(Characteristic)).
positive_symp('n', Characteristic) :- asserta(positive(\+ Characteristic)).

diagnostic :- analysis_dragon, nl, write('O seu personagem é um dragão!'), nl, nl, new_round, !.
diagnostic :- analysis_daenerys, nl, write('O seu personagem é a Daenerys Targaryen!'), nl, nl, new_round, !.
diagnostic :- analysis_catelyn, nl, write('O seu personagem é a Catelyn Stark!'), nl, nl, new_round, !.
diagnostic :- analysis_john_snow, nl, write('O seu personagem é o John Snow!'), nl, nl, new_round, !.
diagnostic :- analysis_joffrey, nl, write('O seu personagem é o Joffrey "Baratheon"!'), nl, nl, new_round, !.
diagnostic :- analysis_tyrion, nl, write('O seu personagem é o Tyrion Lannister!'), nl, nl, new_round, !.

final_diagnostic :- diagnostic.
final_diagnostic :- write('Ñão é possível!!'), nl, write('O jogo... Eu perdi!!!'), nl, new_round, !.

analysis_dragon :- (positive(\+ person)).
analysis_daenerys :- (positive(person), positive(\+ male), positive(blonde)).
analysis_catelyn :- (positive(person), positive(\+ male), positive(\+ blonde)).
analysis_john_snow :- (positive(person), positive(male), positive(\+ blonde)).
analysis_joffrey :- (positive(person), positive(male), positive(blonde), positive(\+ imp)).
analysis_tyrion :- (positive(person), positive(male), positive(blonde), positive(imp)).
