apt-get update -y || true
apt-get install --no-install-recommends lsb-release less udev zstd build-essential libpng-dev libgomp1 apt-transport-https -y

cd /opt

wget -q -O ZED_SDK_Linux_Ubuntu22.run https://download.stereolabs.com/zedsdk/5.0/cu12/ubuntu22
chmod 777 ZED_SDK_Linux_Ubuntu22.run ; 
./ZED_SDK_Linux_Ubuntu22.run -- silent skip_od_module skip_python skip_cuda

sudo ln -sf /lib/x86_64-linux-gnu/libusb-1.0.so.0 /usr/lib/x86_64-linux-gnu/libusb-1.0.so

rm ZED_SDK_Linux_Ubuntu22.run