class Project < ApplicationRecord
  has_many :todos, dependent: :destroy
  belongs_to :user
  validates :name, presence: {  message: "Did you forget to add a Project name?" }
end
