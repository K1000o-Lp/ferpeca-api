import { envs } from './src/config/index.js';
import { AppRoutes } from './src/presentation/routes.js';
import { Server } from './src/presentation/server.js';



(() => {
  main();
})()

async function main () {
  // todo: await inicio de la base de datos

  // todo: inicio del server
  new Server({
    port: envs.PORT,
    routes: AppRoutes.routes,
  })
    .start();
}