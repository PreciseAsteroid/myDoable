class Todo < ApplicationRecord
  belongs_to :project, optional: false
  belongs_to :user
end
