# Automate project workflow with FreeRTOS and PICO-SDK
This set of tools allows you to create pico-sdk projects from highly customizable templates more quickly.

## Installation
Obtain executable privileges by 
```sh
    chmod 755 install.sh
```

afterwards run the script with root priviliges
```sh
    sudo ./install.sh <pico-sdk-path> <freertos-kernel-path>
```

with required paths. You can also install using environmental variables e. g.:
```sh
    sudo ./install.sh ${PICO_SDK_PATH} ${FREERTOS_KERNEL_PATH}
```
Which will create `/etc/mkpico` directory where the template is stored. Executable is copied to `/usr/bin`. Export script `export.sh` has to be run before building any pico-sdk projects, it has to be run only once for a terminal session (it sets environment variables which do not persist after rebooting). Export script has to be sourced
```sh
    source export.sh
```

For uninstallation run 
```sh
    sudo ./uninstall.sh
```

## Usage
To create a new project execute
```sh
    mkpico <project-name>
```

which will create template project from `/etc/mkpico` directory.
