model = Model.new(text_file)
model.gather_data
##model has knowledge of a list of cards
 
loop over card_id, adding one to the iteration each time
  one_card = model.get_card(card_id) (should return a hash)
  view.show_card(one_card) 
  view.get_response
  view.check_card_against_response
  view.output_result
end


card_id = integer
one_card = hash 
