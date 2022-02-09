class Friend < ApplicationRecord
  validates :name, presence: true
  validates :job, presence: true
  validates :age, presence: true
end
