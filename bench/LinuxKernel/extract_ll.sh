#!/bin/bash
if [ ! -d "../-O1" ]; then
  mkdir "../-O1"
fi

for arg in "$@"; do
  if [ -d "$arg" ]; then
    echo "Processing directory: $arg"
    cd "$arg"
    echo $(pwd)

    curDir=$(pwd)
    DEST="$curDir/../../-O1/$arg"
    rm -rf "$DEST"/*
    if [ ! -d "$DEST/units" ]; then
      mkdir -p "$DEST/units"
    fi
    
    for f in $(find . -name "*.ll"); do
      # echo $f
      ff=${f/.\//}
      ff=${ff//\//-}
      echo $ff
      cp $f $DEST/units/${ff}
    done

    cd ..

  fi
done

cd ..
