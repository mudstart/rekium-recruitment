class CreateRecruitments < ActiveRecord::Migration[6.1]
  def change
    create_table :recruitments do |t|
      t.string :first_name
      t.string :last_name
      t.string :discordID
      t.string :status
      t.date :ingreso
      t.date :birthdate
      t.string :email
      t.string :phone_number
      t.string :country
      t.string :alter1
      t.string :alter2
      t.string :alter3
      t.string :alter4
      t.string :alter5
      t.string :image
      t.text :note

      t.timestamps
    end
  end
end
