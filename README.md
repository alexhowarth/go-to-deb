# Generate a Debian package from a Go build

This repository was used to figure out how to build Go code and package it into a .deb along with configuration and a service file to enable it to be managed by systemd.

I use [GoReleaser](https://goreleaser.com/) along with [NFPM](https://github.com/goreleaser/nfpm) to achieve this.

The whole pipeline can be used with [GitHub Actions](https://github.com/features/actions) for CI automation via the [release workflow](.github/workflows/release.yml).

In its current configuration, packages will be built and appear as [releases](https://github.com/alexhowarth/go-to-deb/releases) on Github when code is tagged:

~~~
git tag -a v0.0.1 -m "new release"
git push origin v0.0.1
~~~

With a local install of GoReleaser, without tagging, the following will build a snapshot in a _dist_ directory:

~~~
goreleaser --snapshot --skip-publish --rm-dist
~~~

My requirement was to deploy to a Raspberry Pi. You'll need to change the build [configuration](.goreleaser.yml) and modify the [service file](debian/scripts/systemd/test-foo.service) for other architectures.
