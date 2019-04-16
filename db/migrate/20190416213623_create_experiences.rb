class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :poste
      t.string :entreprise
      t.date :annee_debut
      t.date :annee_fin
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
