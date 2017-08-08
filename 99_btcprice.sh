#!/bin/bash
# <bitbar.title>Bitcoin Price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Sinan Yasar</bitbar.author>
# <bitbar.author.github>sinan</bitbar.author.github>
# <bitbar.desc>Shows latest bidding price (in USD) for Bitcoin in GDAX/Kraken exchanges.</bitbar.desc>

# GDAX
# echo -n "฿ "; curl -s "https://api.coinbase.com/v2/prices/BTC-USD/spot" | egrep -o '"amount":"[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"amount"://'  | sed 's:^.\(.*\).$:\1:'

# KRAKEN
echo -n "฿ "; curl -s "https://api.kraken.com/0/public/Ticker?pair=XXBTZUSD" | /usr/local/bin/jq -r '.result.XXBTZUSD.b[0]' | xargs /usr/bin/printf "%.2f"