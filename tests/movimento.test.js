import supertest from "supertest"
import app from '../src/app.js'
import connection from '../src/database/database.js';
import { sessionsFactory } from '../src/factories/sessions.factory.js';
import { movimentFactory } from '../src/factories/moviment.factory.js';

beforeEach(async () => {
    await sessionsFactory();
    await movimentFactory();
});

afterAll( async () => {
    await connection.query(`DELETE FROM sessions;`);
    await connection.query(`DELETE FROM movimento WHERE user_id = 1;`);
});

afterAll(() => {
    connection.end();
});

describe('GET /movimento', () => {

    it('returns 200 for valid user', async() => {

        const result = await supertest(app)
            .get('/movimento')
            .set('Authorization', 'eb9f84ee-b54b-43f2-bca2-d3667d5820a7')

        expect(result.status).toEqual(200);
        expect(result.body[0]).toHaveProperty('valor')
        expect(result.body[0]).toHaveProperty('entrada')
        expect(result.body[0]).toHaveProperty('saida')
        expect(result.body[0]).toHaveProperty('data')
        expect(result.body[0]).toHaveProperty('descricao')
    })
})

