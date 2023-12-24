const Telegraf = require('telegraf');

const bot = new Telegraf('5942378382:AAEzEru5YxurKawezrIquBDCKOB7mjcm4qc');

function sendTelegramNotification(message) {
    bot.telegram.sendMessage('532075779', message);
}

sendTelegramNotification('Образ успешно загружен!');

sendTelegramNotification('Произошла ошибка при загрузке образа.');
