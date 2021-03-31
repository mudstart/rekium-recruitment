class CreateReclutamientos < ActiveRecord::Migration[6.1]
  def change
    create_table :reclutamientos do |t|
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :discordId
      t.string :nacionalidad
      t.date :birthdate
      t.string :email
      t.string :phone_number
      t.date :ingreso
      t.text :notas
      t.string :image

      t.timestamps
    end
  end
end
