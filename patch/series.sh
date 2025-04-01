#!/bin/sh

set -e

git am --abort || true

git am ../patch/skip_abnormal_edge.patch
