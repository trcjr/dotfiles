function duhs {
        /usr/bin/du -sk * | sort -nr | cut -f2 | awk -F "\n" '{print "\""$1"\""}' | xargs /usr/bin/du -sh
}
