class Friend < ApplicationRecord
  has_one_attached :image, :dependent => :destroy

  validates :name, presence: true
  validates :job, presence: true
  validates :age, presence: true

end
