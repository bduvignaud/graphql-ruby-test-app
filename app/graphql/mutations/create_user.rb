module Mutations
  class CreateUser < BaseMutation
    # arguments passed to the `resolve` method
    argument :first_name, String, required: true
    argument :last_name, String, required: true

    # return type from the mutation
    type Types::UserType

    def resolve(first_name:, last_name: )
      user = User.create!(first_name: first_name, last_name: last_name)
    end
  end
end
