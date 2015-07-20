defmodule MyList do
	def sum([total]), do: total
	def sum([ total | [ head | tail ]]), do: sum([ total + head ] ++ tail)

	def reduce([], value, _) do
		value
	end
	def reduce([head | tail], value, func) do
		reduce(tail, func.(head, value), func)
	end

	def mapsum([head | tail], func), do: _mapsum(tail, func.(head), func)
	defp _mapsum([], total, func), do: total
	defp _mapsum([ head | tail ], total, func), do: _mapsum(tail, func.(head) + total, func)

end
