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
	defp _mapsum([ head | tail ], total, func), do: _mapsum(tail, total + func.(head), func)

	def max([head | tail]), do: _max(tail, head)
	defp _max([], max), do: max
	defp _max([head | tail], max) when head > max, do: _max(tail, head) 
	defp _max([head | tail], max) when head <= max, do: _max(tail, max) 
	
	def caesar([head | tail], n), do: _caesar(tail, _morph(head, n), n)
	defp _caesar([], morphed, _), do: morphed
	defp _caesar([head | tail], morphed, n), do: _caesar(tail, morphed ++ _morph(head, n), n)
	defp _morph(letter, inc) when [(letter + inc)] > 'z', do: _morph(letter - 26, inc)
	defp _morph(letter, inc), do: [letter + inc]

end
