#!/bin/bash


usage() {
  cat << EOF

Usage: installMagento.sh -v [version]
  
Parameters:
   -v: version to build
       Choose one of: $(for i in $(ls -d magento/*/); do echo -n "${i%%/}  "; done)

EOF
  exit 0
}

##############
#### MAIN ####
##############

if [ "$#" -eq 0 ]; then
  usage;
fi

while getopts "hesxiv:" optname; do
  case "$optname" in
    "v")
      VERSION="$OPTARG"
      ;;
    *)
    # Should not occur
    echo "Unknown error while processing options inside initEnvironment.sh"
      ;;
  esac
done
if [ ! -d MySQL/volumes/data ]; then
  mkdir -p MySQL/volumes/data;
fi
cd magento/$VERSION/compressed && tar -zxvf Magento-CE-2.1.6.tar.gz -C ../store