#!/bin/bash -e

problem_number=$1
if [ -z "${problem_number}" ]; then
  echo "problem_number must be given" >&2
  exit 1
fi

git add P${problem_number}.hs
git commit -m "solve P${problem_number} for Haskell"
