class CreateToys < ActiveRecord::Migration[6.0]
  def change
    create_table :toys do |t|
      t.string :toy_name
      t.text :toy_description

      t.timestamps
    end
  end
end
