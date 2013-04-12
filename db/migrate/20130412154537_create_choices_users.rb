class CreateChoicesUsers < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :user
      t.references :choice
    end
  end
end
