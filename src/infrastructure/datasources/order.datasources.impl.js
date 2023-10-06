import { AbstractOrderDatasource, CustomError, OrderEntity } from './../../domain/index.js';



export class OrderDatasourceImpl extends AbstractOrderDatasource {

  async create( CreateOrderDto ) {

    const {
      client, 
      total, 
      paid, 
      status, 
      payMethod, 
      date, 
      details } = CreateOrderDto;

    try {
      // 1. Verificar si el correo existe

      // 2. Hash de la contraseña

      // 3. Mapear la respuesta a nuestra entidad

      return new OrderEntity(
        1,
        client,
        total,
        paid,
        status,
        payMethod,
        date,
        details
      );
      
    } catch (error) {

      if(error instanceof CustomError) {
        throw error;
      }
      throw CustomError.internalServer();
    }

  }

}