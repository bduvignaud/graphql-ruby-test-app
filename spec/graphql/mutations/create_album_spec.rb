require 'rails_helper'


module Mutations
  describe CreateAlbum, type: :request do
    describe '.resolve' do
      it 'creates an album' do
        Artist.create(name: "new artist")
        post '/graphql', params: {
          query: album_query
        }
        data = parsed_response["data"]["createAlbum"]
        expect(data).to include(
          'name' => "New Album"
        )
      end
    end

    def album_query
      <<~GQL
        mutation {
          createAlbum(name: "New Album", artistName: "new artist")
          {
            name
          }
        }
      GQL
    end
  end

end
