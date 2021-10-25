import connection from "../database/database.js";
import bcrypt from 'bcrypt'
import { signupSchema } from '../validation/schemas.js'


async function userRegistration (req, res) {

    const {
        nome,
        email,
        senha,
        confirma_senha
    } = req.body

    const errors = signupSchema.validate(
        {
            nome,
            email,
            senha,
            confirma_senha
        }).error;

        if(errors){
            console.log(errors)
            return  res.sendStatus(400)
        }

    try {

        const hashOne = bcrypt.hashSync(senha, 10);
        const hashTwo = bcrypt.hashSync(confirma_senha, 10);

        await connection.query(`
        INSERT INTO clientes (nome, email, senha, confirma_senha) VALUES ($1, $2, $3, $4);
        `, [nome, email, hashOne, hashTwo]);
        return res.sendStatus(200)

    } catch (error) {
        console.log(error)
        res.sendStatus(500)
    }    
}

export{
    userRegistration
}

