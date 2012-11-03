class CreateEscuelas < ActiveRecord::Migration
  def change
    create_table :escuelas do |t|
      t.string :institu
      t.integer :provi_id

      t.timestamps
    end
  end
end
