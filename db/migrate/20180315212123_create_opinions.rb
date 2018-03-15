class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.string :usuario
      t.text :cuerpo
      t.references :news, foreign_key: true

      t.timestamps
    end
  end
end
