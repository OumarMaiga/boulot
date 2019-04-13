class CreateOffres < ActiveRecord::Migration[5.2]
  def change
    create_table :offres do |t|
      t.references :domaine, foreign_key: true
      t.string :titre
      t.integer :montan_min
      t.integer :montant_max
      t.boolean :etat, default: true
      t.text :description
      t.date :date_close
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
