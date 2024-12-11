%% This is a simple Erlang program to demonstrate the use of lists and tuples.
-module(dataStructures_Example).

%% Exporting the main function so it can be called from the shell.
-export([main/0]).

%% Main function to demonstrate lists and tuples.
main() ->
    io:format("\n--- Lists and Tuples Demo ---\n"),

    %% Working with Lists
    List = [10, 20, 30, 40, 50],
    io:format("Original List: ~p\n", [List]),

    %% Adding an element to the list
    NewList = [5 | List],
    io:format("New List (after adding 5): ~p\n", [NewList]),

    %% Accessing the head and tail of the list
    [Head | Tail] = NewList,
    io:format("Head: ~p, Tail: ~p\n", [Head, Tail]),

    %% Working with Tuples
    Tuple = {"Alice", 25, "Engineer"},
    io:format("Tuple Example: ~p\n", [Tuple]),

    %% Accessing elements in a tuple
    {Name, Age, Profession} = Tuple,
    io:format("Name: ~s, Age: ~p, Profession: ~s\n", [Name, Age, Profession]),

    %% Creating a tuple from list elements
    [First, Second | _] = List,
    NewTuple = {First, Second},
    io:format("New Tuple from List Elements: ~p\n", [NewTuple]),

    io:format("\n--- End of Demo ---\n").
