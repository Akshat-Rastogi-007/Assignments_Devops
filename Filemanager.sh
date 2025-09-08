#!/bin/bash

addDir(){
        local dirName="$2"
        local parentDir="$1"

        if [[ -z "$parentDir" || -z "$dirName" ]]; then
                echo " $0 : Please give the correct argunments, parentDir or dirName is empty"
                exit 1
        fi
        if [[ ! -d "$parentDir" ]]; then
                echo "Error: Parent dir does not exist."
                read -p "Do you want to make $parentDir ?y/n" answer
                if [ [ "$answer" == "y" ] ]; then
                        mkdir -p "$parentDir"
                        echo "Parent directory made: $parentDir"
                else
                        echo "Exiting code without creating $parentDir"
                        exit 1
                fi
        fi

        if [[ -d "$parentDir/$dirName" ]]; then
                echo " Director $dirName already exists in $parentDir"
                exit 1
        else
                mkdir -p "$parentDir/$dirName"
                echo "Dir made successfully"
        fi
}

deleteDir(){
        local dirName="$2"
        local parentDir="$1"

        if [[ -z "$parentDir" || -z "$dirName" ]]; then
                echo " $0 : Please give the correct argunments, parentDir or dirName is empty"
                exit 1
        fi

        if  [ ! -d "$parentDir/$dirName" ]; then
                echo "$parentDir/$dirName does not exist"
                exit 1
        else
                rmdir "$parentDir/$dirName" 2>/dev/null
                                                                                                                                                                                                                            1,11          Top
