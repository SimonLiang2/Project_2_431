-module(concurrency_example).         % Define the module
-export([start/0, countdown/2]).      % Export start/0 and countdown/2 functions

% Entry point
start() ->
    % Spawn multiple processes
    Pid1 = spawn(concurrency_example, countdown, [1, 5]),
    Pid2 = spawn(concurrency_example, countdown, [2, 3]),
    Pid3 = spawn(concurrency_example, countdown, [3, 4]),

    % Wait for processes to finish
    receive_messages([Pid1, Pid2, Pid3]).

% Countdown function: counts down from a given number and sends a message back
countdown(Id, 0) ->
    io:format("Process ~p: All Done!~n", [Id]),
    self() ! done;
countdown(Id, N) when N > 0 ->
    io:format("Process ~p: ~p~n", [Id, N]),
    timer:sleep(1000),  % Simulate some delay
    countdown(Id, N - 1).

% Function to receive messages from processes
receive_messages([]) ->
    io:format("All processes completed!~n");
receive_messages(Pids) ->
    receive
        done ->
            receive_messages(Pids -- [self()])
    end.
