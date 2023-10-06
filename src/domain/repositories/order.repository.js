



export class AbstractOrderRepository {

  constructor() {
    if(this.constructor === AbstractOrderRepository) {
      throw new TypeError('No puedes instanciar una clase abtstracta!');
    }
  }


  async create( CreateOrderDto = {} ) {
    throw new Error('Debes implementar este método');
  }
}