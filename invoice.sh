BTCPAY_INSTANCE="https://ts.dergigi.com"
STORE_ID="3WkiYEG5DaQv7Ak5M2UjUi1pe5FFTPyNF1yAE9CVLNJn"
INVOICE_ID="XyBeBbj6E7xi7VZApevR4i"
INVOICE_ID_LA="YasBHzx4v8zXpSptYtmsKT"
ORDER_ID="V4V-busking"
TOKEN="$1"
STATUS="settled"
LIMIT="2100"

QUERY_STRING="?orderId=$ORDER_ID&status=$STATUS&take=$LIMIT"

curl -v \
     -H "Content-Type: application/json" \
     -H "Authorization: token $TOKEN" \
     -X GET \
     "$BTCPAY_INSTANCE/api/v1/stores/$STORE_ID/invoices/$INVOICE_ID/payment-methods" \
