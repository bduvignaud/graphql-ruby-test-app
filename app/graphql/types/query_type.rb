module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :providers, [ProviderType], null: false

    field :provider, ProviderType, null: false do
      argument :id, ID, required: true
    end

    field :artist, ArtistType, null: false do
      argument :id, ID, required: true
    end

    field :user, UserType, null: false do
      argument :id, ID, required: true
    end

    field :artists, [ArtistType], null: false

    def providers
      Provider.all
    end

    def provider(id:)
      Provider.find(id)
    end

    def user(id:)
      User.find(id)
    end

    def artists
      Artist.all
    end

    def artist(id:)
      Artist.find(id)
    end
  end
end
