class Task < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :name,    presence: true, length: { maximum: 140}
  attribute :scheduled_on, :date, default: Date.today
end