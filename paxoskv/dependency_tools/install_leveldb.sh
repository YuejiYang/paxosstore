#!/bin/sh

set -ex
base_dir=$(cd `dirname $0`;pwd)
cd $(dirname $base_dir)/leveldb
make -j2 && cp out-shared/libleveldb.so* /usr/local/lib/ && cp out-static/libleveldb.a /usr/local/lib/ && cp include/leveldb /usr/local/include/ -r && ldconfig
