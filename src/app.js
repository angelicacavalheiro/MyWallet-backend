import express from 'express';
import cors from 'cors';
import { userRegistration } from './controllers/sign-up.js';
import { enter, userName } from './controllers/sign-in.js';
import { activityPost, activityList } from './controllers/movimento.js';

const app = express();
app.use(cors());
app.use(express.json());

app.post('/sign-up', userRegistration)
app.post('/sign-in', enter)
app.get('/sign-in', userName)
app.post('/movimento', activityPost)
app.get('/movimento', activityList)

export default app;
