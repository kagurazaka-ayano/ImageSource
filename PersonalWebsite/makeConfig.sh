# !/usr/bin/env bash
files=$(ls $PWD/PersonalWebsite | grep ".png" | tr -d " ")
root="https://github.com/kagurazaka-ayano/ImageSource/blob/$1/PersonalWebsite/"
out=$PWD/PersonalWebsite/image.yml
touch $out
chmod 777 $out
> $out
for file in $files
do
    echo "- $root$file" >> $out
done