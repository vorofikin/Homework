-module(lesson2_task03).
-export([element_at/2]).

element_at([H | _], 1) -> H;

element_at([], _) ->
  undefined;

element_at([_ | T], Idx) ->
  element_at(T, Idx - 1).
