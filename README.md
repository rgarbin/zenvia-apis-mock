<img src="https://s3.amazonaws.com/owler-image/logo/zenvia-mobile_owler_20170111_192135_original.png" height="200" />

# Mock for Zenvia API's

Full documentation about Zenvia API on [http://docs.zenviasms.apiary.io](http://docs.zenviasms.apiary.io) 

## How run? 
```bash
docker build -t rgarbin/zenvia-api-mock . 
docker run -p 8080:8080 -e PORT=8080 rgarbin/zenvia-api-mock
```


## [Heroku](https://devcenter.heroku.com/articles/container-registry-and-runtime)

- heroku login
- heroku container:login
- heroku create zenvia-apis-mock
- heroku container:push web --app zenvia-apis-mock
- heroku open --app zenvia-apis-mock
- Health Check: [https://zenvia-apis-mock.herokuapp.com/](https://zenvia-apis-mock.herokuapp.com/)

## Mock rules

- Required Authorization: User-user and Pass=pass
- When number phone 5551999999200 and all required fields sent then return HTTP Code Status OK(200) with a success payload.


### Call api-rest / send-sms with a valide request (OK with a success payload)
```bash
curl -v --user "user:pass" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -X POST -d '{"sendSmsRequest": { "from": "Remetente", "to": "5551999999200", "schedule": "2017-08-09T14:00:00", "msg": "SMS Message", "callbackOption": "NONE", "id": "msg-id",  "aggregateId": "14828"}}' \
     http://zenvia-apis-mock.herokuapp.com/api-rest/services/send-sms
```

### Call api-rest / send-sms-multiple with a valide request (OK with a success payload)
```bash
curl -v --user "user:pass" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -X POST -d '{ "sendSmsMultiRequest":{ "aggregateId": "14828", "sendSmsRequestList":[ { "from":"remetente", "to":"5551999999200", "msg": "SMS Message", "callbackOption":"NONE", "schedule": "2017-08-09T14:00:00", "id": "msg-id" }] }}' \ 
     http://zenvia-apis-mock.herokuapp.com/api-rest/services/send-sms-multiple
```
