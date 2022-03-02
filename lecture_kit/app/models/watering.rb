class Watering < ActiveRecord::Base
    # belongs_to :plant
    # belongs_to :person
    belongs_to :wateree, :class_name => "Plant", :foreign_key => "plant_id"
    belongs_to :waterer, :class_name => "Person", :foreign_key => "person_id"

end
