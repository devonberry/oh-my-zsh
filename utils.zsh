## VARIABLES #############################################################
export DEV_DIR=~/Documents/code

## ALIASES ###############################################################
alias ports='sudo lsof -i -n -P | grep TCP'

## FUNCTIONS #############################################################
# Jump to a directory in my dev tree
jump() {
    JUMP_DIR=`find -L $DEV_DIR -type d -maxdepth 3 -name $1 | head -n 1`
    cd $JUMP_DIR
}

# convert dos line endings to unix
dos2unix() {
    tr '\15' '\n' < $1
}

