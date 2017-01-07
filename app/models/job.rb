class Job < ApplicationRecord
	has_many :boats, through: :boatjobs
	has_many :boatjobs
    
    ## validates the desc, name and cost. Gives the user an error message if not validated 
	validates :description, :length => { minimum: 50, maximum: 3000, :message => "Nope, your description must be at least 50 characters." }
	validates :name, :uniqueness => { :message => "This job name has been used. Input a different name." }
	validates :cost, :numericality => { :greater_than => 1000.00, :message => "Nope, cost must be greater than $1000." }
	validates_inclusion_of :origin, :in => ['Boston', 'London', 'Los Angeles', 'Madrid', 'New York', 'Sydney', 'Tokyo']
	validates_inclusion_of :destination, :in => ['Boston', 'London', 'Los Angeles', 'Madrid', 'New York', 'Sydney', 'Tokyo']
end

