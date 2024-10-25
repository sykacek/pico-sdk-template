#copy etries to /etc directory
cp -r src/mkpico /etc

#chmod
chmod 755 uninstall.sh
chmod 755 export.sh
chmod 755 src/mkpico.bin

#add binary executable
cp src/mkpico.bin /usr/bin/mkpico
