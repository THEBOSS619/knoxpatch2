#!/bin/sh
adb pull /system/framework/services.jar source/
adb pull /system/framework/oat/arm64/services.vdex source/

vdexExtractor -i source/services.vdex
for f in source/*.cdex; do
  compact_dex_converter $f
  nf=$(echo $f | grep -Po "classes[0-9]*").dex
  rm $f
  mv $f.new source/$nf
  jar -uf source/services.jar -C source $nf
done
rm source/services.vdex
