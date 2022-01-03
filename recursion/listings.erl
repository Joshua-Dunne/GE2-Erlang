-module(listings).
-export([main/0]).

% main function that calls recursive function
main() ->
	recursive_print(0). % starts at 0, ends at 2

recursive_print(Start) when Start == 3 -> 'End'; % when start is 3, finish
% when start is less than or equal to 3, print out start + 1, then recursively call the function again
recursive_print(Start) when Start =< 3 -> io:fwrite("~w~n",[Start + 1]), recursive_print(Start + 1).