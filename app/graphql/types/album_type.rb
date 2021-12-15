module Types
  class AlbumType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :artist, Types::ArtistType, null: true
  end
end
