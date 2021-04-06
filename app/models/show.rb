class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        all_actors = Actor.all
        all_actors.map do |obj|
            
            obj.full_name
        end
    end
    
    def build_network(arugument)

    end
  
end