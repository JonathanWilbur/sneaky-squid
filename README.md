# Sneaky Squid

* Author: [Jonathan M. Wilbur](https://jonathan.wilbur.space) <[jonathan@wilbur.space](mailto:jonathan@wilbur.space)>
* Copyright Year: 2019
* License: [MIT License](https://mit-license.org/)
* Version: _See `version` file or git tags._

Sneaky Squid is a Docker container that runs a Squid proxy, which is configured
to do the following, inclusively:

- Not log anything.
- Delete or replace HTTP headers that reveal information about users.
  - Namely, the `User-Agent` header.
- Block HTTP requests to tracking and analytics domains.
- Block the JavaScript files commonly used in Analytics tools.
- Provide repudiatable access by intentionally not requiring authentication.

## TODO

- [ ] Identify common tracking JavaScript file names.
- [ ] Figure out how to block these things:
  - [ ] Google Ads
  - [ ] AutopilotHQ
  - [ ] Blueshift
  - [ ] Braze
  - [ ] Customer.io
  - [ ] Delighted
  - [ ] Drip
  - [ ] Facebook Ads
  - [ ] Facebook Lead Adss
  - [ ] Friendbuy
  - [ ] HubSpot
  - [ ] Intercom
  - [ ] Iterable
  - [ ] Klaviyo
  - [ ] Looker
  - [ ] Mailchimp
  - [ ] Mailjet
  - [ ] Mandrill
  - [ ] Getting Started
  - [ ] Components
  - [ ] Collections
  - [ ] Marketo
  - [ ] Nudgespot
  - [ ] Salesforce
  - [ ] Salesforce Marketing Cloud
  - [ ] Selligent
  - [ ] SendGrid
  - [ ] Stripe
  - [ ] Twilio
  - [ ] Vero
  - [ ] Zendesk

## Contact Me

If you would like to suggest fixes or improvements on this library, please just
[leave an issue on this GitHub page](https://github.com/JonathanWilbur/asn1-ts/issues). If you would like to contact me for other reasons,
please email me at [jonathan@wilbur.space](mailto:jonathan@wilbur.space)
([My GPG Key](https://jonathan.wilbur.space/downloads/jonathan@wilbur.space.gpg.pub))
([My TLS Certificate](https://jonathan.wilbur.space/downloads/jonathan@wilbur.space.chain.pem)). :boar: