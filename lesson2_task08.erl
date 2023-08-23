-module(lesson2_task08).
-import(lesson2_task05, [reverse/1]).
-export([compress/1]).

compress(List) -> compress(List, []).

compress([], Acc) -> reverse(Acc);

compress([H | T], []) ->
  compress(T, [H]);

compress([H | T], [H | Y]) ->
  compress(T, [H | Y]);

compress([H | T], Acc) ->
  compress(T, [H | Acc]).
