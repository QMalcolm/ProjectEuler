defmodule Lists.Grids do
  alias Lists.Grids.Grid

  def create_grid(%{"max_x" => max_x, "max_y" => max_y}) when is_integer(max_x) and is_integer(max_y) do
    {:ok, %Grid{max_x: max_x, max_y: max_y}}
  end

  def transpose_grid(_struct) do
    {:error, "Expecting integers max_x and max_y"}
  end

  def possible_south_east_lattice_paths(%Grid{} = grid) do
      Numbers.Combinatorics.combination(grid.max_x + grid.max_y, grid.max_x)
  end
end
