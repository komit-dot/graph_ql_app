# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, Integer, null: false
    field :user_id, Integer, null: false
    field :title, String, null: false
    field :body, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
