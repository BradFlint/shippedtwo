class Boat < ApplicationRecord
	belongs_to :user
	has_many :jobs, through: :boatjobs
	has_many :boatjobs

	validates_inclusion_of :location, :in => ['Boston', 'London', 'Los Angeles', 'Madrid', 'New York', 'Sydney', 'Tokyo'] 
	validates :name, uniqueness: { :message => "That boat name has already been taken." }

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end


