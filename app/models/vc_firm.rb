class VcFirm < ApplicationRecord
  has_many :rounds

  validates :name, presence: true, uniqueness: true
  has_many :startups, through: :rounds

  mount_uploader :logo, PhotoUploader
end
