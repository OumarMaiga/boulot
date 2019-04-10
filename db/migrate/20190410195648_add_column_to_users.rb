class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :nom, :string
  	add_column :users, :prenom, :string
  	add_column :users, :adresse, :string
  	add_column :users, :dateNaissance, :date
  	add_column :users, :sexe, :string
  	add_column :users, :status, :string
  	add_column :users, :phone, :int
  	add_column :users, :categorie, :string
  	add_column :users, :etat, :boolean
  	add_column :users, :domaine, :string
  end
end
