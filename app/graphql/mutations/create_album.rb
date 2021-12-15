module Mutations
  class CreateAlbum < BaseMutation
    # arguments passed to the `resolve` method
    argument :name, String, required: true
    argument :artist_name, String, required: true

    # return type from the mutation
    type Types::AlbumType

    def resolve(artist_name:, name: )
      artist = Artist.find_by(name: artist_name)
      album = Album.new(
        name: name,
        artist: artist
      )
      if album.valid?
        album.save
        album
      else
        raise ActiveRecord::RecordInvalid.new(album)
      end
    end
  end
end
