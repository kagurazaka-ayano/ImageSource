# !/usr/bin/env bash
files=$(ls . | grep ".png" | tr -d " ")
root="https://github.com/kagurazaka-ayano/ImageSource/blob/main/PersonalWebsite/"
touch image.yml
chmod 777 image.yml
for file in $files
do
    echo "$root$file\n" >> image.yml
done