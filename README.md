<img src="https://s3.amazonaws.com/owler-image/logo/zenvia-mobile_owler_20170111_192135_original.png" height="200" />

# Mock for Zenvia API's

Full documentation about Zenvia API on [http://docs.zenviasms.apiary.io](http://docs.zenviasms.apiary.io)

## Using Mock 

- docker push rgarbin/zenvia-api-mock 
- Devs: docker build -t zenvia-api-mock . && docker run -p 8080:8080 zenvia-api-mock


## Mock rules

- Authorization: "user:pass"
- Number 5551999999200 always return HTTP Code Status OK(200) with a success payload when all required fields sent


### Call api-rest / send-sms with a valide request (OK with a success payload)

curl -v --user "user:pass" -H "Accept: application/json" -H "Content-Type: application/json" -X POST -d '{"sendSmsRequest": { "from": "Remetente", "to": "5551999999200", "schedule": "2017-08-09T14:00:00", "msg": "SMS Message", "callbackOption": "NONE", "id": "msg-id",  "aggregateId": "14828"}}' http://localhost:8080/api-rest/services/send-sms


### Call api-rest / send-sms-multiple with a valide request (OK with a success payload)

curl -v --user "user:pass" -H "Accept: application/json" -H "Content-Type: application/json" -X POST -d '{ "sendSmsMultiRequest":{ "aggregateId": "14828", "sendSmsRequestList":[ { "from":"remetente", "to":"5551999999200", "msg": "SMS Message", "callbackOption":"NONE", "schedule": "2017-08-09T14:00:00", "id": "msg-id" }] }}' http://localhost:8080/api-rest/services/send-sms-multiple



