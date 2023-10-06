import express from 'express';

export class Server {

  #app = express();

  constructor( options = {} ) {
    
    const { port = 3100, routes } = options;

    this.port = port;
    this.routes = routes;

  }

  async start () {

    // Middlewares

    this.#app.use( express.json() );
    this.#app.use( express.urlencoded({ extended: true }) );

    // Usar las Rutas Definidas

    this.#app.use( this.routes );

    this.#app.listen(this.port, () => {
      console.log(`Server running in: http://localhost:${ this.port }`) });
  }

}