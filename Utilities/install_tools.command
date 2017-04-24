#!/bin/bash

tool_dir=/usr/local/bin

if [[ ! -e ${tool_dir} ]];
then
    printf "%s\n" "Need to make directory ${tool_dir}"
    sudo mkdir -p ${tool_dir}/
fi

for f in root${tool_dir}/*; 
do
    t=${f##*/}
    if [[ ! -e ${tool_dir}/${t} ]];
    then
        printf "%s\n" "Installing ${t} in ${tool_dir}/"
        sudo cp -a "$f" ${tool_dir}/
    fi
done

