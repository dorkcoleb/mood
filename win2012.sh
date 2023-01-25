apt-get update
echo "Windows server datacenter 2012 by Mapleon"
wget -O win2012.vhd https://bit.ly/3J1tE5d
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://raw.githubusercontent.com/dorkcoleb/mood/main/ngrok.sh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
./ngrok authtoken 2C3opOkiAklSD1xjA7r3kLrjt3Q_7STfBD5m55zQVyesDDXBH
clear
./ngrok tcp --region ap 3388 &>/dev/null &
clear
echo Downloading File and Fetching Package
apt-get install qemu-system-x86 -y
echo "Wait"
echo "Starting Windows"
qemu-system-x86_64 -hda win2012.vhd -m 58G -smp cores=12 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: User"
echo "Password: User"
echo "===================================="
echo "===================================="
echo "Keep supporting Mapleon, thank you"
echo "Windows Server 2012 R2 58 GiB Ram & 12 vCpu "
echo "Wait 2 minute to finish VM Fully boot up"
echo "DO NOT close this tab & Set your Autoclick & VMos"
echo "RDP runs depend your subscription"
echo "===================================="
sleep 999999999
