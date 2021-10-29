import connection from "../database/database.js";
import faker from 'faker'

async function movimentFactory(){
    
    const descricao = faker.lorem.words()

    await connection.query(`INSERT INTO movimento (valor, entrada, saida, data, descricao, user_id) VALUES (100.00, 'true', 'false', '28/10', $1, 1);`, [descricao])

}

export {
    movimentFactory,
}
