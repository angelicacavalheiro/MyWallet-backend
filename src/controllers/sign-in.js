import connection from "../database/database.js";
import bcrypt from 'bcrypt'
import { signinSchema } from '../validation/schemas.js'

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

        const hash = bcrypt.compareSync(senha, result.rows[0].senha);
        if(!hash){
            return res.sendStatus(401);
        }

        //amanha vamos mudar esse trecho
        res.sendStatus(200)

    } catch (error) {
        console.log(error)
        res.sendStatus(500)
    }
}

export{
    enter
}



