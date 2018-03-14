class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :news, foreign_key: true
      t.string :usuario
      t.string :comentario

      t.timestamps
    end
  end
end
