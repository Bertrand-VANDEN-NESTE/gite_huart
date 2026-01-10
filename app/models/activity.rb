class Activity < ApplicationRecord
  # plus de belongs_to :place
  validates :title, presence: true
end
