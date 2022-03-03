class Freebie < ActiveRecord::Base
belongs_to :dev 
belongs_to :company 

def print_details
    "#{dev.name} owns a #{item_name} from #{company.name}"
    #belongs to is singular so these are in a singular context 
    #just item_name, no need to add self
end 
end
