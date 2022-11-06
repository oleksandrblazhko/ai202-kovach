|FR id|TC id|Опис кроків тестового сценарію|Опис очікуваних результатів|
|:-----:|:-----:|:-----|:-----:|
|FR1.2|TC 1.1|Початкові умови: програма ще виконала надання поетичних творів<br> Кроки сценарію:<br> PoetLitName = "Ти знаєш, що ти людина" <br> PoetLitLink = "https://onlyart.org.ua/ukrainian-poets/vasyl-symonenko/virsh-vasylya-symonenka-ty-znayesh-shho-ty/"|Результат=1|
|FR1.2|TC 1.2|Початкові умови: відсутні<br> ***Кроки сценарію:***<br> PoetLitName = "" (довжина < 1) <br> PoetLitLink = "https://onlyart.org.ua/ukrainian-poets/vasyl-symonenko/virsh-vasylya-symonenka-ty-znayesh-shho-ty/"|Результат=-1|
|FR1.2|TC 1.3|Початкові умови: відсутні<br> ***Кроки сценарію:***<br> PoetLitName = "Ти знаєш, що ти людина" <br> PoetLitLink = "" (довжина < 1)|Результат=-2|
|FR1.2|TC 1.4|Початкові умови: відсутні<br> ***Кроки сценарію:***<br> PoetLitName = "" (довжина < 1) <br> PoetLitLink = "" (довжина < 1)|Результат=-3|

