class Array
  def queen_attack?(array)
    if array[0] === self[0]
      true
    elsif array[1] === self[1]
      true
    elsif (array[0]-self[0]).abs === (array[1]-self[1]).abs
      true
    else
      false
    end
  end
end

# row, column