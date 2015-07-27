defmodule MyEnum do
	
	def all?([], _), do: true
	def all?([head | list], func), do: _all?(list, func.(head), func)
	defp _all?([ head | list], true, func), do: _all?(list, func.(head), func)
	defp _all?(_, false, _), do: false
	defp _all?([], true, _), do: true
	
	def each([], _), do: []
	def each([ head | tail], func), do: _each(tail, [func.(head)], func)
	defp _each([ head | tail ], memo, func), do: _each(tail, memo ++ [func.(head)], func)
	defp _each([], memo, func), do: memo
end
