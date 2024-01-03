# !/usr/bin/env bash
files=$(ls | grep ".png" | tr -d " ")
root="https://github.com/kagurazaka-ayano/ImageSource/blob/$1/PersonalWebsite/"
out=images.yml
touch $out
chmod 777 $out
> $out
for file in $files
do
    echo "- $root$file?raw=true">>$out
done