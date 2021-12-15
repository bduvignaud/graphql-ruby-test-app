class TtsGraphqlSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  rescue_from ActiveRecord::RecordNotFound do |e|
    GraphQL::ExecutionError.new("Couldn't find #{e.model}")
  end

  rescue_from ActiveRecord::RecordInvalid do |e|
    GraphQL::ExecutionError.new(e.record.errors.full_messages.join(', '))
  end

  rescue_from StandardError do |e|
    Rails.logger.info e
    GraphQL::ExecutionError.new("Something bad happens")
  end
end
