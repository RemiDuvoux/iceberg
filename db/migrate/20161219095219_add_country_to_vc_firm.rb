class AddCountryToVcFirm < ActiveRecord::Migration[5.0]
  def change
    add_column :vc_firms, :country, :string
  end
end
