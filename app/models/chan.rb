class Chan < ApplicationRecord
  belongs_to :project
  has_many :channers, dependent: :destroy

end
