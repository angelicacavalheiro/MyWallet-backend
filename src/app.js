import express from 'express';
import cors from 'cors';

import { registration } from './controllers/sign-up.js';
import { enter } from './controllers/sign-in.js';

const app = express();
app.use(cors());
app.use(express.json());

app.post('/sign-up', registration)
app.post('/sign-in', enter)

app.listen(4000, () => {
    console.log('Server listening on port 4000.');
});
    
    