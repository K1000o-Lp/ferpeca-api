import { CreateOrderDto } from './../../domain/index.js'




export class OrderController {

  #orderRepository;

  constructor( AbstractOrderRepository ) {
    this.#orderRepository = AbstractOrderRepository;
  }

  createOrder = (req, res) => {
    const [ error, createOrderDto ] = CreateOrderDto.create( req.body );
    if(error) return res.status(400).json({ error });

    this.#orderRepository.create( createOrderDto )
      .then(order => res.json(order))
      .catch(error => res.status(500).json(error));

    res.json( createOrderDto );
  }
}