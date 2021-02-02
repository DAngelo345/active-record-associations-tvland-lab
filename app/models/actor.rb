class Actor < ActiveRecord::Base
    has_many :characters 
    has_many :shows
    

    def full_name
        name = self.first_name 
        name2 = self.last_name
        
    end

   
end