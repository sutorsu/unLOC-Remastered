-> stage1

=== stage1
<b>Лок:</b> Алло, Кирт?

<b>Адвокат:</b> Да, здравствуй, Лок.

<b>Лок:</b> В общем, я думаю, надо еще раз попробовать

<b>Адвокат:</b> Ты просто невозможен! Сколько лет уже прошло. Остановись.

<b>Лок:</b> Ты не понимаешь, это моя жизнь! БЫЛА моя жизнь.

<b>Адвокат:</b> Это бессмысенно. Ты подаешь процессуальный документ по тем же основаниям и с тем же предметом. Тебе снова откажут.

    * [Нет, ты не прав]
        -> stage2
    * [Звучит разумно]
        -> stage3

=== stage2
<b>Лок:</b> Нет, ты не прав. Нельзя, чтоб всё в жизни решали деньги. Они должны проиграть, рано или поздно.

<b>Адвокат:</b> Как знаешь. Но помогать я тебе не стану.

<b>Лок:</b> Я и без тебя справлюсь.

<b>Адвокат:</b> Почитай хотя бы процессуальный кодекс!

<b>Лок:</b> Ой, сам разберусь.
#end1
-> END

=== stage3
<b>Лок:</b> Ладно, это звучит разумно. У меня нет новых доказательств. Пока.

<b>Адвокат:</b> Начни уже новую жизнь. Прекрати тратить время на бессмысленные действия.

<b>Лок:</b> Да, спасибо. До встречи.
#end2
-> END