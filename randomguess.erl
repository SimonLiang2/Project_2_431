-module(randomguess).
-export([start/0, getnum/0, game/3, guess/2]).

start() ->
    io:format("Hello, please enter the bounds for you to guess between.~nFirst number: ~n"),
    First = getnum(),
    io:format("Second number: ~n"),
    Second = getnum(),
    io:format("How many attempts would you like?~n"),
    Tries = getnum(),
    game(First, Second, Tries).


getnum() ->
    Input = io:get_line("> "),
    CInput = string:trim(Input),

    case catch erlang:list_to_integer(CInput) of
        {'EXIT', _} -> io:format("please enter a whole number!"),
            getnum();
        _ -> erlang:list_to_integer(CInput)
    end.

game(First, Second, Tries) ->
    rand:seed(exsplus, os:timestamp()),
    case catch First < Second of
        true -> Min = First,
            Max = Second;
        false -> Min = Second,
            Max = First
    end,
    Range = Max-Min,
    N = Min + rand:uniform(Range + 1) - 1,
    guess(N, Tries).

guess(N, T) ->
    io:format("You have ~p attempts left~n",[T]),
    Num = getnum(),
    case N==Num of
        true -> io:format("You correctly guessed the number!~n");
        false -> 
            case T<1 of
                true -> io:format("You have no attempts left!~nThe correct number was: ~p~n", [N]);
                false ->
                    io:format("Try again!~n"),
                    guess(N, (T-1))
            end
    end.