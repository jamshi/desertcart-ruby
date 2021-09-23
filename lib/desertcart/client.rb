# frozen_string_literal: true

module Desertcart
  class Client
    include LedgerSync::Ledgers::Client::Mixin

    ROOT_URI = 'https://api.desertcart.com/api'

    REQUEST_HEADERS = { 'Accept' => 'application/vnd.api+json; version:3.0',
                        'Content-Type' => 'application/json' }.freeze

    attr_reader :user_id,
                :user_token,
                :store_id,
                :store_token

    def initialize(args = {})
      @user_id = args[:user_id]
      @user_token = args[:user_token]
      @store_id = args[:store_id]
      @store_token = args[:store_token]
    end

    def read(**keywords)
      request(keywords.merge(method: :get))
    end

    def create(**keywords)
      request(keywords.merge(method: :post))
    end

    def update(**keywords)
      request(keywords.merge(method: :put))
    end

    def auth_headers
      {
        'X-User-Id' => @user_id,
        'X-User-Token' => @user_token,
        'X-Store-Id' => @store_id,
        'X-Store-Token' => @store_token
      }
    end

    def request(args = {})
      request = LedgerSync::Ledgers::Request.new(
        body: args.fetch(:body, nil),
        headers: args.fetch(:headers, {})
          .merge(REQUEST_HEADERS)
          .merge(auth_headers),
        method: args.fetch(:method),
        url: url_from_path(path: args.fetch(:path)),
        params: args.fetch(:params, {})
      )

      request.perform
    end

    def url_from_path(path:)
      request_url = ROOT_URI
      request_url += '/' unless path.to_s.start_with?('/')
      request_url + path.to_s
    end
  end
end
