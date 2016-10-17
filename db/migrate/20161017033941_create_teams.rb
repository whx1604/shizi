class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :leader
      t.string :phone_num
      t.string :school
      t.string :edu_num
      t.string :email
      t.string :secret_code
      t.index :name
      t.index :secret_code
      t.timestamps
    end
  end
end
