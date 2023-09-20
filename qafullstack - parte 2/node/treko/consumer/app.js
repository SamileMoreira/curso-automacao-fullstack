const nodemailer = require('nodemailer');

var amqp = require('amqplib/callback_api');

const transporter = nodemailer.createTransport({
    host: "savyo_21@hotmail.com",
    port: 587,
    secure: false,
    auth: {
        user: "sam.amorim95@outlook.com",
        pass: "Sami@3843"
    },
    tls: { rejectUnauthorized: false }
});


amqp.connect('amqp://rabbitmq:5672', function (err, conn) {
    conn.createChannel(function (err, ch) {
        var q = 'tasks';

        ch.assertQueue(q, { durable: true });
        ch.prefetch(1);
        console.log(" [*] Aguardando mensagens em %s. Para sair use: CTRL+C", q);
        ch.consume(q, function (msg) {

            var msgJSON = JSON.parse(msg.content.toString());
            console.log(msgJSON)
            const mailOptions = {
                from: 'fernando@qaninja.io',
                to: msgJSON.email,
                subject: 'E-mail enviado usando Node!',
                html: msgJSON.html
            };

            transporter.sendMail(mailOptions, function (error, info) {
                if (error) {
                    console.log(error);
                } else {
                    console.log(" [x] Enviando email => %s", msg.content.toString());
                }
            });

        }, { noAck: true });
    });
});




