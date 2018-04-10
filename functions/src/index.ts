import * as functions from 'firebase-functions';
import * as requestIp from 'request-ip';
import * as fs from 'fs';

exports.filter = functions.https.onRequest((req, res) => {
  const clientIp   = requestIp.getClientIp(req);

  const isAllowed  = ['113.43.142.102'].indexOf(clientIp) !== -1;
  const statusCode = isAllowed ? 200 : 400;
  const filename   = isAllowed ? 'index' : '400';

  const html = fs.readFileSync(`./templates/${filename}.html`).toString();

  res.status(statusCode).send(html);
});
