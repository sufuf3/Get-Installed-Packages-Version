# Get-Installed-Packages-Version

This is a script to get all packages version on Ubuntu. After you run the script, you'll have `version-2018-X-X_X:X:X.md` file.

## Quick Run
### Use wget
```sh
$ wget -O - https://goo.gl/WQWzMY | bash
```
### Use curl
```sh
$ curl -Lo- https://goo.gl/WQWzMY | bash
```

### Run local
```
$ git clone https://github.com/sufuf3/Get-Installed-Packages-Version.git
$ cd Get-Installed-Packages-Version
$ sh get_version_tool.sh
```

# Compare packages version on different OS environment
After saving the files(which named by you) are under the same folder, you could use this command to help you figure out.
- Example
```sh
$ grep "vim" *
```
```sh
simple1604.md:vim==2:8.0.0197-4ubuntu5
simple1404.md:vim==2:8.0.0197-4ubuntu5
tf1604.md:vim==2:8.0.0197-4ubuntu5
digits1604.md:vim==2:8.0.0197-4ubuntu5
```

Ref:  
- https://www.cyberciti.biz/faq/debian-ubuntu-linux-apt-get-aptitude-show-package-version-command/
