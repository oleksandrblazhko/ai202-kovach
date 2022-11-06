Метод *viewPoetLit()*:
1. Вхідні параметри:

   1.1)  **PoetLitName** - параметр назви поетичного твору:
   - умова №1: довжина рядка PoetLitName не менше 1 та не більше 64 символів;
   
        (0 - пошук за назвою поетичного твору, 1 - за іменем автора);
   
   1.2)  **PoetLitLink** - посилання на поетичний твор:
   - *умова 2*: довжина рядка PoetLitLink не менше 1 та не більше 256 символів;
   
2. Значення, що повертаються функцією:
- значення = 1 - результат, що відповідає умовам;
- значення = -1 - назви поетичного твору не відповідає вимогам;
- значення = -2 - посилання на поетичний твор, не відповідає вимогам;
- значення = -3 - посилання на поетичний твор та назви поетичного твору, не відповідає вимогам;