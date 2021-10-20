import express from 'express';
import cors from 'cors';

import { userRegistration } from './controllers/sign-up.js';
import { enter } from './controllers/sign-in.js';
import { activityPost, activityList } from './controllers/movimento.js';

const app = express();
app.use(cors());
app.use(express.json());

app.post('/sign-up', userRegistration)
app.post('/sign-in', enter)
app.post('/movimento', activityPost)
app.get('/movimento', activityList)

app.listen(4000, () => {
    console.log('Server listening on port 4000.');
});
    
    