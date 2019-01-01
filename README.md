# esp-idf-install

clone it:
```
cd
git clone https://github.com/gymadarasz/esp-idf-install.git
```

install the esp-idf: ("pi" is the default user, `/home/pi` should be your home folder)
```
cd
cd esp-idf-install
./install-esp-idf.sh
PATH=$PATH:/opt/xtensa-esp32-elf/bin
export IDF_PATH=/home/pi/esp32/esp-idf
```

add a new app and make menuconfig: (replace `your-app-name` to your app name)
```
cd
cd esp-idf-install
./clone-esp-idf-template.sh your-app-name
```

uninstall:
```
cd
cd esp-idf-install
./uninstall-esp-idf.sh
PATH=`echo $PATH | sed -e 's/:\/opt\/xtensa\-esp32\-elf\/bin$//'`
unset IDF_PATH
```
