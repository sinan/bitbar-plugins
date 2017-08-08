#!/bin/bash
# <bitbar.title>ZCash Price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Sinan Yasar</bitbar.author>
# <bitbar.author.github>sinan</bitbar.author.github>
# <bitbar.desc>Shows latest bidding price (in USD) for ZCash in Kraken exchange.</bitbar.desc>

# KRAKEN
echo -n "ⓩ "; curl -s "https://api.kraken.com/0/public/Ticker?pair=XZECZUSD" | /usr/local/bin/jq -r '.result.XZECZUSD.b[0]' | xargs /usr/bin/printf "%.2f"

# CryptoCompare
# echo -n "ⓩ "; curl -s "https://min-api.cryptocompare.com/data/price?fsym=ZEC&tsyms=USD" | /usr/local/bin/jq -r '.USD' | xargs /usr/bin/printf "%.2f"
