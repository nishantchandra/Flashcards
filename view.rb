class View
  attr_accessor :response, :current_card 

  def initialize
    @response = nil
    @current_card = nil
  end

  def show_card(one_card)
    self.current_card = one_card
    puts current_card[0]
  end

  def get_response
    puts "What's the definition of this term/concept?"
    self.response = gets.chomp
  end

  def check_response
    current_card[1] == response
  end

  def output_result
    if check_response
      puts "Correct!"
      return "Correct"
    else
      puts "Incorrect; try again!"
    end
  end
end



