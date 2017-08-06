class CreateMultidzones < ActiveRecord::Migration[5.1]
  def change
    create_table :multidzones do |t|
      t.string :title
      t.string :pictures

      t.timestamps
    end
  end
end
