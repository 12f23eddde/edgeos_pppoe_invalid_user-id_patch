# 12f23eddde/edgeos_pppoe_invalid_user-id_patch
Unable to add your pppoe account on edgeos? Try this.

### Usage
1. Download script from [this link](https://raw.githubusercontent.com/12f23eddde/edgeos_pppoe_invalid_user-id_patch/master/edgeos_pppoe_invalid_user-id_patch.sh)
2.	Upload to your edgeos device via scp
		Linux & macOS: `scp edgeos_pppoe_invalid_user-id_patch.sh <username>@<device_ip>:/tmp/`
Windows: Use WinSCP instead
3.	SSH to your device: `ssh <username>@<device_ip>`
4.	In the terminal:
```shell
cd /tmp/
sudo chmod +x scp edgeos_pppoe_invalid_user-id_patch.sh
./edgeos_pppoe_invalid_user-id_patch.sh
```
5.	Type your 'Invalid' character, press Enter, well done!
