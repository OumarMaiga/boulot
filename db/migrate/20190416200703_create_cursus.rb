class CreateCursus < ActiveRecord::Migration[5.2]
  def change
    create_table :cursus do |t|
      t.string :ecole
      t.date :annee_debut
      t.date :annee_fin
      t.string :diplome
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
