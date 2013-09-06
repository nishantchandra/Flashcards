require "./Model.rb"
require "./view.rb"

class Controller
  attr_reader :model, :view
  
  def initialize(model, view)
    @model = model
    @view = view
  end

  def check_one_card(one_card)
    view.show_card(one_card) 
    view.get_response
    view.check_response
    string = view.output_result
    return string if string == "Correct" 
    check_one_card(one_card)
  end

  def begin_studying
  model.create_flashcards
  i = 0
    until i == model.flashcards.length
      check_one_card(model.flashcards[i])
      i += 1
    end
  end
end

new_view = View.new
new_model = Model.new('flashcard_samples.txt')
new_controller = Controller.new(new_model,new_view)
new_controller.begin_studying

