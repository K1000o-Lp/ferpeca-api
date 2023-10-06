import { Sequelize } from 'sequelize';




export class PostgreDatabase {

  static async connect(options = {}) {

    const { postgreUrl, dbName, username, password } = options;

    try {
      this.sequelize = new Sequelize(dbName, username, password, {
        host: postgreUrl
      });

      console.log('Postgre connected');

      return this.sequelize;
    }
    catch(error){
      console.log('Postgre connection error');
      throw error;
    }

  }



}