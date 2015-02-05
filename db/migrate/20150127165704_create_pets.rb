class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.float  :marks1
      t.float  :marks2
      t.text   :projects
      t.string :file
      t.date   :birthday
      t.timestamps
    end
  end
end
