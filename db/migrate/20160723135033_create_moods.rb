class CreateMoods < ActiveRecord::Migration[5.0]
  def change
    create_table :moods do |t|
      t.string :mood
      t.string :emotion
      t.string :stability
      t.string :focus

      t.timestamps
    end
  end
end
