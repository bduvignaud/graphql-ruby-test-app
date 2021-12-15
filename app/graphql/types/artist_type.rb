module Types
  class ArtistType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :providers, [Types::ProviderType], null: true
    field :albums, [Types::AlbumType], null: true
  end
end
