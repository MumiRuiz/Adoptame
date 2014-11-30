class CreateAdoptionForms < ActiveRecord::Migration
  def change
    create_table :adoption_forms do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.string :neighborhood
      t.string :region
      t.string :city
      t.string :phone
      t.string :mobile_phone
      t.string :email
      t.string :age
      t.string :ingresos_mensuales
      t.string :profesion
      t.string :tipo_de_vivienda
      t.string :tipo_de_propiedad_de_la_vivienda
      t.string :question_1
      t.string :question_2
      t.string :question_3
      t.string :question_4
      t.string :question_5
      t.string :question_6
      t.string :question_7
      t.string :question_8
      t.string :question_9
      t.string :question_10
      t.string :question_11
      t.string :question_12
      t.string :question_13
      t.string :question_14
      t.string :question_15
      t.string :question_16
      t.string :question_17
      t.string :question_18
      t.string :question_19
      t.string :question_20
      t.string :question_21
      t.string :question_22
      t.string :question_23
      t.string :question_24
      t.string :question_25
      t.string :question_26
      t.string :question_27
      t.string :question_28
      t.references :pets, index: true

      t.timestamps null: false
    end
  end
end
