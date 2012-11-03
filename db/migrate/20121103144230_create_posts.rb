class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :obra
      t.string :autor
      t.date :fecha
      t.integer :escuela_id
      t.string :curso
      t.integer :user_id
      t.text :comentario
      t.text :conocimiento

      t.timestamps
    end
  end
end
