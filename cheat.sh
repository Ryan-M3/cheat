function cheat() {
    WHERE="$HOME/.cheat"
    if [ $1 == 'edit' ]; then
        vim ${WHERE}/$2

    elif [ $1 == 'make' ]; then
        touch ${WHERE}/$2

    elif [ $1 == 'add' ]; then
        if [ $4 ]; then
            echo -n $3 >> ${WHERE}/$2 
            echo -n $'\t' >> ${WHERE}/$2
            echo  $4   >> ${WHERE}/$2
        else
            echo $3 >> ${WHERE}/$2
        fi

    elif [ $1 == 'pop' ]; then
        tail -1 ${WHERE}/$2
        sed -i '$ d' ${WHERE}/$2

    elif [ $1 == "ls" ]; then
        ls ${WHERE}

    elif [ $1 == "rm" ]; then
        echo "removing" ${WHERE}/$2
        rm ${WHERE}/$2

    else
        echo ''
        sed 's/^/      /' ${WHERE}/$1
        echo ''

    fi
}

