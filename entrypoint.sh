#!/bin/sh
. /usr/local/lib/signal_propagation.sh || exit 20

prep_term
tail -F "$LOG_PATH" 2> /dev/null &
wait_term || exit $?
