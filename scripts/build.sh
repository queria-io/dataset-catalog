#!/usr/bin/env bash
# カタログをビルドして Queria に公開する。
#
#   scripts/build.sh
#
# ターゲットの指定は無い。データセットは dataset.yml、アカウントは QUERIA_TOKEN が決める。
# 他のデータセットの成果物は data.queria.io から読む (generate_sources.py)。
set -euo pipefail

if [ "$#" -gt 0 ]; then
    echo "scripts/build.sh no longer takes a target ('$1')." >&2
    exit 2
fi

exec uv run queria sync -- python main.py
