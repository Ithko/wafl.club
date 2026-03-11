#!/bin/sh
# glyphhanger --whitelist=U+00-17F https://nomi.gay/ > range
outpath="../static/fonts"
for file in ./base_woff/*; do
	bfile=$(basename $file)
	pyftsubset $file --unicodes-file=range --flavor=woff --output-file=$outpath/woff/$bfile
done
for file in ./base_woff2/*; do
	bfile=$(basename $file)
	pyftsubset $file --unicodes-file=range --flavor=woff2 --output-file=$outpath/woff2/$bfile
done
