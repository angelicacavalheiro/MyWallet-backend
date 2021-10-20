import connection from "../database/database.js";
import { activitySchema } from '../validation/schemas.js'

async function activityPost (req, res) {

    const {
        valor,
        entrada,
        saida,
        data,
        descricao
    } = req.body

    const errors = activitySchema.validate(
        {
            valor,
            entrada,
            saida,
            data,
            descricao
        }).error;

        if(errors){
            console.log(errors)
        }


    try {

        await connection.query(`
        INSERT INTO movimento (valor, entrada, saida, data, descricao) VALUES ($1, $2, $3, $4, $5);
        `, [valor, entrada, saida, data, descricao]);

        res.sendStatus(200)

    } catch (error) {
        console.log(error)
        res.sendStatus(500)
    }    
}

async function activityList (req, res) {

    try {
        const result = await connection.query(`SELECT * FROM movimento;`);

        result.rows = result.rows.map(value => ({
            ...value,
            data: new Date(value.data).toLocaleDateString('pt-Br')
          }))

        return res.send(result.rows);
          
    } catch (error) {
        console.log(error)
        res.sendStatus(500)
    }    
}

export{
    activityPost,
    activityList
}

