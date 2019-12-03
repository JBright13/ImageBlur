class Image

  def initialize(photo)
    @photo = photo
  end

  def get_numbers
    numbers = []
    @photo.each_with_index do |row, row_index|
      row.each_with_index do |item, column_index|
      if item == 1
      numbers << [row_index, column_index]
    end
  end 
end
 numbers
end


def blur(distance)
  numbers = get_numbers
  @photo.each_with_index do |row, row_index|
    row.each_with_index do |item, column_index|
     numbers.each do |found_row_index, found_column_index|

    if manhattan_distance(column_index, row_index, found_column_index, found_row_index) <= distance
            @photo[row_index][column_index] = 1
    end
   end
 end
end
end

 def manhattan_distance (x1, y1, x2, y2)
    horizontal_distance = (x2 - x1).abs
    vertical_distance = (y2 - y1).abs
    horizontal_distance + vertical_distance
  end

def blur_distance
        @photo.each do | x |
            puts x.join
        end
      end
    end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.blur_distance 
puts 
image.blur(2)
image.blur_distance