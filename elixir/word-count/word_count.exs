defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    String.replace(sentence,~r/(?![\.\_-])[\p{P}\p{S}]+/u, "") |>
    String.downcase |>
    String.split(~r/[_ ]+/) |>
      Enum.reduce(%{}, fn (element,acc) ->
        Map.put(acc,element,(Map.get(acc,element)||0)+1) 
      end
    )
  end
end
