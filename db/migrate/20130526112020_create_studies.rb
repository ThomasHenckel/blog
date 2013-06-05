class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :title
      t.string :number
      t.text :objective
      t.integer :NoOfSites
      t.integer :NoOfSections
      t.integer :total
      t.decimal :average
      t.integer :range
      t.references :project

      t.timestamps
    end
    add_index :studies, :project_id
  end
end
