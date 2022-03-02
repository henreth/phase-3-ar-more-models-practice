class PlantParenthood < ActiveRecord::Base
     belongs_to :person
     belongs_to :plant

     def cap_affection
        self.affection >11_000 ? self.affection = 11_000 : ()
        #self.affection = 11_000 if self.affection > 11_000
     end 
end