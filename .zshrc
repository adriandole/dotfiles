lookhere() {
    grep -rnw . -e $1
}
mkcd() {
    mkdir $1 && cd $1
}
