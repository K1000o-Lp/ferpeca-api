import { Router } from 'express';
import { OrderController } from './controller.js';
import { OrderDatasourceImpl, OrderRepositoryImpl } from '../../infrastructure/index.js';



export class OrderRoutes {


  static get routes () {

    const router = Router();

    const datasource = new OrderDatasourceImpl();
    const orderRepository = new OrderRepositoryImpl(datasource);

    const controller = new OrderController(orderRepository);

    router.post('/create', controller.createOrder );

    return router;
  }

}