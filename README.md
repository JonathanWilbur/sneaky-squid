# Sneaky Squid

* Author: [Jonathan M. Wilbur](https://jonathan.wilbur.space) <[jonathan@wilbur.space](mailto:jonathan@wilbur.space)>
* Copyright Year: 2019
* License: [MIT License](https://mit-license.org/)

Sneaky Squid is a Docker container that runs a Squid proxy, which is configured
to do the following, inclusively:

- Not log anything.
- Delete or replace HTTP headers that reveal information about users.
  - Namely, the `User-Agent` header.
- Block HTTP/S requests to tracking and analytics domains.
- Block the JavaScript files commonly used in Analytics tools.
- Provide repudiatable access by intentionally not requiring authentication.

## How to use Sneaky Squid

1. Deploy it via Docker, Docker Compose, or Kubernetes.
  - If you do not mount `/cert.pem` and `/key.pem`, a new key-pair will be
    generated automatically for performing TLS decryption. Extract `/cert.pem`
    from the container by running
    `docker cp <container id>:/cert.pem <destination path>`, and add this
    certificate to your trusted roots.
2. Configure your device to use it as the HTTP and HTTPS proxy.
  1. HTTP proxy is available on port 3128.
  2. HTTPS proxy is available on port 4128.
3. Open up an incognito window of your web browser, preferrably on a
   throwaway virtual machine.
4. Browse the Internet.
5. When you are done, undo the proxy configuration to stop using Sneaky Squid.
6. If the client is not throwaway, delete your browser history.
7. If the client is not throwaway, delete the certificate from your trusted
   root certificates when you are done.

## TODO

- [x] HTTPS Interception
- [ ] Healthcheck
- [ ] `docker-compose.yml`
- [ ] Create Kubernetes deployment.

## Contact Me

If you would like to suggest fixes or improvements on this library, please just
[leave an issue on this GitHub page](https://github.com/JonathanWilbur/sneaky-squid/issues). If you would like to contact me for other reasons,
please email me at [jonathan@wilbur.space](mailto:jonathan@wilbur.space)
([My GPG Key](https://jonathan.wilbur.space/downloads/jonathan@wilbur.space.gpg.pub))
([My TLS Certificate](https://jonathan.wilbur.space/downloads/jonathan@wilbur.space.chain.pem)). :boar: