defmodule Strings.Substrings do
  def by_step_with_length(string, step, length, index \\ 0, substrings \\ []) when is_integer(step) and is_integer(length) and is_integer(index) and is_list(substrings) do
    substring = String.slice(string, index, length)
    if String.length(substring) < length do
      substrings
    else
      by_step_with_length(string, step, length, index + step, [substring | substrings])
    end
  end
end
