class CreateVcFirms < ActiveRecord::Migration[5.0]
  def change
    create_table :vc_firms do |t|
      t.string :vc_type
      t.string :city
      t.string :office_address
      t.text :description
      t.string :website
      t.string :name
      t.string :logo
      t.string :twitter
      t.string :facebook
      t.string :seed_stage
      t.string :series_a
      t.string :series_b
      t.string :series_c
      t.string :growth_stage

      t.timestamps
    end
  end
end
