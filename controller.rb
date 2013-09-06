model = Model.new(text_file)
model.gather_data
##model has knowledge of a list of cards
 
def check_one_card(one_card, view)
  view.show_card(one_card) 
  view.get_response
  view.check_response
  string = view.output_result
  return string if string == "Correct" 
  check_one_card(one_card, view)
end

loop over card_id, adding one to the iteration each time
  one_card = model.get_card(card_id) (should return a hash)
  check_one_card(one_card) 
end


card_id = integer
one_card = hash 
values in hash = definition is a= string , answer is a  string, card_id is a integer

flashcard_samples.txt