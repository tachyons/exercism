defmodule Bob do
  def hey(input) do
    cond do
      String.strip(input) == "" -> "Fine. Be that way!"
      String.ends_with?(input,"?") -> "Sure."
      String.upcase(input) == input && !String.match?(input,~r/^[0-9 ,]+$/) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
