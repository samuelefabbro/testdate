class AddDetailsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :time, :string
    add_column :events, :price, :integer
    add_column :events, :expenses, :integer
    add_column :events, :desctription, :text
  end
end
