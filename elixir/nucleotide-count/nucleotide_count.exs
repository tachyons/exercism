defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
    unless Enum.member? @nucleotides,nucleotide do
      raise ArgumentError
    end
    Enum.reduce(strand,0, fn(x,count) -> 
               unless Enum.member? 'ATCG',x do
                  raise ArgumentError
                end

                if x == nucleotide do 
                 count = count + 1
                else 
                 count 
                end
               end
             )
  end


  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do
    Enum.reduce(strand,%{65 => 0, 67 => 0, 71 => 0, 84 => 0},fn(x,acc) -> 
                unless Enum.member? @nucleotides ,x do
                  raise ArgumentError
                end
                Map.put(acc,x,(Map.get(acc,x)||0)+1) 
    end)
  end
end
