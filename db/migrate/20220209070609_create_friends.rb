class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :job
      t.integer :age
      t.string :sport
      t.string :body

      t.timestamps
    end
  end
end
