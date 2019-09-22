# Get to repo root
cd ../../

# Remove pre-packaged repos
rm -r ./build
rm -r ./build2
rm -r ./dist
rm -r ./Mupen64Plus

# Create platform packages
dry run dist --dry-keep-package-json

# Enter packages directory
cd ./dist/

# Pull windows package and clean
cd ./windows/
wget https://github.com/hylian-modding/ModLoader64-Platform-Deps/raw/master/Windows/emulator.zip
unzip ./emulator.zip -d ./
rm ./emulator.zip
rm -r ./mods
mkdir ./mods
rm -r ./roms
mkdir ./roms
cd ../

# Pull linux package and clean
cd ./linux/
wget https://github.com/hylian-modding/ModLoader64-Platform-Deps/raw/master/Linux/emulator.tar.gz
tar xvzf ./emulator.tar.gz
rm ./emulator.tar.gz
rm -r ./mods
mkdir ./mods
rm -r ./roms
mkdir ./roms
cd ../

# Keep console open when script finishes
echo "Press any key to continue"
read 1
