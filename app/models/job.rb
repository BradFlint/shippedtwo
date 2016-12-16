class Job < ApplicationRecord
	has_many :boats through: :boatjobs
	has_many :boatjobs

end
