class CreateFutures < ActiveRecord::Migration[7.0]
  def change
    create_table :futures do |t|
      t.string :future_image, limit: 255, null: false

      t.timestamps
    end
  end
end
