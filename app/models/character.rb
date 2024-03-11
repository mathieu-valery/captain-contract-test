class Character < ApplicationRecord
  validates :hp, numericality: { only_integer: true, less_than_or_equal_to: 100 }, presence: true
  validates :attack, numericality: { only_integer: true, less_than_or_equal_to: 10 }, presence: true
  validates :name, presence: true, uniqueness: true

  belongs_to :weapon
end
