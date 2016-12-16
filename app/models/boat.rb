class Boat < ApplicationRecord
	belongs_to :user
	has_many :jobs through: :boatjobs
	has_many :boatjobs
end
