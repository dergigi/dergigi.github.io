BTCPAY_INSTANCE="https://ts.dergigi.com"
STORE_ID="3WkiYEG5DaQv7Ak5M2UjUi1pe5FFTPyNF1yAE9CVLNJn"
INVOICE_ID="XyBeBbj6E7xi7VZApevR4i"
INVOICE_ID_LA="YasBHzx4v8zXpSptYtmsKT"
INVOICE_ID_BRZ="XwqQWoRWRwLjrgUDz64iTX"
INVOICE_ID_USD="L3z1Md1aJMrhGikKgfpoMW"
INVOICE_ID_1SAT="XNK5wnk3ZPJwtsy14FwM2F"
INVOICE_ID_21SAT="PKN8e6i5MQUCph4SoQCvDY"
ORDER_ID="V4V-busking"
TOKEN="$1"
STATUS="settled"
LIMIT="2100"

QUERY_STRING="?orderId=$ORDER_ID&status=$STATUS&take=$LIMIT"

curl -v \
     -H "Content-Type: application/json" \
     -H "Authorization: token $TOKEN" \
     -X GET \
     "$BTCPAY_INSTANCE/api/v1/stores/$STORE_ID/invoices/$INVOICE_ID_21SAT/payment-methods" \
| jq
