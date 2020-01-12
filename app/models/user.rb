class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :tasks
  has_many :habits
  has_many :moods
  has_many :habit_completions
end
