# Gravatar Lookup API - PHP Package

Gravatar Lookup fetches public Gravatar profiles and avatar image URLs for any email address. It returns the user's display name, username, biography, location, company, and job title.

## Installation

Install via Composer:

```bash
composer require apiverve/gravatarlookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Gravatarlookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['email' => 'hello@apiverve.com']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Gravatarlookup\Client;
use APIVerve\Gravatarlookup\Exceptions\APIException;
use APIVerve\Gravatarlookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['email' => 'hello@apiverve.com']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/gravatarlookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/gravatarlookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/gravatarlookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
