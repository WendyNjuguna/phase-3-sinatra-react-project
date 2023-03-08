class Investment < ActiveRecord::Base 
    belongs_to :farmers 
    # through: :investors

end
