# Root access for PocketBook FW 4.x
This tools and approach can be used to get root user permissions on the PocketBooks with FW 4.x and Wi-Fi.
Executing code with elevated rights requires to use some Wi-Fi router or other device that can set up a wireless network.

## Tested on
1. PocketBook 622 FW D622.4.4.565

## Instruction
1. Copy the `su` binary from ezdiy's [pbjb repository](https://github.com/ezdiy/pbjb) ([direct link to the binary](https://github.com/ezdiy/pbjb/raw/master/su)) to the system/bin directory in the PocketBook memory.
1. Copy `PB4root.sh` to the applications directory in the Pocketbook memory.
1. Setup the wireless network on other device. Set the following SSID: `a";"/mnt/ext1/root.sh` The network must be secured with WPA2 encryption. You can use eg. the phone's hotspot feature.
1. Make sure your reader is not connected to any network.
1. Run PB4root application on the PocketBook.
1. When the "Select network" screen appears, try to connect to the prepared network. Provide correct password for the network.
1. Wait some time. The PB should reboot if the hack succeeded. You should then have the `su` binary placed in `/mnt/secure/` folder.
1. If the reader didn't reboot, try to press Home button or repeat points 4-7.

## How does it work?
This approach to get root access uses vulnerable netagent binary, which does not escape SSID, allowing to perform the remote command execution attack with privileged user.
