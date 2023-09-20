import chai from 'chai';
import chaiHttp from 'chai-http';
import tasksModel from '../models/task'

chai.use(chaiHttp);

const app = require('../app');
const request = chai.request.agent(app);
const expect = chai.expect;

describe('delete', () => {


    context('quando apago uma tarefa', () => {

        let task = {
            _id: require('mongoose').Types.ObjectId(), //vai entrar com um id pronto usando o mongoose no banco
            title: 'Pagar conta de celular',
            owner: 'samile@papito.io',
            done: false
        }

        before((done) => {
            tasksModel.insertMany([task])
            done();

        })

        it('deve retornar 200', (done) => {
            request
                .delete('/task/' + task._id)
                .end((err, res) => {
                    expect(res).to.have.status(200)
                    expect(res.body).to.have.eql({})
                    done();
                })

        })


        after((done) => {

            //gancho pra fazer uma busca e validar que realmente a tarefa foi excluída.
            request
                .get('/task/' + task._id)
                .send(task)
                .end((err, res) => {
                    expect(res).to.have.status(404)
                    done();

                })
        })
    })

    context('quando a tarefa não existe', () =>{
        it('deve retornar 200', (done) => {

            let id = require('mongoose').Types.ObjectId();
            request
                .delete('/task/' + id)
                .end((err, res) => {
                    expect(res).to.have.status(404)
                    expect(res.body).to.have.eql({})
                    done();
                })

        })

    })
})