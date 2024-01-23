class CreatePermissions < ActiveRecord::Migration[7.1]
  def change
    create_table :permissions do |t|
      t.string :title, null: false
      t.string :main_title, null: false
      t.string :key, null: false
      t.string :description
      t.boolean :show_admin_link, default: 0
    end


    create_table :permissions_users, id: false do |t|
      t.belongs_to :permission
      t.belongs_to :user
    end
  end
end
