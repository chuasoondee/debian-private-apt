# Package Requirements
1. dh-make,
2. devscripts,
3. debhelper?

# Steps for creating a debian packaging using dh-make

## Export environment variables
DEBEMAIL="soondee.chua@gmail.com"
DEBFULLNAME="Soon Dee Chua"
export DEBEMAIL DEBFULLNAME

## Run `dh_make` to create new packaging files
`dh_make --packagename private-apt_0.1 --native --single --email soondee.chua@gmail.com`

## Edit the following files
1. `debian/control`
2. `debian/copyright`

## Run `debuild` to create deb package
`debuild -uc -us -b`
where
* -uc Do not sign the .changes file.
* -us Do not sign the source package and
* -B Spcifies a binary-only build, no source files are to be buildt and/or distributed.
