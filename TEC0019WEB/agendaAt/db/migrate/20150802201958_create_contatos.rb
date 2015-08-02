class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :name
      t.string :email
      t.string :tel
      t.string :img
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
