#!/usr/bin/env bats

@test "Invoking php-build --definitions prints list of definitions" {
    ./bin/php-build --definitions | grep "^master$"
    ./bin/php-build --definitions | grep "^5.5.24$"
    ./bin/php-build --definitions | grep "^5.6.8$"
}
