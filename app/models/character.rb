class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say
        # binding.pry
        "Steve Urkel always says: #{self.catchphrase}"
    end

    def call_letters
        binding.pry
    end

  
end