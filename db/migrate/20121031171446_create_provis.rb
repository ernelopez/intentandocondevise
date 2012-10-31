class CreateProvis < ActiveRecord::Migration
  def change
    create_table :provis do |t|
      t.string :prov

      t.timestamps
    end
  end
end
