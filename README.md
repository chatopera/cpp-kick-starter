# cpp-kick-starter

Cpp Project Skeleton.

## Prerequisites

You will need:

- Docker
- CMake 3.1+ installed (on a Mac, run `brew install cmake`)
- If you prefer to code in a great IDE, I highly recommend [VSCode](https://code.visualstudio.com/). It is fully compatible with this project.

## Bootstrap

Run a docker instance and start work.

```
./admin/dev.sh
```

## Install Deps

Install the basic dependencies.

```
./admin/install-3rd.sh
```

This script would execute every command in `cmake/install` in order.

## Development

```
mkdir -p build/debug
cd build/debug
cmake ../..
make && make install
cd ../..
bin/divider_tests
```

## Project Structure

There are three empty folders: `lib`, `bin`, and `include`. Those are populated by `make install`.

The rest should be obvious: `src` is the sources, and `test` is where we put our unit tests.

Now we can build this project, and below we show three separate ways to do so.

## File Locations

- `src/*` — C++ code that ultimately compiles into a library
- `test/lib` — C++ libraries used for tests (eg, Google Test)
- `test/src` — C++ test suite
- `bin/`, `lib`, `include` are all empty directories, until the `make install` install the project artifacts there.

Tests:

- A `test` folder with the automated tests and fixtures that mimics the directory structure of `src`.
- For every C++ file in `src/A/B/<name>.cpp` there is a corresponding test file `test/A/B/<name>_test.cpp`
- Tests compile into a single binary `test/bin/runner` that is run on a command line to run the tests.
- `test/lib` folder with a git submodule in `test/lib/googletest`, and possibly other libraries.
