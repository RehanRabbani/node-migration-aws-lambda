import axios, { Method } from 'axios';

export const apiCallHandler = (method: Method, url: string, tenantIdentifier: string) => {
  const config = {
    method,
    url,
    headers: {
      'Content-Type': 'application/json',
      awsRole: 'xxx',
      dbHost: 'xxx',
      tenantIdentifier,
      sub: 'xxx',
      'user-uuid': 'xxx',
      tenantRoles: '["//Patient"]',
      sessionRoles: '["Patient"]',
      sessionPermissions: '[]',
      client_secret: 'xxx',
      client_id: 'xxx',
      sessionScope: '["site/"]',
    },
  };

  return axios(config);
};
