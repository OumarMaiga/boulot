class CreatePostulers < ActiveRecord::Migration[5.2]
  def change
    create_table :postulers do |t|
      t.references :user, foreign_key: true
      t.references :offre, foreign_key: true
      t.integer :montant
      t.string :motivation

      t.timestamps
    end
  end
end
