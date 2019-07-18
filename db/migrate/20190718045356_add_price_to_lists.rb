class AddPriceToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :price, :integer
  end
end
