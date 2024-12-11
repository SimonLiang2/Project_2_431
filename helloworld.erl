-module(helloworld).
-export([start/0, hello/1]).

start() ->
    io:format("Hello, Im Erl! What is your name?~n"),
    Input = io:get_line("> "),
    hello(Input).

hello(Name) ->
    Cname = string:trim(Name),
    io:format("Hello, ~s!~nEnjoy your stay!~n", [Cname]).