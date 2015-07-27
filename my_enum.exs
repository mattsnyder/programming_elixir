defmodule MyEnum do
	
	def all?([], _), do: true
	def all?([head | list], func), do: _all?(list, func.(head), func)
	defp _all?([ head | list], true, func), do: _all?(list, func.(head), func)
	defp _all?(_, false, _), do: false
	defp _all?([], true, _), do: true
	
	def each([], _), do: []
	def each([ head | tail], func), do: _each(tail, [func.(head)], func)
	defp _each([ head | tail ], memo, func), do: _each(tail, memo ++ [func.(head)], func)
	defp _each([], memo, _), do: memo

	def filter([], _), do: []
	def filter(list, func), do: _filter(list, [], func)
	defp _filter([], filtered, _), do: filtered
  defp _filter([ head | tail], filtered, func), do: _filter(tail, _append_if(head, filtered, func.(head)), func)
	defp _append_if(item, list, true), do: list ++ [item]
  defp _append_if(_, list, false), do: list
end
