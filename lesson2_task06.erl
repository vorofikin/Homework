-module(lesson2_task06).

-export([is_palindrome/1]).

is_palindrome(List) -> is_palindrome(List, List, []).
is_palindrome([], List, Acc) ->
  Acc == List;
is_palindrome([H | T], List, Acc) ->
  is_palindrome(T, List, [H | Acc]).
