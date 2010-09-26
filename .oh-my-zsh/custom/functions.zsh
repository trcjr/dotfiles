function duhs {
        /usr/bin/du -sk * | sort -nr | cut -f2 | awk -F "\n" '{print "\""$1"\""}' | xargs /usr/bin/du -sh
}

function cert_check {
    host=$1
    port=$2
    crt=$3
    key=$4

    if [ -z "$host" ]; then
        host="sd06.securesites.net"
    fi

    if [ -z "$port" ]; then
        port="443"
    fi

    if [ -n "$crt" ]; then
        crt="-cert ~apikeys/ittest.crt"
    fi

    if [ -n "$key" ]; then
        key="-key ~apikeys/ittest.key"
    fi

    #echo echo '' | openssl s_client -connect $host:$port -cert $crt -key $key 2> /dev/null |grep subject | sed 's/.*CN=//' | sed s'/\/.*//'
    #x=$( echo '' | openssl s_client -connect $host:$port $crt $key 2> /dev/null |grep subject | sed 's/.*CN=//' | sed s'/\/.*//' )
    x=$( echo '' | openssl s_client -connect $host:$port $crt $key 2> /dev/null |grep subject | sed 's/.*CN=//' )
    echo $x

    #echo openssl s_client -connect $host:$port $crt $key
    #echo '' | openssl s_client -connect sd06.securesites.net:443 -cert ~apikeys/ittest.crt -key ~apikeys/ittest.key 2> /dev/null |grep subject | sed 's/.*CN=//' | sed s'/\/.*//'
    #echo "hiii"
}
