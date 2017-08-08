#!/bin/bash
# <bitbar.title>OmiseGo Price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Sinan Yasar</bitbar.author>
# <bitbar.author.github>sinan</bitbar.author.github>
# <bitbar.desc>Shows latest bidding price (in USD) for OmiseGo from cryptocompare.</bitbar.desc>

# CryptoCompare
echo -n "Ǿ "; curl -s "https://min-api.cryptocompare.com/data/price?fsym=OMG&tsyms=USD" | /usr/local/bin/jq -r '.USD' | xargs /usr/bin/printf "%.2f"
