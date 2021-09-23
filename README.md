# Desertcart

This gem allows you to talk with Desertcart and its Marketplace API. It is build on top of ledger_sync.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'desertcart'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install desertcart

## Usage

### Authentication and Authorization

Get tokens from API by signing in.

```ruby
require 'desertcart'

client = Desertcart::Client.new

resource = Desertcart::Session.new(login: 'EMAIL', password: 'password')

operation = Desertcart::Session::Operations::Create.new(client: client, resource: resource)
operation.perform

Setting['DESERTCART_USER_TOKEN'] = operation.result.resource.token
Setting['DESERTCART_USER_ID'] = operation.result.resource.user.ledger_id
```

Once you have tokens, go ahead and get tokens for your store (id: 1)
```ruby
client = Desertcart::Client.new(user_id: Setting['DESERTCART_USER_ID'], user_token: Setting['DESERTCART_USER_TOKEN'], store_id: nil, store_token: nil)

store = Desertcart::Marketplace::Store.new(ledger_id: '1')

resource = Desertcart::Marketplace::Authorization.new(store: store)

operation = Desertcart::Marketplace::Authorization::Operations::Create.new(client: client, resource: resource)
operation.perform

Setting['DESERTCART_AMAZON_US_TOKEN'] = operation.result.resource.token
Setting['DESERTCART_AMAZON_US_ID'] = operation.result.resource.store.ledger_id
```

### Verification

Verify its all good.
```ruby
require 'desertcart'

client = Desertcart::Client.new(user_id: Setting['DESERTCART_USER_ID'], user_token: Setting['DESERTCART_USER_TOKEN'], store_id: Setting['DESERTCART_AMAZON_US_ID'], store_token: Setting['DESERTCART_AMAZON_US_TOKEN'])

resource = Desertcart::Marketplace::Store.new(ledger_id: 'current')

operation = Desertcart::Marketplace::Store::Operations::Find.new(client: client, resource: resource)
operation.perform

operation.result.resource.ledger_id
```

### Search

To get list of items/search, you need to use Searcher class.
```ruby
require 'desertcart'

client = Desertcart::Client.new(user_id: Setting['DESERTCART_USER_ID'], user_token: Setting['DESERTCART_USER_TOKEN'], store_id: Setting['DESERTCART_AMAZON_US_ID'], store_token: Setting['DESERTCART_AMAZON_US_TOKEN'])

search = Desertcart::Marketplace::OrderItem::Searcher.new(client: client, query: {})
search.resources
```

Pending order items search with hash param.
```ruby
require 'desertcart'

client = Desertcart::Client.new(user_id: Setting['DESERTCART_USER_ID'], user_token: Setting['DESERTCART_USER_TOKEN'], store_id: Setting['DESERTCART_AMAZON_US_ID'], store_token: Setting['DESERTCART_AMAZON_US_TOKEN'])

search = Desertcart::Marketplace::PendingOrderItem::Searcher.new(client: client, query: {updated_at_eq: Time.zone.now})
search.resources
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/desertcart.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

