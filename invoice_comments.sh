#!/bin/bash

TOKEN="$1"

file="./_data/settled_invoices.json"
while read invoiceId; do
  ./invoice.sh $TOKEN $invoiceId | \
  jq "map( .additionalData.consumedLightningAddress, .additionalData.providedComment, .totalPaid, .cryptoCode, .payments[].receivedDate )" > _data/$invoiceId.json
done < "${file}"
