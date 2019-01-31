class CreateStudentsforms < ActiveRecord::Migration[5.2]
  def change
    create_table :studentsforms do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.integer :regno

      t.timestamps
    end
  end
end
