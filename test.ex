#tuple = {:label, 1, "Steve", [1,2]}
#list = ["one", 2, 3.000]
#keyword = [one: "one", two: 2, three: "three"]
#map = %{key: "value", another_key: "another value"}
#map.key == "value"

#defmodule Vehicle do
#    defstruct color: :red, wheels: 4
#end

#def test_struct() do
#    struct = %Vehicle{color: :red, wheels: 4}
#end

#def convert_to_light_seconds({:miles, miles}) when is_integer(miles) do
#    miles * 5.36819e-6
#end

#def convert_to_light_seconds({:meters, meters}) when is_integer(miles) do
#    meters * 3.335638620368e-9
#end

#def round(val) when is_integer(val), do: trunc(val)

#{:miles, 2}
#    |> convert_to_light_seconds
#    |> round

defmodule Converter do
    def to_light_seconds({:miles, miles} = val), do:
        (miles * 5.36819e-6) |> round_

    def to_light_seconds({:meters, meters} = val), do:
        (meters * 3.335738620368e-9) |> round_

    def round_(val) when is_float(val), do: trunc(val)
end
