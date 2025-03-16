#!/bin/bash
if [ ! -d "mibench2" ]; then
  mkdir mibench2
fi
rm -rf mibench2/*
cp -r mibench/* mibench2/
# exit 1

flags=$1

flags_underscored=${flags// /_}

flags="$flags -w"

cd mibench2

shift 1
for arg in "$@"; do
  if [ -d "$arg" ]; then
    echo "Processing directory: $arg"
    cd "$arg"
    echo $(pwd)

    curDir=$(pwd)
    DEST="$curDir/../../${flags_underscored}/$arg"
    rm -rf "$DEST"/*
    if [ ! -d "$DEST/units" ]; then
      mkdir -p "$DEST/units"
    fi
    if [ ! -d "$DEST/whole" ]; then
      mkdir -p "$DEST/whole"
    fi

    if [[ "$arg" == "lame" || "$arg" == "ghostscript" ]]; then
      
      ./compile.sh llvm "$flags -std=gnu89" 0 1

      echo "find . -name *.ll"
      for f in $(find . -name "*.ll"); do
        # echo $f
        ff=${f/.\//}
        ff=${ff//\//-}
        echo $ff
        if [[ "$ff" == "a.out_o.ll" ]]; then
          continue
        fi
        cp $f $DEST/units/${ff}
      done

      ./compile.sh llvm "$flags -std=gnu89 -flto" 0 1
      cp a.out_o.ll $DEST/whole/$arg.ll
    else
      sed -i "s/^OPT=.*/OPT=${flags}/" ../Makefile.config
      make clean # >/dev/null
      make BIN=__all_files_linked__.ll


      for f in $(find . -name "*.ll"); do
        # echo $f
        ff=${f/.\//}
        ff=${ff//\//-}
        echo $ff
        if [[ "$ff" == "__all_files_linked__.ll" ]]; then
          continue
        fi
        cp $f $DEST/units/${ff}
      done

      sed -i "s/^OPT=${flags}.*/OPT=${flags} -flto/" ../Makefile.config

      make clean # >/dev/null
      make BIN=__all_files_linked__.ll

      sed -i "s/^OPT=.*/OPT=/" ../Makefile.config
      cp __all_files_linked__.ll $DEST/whole/$arg.ll

    fi

    cd ..

  fi
done

cd ..
rm -rf mibench2
