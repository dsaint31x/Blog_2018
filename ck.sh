#!/bin/sh

set -e

if [ $# -eq 0 ]; then
	    dir="."
    else
	        dir="$1"
	fi

	if [ ! -d "$dir" ]; then
		    echo "not a dir: $dir"
		        exit 1
		fi

		if [ ! -d "$dir/.git" ]; then
			    echo "not a git repo: $dir"
			        exit 1
			fi

			cd "$dir"

			files=$(find .git/refs -type f)

			for f in $files; do
				    id=$(cat "$f")
				        if ! git rev-parse --quiet "$id" \
						    >/dev/null 2>&1; then
					    continue
					        fi
						    if ! git rev-parse --quiet --verify "$id^{commit}" \
							        >/dev/null 2>&1; then
						        echo "Removing ref $f with missing commit $id"
							    rm "$f"
							        fi
							done
