BTCPAY_INSTANCE="https://ts.dergigi.com"
STORE_ID="3WkiYEG5DaQv7Ak5M2UjUi1pe5FFTPyNF1yAE9CVLNJn"
ORDER_ID="V4V-busking"
TOKEN=""
STATUS="settled"
LIMIT="1337"

QUERY_STRING="?orderId=$ORDER_ID&status=$STATUS&take=$LIMIT"

curl -v \
     -H "Content-Type: application/json" \
     -H "Authorization: token $TOKEN" \
     -X GET \
     "$BTCPAY_INSTANCE/api/v1/stores/$STORE_ID/invoices/$QUERY_STRING" \
| jq 'length'

