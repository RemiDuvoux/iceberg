class Startup < ApplicationRecord
  has_many :rounds
  has_many :vc_firms, through: :rounds

  mount_uploader :logo, PhotoUploader
end
