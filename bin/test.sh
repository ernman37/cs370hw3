#   File: test.sh
#   Creator: Ernest M Duckworth IV
#   Created: Monday Feb 07 2022 at 06:27:57 PM
#   For: HW2
#   Description: Tests HW2
#Colors
NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PINK='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPINK='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

function main() {
   make
   if [[ $? != 0 ]];
   then
       echoErr "Failed Make"
       exit 1
   fi
   testFuncs
   make clean
}

function testFuncs() {
   testLucas
   testHex
   testHarm
   testGen
   echoC $GREEN "Testing Finished"
}

function testLucas() {
   echoC $ORANGE "Testing Lucas"
   Lucas 
   Lucas 3
   Lucas 10
}

function testHex() {
   echoC $ORANGE "Testing Hex"
   HexagonalSeries 
   HexagonalSeries 6
   HexagonalSeries 10
}

function testHarm() {
   echoC $ORANGE "Testing Harm"
   HarmonicSeries 
   HarmonicSeries 6
   HarmonicSeries 10
}

function testGen() {
   echoC $ORANGE "Testing Gen"
   echoC $PINK "NO ARG:"
   Generator 
   echoC $PINK "INVAILD FILE:"
   Generator "fail.txt"
   echoC $PINK "SUCCESSFUL FILE:"
   Generator "input.txt"
}

function echoC() {
   echo -e "${1}$2${NOCOLOR}"
}

function echoErr() {
   echoC "$RED" "$1" 
}

main
