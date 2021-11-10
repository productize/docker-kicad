Minimal KiCad image based on Ubuntu
===================================

This is a Docker image contains specific versions of the [KiCad EDA suite]. It
has a minimal amount of cruft left behind from installation and no KiCad
libraries.

It is designed to be used as a base for more purpose specific images.

Versions
--------

This image makes it possible to use specific combinations of Ubuntu and KiCad
versions. The image tags are formatted in the folowing way:

	<kicad version>-<ubuntu version>

E.g, to run KiCad 4.07 on Ubuntu 16.04 use:

	docker run -it productize/kicad:4.07-16.04

Alternativly, just using the KiCad version will use the KiCad version on the
latest stable Ubuntu release. The `latest` tag contains the latest KiCad stable
release on the latest Ubuntu stable release.

[KiCad EDA suite]: http://kicad.org/
