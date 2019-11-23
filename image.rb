class Image

  def initialize(array)
    @photo = array
  end

  def get_numbers
    numbers = []
    @photo.each_with_index do |row, row_number|
      row.each_with_index do |item, col_number|
      if item == 1
      numbers << [row_number, col_number]
    end
  end 
end
 numbers
end


def blur!
  numbers = get_numbers
  @photo.each_with_index do |row, row_number|
    row.each_with_index do |item, col_number|
     numbers.each do |found_row_number, found_col_number|

    if row_number == found_row_number && col_number == found_col_number
          @photo[row_number -1][col_number] = 1 unless row_number == 0 
          @photo[row_number +1][col_number] = 1 unless row_number >= 3 
          @photo[row_number][col_number -1] = 1 unless col_number == 0 
          @photo[row_number][col_number +1] = 1 unless col_number >= 3 
    end
   end
 end
end
end


def output_image
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

image.output_image
image.blur!
puts 
image.output_image
