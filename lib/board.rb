module Board

  def border
    " = " * 9
  end

  def display_grid
    [
      [border],
       [" ", " 1 ", " 2 ", " 3 ", " 4 "],"\n",
       ["A", " . ", " . ", " . ", " . "],"\n",
       ["B", " . ", " . ", " . ", " . "],"\n",
       ["C", " . ", " . ", " . ", " . "],"\n",
       ["D", " . ", " . ", " . ", " . "],"\n",
     [border]
            ]
  end

  def display_map
    prep_map.each_slice(4) do |slice|
    puts "#{slice.join(" ")}\n"
    end
  end

end
