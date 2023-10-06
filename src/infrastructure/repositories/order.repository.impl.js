import { AbstractOrderRepository } from "../../domain/index.js";




export class OrderRepositoryImpl extends AbstractOrderRepository {

  #orderDatasource;

  constructor(AbstractOrderDatasource) {
    super();
    this.#orderDatasource = AbstractOrderDatasource;
  }

  create(CreateOrderDto) {
    return this.#orderDatasource.create(CreateOrderDto);
  }

}