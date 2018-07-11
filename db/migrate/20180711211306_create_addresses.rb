class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :Codigo_Postal
      t.string :Estado
      t.string :Municipio
      t.string :Ciudad
      t.string :Tipo_de_Asentamiento
      t.integer :Clave_de_Oficina

      t.timestamps
    end
  end
end
