defmodule Times do
	def double(n) do
		n * 2
	end

	def double2(n), do: n* 2

	def double3(n), do: (
											 n * 2
  )

	def quad(n), do: double(double(n))
		
end


