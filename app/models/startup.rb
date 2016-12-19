class Startup < ApplicationRecord
  has_many :rounds
  has_many :vc_firms, through :rounds
end
