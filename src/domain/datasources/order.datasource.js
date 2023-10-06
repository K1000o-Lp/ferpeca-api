



export class AbstractOrderDatasource {


  // todo:
  constructor() {
    if(this.constructor  === AbstractOrderDatasource) {
      throw new TypeError('No puedes instanciar una clase abstracta!');
    }
  }

  async create( CreateOrderDto = {} ) {
    throw new Error('Debes implementar este método');
  }

}