defmodule Games.RockPaperScissors do
  def play do
    choices = ["rock", "paper", "scissors"]
    ai_answer = Enum.random(choices)
    users_answer = IO.gets("Choose rock, paper, or scissors- ") |> String.trim_trailing()

    case {ai_answer, users_answer} do
      {"rock", "scissors"} -> IO.puts("ai chose rock. You lose! Rock beats scissors")
      {"paper", "rock"} -> IO.puts("ai chose paper. You lose! Paper beats rock")
      {"scissors", "paper"} -> IO.puts("ai chose scissors. You lose! Scissors beats paper")
      {"rock", "paper"} -> IO.puts("ai chose rock. You win! Paper beats rock")
      {"paper", "scissors"} -> IO.puts("ai chose paper. You win! Scissors beats paper")
      {"scissors", "rock"} -> IO.puts("ai chose scissors. You win! Rock beats scissors")
      _same -> IO.puts("ai chose the same thing as you. Draw")
    end
  end
end
