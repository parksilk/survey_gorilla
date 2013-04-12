class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :image
      t.string :thumbnail
      t.references :user
      t.timestamps
    end
  end
end
