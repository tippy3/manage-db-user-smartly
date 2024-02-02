#!/usr/bin/env bash
set -e

input_dir="config"
output_dir="generated"

rm -rf "$output_dir"

# if macOS, use gnu-sed
if [ "$(uname)" == 'Darwin' ]; then
  shopt -s expand_aliases
  alias sed="gsed"
fi

for file in $(find $input_dir -name "*.yaml"); do
  echo "$file"
  result_dir=$(dirname "$file" | sed -e "s/$input_dir/$output_dir/")
  mkdir -p "$result_dir"
  ./create_sql.sh "$file" "$result_dir"
done
