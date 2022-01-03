-module(table).
-export([main/0]).
-import(lists,[append/2]).

% Include the player record file
-include_lib("gamer.hrl").

main() ->
    Giggles = #gamer{gamer_tag="DrGiggles", points=135, achievements=[{'Quest 1', 'Quest 2'}]},
    Duke = #gamer{gamer_tag="DukeNuke", points=145, achievements=[{'Quest 1', 'Quest 3'}]},

    io:fwrite("Giggles tag: ~p~n", [Giggles#gamer.gamer_tag]),
    io:fwrite("Giggles points: ~p~n", [Giggles#gamer.points]),
    io:fwrite("Giggles achievements: ~p~n", [Giggles#gamer.achievements]),
    io:fwrite("Duke tag: ~p~n", [Duke#gamer.gamer_tag]),
    io:fwrite("Duke points: ~p~n", [Duke#gamer.points]),
    io:fwrite("Duke achievements: ~p~n", [Duke#gamer.achievements]),

    % now update elements
    NewGiggles = #gamer{gamer_tag=Giggles#gamer.gamer_tag, points=Giggles#gamer.points + 10, achievements=append(Giggles#gamer.achievements, ['Joined Game'])},
    NewDuke = #gamer{gamer_tag=Duke#gamer.gamer_tag, points=Duke#gamer.points + 10, achievements=append(Duke#gamer.achievements, ['Joined Game'])},

    io:fwrite("Giggles tag: ~p~n", [NewGiggles#gamer.gamer_tag]),
    io:fwrite("Giggles points: ~p~n", [NewGiggles#gamer.points]),
    io:fwrite("Giggles achievements: ~p~n", [NewGiggles#gamer.achievements]),

    io:fwrite("Duke tag: ~p~n", [NewDuke#gamer.gamer_tag]),
    io:fwrite("Duke points: ~p~n", [NewDuke#gamer.points]),
    io:fwrite("Duke achievements: ~p~n", [NewDuke#gamer.achievements]).
