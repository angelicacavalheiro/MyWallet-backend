
import pg from 'pg';
import '../setup.js';

const { Pool } = pg;

//como faziamos antes com os .env
// const connectionData = {
//     user: process.env.DB_USER,
//     password: process.env.DB_PASSWORD,
//     port: parseInt(process.env.DB_PORT),
//     host: process.env.DB_HOST,
//     database: process.env.DB_DATABASE
// };

const connectionData = {
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
}



const connection = new Pool(connectionData);

export default connection;

