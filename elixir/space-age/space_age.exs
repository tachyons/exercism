defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :neptune | :uranus

  @planet_day_map %{mercury: 0.2408467,venus: 0.61519726,mars: 1.8808158, jupiter: 11.862615,
   saturn: 29.447498 ,neptune: 164.79132 ,uranus: 84.016846  }
  
  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) when planet == :earth do
    seconds / 31557600 
  end

  def age_on(planet,seconds) do
    age_on(:earth,seconds) / Map.get(@planet_day_map,planet) 
  end
end
