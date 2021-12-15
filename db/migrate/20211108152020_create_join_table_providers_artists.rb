class CreateJoinTableProvidersArtists < ActiveRecord::Migration[5.2]
  def change
    create_join_table :providers, :artists do |t|
      t.index [:provider_id, :artist_id]
      t.index [:artist_id, :provider_id]
    end
  end
end
