%% This is a simple Erlang program to demonstrate the use of map and reduce.
-module(map_reduce_example).

%% Exporting the main function so it can be called from the shell.
-export([main/0]).

%% Main function to demonstrate map and reduce.
main() ->
    io:format("\n--- Map and Reduce Demo ---\n"),

    %% Original list
    List = [1, 2, 3, 4, 5],
    io:format("Original List: ~p\n", [List]),

    %% Map: Multiply each element by 2
    DoubledList = lists:map(fun(X) -> X * 2 end, List),
    io:format("Doubled List: ~p\n", [DoubledList]),

    %% Reduce: Sum all elements in the list
    Sum = lists:foldl(fun(X, Acc) -> X + Acc end, 0, List),
    io:format("Sum of Original List: ~p\n", [Sum]),

    %% Combining map and reduce: Sum of squares
    SumOfSquares = lists:foldl(fun(X, Acc) -> X * X + Acc end, 0, List),
    io:format("Sum of Squares: ~p\n", [SumOfSquares]),

    io:format("\n--- End of Demo ---\n").