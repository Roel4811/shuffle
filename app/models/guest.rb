class Guest < ApplicationRecord
  validates :name, :age, presence: true
end
