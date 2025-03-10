/* Este es un sistema experto de recomendación que te ayudará a obtener una 
 * lista de cursos recomendados según una categoría, un precio máximo que
 * estés dispuesto a pagar, y la cantidad de tiempo que quieras invertir para el curso*/

% Bienvenido/a a nuestro sistema experto de recomendación de CURSOS.
sugerir(Curso) :- 
    write('¿Qué categoría de curso prefieres? (tecnologia_programacion, idiomas, negocios_emprendimiento, arte_diseno): '), read(Categoria),
    write('¿Cuál es la máxima duración en horas que deseas del curso?(Rango; 0-100): '), read(Duracion),
    write('¿Qué costo máximo estás dispuesto a pagar? (En miles de pesos, se ingresa sin los 3 ceros finales, ejemplo: 115000 <=> 115) (Rango: 0-500): '), read(Costo),
    write('En este momento te recomiendo el siguiente curso: '),
    recomendar(Curso, Categoria, Duracion, Costo).

% Base de conocimientos de cursos

% Cursos de Tecnología y Programación
curso('The Ultimate MySQL Bootcamp: Go from SQL Beginner to Expert', tecnologia_programacion, 21.5, 112.475).
curso('iOS & Swift - The Complete iOS App Development Bootcamp', tecnologia_programacion, 60.5, 69.975).
curso('Modern React with Redux [2024 Update]', tecnologia_programacion, 76, 112.475).
curso('[NEW] Spring Boot 3, Spring 6 & Hibernate for Beginners', tecnologia_programacion, 34, 87.475).
curso('Flutter & Dart - The Complete Guide [2024 Edition]', tecnologia_programacion, 30, 112.475).
curso('The Complete Web Developer Course 3.0', tecnologia_programacion, 31, 87.475).
curso('The Complete Node.js Developer Course (3rd Edition)', tecnologia_programacion, 35, 112.475).
curso('Unreal Engine 5 C++ Developer: Learn C++ & Make Video Games', tecnologia_programacion, 29.5, 87.475).
curso('C# Basics for Beginners: Learn C# Fundamentals by Coding', tecnologia_programacion, 5.5, 62.475).
curso('Beginning C++ Programming - From Beginner to Beyond', tecnologia_programacion, 46, 112.475).
curso('Python Mega Course: Learn Python in 60 Days, Build 20 Apps', tecnologia_programacion, 52, 112.475).
curso('Vue - The Complete Guide (incl. Router & Composition API)', tecnologia_programacion, 32, 87.475).
curso('Docker Mastery: with Kubernetes +Swarm from a Docker Captain', tecnologia_programacion, 21.5, 87.475).
curso('Docker and Kubernetes: The Complete Guide', tecnologia_programacion, 22, 112.475).
curso('The Complete Python Developer', tecnologia_programacion, 31, 87.475).
curso('R Programming A-Z™: R For Data Science With Real Exercises!', tecnologia_programacion, 10.5, 87.475).
curso('The Complete Python Bootcamp From Zero to Hero in Python', tecnologia_programacion, 22, 62.475).
curso('The Complete 2024 Web Development Bootcamp', tecnologia_programacion, 62, 62.475).
curso('100 Days of Code: The Complete Python Pro Bootcamp', tecnologia_programacion, 58.5, 87.475).
curso('The Web Developer Bootcamp 2024', tecnologia_programacion, 74, 112.475).
curso('React - The Complete Guide 2024 (incl. React Router & Redux)', tecnologia_programacion, 68.5, 112.475).
curso('The Complete JavaScript Course 2024: From Zero to Expert!', tecnologia_programacion, 68.5, 112.475).
curso('Angular - The Complete Guide (2024 Edition)', tecnologia_programacion, 36.5, 87.475).
curso('Java 17 Masterclass: Start Coding in 2024', tecnologia_programacion, 138, 87.475).
curso('Machine Learning A-Z: AI, Python & R + ChatGPT Prize [2024]', tecnologia_programacion, 42.5, 87.475).
curso('Python for Data Science and Machine Learning Bootcamp', tecnologia_programacion, 25, 87.475).
curso('The Data Science Course: Complete Data Science Bootcamp 2024', tecnologia_programacion, 32, 87.475).
curso('Selenium WebDriver with Java -Basics to Advanced+Frameworks', tecnologia_programacion, 55.5, 112.475).
curso('Automate the Boring Stuff with Python Programming', tecnologia_programacion, 9.5, 87.475).
curso('Build Responsive Real-World Websites with HTML and CSS', tecnologia_programacion, 37.5, 87.475).
curso('Complete C# Unity Game Developer 2D', tecnologia_programacion, 18.5, 87.475).
curso('Learn Python Programming Masterclass', tecnologia_programacion, 64, 112.475).
curso('Programming Languages, Part A', tecnologia_programacion, 55, 106).
curso('Advanced SQL : The Ultimate Guide (2024)', tecnologia_programacion, 14, 130).
curso('Learn DevOps: Advanced Kubernetes Usage', tecnologia_programacion, 34, 69).
curso('Sprint Boot for Software Engineers', tecnologia_programacion, 6.5, 64).
curso('Mastering Go Programming', tecnologia_programacion, 20, 199).
curso('Java Programming: Principles of Software Design', tecnologia_programacion, 96, 128).

% Cursos de Negocios y Emprendimiento
curso('Business English: Finance and Economics', negocios_emprendimiento, 70, 203).
curso('Productividad Empresarial con IA: ChatGPT', negocios_emprendimiento, 54, 168).
curso('Secretos del Marketing Digital Orgánico en Redes Sociales.', negocios_emprendimiento, 6.8, 219.9).
curso('Curso de Shopify tienda online con Dropshipping VIP', negocios_emprendimiento, 21, 229.9).
curso('Máster en Programación Neurolingüística, PNL nivel Avanzado', negocios_emprendimiento, 10, 299.9).
curso('Transformación Digital para Empresas y Profesionales.', negocios_emprendimiento, 16.5, 209.9).
curso('Gen AI in Cybersecurity', negocios_emprendimiento, 47, 126).
curso('Conclusão do Marketing de Mídias Sociais', negocios_emprendimiento, 48, 100).
curso('Introdução ao marketing de mídias sociais', negocios_emprendimiento, 95, 55).
curso('Veiculação de anúncios com o Meta', negocios_emprendimiento, 41, 11).

% Cursos de Idiomas
curso('Chino básico: Cómo dar una primera impresión positiva', idiomas, 18, 185).
curso('Gramática Espanhola - do Básico ao Avançado', idiomas, 38.5, 64).
curso('Curso online preparación del título oficial de inglés C1', idiomas, 5.6, 189.9).
curso('English Grammar Launch: Upgrade your speaking and listening', idiomas, 8, 189.9).
curso('Customer Service English Essentials', idiomas, 7, 209.9).
curso('Learn German Language: Complete German Course - Beginners', idiomas, 17, 209.9).
curso('Learn English: The Next Gen Guide to English Grammar', idiomas, 2, 64.9).
curso('English Grammar - Tenses and verb structures', idiomas, 1.5, 69.9).

% Cursos de Arte y Diseño
curso('Producción Musical y su Efecto en la Composición', arte_diseno, 39, 21).
curso('Desarrollando tu musicalidad', arte_diseno, 71, 188).
curso('Introducción a la producción de música', arte_diseno, 5, 199).
curso('Proyecto final de Músico moderno', arte_diseno, 49, 79).
curso('ART of the MOOC: Arte Público y Pedagogía', arte_diseno, 59, 216).

% Reglas de inferencia basadas en las preferencias del usuario
recomendar(Curso, Categoria, DuracionMaxima, CostoMaximo) :-
    curso(Curso, Categoria, Duracion, Costo),
    Duracion =< DuracionMaxima,
    Costo =< CostoMaximo.

% Manera de consultar: sugerir(X)