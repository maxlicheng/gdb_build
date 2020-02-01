# gdb_build
support for gdb Cross compilation

### download
```shell
wget https://ftp.gnu.org/gnu/gdb/gdb-8.3.1.tar.xz
```

### tar
```shell
tar -vxf gdb-8.3.1.tar.xz
```

### use
```shell
git clone https://github.com/maxlicheng/gdb_build.git
cp ./gdb_build/build_gdb.sh ./gdb-8.3.1
cd ./gdb-8.3.1
sudo sh build_gdb.sh
```

### bin_path
```shell
gdb-8.3.1/arm-gdb/bin
```
