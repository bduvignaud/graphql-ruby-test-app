module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :name, String, null: false
    field :providers, [Types::ProviderType], null: true

    def name
      object.first_name + " " + object.last_name
    end
  end
end
