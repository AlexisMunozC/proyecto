class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :Grupo, null:false, default: "", limit: 1
      t.timestamps
    end
  end
end
