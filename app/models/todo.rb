class Todo < ApplicationRecord
  belongs_to :project, optional: false
end
