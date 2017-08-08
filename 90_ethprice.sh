#!/bin/bash
# <bitbar.title>Ether Price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Sinan Yasar</bitbar.author>
# <bitbar.author.github>sinan</bitbar.author.github>
# <bitbar.desc>Shows latest bidding price (in USD) for Ether in GDAX/Kraken exchanges.</bitbar.desc>

# GDAX
# echo -n "Ξ "; curl -s "https://api.coinbase.com/v2/prices/ETH-USD/spot" | egrep -o '"amount":"[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"amount"://'  | sed 's:^.\(.*\).$:\1:'

# KRAKEN
echo -n "Ξ "; curl -s "https://api.kraken.com/0/public/Ticker?pair=XETHZUSD" | /usr/local/bin/jq -r '.result.XETHZUSD.c[0]' | xargs /usr/bin/printf "%.2f"