# Gravatar Lookup API - Ruby Gem

Gravatar Lookup fetches public Gravatar profiles and avatar image URLs for any email address. It returns the user's display name, username, biography, location, company, and job title.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_gravatarlookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_gravatarlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_gravatarlookup'

# Initialize the client
client = APIVerve::Gravatarlookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ email: "hello@apiverve.com" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ email: "hello@apiverve.com" })
  puts response["data"]
rescue APIVerve::Gravatarlookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Gravatarlookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Gravatarlookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "profileUrl": "https://gravatar.com/apiverve",
    "thumbnailUrl": "https://0.gravatar.com/avatar/f4d2e1d9263acab05f6a553dfdd4884a1efb8e6d76bd276a50996b3a41e1d6e5",
    "photos": [
      {
        "value": "https://0.gravatar.com/avatar/f4d2e1d9263acab05f6a553dfdd4884a1efb8e6d76bd276a50996b3a41e1d6e5",
        "type": "thumbnail"
      }
    ],
    "displayName": "APIVerve",
    "aboutMe": "APIVerve stands out as a premier source for cloud-based API and Software-as-a-Service (SaaS) solutions catering to developers, startups and products.\n\nAt APIVerve, we take pride in being a leading provider of cutting-edge cloud-based API and Software-as-a-Service (SaaS) solutions tailored to meet the diverse needs and unlock new possibilities across various industries.",
    "currentLocation": "United States",
    "company": "APIVerve",
    "jobTitle": "",
    "username": "apiverve",
    "contactInfo": [],
    "accounts": [
      {
        "domain": "twitter",
        "display": "X",
        "url": "https://x.com/apivervehq",
        "verified": true,
        "name": "Twitter"
      },
      {
        "domain": "calendly",
        "display": "Calendly",
        "url": "https://calendly.com/apiverve",
        "verified": true,
        "name": "Calendly"
      },
      {
        "domain": "github",
        "display": "GitHub",
        "url": "https://github.com/apivervehq",
        "verified": true,
        "name": "Github"
      }
    ],
    "accountCount": 3,
    "verifiedAccountCount": 3
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/gravatarlookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/gravatarlookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/gravatarlookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
