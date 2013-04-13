class CreateSurveysUsers < ActiveRecord::Migration
  def change
    create_table :surveys_users do |t|
      t.references :survey
      t.references :user
    end
  end
end
