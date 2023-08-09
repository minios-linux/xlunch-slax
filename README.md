# xlunch-slax
Adapting the xlunch source code to build a package for use in MiniOS Flux (a Slax clone from the MiniOS team).

# building
```sh
git clone https://github.com/minios-linux/xlunch-slax.git
mv xlunch-slax xlunch-slax-4.7.5
cd xlunch-slax-4.7.5
dh_make --createorig -s -y
dpkg-buildpackage -rfakeroot -uc -us
```
