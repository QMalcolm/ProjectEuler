defmodule Numbers.Collatz do

  def gen_sequence(num) when is_integer(num) and num > 0 do
    gen_sequence_iter([num])
  end

  defp gen_sequence_iter(sequence = [head | _tail]) when is_list(sequence) and head == 1, do: Enum.reverse(sequence)
  defp gen_sequence_iter(sequence = [head | _tail]) when is_list(sequence) do
    if rem(head, 2) == 0 do
      gen_sequence_iter([div(head, 2) | sequence])
    else
      gen_sequence_iter([((3 * head) + 1) | sequence])
    end
  end
end
