:- style_check(-singleton).
:- dynamic characteristic/2.
:- dynamic character/12.
:- dynamic clearBase/1.
:- dynamic clearBase1/1.
:- dynamic play/0.
:- dynamic play/1.
:- dynamic question_died/0.
:- dynamic question_dead/0.
:- dynamic question_male/0.
:- dynamic question_blonde/0.
:- dynamic question_fight/0.
:- dynamic question_wall/0.
:- dynamic question_child/0.
:- dynamic question_murder/0.
:- dynamic question_wild/0.
:- dynamic question_king/0.
:- dynamic question_love/0.
:- dynamic question_honor/0.

%symbolic fact
characteristic(nothing, y_n).

clearBase(X):- clearBase1(X), fail.
  clearBase(X).

clearBase1(X):- retract(X).
  clearBase1(X).

% Main cast
% Name, Died, Dead, Male, Blonde, Fight, Wall, Child, Murder, Wild, King, Love, Honor

character('Jon Snow',            y, n, y, n, y, y, n, y, n, y, y, y). % ------2
character('Margaery Tyrell',     y, y, n, y, n, n, n, n, n, y, y, y). % ------4
character('Arya Stark',          n, n, n, n, y, n, n, y, n, n, n, y). % ------5
character('Tywin Lannister',     y, y, y, y, y, n, y, y, n, n, n, n). % ------5
character('Ygritte',             y, y, n, n, y, y, n, y, y, n, y, n). % ------5
character('Brienne of Tarth',    n, n, n, y, y, y, n, y, n, n, y, y). % ------5
character('The High Sparrow',    y, y, y, n, n, n, n, n, n, n, n, y). % ------5
character('Cersei Lannister',    n, n, n, y, n, n, y, y, n, y, y, n). % ------6
character('Daenerys Targaryen',  n, n, n, y, n, y, y, y, n, y, y, y). % ------6
character('Tyrion Lannister',    n, n, y, y, y, y, n, y, n, n, y, y). % ------6
character('Stannis Baratheon',   y, y, y, n, y, y, y, y, n, n, n, n). % ------6
character('Jaime Lannister',     n, n, y, y, y, n, y, y, n, n, y, y). % ------7
character('Catelyn Stark',       y, y, n, n, n, n, y, y, n, n, y, y). % ------7
character('Davos Seaworth',      n, n, y, n, n, y, y, n, n, n, n, y). % ------7
character('Gilly',               n, n, n, n, n, y, y, n, y, n, y, y). % ------7
character('Ellaria Sand',        n, n, n, n, n, n, y, y, n, n, y, n). % ------7
character('Missandei',           n, n, n, n, n, n, n, n, n, n, y, y). % ------7
character('Shae',                y, y, n, n, n, n, n, n, n, n, y, n). % ------7
character('Sansa Stark',         n, n, n, n, n, y, n, n, n, y, y, y). % ------8
character('Melisandre',          n, n, n, n, n, y, n, y, n, n, n, y). % ------8
character('Petyr Baelish',       n, n, y, n, n, n, n, y, n, n, y, n). % ------8
character('Varys',               n, n, y, n, n, n, n, n, n, n, n, n). % ------8
character('Bran Stark',          n, n, y, n, n, y, n, n, n, n, n, y). % ------8
character('Samwell Tarly',       n, n, y, n, n, y, n, y, n, n, y, y). % ------8
character('Tommen Baratheon',    y, y, y, y, n, n, n, n, n, y, y, y). % ------8
character('Khal Drogo',          y, y, y, n, y, n, n, y, y, y, y, y). % ------9
character('Tormund Giantsbane',  n, n, y, n, y, y, n, y, y, n, y, y). % ------9
character('Robert Baratheon',    y, y, y, n, y, n, y, y, n, y, y, y). % ------10
character('Ramsay Bolton',       y, y, y, n, y, n, n, y, n, n, n, n). % ------10
character('Robb Stark',          y, y, y, n, y, n, n, y, n, y, y, y). % ------10
character('Viserys Targaryen',   y, y, y, y, n, n, n, y, n, n, n, n). % ------10
character('Joffrey "Baratheon"', y, y, y, y, n, n, n, y, n, y, n, n). % ------10
character('Eddard "Ned" Stark',  y, y, y, n, y, n, y, y, n, n, y, y). % ------11
character('Roose Bolton',        y, y, y, n, y, n, y, y, n, n, n, n). % ------11
character('Jorah Mormont',       n, n, y, y, y, n, n, y, n, n, y, y). % ------11
character('Daario Naharis',      n, n, y, n, y, n, n, y, n, n, y, n). % ------11
character('Theon Greyjoy',       n, n, y, y, y, n, n, y, n, n, n, n). % ------12
character('Bronn',               n, n, y, n, y, n, n, y, n, n, n, n). % ------12
character('Gendry',              n, n, y, n, y, y, n, y, n, n, n, y). % ------12
character('Sandor Clegane',      n, n, y, n, y, y, n, y, n, n, n, n). % ------12
character('Jaqen H"ghar',        n, n, y, y, y, n, n, y, n, n, n, y). % ------12

play :-
  clearBase(characteristic(Characteristic, Yn)),
  nl, write('Bem-vindo ao Akinator of Thrones!'), nl, nl,
  question_died.

play(y) :-
  play.

play(n) :-
  nl, write('Obrigado por utilizar o Akinator of Thrones!'), nl, nl, !.

new_round :-
  nl, nl, write('Você gostaria de adivinhar outro personagem (y/n)? '),
	read(Desire),
	play(Desire).

question_died :-
  write('O seu personagem já morreu (y/n)? '),
  read(AnswerDied),
  asserta(characteristic(died, AnswerDied)),
  characteristic(died, DiedQuery),
  findall(X, character(X, DiedQuery, _, _, _, _, _, _, _, _, _, _, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, _, _, _, _, _, _, _, _, _, _, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  question_dead.

question_dead :-
  characteristic(died, n), asserta(characteristic(dead, n)), fail;
  characteristic(died, y),
  write('O seu personagem continua morto (y/n)? '),
  read(AnswerDead),
  asserta(characteristic(dead, AnswerDead)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  findall(X, character(X, DiedQuery, DeadQuery, _, _, _, _, _, _, _, _, _, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, _, _, _, _, _, _, _, _, _, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  characteristic(died, n), write('Tem certeza que o seu personagem não morreu (y/n)? '), read(AnswerConfirmation), AnswerConfirmation == y, question_male;
  characteristic(died, n), retract(characteristic(died, n)), question_died;
  question_male.

question_male :-
  write('O seu personagem é homem (y/n)? '),
  read(AnswerMale),
  asserta(characteristic(male, AnswerMale)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  characteristic(male, MaleQuery),
  findall(X, character(X, DiedQuery, DeadQuery, MaleQuery, _, _, _, _, _, _, _, _, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, MaleQuery, _, _, _, _, _, _, _, _, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  question_blonde.

question_blonde :-
  write('O seu personagem é loiro (y/n)? '),
  read(AnswerBlonde),
  asserta(characteristic(blonde, AnswerBlonde)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  characteristic(male, MaleQuery),
  characteristic(blonde, BlondeQuery),
  findall(X, character(X, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, _, _, _, _, _, _, _, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, _, _, _, _, _, _, _, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  question_fight.

question_fight :-
  write('O seu personagem luta (y/n)? '),
  read(AnswerFight),
  asserta(characteristic(fight, AnswerFight)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  characteristic(male, MaleQuery),
  characteristic(blonde, BlondeQuery),
  characteristic(fight, FightQuery),
  findall(X, character(X, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, _, _, _, _, _, _, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, _, _, _, _, _, _, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  question_wall.

question_wall :-
  write('O seu personagem já esteve na grande muralha de gelo (y/n)? '),
  read(AnswerWall),
  asserta(characteristic(wall, AnswerWall)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  characteristic(male, MaleQuery),
  characteristic(blonde, BlondeQuery),
  characteristic(fight, FightQuery),
  characteristic(wall, WallQuery),
  findall(X, character(X, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, _, _, _, _, _, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, _, _, _, _, _, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  question_child.

question_child :-
  write('O seu personagem já teve algum filho (y/n)? '),
  read(AnswerChild),
  asserta(characteristic(child, AnswerChild)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  characteristic(male, MaleQuery),
  characteristic(blonde, BlondeQuery),
  characteristic(fight, FightQuery),
  characteristic(wall, WallQuery),
  characteristic(child, ChildQuery),
  findall(X, character(X, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, _, _, _, _, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, _, _, _, _, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  question_murder.

question_murder :-
  write('O seu personagem já matou alguém (y/n)? '),
  read(AnswerMurder),
  asserta(characteristic(murder, AnswerMurder)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  characteristic(male, MaleQuery),
  characteristic(blonde, BlondeQuery),
  characteristic(fight, FightQuery),
  characteristic(wall, WallQuery),
  characteristic(child, ChildQuery),
  characteristic(murder, MurderQuery),
  findall(X, character(X, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, MurderQuery, _, _, _, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, MurderQuery, _, _, _, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  question_wild.

question_wild :-
  write('O seu personagem é um selvagem (y/n)? '),
  read(AnswerWild),
  asserta(characteristic(wild, AnswerWild)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  characteristic(male, MaleQuery),
  characteristic(blonde, BlondeQuery),
  characteristic(fight, FightQuery),
  characteristic(wall, WallQuery),
  characteristic(child, ChildQuery),
  characteristic(murder, MurderQuery),
  characteristic(wild, WildQuery),
  findall(X, character(X, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, MurderQuery, WildQuery, _, _, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, MurderQuery, WildQuery, _, _, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  question_king.

question_king :-
  write('O seu personagem já foi rei (y/n)? '),
  read(AnswerKing),
  asserta(characteristic(king, AnswerKing)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  characteristic(male, MaleQuery),
  characteristic(blonde, BlondeQuery),
  characteristic(fight, FightQuery),
  characteristic(wall, WallQuery),
  characteristic(child, ChildQuery),
  characteristic(murder, MurderQuery),
  characteristic(wild, WildQuery),
  characteristic(king, KingQuery),
  findall(X, character(X, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, MurderQuery, WildQuery, KingQuery, _, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, MurderQuery, WildQuery, KingQuery, _, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  question_love.

question_love :-
  write('O seu personagem já amou alguém romaticamente (y/n)? '),
  read(AnswerLove),
  asserta(characteristic(love, AnswerLove)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  characteristic(male, MaleQuery),
  characteristic(blonde, BlondeQuery),
  characteristic(fight, FightQuery),
  characteristic(wall, WallQuery),
  characteristic(child, ChildQuery),
  characteristic(murder, MurderQuery),
  characteristic(wild, WildQuery),
  characteristic(king, KingQuery),
  characteristic(love, LoveQuery),
  findall(X, character(X, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, MurderQuery, WildQuery, KingQuery, LoveQuery, _), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, MurderQuery, WildQuery, KingQuery, LoveQuery, _),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  question_honor.

question_honor :-
  write('O seu personagem segue algum código de honra (y/n)? '),
  read(AnswerHonor),
  asserta(characteristic(honor, AnswerHonor)),
  characteristic(died, DiedQuery),
  characteristic(dead, DeadQuery),
  characteristic(male, MaleQuery),
  characteristic(blonde, BlondeQuery),
  characteristic(fight, FightQuery),
  characteristic(wall, WallQuery),
  characteristic(child, ChildQuery),
  characteristic(murder, MurderQuery),
  characteristic(wild, WildQuery),
  characteristic(king, KingQuery),
  characteristic(love, LoveQuery),
  characteristic(honor, HonorQuery),
  findall(X, character(X, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, MurderQuery, WildQuery, KingQuery, LoveQuery, HonorQuery), L),
  length(L, N), N == 1,
  character(Z, DiedQuery, DeadQuery, MaleQuery, BlondeQuery, FightQuery, WallQuery, ChildQuery, MurderQuery, WildQuery, KingQuery, LoveQuery, HonorQuery),
  write('Hmm... Eu acho que... '), write(Z), write('!'), new_round;
  write('Arghhh!!! Não!!!'), new_round.
