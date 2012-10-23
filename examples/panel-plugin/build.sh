#!/bin/sh
touch NEWS README AUTHORS ChangeLog
xdt-autogen
make
echo
echo You can now type make install.
echo
