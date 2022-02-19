#!/usr/bin/env sh

main() {
    ./scripts/tests.sh

    printf '****** Press enter to start failing tests testing ******'
    read -r

    NOFAIL=1 TESTDIR=tests_fail ./scripts/tests.sh
}

main "$@"
