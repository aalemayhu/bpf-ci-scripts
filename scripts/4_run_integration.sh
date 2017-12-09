#!/bin/bash

set -x
echo "TODO"

CILIUM_STATE=/var/run/cilium/state


echo "#### bpf_overlay"
docker run -v $CILIUM_STATE:/tmp scanf/ebpf-disasm -s from-overlay /tmp/bpf_overlay.o 
