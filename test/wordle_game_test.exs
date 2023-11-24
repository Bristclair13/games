defmodule Game.Wordle do
  use ExUnit.Case, async: true

  test "Games.Wordle.feedback" do
    assert Games.Wordle.feedback("AAAAA", "AAAAA") == [:green, :green, :green, :green, :green]

    assert Games.Wordle.feedback("ABCDE", "EDABC") == [
             :yellow,
             :yellow,
             :yellow,
             :yellow,
             :yellow
           ]

    assert Games.Wordle.feedback("ABCDE", "ZYXWV") == [:gray, :gray, :gray, :gray, :gray]
  end
end
