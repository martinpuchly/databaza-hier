class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
