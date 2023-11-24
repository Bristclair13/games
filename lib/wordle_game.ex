defmodule Games.Wordle do
  def play() do
    list_of_words = ["toast", "tarts", "hello", "beats", "eagle", "clown", "extra"]
    answer = Enum.random(list_of_words)
    guess = IO.gets("Enter a five letter word: ")
    feedback(answer, guess)
  end

  def feedback(answer, guess) do
    answer_letters = String.split(answer, "", trim: true)
    guess_letters = String.split(guess, "", trim: true)

    comparing_letters = Enum.zip(answer_letters, guess_letters)

    Enum.map(comparing_letters, &check_letter(&1, answer_letters))
  end

  defp check_letter({a, g}, _answer) when a == g, do: :green

  defp check_letter({_a, g}, answer) do
    if g in answer do
      :yellow
    else
      :gray
    end
  end
end
