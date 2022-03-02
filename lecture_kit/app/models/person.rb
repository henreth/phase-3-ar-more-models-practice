class Person < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :plants, through: :plant_parenthoods
    has_many :waterings
    has_many :waterees, through: :waterings


    def water_plant(plant)
        # water = Watering.create(plant_id = plant.id, person_id = self.id)
        # found = self.plant_parenthoods.find{|parent| parent.plant_id == plant.id}
        # !found ? () : found.update(affection: affection)
        Watering.create(person_id: self.id, plant_id: plant.id)
        pp = plant_parenthoods.find_by(plant: plant)
        if pp 
            affection = pp.affection || 1
            affection += 1
            pp.update(affection: affection)
        end
    end
end