-module(lesson2_task12).

-import(lesson2_task05, [reverse/1]).
-import(lesson2_task07, [flatten/1]).
-import(lesson2_task15, [duplicate_element/2]).

-export([decode_modified/1, decode_modified/2]).

decode_modified(List) ->
  decode_modified(List, []).
decode_modified([], Acc) ->
  flatten(reverse(Acc));
decode_modified([{Counter, El} | T], Acc) ->
  decode_modified(T, [duplicate_element(El, Counter) | Acc]);
decode_modified([H | T], Acc) ->
  decode_modified(T, [H | Acc]).
