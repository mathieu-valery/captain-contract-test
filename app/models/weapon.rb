class Weapon < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :attack, presence: true

	has_many :characters
end
