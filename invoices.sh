BTCPAY_INSTANCE="https://ts.dergigi.com"
STORE_ID="3WkiYEG5DaQv7Ak5M2UjUi1pe5FFTPyNF1yAE9CVLNJn"
ORDER_ID="V4V-busking"
TOKEN="$1"
STATUS="settled"
LIMIT="2100"

# ?orderId=$ORDER_ID&

QUERY_STRING="?status=$STATUS&take=$LIMIT"

curl -v \
     -H "Content-Type: application/json" \
     -H "Authorization: token $TOKEN" \
     -X GET \
     "$BTCPAY_INSTANCE/api/v1/stores/$STORE_ID/invoices/$QUERY_STRING" \
| jq "map(.id)" \
> _data/settled_invoices.json

sed -i '' 's/\[//g; s/\]//g; s/"//g; s/,//g; s/ //g; /^[[:blank:]]*$/ d' _data/settled_invoices.json
