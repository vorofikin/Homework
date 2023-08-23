-module(lesson2_task09).
-import(lesson2_task05, [reverse/1]).
-export([pack/1]).

pack(List) -> pack(List, []).

pack([], Acc) -> reverse(Acc);

pack([H | T], [[H | X] | Y]) ->
  pack(T, [[H, H | X] | Y]);

pack([H | T], Acc) ->
  pack(T, [[H] | Acc]).

