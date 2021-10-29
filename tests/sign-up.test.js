import supertest from "supertest"
import app from '../src/app.js'
import connection from '../src/database/database.js';

beforeEach(async () => {
    await connection.query(`DELETE FROM clientes WHERE nome = 'Angelica';`);
});

afterAll(() => {
    connection.end();
});

describe('POST /sign-up', () => {

    it('returns 400 for invalid params', async() => {
        const body = {
            nome: "angelica",
            email: "angel@angel.com",
            senha: "12345",
            confirma_senha: "123456"
        }
        const result = await supertest(app).post('/sign-up').send(body)
        const status = result.status

        expect(status).toEqual(400);
    })

    it('returns 201 for valid params', async() => {
        let body = {
            nome: "angelica",
            email: "angel@angel.com",
            senha: "12345",
            confirma_senha: "12345"
        }
        const result = await supertest(app).post('/sign-up').send(body)
        const status = result.status

        expect(status).toEqual(201);
    })

    it('returns message for valid params', async() => {
        let body = {
            nome: "angelica",
            email: "angel@angel.com",
            senha: "12345",
            confirma_senha: "12345"
        }
        const result = await supertest(app).post('/sign-up').send(body)
        const send = result.body.message

        expect(send).toEqual("Você esta cadastrado");
    })

})

