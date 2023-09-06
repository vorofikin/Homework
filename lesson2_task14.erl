-module(lesson2_task14).

-import(lesson2_task15, [replicate/3]).

-export([duplicate/1]).

duplicate(List) ->
  replicate(List, 2, []).
