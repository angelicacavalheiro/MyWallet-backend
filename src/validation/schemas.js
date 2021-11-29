import Joi from 'joi';

const signupSchema = Joi.object({
    nome: Joi.string().min(1).max(30).required(),
    email: Joi.string().email({ tlds: { allow: false } }),
    senha: Joi.string().alphanum().min(1).max(30).required(),
    confirma_senha: Joi.ref('senha')
});


const signinSchema = Joi.object({
    email: Joi.string().email({ tlds: { allow: false } }),
    senha: Joi.string().alphanum().min(1).max(30).required()
});

const activitySchema = Joi.object({
    valor: Joi.number().required(),
    entrada: Joi.boolean().required(),
    saida: Joi.boolean().required(),
    descricao: Joi.string().min(1).required()
});

export {
    signupSchema,
    signinSchema,
    activitySchema
}
