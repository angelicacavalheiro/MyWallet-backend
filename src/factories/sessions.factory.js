import connection from "../database/database.js";


async function sessionsFactory(){

    await connection.query(`INSERT INTO sessions (user_id, token) VALUES (1, 'eb9f84ee-b54b-43f2-bca2-d3667d5820a7');`);
    
}

export {
    sessionsFactory,
}