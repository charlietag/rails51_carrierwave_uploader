class CreateDzones < ActiveRecord::Migration[5.1]
  def change
    create_table :dzones do |t|
      t.string :title
      t.string :picture

      t.timestamps
    end
  end
end
