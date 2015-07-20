defmodule Chop do
	def guess(actual, range) do
		IO.puts "Is it #{ middle(range)}?"
		guess actual, middle(range), range
	end

	def guess(actual, mid, range) when actual > mid do
		guess actual, mid..Enum.max(range)
	end

	def guess(actual, mid, range) when actual < mid do
		guess actual, Enum.min(range)..mid
	end

	def guess(actual, mid, _) when actual == mid do
		mid
	end

	def middle(low..high), do: half(low+high)

	def half(n), do: div(n,2)	
end
