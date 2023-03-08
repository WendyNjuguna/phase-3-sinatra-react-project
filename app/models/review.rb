class Review < ActiveRecord::Base 
    belongs_to :investor
    belongs_to :farmer

end
