



export class OrderEntity {

  constructor(
    id = 0,
    client = {},
    total = 0,
    paid = 0,
    status = "",
    payMethod = "",
    date = "",
    details = [],
  ) {
    this.id = id;
    this.client = client;
    this.total = total;
    this.paid = paid;
    this.status = status;
    this.payMethod = payMethod;
    this.date = date;
    this.details = details;
  }



}