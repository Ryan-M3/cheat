function cheat() {
    WHERE="$HOME/.cheat"
    if [ $1 == 'edit' ]; then
        vim ${WHERE}/$2

    elif [ $1 == 'make' ]; then
        touch ${WHERE}/$2

    elif [ $1 == 'add' ]; then
        echo $3 >> ${WHERE}/$2

    elif [ $1 == 'pop' ]; then
        tail -1 ${WHERE}/$2
        sed -i '$ d' ${WHERE}/$2

    elif [ $1 == "ls" ]; then
        ls ${WHERE}

    else
        echo ''
        sed 's/^/      /' ${WHERE}/$1
        echo ''

    fi
}
