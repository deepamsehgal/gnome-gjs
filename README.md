# gnome-gjs
gnome tool kit using gjs

Steps to create .deb package:
1. mkdir newPackage
2. Create 2 dirs, DEBIAN and usr/bin, inside newPackage
3. Copy the executable file 'app' into bin
4. Add a control file inside DEBIAN
5. Control file wil have Package, Version, Description etc details
6. Run command: dpkg-deb --build newPackage
7. This will create newPackage.deb

NOTE: app is run like this: gjs app
