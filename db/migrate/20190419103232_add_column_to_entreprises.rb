class AddColumnToEntreprises < ActiveRecord::Migration[5.2]
  def change
  	add_column :entreprises, :nom, :string
  	add_column :entreprises, :adresse, :string
  	add_column :entreprises, :dateNaissance, :date
  	add_column :entreprises, :status, :string
  	add_column :entreprises, :phone, :int
  	add_column :entreprises, :categorie, :string
  	add_column :entreprises, :etat, :boolean
  	add_column :entreprises, :domaine_id, :integer
  	add_column :entreprises, :description, :string
  end
end
