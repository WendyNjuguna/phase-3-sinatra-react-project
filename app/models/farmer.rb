class Farmer < ActiveRecord::Base
    has_many :reviews
    has_many :investors, through: :reviews
    
    has_secure_password
end
