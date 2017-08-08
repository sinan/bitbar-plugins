#!/bin/bash
# <bitbar.title>Ethereum Classic Price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Sinan Yasar</bitbar.author>
# <bitbar.author.github>sinan</bitbar.author.github>
# <bitbar.desc>Shows latest bidding price (in USD) for Ethereum Classic in Kraken exchange.</bitbar.desc>

# KRAKEN
echo -n "ξ "; curl -s "https://api.kraken.com/0/public/Ticker?pair=XETCZUSD" | /usr/local/bin/jq -r '.result.XETCZUSD.b[0]' | xargs /usr/bin/printf "%.2f"

# CryptoCompare
# echo -n "ξ "; curl -s "https://min-api.cryptocompare.com/data/price?fsym=ETC&tsyms=USD" | /usr/local/bin/jq -r '.USD' | xargs /usr/bin/printf "%.2f"
