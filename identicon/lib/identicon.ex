defmodule Identicon do
  def main(input) do
    input 
    |> hash_input
    |> pick_color
  end

  def pick_color(image) do
    # pattern match to get hex varible and 
    # assign to hex_list
    # pattern match it out
    %Identicon.Image{hex: [r, g, b | _tail]} = image

    %Identicon.Image{image | color: {r, g, b}}
  end

  def hash_input(input) do
    # Create a hash
    # Change to a list
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    # use % to create a map/struct
    %Identicon.Image{hex: hex}
  end
end
