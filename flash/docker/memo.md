### Reference
- [SDK Manger - Docker Images](https://docs.nvidia.com/sdk-manager/docker-containers/index.html)
- [CLI arguments](https://docs.nvidia.com/sdk-manager/sdkm-command-line-install/index.html)



### Commnad Example

```
docker run -it --privileged \
    -v /dev/bus/usb:/dev/bus/usb/ \
    -v /dev:/dev \
    -v /media/$USER:/media/nvidia:slave \
    --name JetPack_NX_Devkit \
    --network host sdkmanager \
    --cli install \
    --logintype devzone \
    --product Jetson \
    --target P3668-0000 \
    --targetos Linux \
    --version 4.4.1 \
    --select 'Jetson OS' \
    --deselect 'Jetson SDK Components' \
    --flash all \
    --license accept \
    --staylogin true \
    --datacollection enable 
    --exitonfinis
    --user 
```
```
docker run -it --privileged \
    -v /dev/bus/usb:/dev/bus/usb/ \
    -v /dev:/dev \
    -v /media/$USER:/media/nvidia:slave \
    --name JetPack_NX_Devkit \
    --network host sdkmanager \
    --cli install \
    --logintype devzone \
    --product Jetson \
    --target JETSON_AGX_ORIN_TARGETS \
    --targetos Linux \
    --version 5.0.2 \
    --select 'Jetson OS' \
    --deselect 'Jetson SDK Components' \
    --flash all \
    --license accept \
    --datacollection enable 
    --user 
    --host \
    --additionalsdk 'DeepStream 6.1.1'
```

### select or deselet option
Available options: Jetson Linux, Jetson SDK Components, Developer Tools, Developer Tools for Deep Learning


### Query 
-------
JetPack 5.0.2 (rev. 1)
sdkmanager --cli install --logintype devzone --product Jetson --version 5.0.2 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all --additionalsdk 'DeepStream 6.1.1'
sdkmanager --cli install --logintype devzone --product Jetson --version 5.0.2 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all --additionalsdk 'DeepStream 6.1.1'
sdkmanager --cli install --logintype devzone --product Jetson --version 5.0.2 --targetos Linux --host --target JETSON_AGX_ORIN_TARGETS --flash all --additionalsdk 'DeepStream 6.1.1'

JetPack 5.0.2 Runtime (rev. 1)
sdkmanager --cli install --logintype devzone --product Jetson --version Runtime_5.0.2 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all
sdkmanager --cli install --logintype devzone --product Jetson --version Runtime_5.0.2 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all
sdkmanager --cli install --logintype devzone --product Jetson --version Runtime_5.0.2 --targetos Linux --host --target JETSON_AGX_ORIN_TARGETS --flash all

JetPack 4.6.3
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.3 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.3 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.3 --targetos Linux --host --target JETSON_TX2_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.3 --targetos Linux --host --target JETSON_TX1_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.3 --targetos Linux --host --target JETSON_NANO_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

JetPack 4.6.2
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.2 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.2 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.2 --targetos Linux --host --target JETSON_TX2_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.2 --targetos Linux --host --target JETSON_TX1_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.2 --targetos Linux --host --target JETSON_NANO_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

JetPack 4.6.1
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.1 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.1 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.1 --targetos Linux --host --target JETSON_TX2_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.1 --targetos Linux --host --target JETSON_TX1_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.1 --targetos Linux --host --target JETSON_NANO_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

JetPack 4.6 (rev. 3)
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all --additionalsdk 'DeepStream 6.0'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all --additionalsdk 'DeepStream 6.0'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6 --targetos Linux --host --target JETSON_TX2_TARGETS --flash all --additionalsdk 'DeepStream 6.0'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6 --targetos Linux --host --target JETSON_TX1_TARGETS --flash all --additionalsdk 'DeepStream 6.0'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6 --targetos Linux --host --target JETSON_NANO_TARGETS --flash all --additionalsdk 'DeepStream 6.0'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

JetPack 4.5.1 (rev. 1)
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_AGX_XAVIER --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target CLARA_AGX_DEVKIT --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_AGX_XAVIER_8GB --flash all
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_XAVIER_NX --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_XAVIER_NX_DEVKIT --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_TX2 --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_TX2I --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_TX2_4GB --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_TX2_NX --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_TX1 --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_NANO_DEVKIT --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_NANO_2GB_DEVKIT --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_NANO --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

JetPack 3.3.4
sdkmanager --cli install --logintype devzone --product Jetson --version 3.3.4 --targetos Linux --host --target JETSON_TX2 --flash all
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 3.3.4 --targetos Linux --host --target JETSON_TX2I --flash all
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 3.3.4 --targetos Linux --host --target JETSON_TX1 --flash all
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

-------

### Help 
(base) ataka@ataka-pc:~/nvidia/sdkmanger/docker$  docker run -it --rm sdkmanager --help

NVIDIA SDK MANAGER

  NVIDIA SDK Manager is an all-in-one tool that bundles developer software and  
  provides an end-to-end development environment setup solution for NVIDIA      
  SDKs.                                                                         

General Options

  -h, --help                             Displays this usage guide.                                                    
  --ver                                  Output the version of the installed SDK Manager client                        
  --settings                             Optional. Configure SDK Manager settings in the terminal.                     
  --query interactive|noninteractive     Prints all options available for the user. Must be executed with the --user   
                                         or --offline settings                                                         
  --showallversions                      Prints all available product versions for the user.                           
  --exportlogs folder_path               Optional. This option will export all the installation log files to the       
                                         specified folder_path in packaged format. Logs will be exported to the        
                                         download folder if it is not provided.                                        
  --exitonfinish                         Optional. Automatically exit from SDK Manager when the install/uninstall      
                                         session is finished (skip user input). Intended for scripts/automation usage. 
  --user email_address                   Optional. Set the user email to login. Valid only for NVOnline login.         
  --password string                      Optional. Set the user login password. Valid only for NVOnline login.         
  --logintype devzone|nvonline           Optional. Login with developer.nvidia.com (devzone) or partners.nvidia.com    
                                         (nvonline) account.                                                           
  --staylogin true|false                 Optional. Keep the user account logged-in for next running session.           
  --logout                               Logout user account from SDK Manager.                                         
  --offline                              Optional. Skip login to NVIDIA servers. Install SDK from pre downloaded       
                                         location, used with --downloadfolder option.                                  
  --downloadfolder string                Optional. Set the download folder for the SDK components. Used for            
                                         downloading the files and for locating the SDK components when using          
                                         --offline. Default path is /home/{username}/Downloads/nvidia/sdkm_downloads   
  --archivedversions                     Optional. Display deprecated SDK versions which are not shown on standard     
                                         run.                                                                          
  --cli install|uninstall|downloadonly   Mandatory. Set the requested action.                                          
  --sudopassword string                  Optional. Set the sudo password to skip the authentication prompt.            
  --datacollection enable|disable        Optional. Set to enable or disable usage data collection.                     
  --checkforupdates true|false|force     Optional. Check SDK Manager updates. Set false to disable the update check,   
                                         set force to skip the prompt.                                                 
  --listconnected all|Jetson|DOCA        List connected Jetson devices information.                                    
  --extraconfig string                   Optional. Set the extra config file path. Extra config file samples can be    
                                         found in the product folder /opt/nvidia/sdkmanager.                           
  --hwserver string                      Optional. Set this option when you know the hw config server file details for 
                                         the SDK Manager list of SDKs.                                                 

Specific arguments for install/uninstall:

  --product product_name                 Mandatory. Set the product name.                                              
  --version string                       Mandatory. Set the product version. Use --query to get available version      
                                         values.                                                                       
  --targetos target_os                   Mandatory. Set the target hardware operating system.                          
  --host                                 Optional. Set if host side components need to be installed.                   
  --target target_hardware               Optional. Set the target hardware in use. Use hardware code name.             
  --flash all|a|b|ab|skip                Optional. Set the flash operation mode, which of the Tegras should be         
                                         flashed.                                                                      
  --usbport string                       Optional. Select the usb port if multiple boards connected.                   
  --additionalsdk additional_sdk_title   Optional. Specify any additional SDK to install. Multiple entries are         
                                         allowed.                                                                      
  --select section_or_group_title        Optional. Specify section or group to installation list. Multiple entries are 
                                         allowed.                                                                      
  --deselect section_or_group_title      Optional. Specify section or group to exclude from installation list.         
                                         Multiple entries are allowed.                                                 
  --license accept                       Optional. Set this option to accept the terms and conditions of SDK license   
                                         agreements.                                                                   
  --targetimagefolder string             Optional. Set the host location of the target hardware image for flashing.    
  --responsefile string                  Optional. Set the response file path. Response file samples can be found in   
                                         the product folder /opt/nvidia/sdkmanager.                                    

Example

  $ sdkmanager [--user user@user.com] [--query]                         
  $ sdkmanager [--cli install|uninstall|downloadonly] [cli options] ... 
  $ sdkmanager [--checkforupdates]                                      
  $ sdkmanager [--settings]                                             
  $ sdkmanager [--help]                                                 


























-----------------
(base) ataka@ataka-pc:~/nvidia/sdkmanger/docker/downloads$ docker run -it --rm sdkmanager --query


? SDK Manager is waiting for you to complete login. Generate a new login user code
New login code generated
To initiate login process open https://static-login.nvidia.com/service/default/pin?user_code=98062223 in a browser or scan the QR code on your handheld device then login with your NVIDIA Developer account. SDK Manager will start once done.
Login user code: 98062223. (valid for: 10 minutes).
? SDK Manager is waiting for you to complete login. Generate a new login user code
New login code generated
To initiate login process open https://static-login.nvidia.com/service/default/pin?user_code=13544928 in a browser or scan the QR code on your handheld device then login with your NVIDIA Developer account. SDK Manager will start once done.
Login user code: 13544928. (valid for: 10 minutes).
? SDK Manager is waiting for you to complete login.
  1) Generate a new login user code
  2) Display the QR Code
  3) Cancel login
  Answer:
Waiting for user information from NVIDIA authentication server...
Retrieving user information...
Loading and processing available products...
Login succeeded.
Loading user information...
User information loaded successfully.
Loading server data...
Server data loaded successfully.
Available options are:

DRIVE OS 6.0.4 SDK (rev. 1)
sdkmanager --cli install --logintype devzone --product DRIVE --version 6.0.4 --targetos Linux --host --target DRIVE_AGX_ORIN_DEVKITS --flash all

DRIVE OS 5.2.6 SDK
sdkmanager --cli install --logintype devzone --product DRIVE --version OSWithSamples_5.2.6_SDK --targetos Linux --host --target DDPX --flash all --additionalsdk 'ROS Example 5.2.6'
 * Available on host OS: Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product DRIVE --version OSWithSamples_5.2.6_SDK --targetos Linux --host --target DRIVE_AGX_PEGASUS_XT --flash all --additionalsdk 'ROS Example 5.2.6'
 * Available on host OS: Ubuntu 18.04

DRIVE Software 10.0 (rev. 2)
sdkmanager --cli install --logintype devzone --product DRIVE --version OS_5.1.6.1_SDK --targetos Linux --host --target DDPX --flash all
 * Available on host OS: Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product DRIVE --version OS_5.1.6.1_SDK --targetos Linux --host --target DRIVE_AGX_PEGASUS_XT --flash all
 * Available on host OS: Ubuntu 18.04

JetPack 5.0.2 (rev. 1)
sdkmanager --cli install --logintype devzone --product Jetson --version 5.0.2 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all --additionalsdk 'DeepStream 6.1.1'
sdkmanager --cli install --logintype devzone --product Jetson --version 5.0.2 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all --additionalsdk 'DeepStream 6.1.1'
sdkmanager --cli install --logintype devzone --product Jetson --version 5.0.2 --targetos Linux --host --target JETSON_AGX_ORIN_TARGETS --flash all --additionalsdk 'DeepStream 6.1.1'

JetPack 5.0.2 Runtime (rev. 1)
sdkmanager --cli install --logintype devzone --product Jetson --version Runtime_5.0.2 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all
sdkmanager --cli install --logintype devzone --product Jetson --version Runtime_5.0.2 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all
sdkmanager --cli install --logintype devzone --product Jetson --version Runtime_5.0.2 --targetos Linux --host --target JETSON_AGX_ORIN_TARGETS --flash all

JetPack 4.6.3
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.3 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.3 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.3 --targetos Linux --host --target JETSON_TX2_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.3 --targetos Linux --host --target JETSON_TX1_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.3 --targetos Linux --host --target JETSON_NANO_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

JetPack 4.6.2
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.2 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.2 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.2 --targetos Linux --host --target JETSON_TX2_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.2 --targetos Linux --host --target JETSON_TX1_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.2 --targetos Linux --host --target JETSON_NANO_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

JetPack 4.6.1
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.1 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.1 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.1 --targetos Linux --host --target JETSON_TX2_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.1 --targetos Linux --host --target JETSON_TX1_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6.1 --targetos Linux --host --target JETSON_NANO_TARGETS --flash all --additionalsdk 'DeepStream 6.0.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

JetPack 4.6 (rev. 3)
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6 --targetos Linux --host --target JETSON_AGX_XAVIER_TARGETS --flash all --additionalsdk 'DeepStream 6.0'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6 --targetos Linux --host --target JETSON_XAVIER_NX_TARGETS --flash all --additionalsdk 'DeepStream 6.0'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6 --targetos Linux --host --target JETSON_TX2_TARGETS --flash all --additionalsdk 'DeepStream 6.0'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6 --targetos Linux --host --target JETSON_TX1_TARGETS --flash all --additionalsdk 'DeepStream 6.0'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.6 --targetos Linux --host --target JETSON_NANO_TARGETS --flash all --additionalsdk 'DeepStream 6.0'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

JetPack 4.5.1 (rev. 1)
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_AGX_XAVIER --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target CLARA_AGX_DEVKIT --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_AGX_XAVIER_8GB --flash all
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_XAVIER_NX --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_XAVIER_NX_DEVKIT --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_TX2 --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_TX2I --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_TX2_4GB --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_TX2_NX --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_TX1 --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_NANO_DEVKIT --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_NANO_2GB_DEVKIT --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 4.5.1 --targetos Linux --host --target JETSON_NANO --flash all --additionalsdk 'DeepStream 5.1'
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04

JetPack 3.3.4
sdkmanager --cli install --logintype devzone --product Jetson --version 3.3.4 --targetos Linux --host --target JETSON_TX2 --flash all
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 3.3.4 --targetos Linux --host --target JETSON_TX2I --flash all
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04
sdkmanager --cli install --logintype devzone --product Jetson --version 3.3.4 --targetos Linux --host --target JETSON_TX1 --flash all
 * Available on host OS: Ubuntu 16.04, Ubuntu 18.04


Query completed.

(base) ataka@ataka-pc:~/nvidia/sdkmanger/docker/downloads$
