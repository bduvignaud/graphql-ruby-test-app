class CreateJoinTableUsersProviders < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :providers do |t|
      t.index [:user_id, :provider_id]
      t.index [:provider_id, :user_id]
    end
  end
end
