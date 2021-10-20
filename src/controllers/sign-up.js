import connection from "../database/database.js";
import bcrypt from 'bcrypt'

async function registration (req, res) {

    const {
        nome,
        email,
        senha
    } = req.body

    try {

        const hash = bcrypt.hashSync(senha, 10);

        await connection.query(`
        INSERT INTO clientes (nome, email, senha) VALUES ($1, $2, $3);
        `, [nome, email, hash]);

        res.sendStatus(200)
    } catch (error) {
        console.log(error)
        res.sendStatus(500)
    }
    
}

export{
    registration
}

