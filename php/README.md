# Gravatar Lookup API - PHP Package

Gravatar Lookup is a simple tool for looking up Gravatar profiles. It returns the Gravatar profile information of the email address provided.

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
    "thumbnailUrl": "https://0.gravatar.com/avatar/08ccd5c0bdd88b0ac13f776a4f7914db",
    "photos": [
      {
        "value": "https://0.gravatar.com/avatar/08ccd5c0bdd88b0ac13f776a4f7914db",
        "type": "thumbnail"
      }
    ],
    "displayName": "APIVerve",
    "aboutMe": "APIVerve stands out as a premier source for cloud-based API and Software-as-a-Service (SaaS) solutions catering to developers, startups and products.",
    "currentLocation": "United States",
    "company": "APIVerve",
    "contactInfo": [
      {
        "type": "contactform",
        "value": "apiverve.com/contact"
      }
    ],
    "accounts": [
      {
        "domain": "x.com",
        "display": "@apivervehq",
        "url": "https://x.com/apivervehq",
        "verified": true,
        "name": "X"
      },
      {
        "domain": "github.com",
        "display": "apivervehq",
        "url": "https://github.com/apivervehq",
        "verified": true,
        "name": "GitHub"
      },
      {
        "domain": "calendly.com",
        "display": "apiverve",
        "url": "https://calendly.com/apiverve",
        "verified": true,
        "name": "Calendly"
      }
    ],
    "username": "apiverve",
    "accountCount": 3,
    "verifiedAccountCount": 3
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/gravatarlookup?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/gravatarlookup?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/gravatarlookup?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
