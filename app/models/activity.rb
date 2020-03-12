class Activity < ApplicationRecord
  has_many :activity_logs
  has_many :users, through: :activity_logs
  validates :title, presence: true,
                    length: { minimum: 2 }
end
