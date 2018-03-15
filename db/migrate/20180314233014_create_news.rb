class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :titular
      t.string :bajada
      t.string :cuerpo

      t.timestamps
    end
  end
end
