import Joi from 'joi';
import JoiDate from "@joi/date"

const signupSchema = Joi.object({
    nome: Joi.string().min(1).max(30).required(),
    email: Joi.string().email({ minDomainSegments: 2, tlds: { allow: ['com', 'net'] }}).required(),
    senha: Joi.string().alphanum().min(1).max(30).required(),
    confirma_senha: Joi.ref('senha')
});


const signinSchema = Joi.object({
    email: Joi.string().email({ minDomainSegments: 2, tlds: { allow: ['com', 'net'] }}).required(),
    senha: Joi.string().alphanum().min(1).max(30).required()
});

const extendedJoi = Joi.extend(JoiDate)

const activitySchema = Joi.object({
    valor: Joi.number().min(1).required(),
    entrada: Joi.boolean().required(),
    saida: Joi.boolean().required(),
    data: extendedJoi.date().format('DD/MM/YYYY'),
    descricao: Joi.string().min(1).required()
});

export {
    signupSchema,
    signinSchema,
    activitySchema
}
