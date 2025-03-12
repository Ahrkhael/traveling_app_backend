class CreateCities < ActiveRecord::Migration[8.0]
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.string :image
      t.string :blur_data_url

      t.timestamps
    end
  end
end
