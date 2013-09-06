class Model
  attr_reader :array
  def initialize(file)
    @file_name = file
    @array = []
  end

  def read_flashcards

    File.open(@file_name) do |row|
      @array << row
    end  
    p @array
    p @array.length
  end
end


test = Model.new('flashcard_samples.txt')
test.read_flashcards

