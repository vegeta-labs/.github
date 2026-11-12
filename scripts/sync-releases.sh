#!/usr/bin/env bash
# Sets the release links in profile/README.md to each product's latest GitHub release.
# Only the text between <!--<repo>-release--> and <!--/<repo>-release--> changes.
set -euo pipefail
readme=profile/README.md
for repo in goten trunks; do
  tag=$(gh api "repos/vegeta-labs/$repo/releases/latest" --jq .tag_name)
  if ! [[ $tag =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "::error::$repo latest release tag '$tag' is not vX.Y.Z"; exit 1
  fi
  open="<!--$repo-release-->"; close="<!--/$repo-release-->"
  if [ "$(grep -o "$open" "$readme" | wc -l)" -ne 1 ] || [ "$(grep -o "$close" "$readme" | wc -l)" -ne 1 ]; then
    echo "::error::$readme must contain $open ... $close exactly once"; exit 1
  fi
  link="[$tag](https://github.com/vegeta-labs/$repo/releases/tag/$tag)"
  OPEN="$open" CLOSE="$close" LINK="$link" perl -0pi -e 's/\Q$ENV{OPEN}\E.*?\Q$ENV{CLOSE}\E/$ENV{OPEN}$ENV{LINK}$ENV{CLOSE}/s' "$readme"
  echo "$repo: $tag"
done
