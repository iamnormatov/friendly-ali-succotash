class Profer < ApplicationRecord
  belongs_to :project
  has_one_attached :prof
end
