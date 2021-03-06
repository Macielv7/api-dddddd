import 'dotenv/config'
import express from 'express'
import cors from 'cors'
import usuariocontroler from './controler/usuariocontroler.js'
import agendamentocontroler from './controler/agendamentocontroler.js'

const server = express();
server.use(cors());
server.use(express.json());


server.use(usuariocontroler);
server.use(agendamentocontroler);

server.listen(process.env.PORT, () => console.log(`API NA PORTA ${process.env.PORT}`));