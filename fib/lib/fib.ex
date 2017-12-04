defmodule Fib do
  def main do
    Enum.each [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], fn(x) ->
      IO.puts fib(x)
    end
  end

  def fib(0) do
    0
  end

  def fib(1) do
    1
  end

  def fib(n) do
    fib(n-1) + fib(n-2)
  end
end
