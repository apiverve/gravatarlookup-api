# Gravatar Lookup API - Dart/Flutter Client

Gravatar Lookup is a simple tool for looking up Gravatar profiles. It returns the Gravatar profile information of the email address provided.

[![pub package](https://img.shields.io/pub/v/apiverve_gravatarlookup.svg)](https://pub.dev/packages/apiverve_gravatarlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Gravatar Lookup API](https://apiverve.com/marketplace/gravatarlookup?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_gravatarlookup: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_gravatarlookup/apiverve_gravatarlookup.dart';

void main() async {
  final client = GravatarlookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'email': 'hello@apiverve.com'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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
    "aboutMe": "APIVerve stands out as a premier source for cloud-based API and Software-as-a-Service (SaaS) solutions catering to developers, startups and products.\n\nAt APIVerve, we take pride in being a leading provider of cutting-edge cloud-based API and Software-as-a-Service (SaaS) solutions tailored to meet the diverse needs and unlock new possibilities across various industries.",
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
        "domain": "twitter.com",
        "display": "@apivervehq",
        "url": "https://twitter.com/apivervehq",
        "iconUrl": "https://gravatar.com/icons/twitter-alt.svg",
        "is_hidden": false,
        "username": "apivervehq",
        "verified": true,
        "name": "Twitter",
        "shortname": "twitter"
      },
      {
        "domain": "github.com",
        "display": "apivervehq",
        "url": "https://github.com/apivervehq",
        "iconUrl": "https://gravatar.com/icons/github.svg",
        "is_hidden": true,
        "username": "apivervehq",
        "verified": true,
        "name": "GitHub",
        "shortname": "github"
      },
      {
        "domain": "calendly.com",
        "display": "apiverve",
        "url": "https://calendly.com/apiverve",
        "iconUrl": "https://gravatar.com/icons/calendly.svg",
        "is_hidden": false,
        "username": "calendly.com",
        "verified": true,
        "name": "Calendly",
        "shortname": "calendly"
      }
    ],
    "username": "apiverve"
  }
}
```

## API Reference

- **API Home:** [Gravatar Lookup API](https://apiverve.com/marketplace/gravatarlookup?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/gravatarlookup](https://docs.apiverve.com/ref/gravatarlookup?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
