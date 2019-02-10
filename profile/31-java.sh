# -*- coding: utf-8-unix; -*-

if [ -d $HOME/.sdkman ]; then
    export SDKMAN_DIR=$HOME/.sdkman

    [[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && $SDKMAN_DIR/bin/sdkman-init.sh
fi

