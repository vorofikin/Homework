-module(lesson2_task07).

-import(lesson2_task05, [reverse/1]).

-export([flatten/1]).

flatten(List) -> flatten(List, []).
flatten([], Acc) -> Acc;
flatten([H | T], Acc) ->  flatten(H, flatten(T,Acc));
flatten(H, Acc) ->  [H | Acc].
