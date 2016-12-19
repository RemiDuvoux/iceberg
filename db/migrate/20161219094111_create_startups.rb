class CreateStartups < ActiveRecord::Migration[5.0]
  def change
    create_table :startups do |t|
      t.string :name
      t.text :description
      t.string :logo
      t.string :twitter
      t.string :facebook
      t.string :sector

      t.timestamps
    end
  end
end
