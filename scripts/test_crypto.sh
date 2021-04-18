#!/bin/bash

crypto=$(cat ~/.config/i3/scripts/crypto.txt | rofi -dmenu | awk '{print $NF}')
currency=$(cat ~/.config/i3/scripts/currency_list.txt | rofi -dmenu)

data=$(curl -4 -s https://api.coinbase.com/v2/exchange-rates?currency=$crypto | jq .data.rates.$currency)

echo $data



