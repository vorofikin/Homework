-module(lesson2_task15).
-import(lesson2_task05, [reverse/1]).
-import(lesson2_task07, [flatten/1]).
-export([replicate/2, replicate/3, duplicate_element/2]).

replicate(List, Target) ->
  replicate(List, Target, []).

replicate([], _, Acc) ->
  flatten(reverse(Acc));

replicate([H | T], Target, Acc) ->
  replicate(T, Target, [duplicate_element(H, Target) | Acc]).

duplicate_element(_, 0) ->
  [];

duplicate_element(El, N) ->
  [El | duplicate_element(El, N - 1)].