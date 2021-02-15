#!/bin/bash
# @todo check if this can become part of brew?

# @todo VERSION should be derived from `curl https://downlad.electrum.org/`
VERSION=4.0.7

mkdir -p /tmp/electrum-grs
cd /tmp/electrum-grs

wget https://github.com/Groestlcoin/electrum-grs/releases/download/v$VERSION/electrum-grs-$VERSION.dmg
wget https://github.com/Groestlcoin/electrum-grs/releases/download/v$VERSION/electrum-grs-$VERSION.dmg.asc


# See http://docs.electrum.org/en/latest/gpg-check.html?highlight=gpg
#
# Obtain public GPG key for jackielove4u
gpg --keyserver keys.gnupg.net --recv-keys 287AE4CA1187C68C08B49CB2D11BD4F33F1DB499

gpg --verify electrum-grs-$VERSION.dmg.asc electrum-grs-$VERSION.dmg
RESULT=$?

if [ $RESULT -eq 0 ]; then
    echo "All seems good"
    echo "Note that the 'not certified with a trusted signature' error can be resolved by joining GPG signing parties."
    open electrum-grs-$VERSION.dmg
else
    echo "WARNING, electrum-grs-$VERSION.dmg doesn't match the author's signatore"
fi

# @todo
#  - help with setting up tor on osx?  brew install tor && brew services start tor
#  - help configure electrum to use tor and the user's sovbox?
