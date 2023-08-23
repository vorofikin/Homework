-module(lesson2_task13).
-import(lesson2_task12, [decode_modified/2]).
-export([decode/1]).

decode(List) ->
  decode_modified(List, []).