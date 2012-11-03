class AddCodigoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :codigo, :text
  end
end
