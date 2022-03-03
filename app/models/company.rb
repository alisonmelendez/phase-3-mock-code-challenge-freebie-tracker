class Company < ActiveRecord::Base
has_many :freebies

def give_freebie(dev, item_name, value)
    Freebie.create(item_name: item_name, value: value, dev: dev, company: self)
    #create a new freebie obj instance 
end 

def self.oldest_company
    self.all.order(:founding_year).first
    #orders the years and then provides the earliest (first)
end 

end
