
# Starting Mock Server

- docker build -t zenvia-api-mock .
- docker run -p 8080:8080 zenvia-api-mock


# Mock rules

- Number 5551999999200 always return HTTP Code Status OK with a success payload


# call send-sms

- curl -v -H "Accept: application/json" \
	    -H "Content-Type: application/json" \
	    -X POST -d '{"sendSmsRequest": { "from": "Remetente", "to": "5551999999200", "schedule": "2017-08-09T14:00:00", "msg": "Mensagem de teste flash msg - Garbin", "callbackOption": "NONE", "id": "garba-01-simple",  "aggregateId": "14828", "flashSms": true}}' http://localhost:8080/api-rest/services/send-sms