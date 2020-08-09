#! /bin/bash

INKSCAPE="/usr/bin/inkscape"
OPTIPNG="/usr/bin/optipng"

SRC_FILE="src/assets/all-assets.svg"
ASSETS_DIR="src/assets"
INDEX="src/assets/all-assets.txt"

for i in `cat $INDEX`
do 
if [ -f $ASSETS_DIR/$i.png ]; then
    echo $ASSETS_DIR/$i.png exists.
else
    echo Rendering $ASSETS_DIR/$i.png
    $INKSCAPE --export-id=$i \
              --export-id-only \
              --export-filename=$ASSETS_DIR/$i.png $SRC_FILE >/dev/null #\ （inkscape版本号大于0.92.5使用这个）
			#--export-png=$ASSETS_DIR/$i.png $SRC_FILE >/dev/null #\ （inkscape版本号小于或等于0.92.5使用这个）
    # && $OPTIPNG -o7 --quiet $ASSETS_DIR/$i.png 
fi
if [ -f $ASSETS_DIR/$i@2.png ]; then
    echo $ASSETS_DIR/$i@2.png exists.
else
    echo Rendering $ASSETS_DIR/$i@2.png
    $INKSCAPE --export-id=$i \
              --export-dpi=180 \
              --export-id-only \
              --export-filename=$ASSETS_DIR/$i@2.png $SRC_FILE >/dev/null #\ （inkscape版本号大于0.92.5使用这个）
			#--export-png=$ASSETS_DIR/$i@2.png $SRC_FILE >/dev/null #\ （inkscape版本号小于或等于0.92.5使用这个）
    # && $OPTIPNG -o7 --quiet $ASSETS_DIR/$i@2.png 
fi
done
exit 0
