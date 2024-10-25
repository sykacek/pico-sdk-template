#copy etries to /etc directory
cp -r src/mkpico /etc

#add binary executable
chmod 755 src/mkpico.bin
cp src/mkpico.bin /usr/bin/mkpico
