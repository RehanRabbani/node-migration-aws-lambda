import { Context, SQSEvent } from 'aws-lambda';
import { apiCallHandler } from '../utils/apiCallHandler';
import axios from 'axios';

export const handler = async (event: SQSEvent, awsContext: Context) => {
  try {
    console.log(`TRY BLOCK`, event);
    const eventData = JSON.parse(event?.Records[0].body);
    const { siteId, carePlanId, tenantId, sourceHost, trialId, createAuditLog, createV2Data } = eventData;
    const host = `https://saas-api-${process.env.NODE_ENV}.${process.env.HOST_ENV}.com`;
    const url = `${host}/api/v2/platform/migration/trials/${trialId}/sites/${siteId}/care-plan/${carePlanId}?sourceHost=${sourceHost}&createV2Data=${createV2Data}&createAuditLog=${createAuditLog}`;
    const apiRes = await apiCallHandler('POST', url, tenantId);
    const _carePlanId = apiRes?.data?.careplan?.id || carePlanId;
    const status = apiRes.status;

    console.log(`end point status : ${status} carePlanId : ${_carePlanId}`);
  } catch (err: unknown) {
    // TODO: Transient errors send message to SQS and log error
    if (axios.isAxiosError(err)) {
      // Basic transient check
      if (err?.response.status === 408 || err?.response.status === 500) {
        console.error(`${err}`);
        throw err;
      } else {
        // TODO: Non transient errors send message + error to S3
        //  TODO: send message to S3
        console.warn(`${err} `);
      }
    }
    console.error(`${err}`);
    throw err;
  } finally {
    console.info(`event handled`);
  }
};
