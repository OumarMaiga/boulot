class CreateDomaines < ActiveRecord::Migration[5.2]
  def change
    create_table :domaines do |t|
      t.references :user, foreign_key: true
      t.string :nom

      t.timestamps
    end
  end
end
