function cheat() {
    WHERE = ~/.cheat
    if [ $1 == 'edit' ]; then
        vim WHERE/$2

    elif [ $1 == 'make' ]:
        touch WHERE/$2

    elif [ $1 == 'add' ]:
        $3 >> WHERE/$2

    else
        echo ''
        sed 's/^/      /' WHERE/$1
        echo ''

    fi
}
