class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  # 1) Character has a catchphrase
  # Failure/Error: expect(urkel.say_that_thing_you_say).to eq("#{urkel.name} always says: #{urkel.catchphrase}")
  
  #   expected: "Steve Urkel always says: Did I do that?"
  #        got: "Did I do that?"

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
    # binding.pry
  end
end
