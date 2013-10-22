## Debian Private APT
This project creates a .deb file for setting up directories and configuration for hosting private
APT repository using reprepro.

### Package Requirements
1. dh-make,
2. devscripts,
3. debhelper?

### To Build
Run `debuild -uc -us -b`

### Notes on Steps for creating a debian packaging using dh-make
This section describe steps of preparing a debian packaging using dh-make

1. Export environment variables
```bash
DEBEMAIL="your_email@email-service.com"
DEBFULLNAME="Your Full Name"
export DEBEMAIL DEBFULLNAME
```

2. Run `dh_make` to create new packaging files
`dh_make --packagename private-apt_0.1 --native --single --email your_email@email-service.com`

3. Edit the following files
  1. `debian/control`
  2. `debian/copyright`

4. Run `debuild -uc -us -b` to create deb package, where
  * `-uc` Do not sign the .changes file.
  * `-us` Do not sign the source package and
  * `-b` Spcifies a binary-only build, no source files are to be buildt and/or distributed.
