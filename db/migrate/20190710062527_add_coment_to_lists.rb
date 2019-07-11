class AddComentToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :coment, :string
  end
end
