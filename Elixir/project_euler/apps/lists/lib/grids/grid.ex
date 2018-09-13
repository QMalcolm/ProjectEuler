defmodule Lists.Grids.Grid do

  defstruct [:max_x, :max_y]

  def is_valid?(grid) do
    is_integer(grid.max_x) and is_integer(grid.max_y) and grid.max_x > 0 and grid.max_y > 0
  end
end
