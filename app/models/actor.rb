class Actor < ActiveRecord::Base
    has_many :characters 
    has_many :shows, through: :characters
    

    def full_name
        "#{self.first_name} #{self.last_name}".squish

        
    end
    
    def list_roles
        shows = self.shows
        shows.map do |show_obj|
            found_character = show_obj.characters.find do |character_obj|
                character_obj.actor == self
            end
            "#{found_character.name} - #{show_obj.name}"
        end
    end
end