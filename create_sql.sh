#!/usr/bin/env bash
set -e

input_file="$1"
output_dir="$2"

yaml="$(cat "$input_file")"
function get() {
  echo "$yaml" | yq -r "$1"
}

# if macOS, use gnu-sed
if [ "$(uname)" == 'Darwin' ]; then
  shopt -s expand_aliases
  alias sed="gsed"
fi

IFS=$'\n'
for env in $(get ".env[]"); do

  dir="$output_dir/$env"
  mkdir -p "$dir"
  file="$dir/$(basename "$input_file" .yaml).sql"

  for user in $(get ".user[]"); do
    for ip_cidr in $(get ".ip_cidr[]"); do

      host="$(./convert_ip.sh "$env" "$ip_cidr")"
      identified="$(get ".identified[0]")"

      echo "CREATE USER '$user'@'$host' $identified;" >> "$file"

      for grant in $(get ".grant[]"); do
        echo "$grant TO '$user'@'$host';" >> "$file"
      done

      echo "" >> "$file"
    done
  done
  sed -i '$ d' "$file" # remove last line
done
