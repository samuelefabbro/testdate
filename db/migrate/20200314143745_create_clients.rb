class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :shortname
      t.text :description

      t.timestamps
    end
  end
end
