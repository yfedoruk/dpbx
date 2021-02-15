
// send json:
const tokenUrl = 'http://localhost/login';

const clientId = 'user_login';
const clientSecret = 'user_password';

const getTokenRequest = {
  method: 'POST',
  url: tokenUrl,
  header: 'Content-Type:application/json',
  body: {
      mode: 'raw',
      raw:JSON.stringify({
          login: clientId,
          password: clientSecret,
      })
  }
};

pm.sendRequest(getTokenRequest, (err, response) => {
  const jsonResponse = response.json();
  const newAccessToken = jsonResponse.response.token;

  pm.variables.set('token', newAccessToken);
});


// send form data:

const getTokenRequest = {
  method: 'POST',
  url: tokenUrl,
  body: {
      mode: 'formdata',
      formdata: [
          { key: 'login', value: clientId },
          { key: 'password', value: clientSecret }
      ]
  }
};
