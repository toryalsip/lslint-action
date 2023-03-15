#!/bin/sh -l
LSLINT_VERSION=$2

if [ -z $LSLINT_VERSION ] ;then
  LSLINT_VERSION="latest"
  API_ENDPOINT="https://api.github.com/repos/Makopo/lslint/releases/latest"
else
  API_ENDPOINT="https://api.github.com/repos/Makopo/lslint/releases/tags/$LSLINT_VERSION"
fi
echo "API_ENDPOINT: $API_ENDPOINT"
DOWNLOADED_FILE="lslint.zip"
DOWNLOAD_URL=$(curl -s $API_ENDPOINT \
| grep "browser_download_url.*lslint.*_linux64\.zip" \
| cut -d ":" -f 2,3 \
| tr -d \")
if [ -z $DOWNLOAD_URL ] ;then
  echo "❌ ERROR: Failed to find download URL, please enter a valid lslint version (ex. v1.3)"
  exit 1
fi

echo "Downloading from $DOWNLOAD_URL"
wget -q --output-document=$DOWNLOADED_FILE $DOWNLOAD_URL || \
  { echo "❌ ERROR: Failed to download lslint"; exit 1; }
echo "Extracting..."
unzip -o $DOWNLOADED_FILE -d /usr/bin
rm $DOWNLOADED_FILE

for f in $(find $1 -name '*.lsl' -type f -print)
do
    lslint -v -p $f
done
