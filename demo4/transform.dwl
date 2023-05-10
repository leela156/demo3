%dw 2.0
output application/json
//using the map function we  have mapped the data and using map added a key named "Value" for the roles as per the requested output
---
{
  "@aaaa": 107,
  "value": payload.value map 
    {
      "id": $.id,
      "userId": $.userId,
      "eMail": $.eMail,
      "userType": $.userType,
      "Status": $.Status,
      "firstName": $.firstName,
      "lastName": $.lastName,
      "roles": $.roles map(role) -> {
        values : role 
        }
      } 
    }