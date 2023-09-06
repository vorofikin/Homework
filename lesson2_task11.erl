-module(lesson2_task11).

-import(lesson2_task05, [reverse/1]).

-export([encode_modified/1]).

encode_modified(List) ->
  encode_modified(List, []).
encode_modified([], Acc) -> 
  reverse(Acc);
encode_modified([H | T], []) ->
  encode_modified(T, [{1, H}]);
encode_modified([H | T], [H | Y]) ->
  encode_modified(T, [H | Y]);
encode_modified([H | T], [{Counter, H} | Y]) ->
  encode_modified(T, [{Counter + 1, H} | Y]);
encode_modified([H, H | T], Acc) ->
  encode_modified([H | T], [{1, H} | Acc]);
encode_modified([H | T], Acc) ->
  encode_modified(T, [H | Acc]).
