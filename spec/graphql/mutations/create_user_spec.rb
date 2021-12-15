require 'rails_helper'


module Mutations
  describe CreateUser, type: :request do
    describe '.resolve' do
      it 'creates an user' do
        expect do
          post '/graphql', params: {
            query: user_query
          }
        end.to change(User, :count).by(1)
      end

      it "returns the user's full name" do
        post '/graphql', params: {
          query: user_query
        }

        data = parsed_response["data"]["createUser"]

        expect(data).to include(
          'name' => "Juan Miguel"
        )
      end

      it "returns an error if the name already exists" do
        User.create(first_name: "Juan", last_name: "Miguel")
        post '/graphql', params: {
          query: user_query
        }

        errors = parsed_response["errors"][0]

        expect(errors).to include(
          'message' => "First name and Last name has already been taken"
        )
      end
    end

    def user_query
      <<~GQL
        mutation {
          createUser(firstName: "Juan", lastName: "Miguel")
          {
            id
            name
          }
        }
      GQL
    end
  end
end
