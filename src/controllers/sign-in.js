import connection from "../database/database.js";
import bcrypt from 'bcrypt'
import { signinSchema } from '../validation/schemas.js'
import { v4 as uuid } from 'uuid'

async function enter (req, res) {

    const {
        email,
        senha
    } = req.body

    const errors = signinSchema.validate(
        {
            email,
            senha
        }).error;

        if(errors){
            console.log(errors)
        }

    try {

        const result = await connection.query(`
            SELECT * FROM clientes WHERE email = $1;
        `, [email]);

        const user = result.rows[0]

        const hash = bcrypt.compareSync(senha, result.rows[0].senha);
        if(!hash){
            return res.sendStatus(401);
        }

        const token = uuid()

        await connection.query(`
          INSERT INTO sessions (user_id, token)
          VALUES ($1, $2)
        `, [user.id, token]);

        res.status(200).send({
            token
        })

    } catch (error) {
        console.log(error)
        res.sendStatus(500)
    }
}

async function userName (req, res) {

    const authorization = req.headers['authorization'];
    const token = authorization?.replace('Bearer ', '');

    if(!token) return res.sendStatus(401);

    const result = await connection.query(`
        SELECT * FROM sessions
        JOIN clientes
        ON sessions.user_id = clientes.id
        WHERE sessions.token = $1
  `, [token]);

    const user = result.rows[0];

    if(user) {

    try {
        const result = await connection.query(`
        SELECT nome FROM clientes WHERE id = $1;`, [user.id]);
        res.send(result.rows[0].nome)

    } catch (error) {
        console.log(error)
        res.sendStatus(500)
    }   

    } else {
        res.sendStatus(401);
    }
}

export{
    enter,
    userName
}



