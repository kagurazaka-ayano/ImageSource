# !/usr/bin/env bash
files=$(ls | grep ".png" | tr -d " ")
commit=$(git rev-parse HEAD)
root="https://github.com/kagurazaka-ayano/ImageSource/blob/$commit/PersonalWebsite/"
out=images.yml
touch $out
chmod 777 $out
> $out
for file in $files
do
    echo "- $root$file?raw=true">>$out
done