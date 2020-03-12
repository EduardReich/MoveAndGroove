class ActivityLog < ApplicationRecord
  belongs_to :activity, required: false
  belongs_to :user, required: false
  validates :activity_id, presence: true
end
