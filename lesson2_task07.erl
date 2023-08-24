-module(lesson2_task07).
-import(lesson2_task05, [reverse/1]).
-export([flatten/1]).

flatten(List) -> 
    flatten(List, []).

flatten([], Acc) ->
    reverse(Acc);

flatten([[] | T], Acc) ->
    flatten(T, Acc);

flatten([[H | Y] | T], Acc) ->
    flatten(T, flatten(Y, [H | Acc]));

flatten([H | []], Acc) ->
    [H | Acc];

flatten([H | T], Acc) ->
    flatten(T, [H | Acc]).
