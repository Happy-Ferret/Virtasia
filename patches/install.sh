#Lade nötige Arbeitsumgebung herunter.
apt-get install kernel-package libncurses5-dev fakeroot git haskell-platform xorg oneko hsetroot

#Lade und entpacke Linux 3.15 Vanilla Kernel.
wget https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.15.tar.xz
tar -xf linux-3.15.tar.xz

#Appliziere Speicher- und Scheduler spezifische Patches.
cd linux-3.15

patch -p1 < ../memory/*
patch -p1 < ../scheduler/*

#Dupliziere verfügbare Kernel config
cp /boot/config-`uname -r` ./.config

#Konfiguriere Kernel.
make menuconfig

#Säubere Index
make-kpkg clean

#Kompiliere Kernel.
fakeroot make-kpkg --initrd --append-to-version=virtasia kernel_image kernel_headers

#Installiere Virtasia Kernel.
dpkg -i ../*.deb

#Starte System neu.
reboot

#Installiere Userland.
git clone https://github.com/Happy-Ferret/Anima
apt-get install heirloom-mailx
cd Anima/bin
ghc sort.hs
ghc uname.hs
ghc true.hs
ghc yes.hs
ghc pwd.hs
ghc echo.hs
ghc cat.hs
ghc date.hs
ghc false.hs

cp sort /usr/bin/sort
cp uname /bin/uname
cp true /bin/true
cp yes /usr/bin/yes 
cp pwd /bin/pwd
cp echo /bin/echo
cp cat /bin/cat
cp date /bin/date
cp false /bin/false

#Installiere VM + Kernelmodule.
apt-get install virtualbox

#Konfiguriere Bootvorgang.
cd ../..
cp ./boot/rc.local /etc/rc.local
cp ./boot/Xwrapper.config /etc/X11/Xwrapper.config

#Installiere Virtasia UI.
cp ./UI/.xinitrc ~/.xinitrc
cp ./UI/Media-Center ~/Media-Center
