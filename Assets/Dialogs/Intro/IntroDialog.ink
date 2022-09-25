-> stage1

===stage1
<b>Судья:</b> Тишина в зале.
<b>Судья:</b> Объявляется допрос ответчика. 
<b>Судья:</b> Мистер Дэйн, каждое ваше слово может повлиять на исход событий. Будьте внимательны и честны в ответах. Все ясно?

    *[Да]
        <b>Судья:</b> Хорошо. 
        -> stage2
    *[Нет]
        <b>Судья:</b> Повторяю. Каждое ваше слово может повлиять на исход событий. Будьте внимательны и честны в ответах. Теперь ясно?
        **[Да] -> stage2
        
        **[Нет]
        <b>Судья:</b> Я не попугай столько повторять. Дальше. 
        -> stage2
    
 
 ===stage2
 <b>Судья:</b> Вы обвиняетесь в незаконном использовании технологии "DARS”, позволяющей скопировать данные с человеческого мозга на однокристальную систему. Также обвинение запрашивает аннулирование вашей лицензии на научные исследования.

    *[Перебить]
    <b>Лок:</b> Впервые слышу об отзыве лицензии! Требую перерыв, чтобы я мог ознакомиться с материалами.
    <b>Судья:</b> Если еще раз перебьете меня — наложу штраф за нарушение порядка в судебном заседании. 
    -> stage3
        
    *[Продолжить слушать] -> stage3 

===stage3
<b>Судья:</b> В свою очередь, вы подали иск об оспаривании прав на интеллектуальную собственность DARS. Ваш защитник предоставил все необходимые документы. Вам понятны обстоятельства дела? Есть ли ходатайства?

    *[Да понятны.] Лок: Да, понятны. Ходатайств нет.
        ->stage4
    *[Нет не понятны.]
        <b>Лок:</b> Требую отложения дела для дополнительного ознакомления с материалами дела и обсуждения с защитником.
        <b>Судья:</b> Ваша просьба отклонена.
        
        **[По какой причине?]
       <b>Судья:</b> Суд не обязан обосновывать свои решения по отдельным ходатайствам. 
       -> stage4
       
=== stage4
<b>Судья:</b> У меня есть к вам пара вопросов.
<b>Судья:</b> В конце вашего последнего рабочего дня вы не активировали сигнализацию в лаборатории. По какой причине?
    
    *[Это не моя обязанность.]
        <b>Лок:</b> В мои обязанности не входит контроль за системой безопасности. Я учёный, а не цепной пес.
        -> stage5
        
    *[Я не был последним.]
        <b>Лок:</b> Я не был последним. После меня в лаборатории оставалась Мелисса, моя коллега. Было бы странно включить сигнализацию, когда работа еще не окончена. 
        -> stage5

===stage5
<b>Судья:</b> Корпорация X требует лишить вас лицензии за незаконное использование DARS и нарушение этических норм и прав подопытных.
<b>Судья:</b> Вы можете это прокомментировать?

    *[“Спокойно”.]
        <b>Лок:</b> Ваша честь, технология DARS, говоря простым языком, позволяет скопировать функции мозга умершего человека и перенести в механическое тело.  Без согласия родственников это сделать невозможно. Директор департамента лично получал все необходимые документы.
        -> stage6

    *[“Раздражённо”.]
       <b>Лок:</b> Ваша честь, все необходимые документы передавались директору департамента. Если он что-то потерял, то это его проблема, а не моя. 
       -> stage6

    *[“Робко”.]
        <b>Лок:</b> Ваша честь, я сделал все возможное, чтобы мои файлы были в порядке. Может быть, я что-то пропустил, я не знаю, но у меня не было злого умысла. 
        -> stage6

===stage6
<b>Судья:</b> Свидетель обвинения утверждает, что вы регулярно грубо высказывались в отношении компании Х. Вы можете это прокомментировать?

    *[“Всё отрицать”.]
        <b>Лок:</b> Ваша честь, это неправда. Считаю, что на меня наговаривают.
        <b>Судья:</b> У нас есть аудиозапись.
        <b>Лок:</b> Даже если и так, это подделка.
        <b>Судья:</b> Подлинность подтверждена экспертизой.
        <b>Лок:</b> Тогда мне нечего сказать.
        -> stage7
        
    *[“Перевести тему”.]
        <b>Лок:</b> Кто донес на меня?
        <b>Судья:</b> Свидетель пожелал остаться анонимом. Отвечайте на вопрос.
        <b>Лок:</b> Я отказываюсь от комментариев.
        -> stage7
        
    *[“Согласиться”.]
        <b>Лок:</b> Ваша честь, я против коммерциализации науки. Мои высказывания — лишь эмоции, не более.
        <b>Судья:</b> Ваши высказывания работают против вас.
        <b>Лок:</b> Прошу не оценивать их как что-то серьезное.
        <b>Судья:</b> Это решать суду.
        <b>Судья:</b> Ваши ответы записаны в протокол. Объявляю перерыв на 5 минут.
        -> stage7

===stage7
<b>Судья:</b> Вынесение приговора. Иск со стороны подсудимого об оспаривании прав на интеллектуальную собственность в отношении корпорации X отклонен.
<b>Судья:</b> Обвинение в незаконном использовании технологии DARS удовлетворено.
<b>Судья:</b> Вы лишаетесь личной лицензии на проведение любых научных исследований, а также прав на использование технологии.
<b>Судья:</b> Вы хотите что-то добавить, обвиняемый?

    *[“Оскорбить судью”]
        <b>Лок:</b> Я подам апелляцию, засужу корпорацию и вас лично! Ублюдок! 
        ->DONE
        
    *[“Сдержаться”]
        <b>Лок:</b> Нет, Ваша честь, мне нечего добавить. Разве что закопать свою гордость.
-> DONE
 
 