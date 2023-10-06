



export class CreateOrderDto {


  constructor(
    client = {},
    total = 0,
    paid = 0,
    status = "",
    payMethod = "",
    date = "",
    details = [],
  ) {
    this.client = client;
    this.total = total;
    this.paid = paid;
    this.status = status,
    this.payMethod = payMethod,
    this.date = date;
    this.details = details;
  }

  static create(object = {}) {

    const { 
      client, 
      total, 
      paid, 
      status, 
      payMethod, 
      date, 
      details } = object;

    if(!client) return ['The client is required'];
    if(!total) return ['Please, check the total amount'];
    if(!status) return ['Please, define a order status'];
    if(!payMethod) return ['Please, especify an payment method'];
    if(!details) return ['Please, select at least an product'];

    return [
      undefined,
      new CreateOrderDto(
        client,
        total,
        paid,
        status,
        payMethod,
        date,
        details
      ),
    ];
  }


}