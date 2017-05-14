class VcFirm < ApplicationRecord
  has_many :rounds
  has_many :startups, through: :rounds
  mount_uploader :logo, PhotoUploader
end
