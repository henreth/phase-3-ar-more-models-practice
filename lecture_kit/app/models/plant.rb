class Plant < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :person, through: :plant_parenthoods
    has_many :plant_categories
    has_many :categories, through: :plant_categories
    has_many :waterings
    has_many :waterers, through: :waterings

    def number_of_days_since_the_last_watering
        watering = self.waterings
        watering.size > 0 ? (puts "It has been #{(DateTime.now - self.waterings.last.created_at.to_datetime).to_i} days since I was last watered") : (puts "I have never been watered." )
    end
end
