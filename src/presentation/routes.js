import { Router } from 'express';
import { OrderRoutes } from './order/routes.js';




export class AppRoutes {


  static get routes () {

    const router = Router();

    router.use('/api/order', OrderRoutes.routes );

    return router;
  }

}