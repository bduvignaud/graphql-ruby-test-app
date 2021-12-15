module Types
  class ProviderType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :users, [Types::UserType], null: true
    field :artists, [Types::ArtistType], null: true
    field :albums, [Types::AlbumType], null: false

    def albums
      albums = []

      object.artists.each do |artist|
        albums.concat(artist.albums)
      end

      albums
    end
  end
end
