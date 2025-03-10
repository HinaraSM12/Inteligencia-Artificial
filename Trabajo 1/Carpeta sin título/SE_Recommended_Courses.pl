/* Este es un sistema experto de recomendación que te ayudará a obtener una 
 * lista de cursos recomendados según una categoría, un precio máximo que
 * estés dispuesto a pagar, y la cantidad de tiempo que quieras invertir para el curso*/

% Bienvenido/a a nuestro sistema experto de recomendación de CURSOS.
sugerir(Curso) :- 
    write('¿Qué categoría de curso prefieres? (tecnologia_programacion, idiomas, negocios_emprendimiento, arte_diseno): '), read(Categoria),
    write('¿Cuál es la máxima duración en horas que deseas del curso?(Rango; 0-100): '), read(Duracion),
    write('¿Qué costo máximo estás dispuesto a pagar? (En miles de pesos, se ingresa sin los 3 ceros finales, ejemplo: 115000 <=> 115) (Rango: 0-500): '), read(Costo),
    write('¿Cuál es el idioma que deseas del curso?(ingles, español, portugues): '), read(Idioma),
    recomendar(Curso, Categoria, Duracion, Costo, Idioma, _,_).

% Base de conocimientos de cursos

% Cursos de Tecnología y Programación
curso('C# Basics for Beginners: Learn C# Fundamentals by Coding', tecnologia_programacion, 5.5, 62.475, ingles,'udemy', 'https://www.udemy.com/course/csharp-tutorial-for-beginners/').
curso('Beginning C++ Programming - From Beginner to Beyond', tecnologia_programacion, 46, 112.475, ingles,'udemy', 'https://www.udemy.com/course/beginning-c-plus-plus-programming/').
curso('Python Mega Course: Learn Python in 60 Days, Build 20 Apps', tecnologia_programacion, 52, 112.475,ingles, 'udemy', 'https://www.udemy.com/course/the-python-mega-course/').
curso('Vue - The Complete Guide (incl. Router & Composition API)', tecnologia_programacion, 32, 87.475, ingles,'udemy', 'https://www.udemy.com/course/vuejs-2-the-complete-guide/').
curso('Docker Mastery: with Kubernetes +Swarm from a Docker Captain', tecnologia_programacion, 21.5, 87.475, ingles,'udemy', 'https://www.udemy.com/course/docker-mastery/').
curso('Docker and Kubernetes: The Complete Guide', tecnologia_programacion, 22, 112.475, ingles,'udemy', 'https://www.udemy.com/course/docker-kubernetes-the-practical-guide/').
curso('The Complete Python Developer', tecnologia_programacion, 31, 87.475, ingles,'udemy', 'https://www.udemy.com/course/complete-python-developer-zero-to-mastery/').
curso('R Programming A-Z™: R For Data Science With Real Exercises!', tecnologia_programacion, 10.5, 87.475, ingles,'udemy', 'https://www.udemy.com/course/r-programming/').
curso('The Complete Python Bootcamp From Zero to Hero in Python', tecnologia_programacion, 22, 62.475, ingles,'udemy', 'https://www.udemy.com/course/complete-python-bootcamp/').
curso('The Complete 2024 Web Development Bootcamp', tecnologia_programacion, 62, 62.475, ingles,'udemy', 'https://www.udemy.com/course/the-complete-web-development-bootcamp/?couponCode=2021PM25').
curso('100 Days of Code: The Complete Python Pro Bootcamp', tecnologia_programacion, 58.5, 87.475, ingles,'udemy', 'https://www.udemy.com/course/100-days-of-code/').
curso('The Web Developer Bootcamp 2024', tecnologia_programacion, 74, 112.475, ingles,'udemy', 'https://www.udemy.com/course/the-web-developer-bootcamp/?couponCode=2021PM25').
curso('React - The Complete Guide 2024 (incl. React Router & Redux)', tecnologia_programacion, 68.5, 112.475, ingles,'udemy', 'https://www.udemy.com/course/react-the-complete-guide-incl-redux/').
curso('The Complete JavaScript Course 2024: From Zero to Expert!', tecnologia_programacion, 68.5, 112.475, ingles,'udemy', 'https://www.udemy.com/course/the-complete-javascript-course/').
curso('Angular - The Complete Guide (2024 Edition)', tecnologia_programacion, 36.5, 87.475,ingles, 'udemy', 'https://www.udemy.com/course/the-complete-guide-to-angular-2/?couponCode=2021PM25').
curso('Java 17 Masterclass: Start Coding in 2024', tecnologia_programacion, 138, 87.475, ingles,'udemy', 'https://www.udemy.com/course/java-the-complete-java-developer-course/').
curso('Machine Learning A-Z: AI, Python & R + ChatGPT Prize [2024]', tecnologia_programacion, 42.5, 87.475, ingles,'udemy', 'https://www.udemy.com/course/machinelearning/').
curso('Python for Data Science and Machine Learning Bootcamp', tecnologia_programacion, 25, 87.475, ingles,'udemy', 'https://www.udemy.com/course/python-for-data-science-and-machine-learning-bootcamp/').
curso('The Data Science Course: Complete Data Science Bootcamp 2024', tecnologia_programacion, 32, 87.475, ingles,'udemy', 'https://www.udemy.com/course/the-data-science-course-complete-data-science-bootcamp/').
curso('Selenium WebDriver with Java -Basics to Advanced+Frameworks', tecnologia_programacion, 55.5, 112.475,ingles, 'udemy', 'https://www.udemy.com/course/selenium-real-time-examplesinterview-questions/').
curso('Automate the Boring Stuff with Python Programming', tecnologia_programacion, 9.5, 87.475, ingles,'udemy', 'https://www.udemy.com/course/automate/?couponCode=2021PM25').
curso('Build Responsive Real-World Websites with HTML and CSS', tecnologia_programacion, 37.5, 87.475, ingles,'udemy', 'https://www.udemy.com/course/design-and-develop-a-killer-website-with-html5-and-css3/').
curso('Complete C# Unity Game Developer 2D', tecnologia_programacion, 18.5, 87.475, ingles,'udemy', 'https://www.udemy.com/course/masterclass-completa-de-c/').
curso('Learn Python Programming Masterclass', tecnologia_programacion, 64, 112.475, ingles,'udemy', 'https://www.udemy.com/course/python-the-complete-python-developer-course/').
curso('Programming Languages, Part A', tecnologia_programacion, 55, 106, ingles,'coursera', 'https://www.coursera.org/learn/python').
curso('Advanced SQL : The Ultimate Guide (2024)', tecnologia_programacion, 14, 130, ingles,'udemy', 'https://www.udemy.com/course/sql-advanced/?couponCode=2021PM25').
curso('Learn DevOps: Advanced Kubernetes Usage', tecnologia_programacion, 34, 69, ingles,'udemy', 'https://www.udemy.com/course/learn-devops-advanced-kubernetes-usage/?couponCode=2021PM25').
curso('Sprint Boot for Software Engineers', tecnologia_programacion, 6.5, 64, ingles,'udemy', 'https://udemy.com/course/spring-boot-for-software-engineers/?couponCode=2021PM25').
curso('Mastering Go Programming', tecnologia_programacion, 20, 199, ingles,'udemy', 'https://www.udemy.com/course/go-the-complete-developers-guide/?couponCode=2021PM25').
curso('Java Programming: Principles of Software Design', tecnologia_programacion, 96, 128, ingles,'coursera', 'https://www.coursera.org/learn/java-programming-design-principles').

% Cursos de Negocios y Emprendimiento
curso('Business English: Finance and Economics', negocios_emprendimiento, 70, 203, ingles,'coursera', 'https://www.coursera.org/learn/finance-economics-english').
curso('Productividad Empresarial con IA: ChatGPT', negocios_emprendimiento, 54, 168, español,'coursera', 'https://www.coursera.org/learn/productividad-empresarialchatgpt').
curso('Secretos del Marketing Digital Orgánico en Redes Sociales.', negocios_emprendimiento, 6.8, 219.9, español, 'udemy', 'https://www.udemy.com/course/marketing-digital-en-facebook-realiza-publicidad-gratuita/').
curso('Curso de Shopify tienda online con Dropshipping VIP', negocios_emprendimiento, 21, 229.9, español,'udemy', 'https://www.udemy.com/course/curso-de-shopify-con-dropshipping-vip/').
curso('Máster en Programación Neurolingüística, PNL nivel Avanzado', negocios_emprendimiento, 10, 299.9, 'Español','udemy', 'https://www.udemy.com/course/masterpnl/?couponCode=2021PM25').
curso('Transformación Digital para Empresas y Profesionales.', negocios_emprendimiento, 16.5, 209.9, español,'udemy', 'https://www.udemy.com/course/transformacion_digital/').
curso('Gen AI in Cybersecurity', negocios_emprendimiento, 47, 126, ingles,'coursera', 'https://www.coursera.org/learn/gen-ai-in-cybersecurity').
curso('Conclusão do Marketing de Mídias Sociais', negocios_emprendimiento, 48, 100, portugues,'coursera', 'https://www.coursera.org/learn/conclusao-do-marketing-de-midias-sociais-do-facebook').
curso('Introdução ao marketing de mídias sociais', negocios_emprendimiento, 95, 55, portugues,'coursera', 'https://www.coursera.org/learn/introducao-ao-marketing-de-midias-sociais').
curso('Veiculação de anúncios com o Meta', negocios_emprendimiento, 41, 11, portugues,'coursera', 'https://www.coursera.org/learn/veiculacao-de-anuncios-com-o-facebook').

% Cursos de Idiomas
curso('Chino básico: Cómo dar una primera impresión positiva', idiomas, 18, 185, español,'coursera', 'https://www.coursera.org/learn/chino-primera-impresion').
curso('Gramática Espanhola - do Básico ao Avançado', idiomas, 38.5, 64, portugues,'udemy', 'https://www.udemy.com/course/gramatica-espanhola-do-basico-ao-avancado/?couponCode=LETSLEARNNOW').
curso('Curso online preparación del título oficial de inglés C1', idiomas, 5.6, 189.9, español,'udemy', 'https://www.udemy.com/course/titulo-oficial-de-ingles-c1/?couponCode=LETSLEARNNOW').
curso('English Grammar Launch: Upgrade your speaking and listening', idiomas, 8, 189.9, ingles,'udemy', 'https://www.udemy.com/course/learn-english-grammar-upgrade-your-speaking-and-listening/?couponCode=LETSLEARNNOW').
curso('Customer Service English Essentials', idiomas, 7, 209.9, ingles,'udemy', 'https://www.udemy.com/course/customer-service-english/?couponCode=LETSLEARNNOW').
curso('Learn German Language: Complete German Course - Beginners', idiomas, 17, 209.9, ingles,'udemy', 'https://www.udemy.com/course/german-course-for-beginners-learn-german/?couponCode=LETSLEARNNOW').
curso('Learn English: The Next Gen Guide to English Grammar', idiomas, 2, 64.9,ingles, 'udemy', 'https://www.udemy.com/course/the-next-gen-guide-to-english-grammar/?couponCode=LETSLEARNNOW').
curso('English Grammar - Tenses and verb structures', idiomas, 1.5, 69.9, ingles,'udemy', 'https://www.udemy.com/course/puzzle-of-the-english-tenses-visual-language-course/?couponCode=LETSLEARNNOW').

% Cursos de Arte y Diseño
curso('Producción Musical y su Efecto en la Composición', arte_diseno, 39, 21, español,'coursera', 'https://www.coursera.org/learn/produccionycomposicion').
curso('Desarrollando tu musicalidad', arte_diseno, 71, 188, español,'coursera', 'https://www.coursera.org/learn/desarrollo-musicalidad').
curso('Introducción a la producción de música', arte_diseno, 5, 199, español,'coursera', 'https://www.coursera.org/learn/produccion-musical').
curso('Proyecto final de Músico moderno', arte_diseno, 49, 79, español,'coursera', 'https://www.coursera.org/learn/proyecto-musico').
curso('ART of the MOOC: Arte Público y Pedagogía', arte_diseno, 59, 216, español,'coursera', 'https://www.coursera.org/learn/arte-publico-pedagogia').

% Reglas para la categoría de Tecnología y Programación

% Por plataforma
% Reglas para la categoría de Tecnología y Programación en la plataforma Udemy
recomendar(Curso, tecnologia_programacion, DuracionMaxima, CostoMaximo, Idioma, 'udemy', Url) :-
    curso(Curso, tecnologia_programacion, Duracion, Costo,Idioma, 'udemy', Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Tecnología y Programación en Udemy: '),nl,write(Url), nl.

% Reglas para la categoría de Tecnología y Programación en la plataforma Coursera
recomendar(Curso, tecnologia_programacion, DuracionMaxima, CostoMaximo,Idioma, 'coursera', Url) :-
    curso(Curso, tecnologia_programacion, Duracion, Costo,Idioma, 'coursera', Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Tecnología y Programación en Coursera: '),nl,write(Url), nl.

% Por idioma
% Reglas para la categoría de Tecnología y Programación en Portugués
recomendar(Curso, tecnologia_programacion, DuracionMaxima, CostoMaximo, portugues, Plataforma, Url) :-
    curso(Curso, tecnologia_programacion, Duracion, Costo, portugues, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Tecnologia e Programación en Portugues: '),nl,write(Url), nl.

% Reglas para la categoría de Tecnología y Programación en Español
recomendar(Curso, tecnologia_programacion, DuracionMaxima, CostoMaximo, español, Plataforma, Url) :-
    curso(Curso, tecnologia_programacion, Duracion, Costo, español, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Tecnologia e Programación en Español: '),nl,write(Url), nl.

% Reglas para la categoría de Tecnología y Programación en Ingles
recomendar(Curso, tecnologia_programacion, DuracionMaxima, CostoMaximo, ingles, Plataforma, Url) :-
    curso(Curso, tecnologia_programacion, Duracion, Costo, ingles, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Tecnologia e Programación en Ingles: '),nl,write(Url), nl.


% Reglas para la categoría de Negocios y Emprendimiento

% Por plataforma
% Reglas para la categoría de Negocios y Emprendimiento en la plataforma Udemy
recomendar(Curso, negocios_emprendimiento, DuracionMaxima, CostoMaximo, Idioma, 'udemy', Url) :-
    curso(Curso, negocios_emprendimiento, Duracion, Costo, Idioma, 'udemy', Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Negocios y Emprendimiento en Udemy: '),nl,write(Url), nl.

% Reglas para la categoría de Negocios y Emprendimiento en la plataforma Coursera
recomendar(Curso, negocios_emprendimiento, DuracionMaxima, CostoMaximo, Idioma, 'coursera', Url) :-
    curso(Curso, negocios_emprendimiento, Duracion, Costo, Idioma, 'coursera', Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Negocios y Emprendimiento en Coursera: '),nl,write(Url), nl.


%Por dioma

% Reglas para la categoría de Negocios y Emprendimiento en Portugués
recomendar(Curso, negocios_emprendimiento, DuracionMaxima, CostoMaximo, portugues, Plataforma, Url) :-
    curso(Curso, negocios_emprendimiento, Duracion, Costo, portugues, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Negocios y Emprendimiento en Português: '),nl,write(Url), nl.

% Reglas para la categoría de Negocios y Emprendimiento en Español
recomendar(Curso, negocios_emprendimiento, DuracionMaxima, CostoMaximo, español, Plataforma, Url) :-
    curso(Curso, negocios_emprendimiento, Duracion, Costo, español, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Negocios y Emprendimiento en Español: '),nl,write(Url), nl.

% Reglas para la categoría de Negocios y Emprendimiento en Ingles
recomendar(Curso, negocios_emprendimiento, DuracionMaxima, CostoMaximo, ingles, Plataforma, Url) :-
    curso(Curso, negocios_emprendimiento, Duracion, Costo, ingles, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Negocios y Emprendimiento en Ingles: '),nl,write(Url), nl.

% Reglas para la categoría de Idiomas

%Por platforma
% Reglas para la categoría de Idiomas en la plataforma Udemy
recomendar(Curso, idiomas, DuracionMaxima, CostoMaximo, Idioma, 'udemy', Url) :-
    curso(Curso, idiomas, Duracion, Costo, Idioma, 'udemy', Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Idiomas en Udemy: '),nl,write(Url), nl.

% Reglas para la categoría de Idiomas en la plataforma Coursera
recomendar(Curso, idiomas, DuracionMaxima, CostoMaximo, Idioma, 'coursera', Url) :-
    curso(Curso, idiomas, Duracion, Costo, Idioma, 'coursera', Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Idiomas en Coursera: '),nl,write(Url), nl.

% Por idioma
% Reglas para la categoría de Idiomas en Portugués
recomendar(Curso, idiomas, DuracionMaxima, CostoMaximo, portugues, Plataforma, Url) :-
    curso(Curso, idiomas, Duracion, Costo, portugues, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Idiomas en Português: '),nl,write(Url), nl.

% Reglas para la categoría de Idiomas en Español
recomendar(Curso, idiomas, DuracionMaxima, CostoMaximo, español, Plataforma, Url) :-
    curso(Curso, idiomas, Duracion, Costo, español, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Idiomas en Español: '),nl,write(Url), nl.

% Reglas para la categoría de Idiomas en Inglés
recomendar(Curso, idiomas, DuracionMaxima, CostoMaximo, ingles, Plataforma, Url) :-
    curso(Curso, idiomas, Duracion, Costo, ingles, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Idiomas en Inglés: '),nl,write(Url), nl.

% Reglas para la categoría de Arte y Diseño

% Por plataforma
% Reglas para la categoría de Arte y Diseño en la plataforma Udemy
recomendar(Curso, arte_diseno, DuracionMaxima, CostoMaximo, Idioma, 'udemy', Url) :-
    curso(Curso, arte_diseno, Duracion, Costo, Idioma, 'udemy', Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Arte y Diseño en Udemy: '),nl,write(Url), nl.

% Reglas para la categoría de Arte y Diseño en la plataforma Coursera
recomendar(Curso, arte_diseno, DuracionMaxima, CostoMaximo, Idioma, 'coursera', Url) :-
    curso(Curso, arte_diseno, Duracion, Costo, Idioma, 'coursera', Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Arte y Diseño en Coursera: '),nl,write(Url), nl.

%Por idioma
% Reglas para la categoría de Arte y Diseño en Portugués
recomendar(Curso, arte_diseno, DuracionMaxima, CostoMaximo, portugues, Plataforma, Url) :-
    curso(Curso, arte_diseno, Duracion, Costo, portugues, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Arte y Diseño en Português: '),nl,write(Url), nl.

% Reglas para la categoría de Arte y Diseño en Español
recomendar(Curso, arte_diseno, DuracionMaxima, CostoMaximo, español, Plataforma, Url) :-
    curso(Curso, arte_diseno, Duracion, Costo, español, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Arte y Diseño en Español: '),nl,write(Url), nl.

% Reglas para la categoría de Arte y Diseño en Ingles
recomendar(Curso, arte_diseno, DuracionMaxima, CostoMaximo, ingles, Plataforma, Url) :-
    curso(Curso, arte_diseno, Duracion, Costo, ingles, Plataforma, Url),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo,
    write('En este momento te recomiendo el siguiente curso de Arte y Diseño en Ingles: '),nl,write(Url), nl.

% Manera de consultar: sugerir(X)