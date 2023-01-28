class Project < ApplicationRecord
  belongs_to :user
  has_many :profers, dependent: :destroy
  has_many :zadaches, dependent: :destroy
  has_many :chans, dependent: :destroy
end
