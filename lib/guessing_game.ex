defmodule Games.GuessingGame do
  def play do
    answer = Enum.random(1..10)

    guess = request_guess("Guess a number between 1 and 10: ")

    attempt(answer, guess, 1)
  end

  def attempt(answer, guess, _turn) when answer == guess do
    IO.puts("You win!")
  end

  def attempt(answer, _guess, 6) do
    IO.puts("You lose! the answer was #{answer}")
  end

  def attempt(answer, guess, turn) when guess > answer do
    IO.puts("Too high!")
    new_guess = request_guess("Enter a guess: ")
    attempt(answer, new_guess, turn + 1)
  end

  def attempt(answer, guess, turn) when guess < answer do
    IO.puts("Too low!")

    new_guess = request_guess("Enter a guess: ")
    attempt(answer, new_guess, turn + 1)
  end

  defp request_guess(request) do
    IO.gets(request)
    |> String.trim_trailing()
    |> String.to_integer()
  end
end
