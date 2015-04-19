#!/usr/bin/env bats

@test "Invoking php-build without arguments prints usage" {
    ./bin/php-build | grep "Usage: php-build "
}

@test "Invoking php-build with --help or -h prints usage" {
    ./bin/php-build --help | grep "Usage: php-build "
    ./bin/php-build -h | grep "Usage: php-build "
}

@test "Invoking php-build with --version or -v prints version" {
    ./bin/php-build --version | grep -E "php-build v[0-9]+\.[0-9]+\.[0-9]+"
    ./bin/php-build -v | grep -E "php-build v[0-9]+\.[0-9]+\.[0-9]+"
}
