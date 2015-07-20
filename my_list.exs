defmodule MyList do
	def sum([total | tail]) when length(tail) == 0, do: total
	def sum([ total | [ head | tail ]]), do: sum([ total + head ] ++ tail)
end
