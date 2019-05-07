[![Docker Layers](https://images.microbadger.com/badges/image/chatopera/cmake:3.14.3.svg)](https://microbadger.com/images/chatopera/cmake:3.14.3 "Get your own image badge on microbadger.com") [![Docker Version](https://images.microbadger.com/badges/version/chatopera/cmake:3.14.3.svg)](https://microbadger.com/images/chatopera/cmake:3.14.3 "Get your own version badge on microbadger.com") [![Docker Pulls](https://img.shields.io/docker/pulls/chatopera/cmake.svg)](https://hub.docker.com/r/chatopera/cmake/) [![Docker Stars](https://img.shields.io/docker/stars/chatopera/cmake.svg)](https://hub.docker.com/r/chatopera/cmake/) [![Docker Commit](https://images.microbadger.com/badges/commit/chatopera/cmake:3.14.3.svg)](https://microbadger.com/images/chatopera/cmake:3.14.3 "Get your own commit badge on microbadger.com")

# cpp-kick-starter

Are you ready to make magic with C++ in minutes?

## Featured

- gtest
- glog
- gflags
- thrift
- cross platform for docker funs

## Prerequisites

You will need:

- Docker
- CMake 3.1+ installed (on a Mac, run `brew install cmake`)
- If you prefer to code in a great IDE, I highly recommend [VSCode](https://code.visualstudio.com/). It is fully compatible with this project.

## Bootstrap

Run a docker instance and just work, no efforts to install deps.

```
./admin/dev.sh
```

For the docker image used by this project, check out [chatopera/cmake:3.14.3](https://cloud.docker.com/u/chatopera/repository/docker/chatopera/cmake)

## Install Deps

If you still want to install the basic dependencies by your side, run below script.

```
./admin/install-3rd.sh # it is for Ubuntu only currently.
```

This script would execute every command in `cmake/install` in order.

## Development

```
cd cpp-kick-starter
# build
mkdir -p build/debug
cd build/debug
cmake ../..
make
# run
src/divider/divider 1 5

# run tests
src/divider/divider_tests

# install
make install
```

## Project Structure

There are three empty folders: `lib`, `bin`, and `include`. Those are populated by `make install`.

The rest should be obvious: `src` is the sources.

Now we can build this project, and below we show three separate ways to do so.

## File Locations

- `src/*` — C++ code that ultimately compiles into a library
- `src/*/*_test.cpp` - C++ code to test each component.
- `bin/`, `lib`, `include` are all empty directories, until the `make install` install the project artifacts there.

### There are two components in `src/` for demo purpose.

- `src/division` - a library.
- `src/divider` - an executable target which depends on `division` as a lib.

## Help

- [Get started with CMake](https://github.com/chatopera/cmake-get-started)

## Copyright

Copyright (2019) <a href="https://www.chatopera.com/" target="_blank">北京华夏春松科技有限公司</a>

[Apache License Version 2.0](https://github.com/chatopera/cpp-kick-starter/blob/master/LICENSE)

[![chatoper banner][co-banner-image]][co-url]

[co-banner-image]: https://user-images.githubusercontent.com/3538629/42383104-da925942-8168-11e8-8195-868d5fcec170.png
[co-url]: https://www.chatopera.com
