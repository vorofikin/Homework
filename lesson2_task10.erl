-module(lesson2_task10).
-import(lesson2_task05, [reverse/1]).
-export([encode/1]).

encode(List) -> encode(List, []).

encode([], Acc) -> reverse(Acc);

encode([H | T], []) ->
  encode(T, [{1, H}]);

encode([H | T], [{Counter, H} | Y]) ->
  encode(T, [{Counter + 1, H} | Y]);

encode([H | T], Acc) ->
  encode(T, [{1, H} | Acc]).

