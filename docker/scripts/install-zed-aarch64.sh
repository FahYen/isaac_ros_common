# Based on https://github.com/stereolabs/zed-docker

# Download dependencies for zed SDK installation RUN file
sudo apt-get update -y || true
sudo apt-get install --no-install-recommends lsb-release wget less zstd udev sudo apt-transport-https -y

# Download zed SDK installation RUN file to /tmp directory
cd /tmp

wget -q --no-check-certificate -O ZED_SDK_Linux.run https://download.stereolabs.com/zedsdk/5.0/l4t36.4/jetsons
sudo chmod 777 ./ZED_SDK_Linux.run
sudo -u admin ./ZED_SDK_Linux.run silent skip_od_module skip_python skip_drivers    
# Symlink required to use the streaming features on Jetson inside a container, based on
# https://github.com/stereolabs/zed-docker/blob/fd514606174d8bb09f21a229f1099205b284ecb6/4.X/l4t/devel/Dockerfile#L27C5-L27C95
sudo ln -sf /usr/lib/aarch64-linux-gnu/tegra/libv4l2.so.0 /usr/lib/aarch64-linux-gnu/libv4l2.so

# Cleanup
sudo rm -rf /usr/local/zed/resources/*
rm -rf ZED_SDK_Linux.run
sudo rm -rf /var/lib/apt/lists/*