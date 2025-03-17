class CreateMonuments < ActiveRecord::Migration[8.0]
  def change
    create_table :monuments do |t|
      t.string :name, null: false
      t.references :city, null: false, foreign_key: true
      t.string :image_url
      t.string :blur_data_url
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.string :monument_link

      t.timestamps
    end
  end
end
