module Types
  class MutationType < Types::BaseObject
    field :create_album, mutation: Mutations::CreateAlbum
    field :create_user,  mutation: Mutations::CreateUser
  end
end
