-module(recursion_example).       % Define the module
-export([start/0, countdown/1]).  % Export the start/0 and countdown/1 functions

% Entry point
start() ->
    countdown(5).  % Start counting down from 5

% Recursive countdown function
countdown(0) ->
    io:format("All Done!~n");  % Base case: when the count reaches 0, print "All Done!"
countdown(N) when N > 0 ->
    io:format("~p~n", [N]),    % Print the current number
    countdown(N - 1).          % Recursive call with N-1
