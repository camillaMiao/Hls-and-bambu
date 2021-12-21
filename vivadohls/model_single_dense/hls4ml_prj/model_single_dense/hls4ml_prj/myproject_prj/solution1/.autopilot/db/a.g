#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/li/vivadohls/model_single_dense/hls4ml_prj/model_single_dense/hls4ml_prj/myproject_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
