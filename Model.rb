class Model
  attr_reader :file_name
  attr_accessor :flashcards
  def initialize(file)
    @file_name = file
    @flashcards = []
  end

  def create_flashcards
    text = File.open(file_name).read
    single_array = text.split("\n")
    single_array.each_slice(3) {|slice| @flashcards << slice[0..1]}
  end

end



