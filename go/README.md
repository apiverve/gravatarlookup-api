# Gravatar Lookup API - Go Client

Gravatar Lookup is a simple tool for looking up Gravatar profiles. It returns the Gravatar profile information of the email address provided.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Go client for the [Gravatar Lookup API](https://apiverve.com/marketplace/gravatarlookup?utm_source=go&utm_medium=readme)

---

## Installation

```bash
go get github.com/apiverve/gravatarlookup-api/go
```

---

## Configuration

Before using the Gravatar Lookup API client, you need to obtain your API key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=go&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=go&utm_medium=readme)

The Gravatar Lookup API documentation is found here: [https://docs.apiverve.com/ref/gravatarlookup](https://docs.apiverve.com/ref/gravatarlookup?utm_source=go&utm_medium=readme)

---

## Usage

```go
package main

import (
    "fmt"
    "log"

    "github.com/apiverve/gravatarlookup-api/go"
)

func main() {
    // Create a new client
    client := gravatarlookup.NewClient("YOUR_API_KEY")

    // Set up parameters
    params := map[string]interface{}{
        "email": "hello@apiverve.com"
    }

    // Make the request
    response, err := client.Execute(params)
    if err != nil {
        log.Fatal(err)
    }

    fmt.Printf("Status: %s\n", response.Status)
    fmt.Printf("Data: %+v\n", response.Data)
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=go&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=go&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=go&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=go&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
