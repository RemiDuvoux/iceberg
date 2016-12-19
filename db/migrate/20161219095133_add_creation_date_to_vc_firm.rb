class AddCreationDateToVcFirm < ActiveRecord::Migration[5.0]
  def change
    add_column :vc_firms, :creation_date, :string
  end
end
