class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :year
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
