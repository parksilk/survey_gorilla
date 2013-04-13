class CreateChoicesUsers < ActiveRecord::Migration
  def change
    create_table :choices_users do |t|
      t.references :user
      t.references :choice
    end
  end
end
