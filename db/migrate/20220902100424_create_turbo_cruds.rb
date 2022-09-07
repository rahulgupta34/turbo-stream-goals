class CreateTurboCruds < ActiveRecord::Migration[7.0]
  def change
    create_table :turbo_cruds do |t|
      t.string :name
      t.string :email
      t.string :addess

      t.timestamps
    end
  end
end
