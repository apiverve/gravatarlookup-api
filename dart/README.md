# Gravatar Lookup API - Dart/Flutter Client

Gravatar Lookup fetches public Gravatar profiles and avatar image URLs for any email address. It returns the display name, username, biography, location, company, job title and pronouns; paid plans add linked accounts (hidden ones flagged) and whether the email has its own uploaded avatar.

[![pub package](https://img.shields.io/pub/v/apiverve_gravatarlookup.svg)](https://pub.dev/packages/apiverve_gravatarlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Gravatar Lookup API](https://apiverve.com/marketplace/gravatarlookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_gravatarlookup: ^1.2.5
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
    "pronouns": "",
    "pronunciation": "",
    "avatarAltText": "",
    "emailHash": "f4d2e1d9263acab05f6a553dfdd4884a1efb8e6d76bd276a50996b3a41e1d6e5",
    "username": "apiverve",
    "contactInfo": [],
    "accounts": [
      {
        "domain": "twitter",
        "display": "X",
        "url": "https://x.com/apivervehq",
        "verified": true,
        "name": "Twitter",
        "icon": "https://gravatar.com/icons/x.svg",
        "hidden": false
      },
      {
        "domain": "calendly",
        "display": "Calendly",
        "url": "https://calendly.com/apiverve",
        "verified": true,
        "name": "Calendly",
        "icon": "https://gravatar.com/icons/calendly.svg",
        "hidden": false
      },
      {
        "domain": "github",
        "display": "GitHub",
        "url": "https://github.com/apivervehq",
        "verified": true,
        "name": "Github",
        "icon": "https://gravatar.com/icons/github.svg",
        "hidden": true
      }
    ],
    "accountCount": 3,
    "verifiedAccountCount": 3,
    "hasCustomAvatar": true
  }
}
```

## API Reference

- **API Home:** [Gravatar Lookup API](https://apiverve.com/marketplace/gravatarlookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/gravatarlookup](https://docs.apiverve.com/ref/gravatarlookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
