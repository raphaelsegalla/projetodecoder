insert into tb_courses values
(
	'5930ec8f-ec0e-4a81-a581-b899b4474323',
	'BEGINNER',
	'INPROGRESS',
	CURRENT_TIMESTAMP,
	'Curso de linux para iniciantes',
	'imagem_teste',
	CURRENT_TIMESTAMP,
	'Curso de linux',
	'9bd9dffe-5186-4643-b534-066154c56c24'
);

insert into tb_courses values
(
	'db97a33e-c9fa-4225-9c0f-56a15907074c',
	'BEGINNER',
	'INPROGRESS',
	CURRENT_TIMESTAMP,
	'Curso de Java para iniciantes',
	'imagem_teste',
	CURRENT_TIMESTAMP,
	'Curso de Java',
	'9bd9dffe-5186-4643-b534-066154c56c24'
);

insert into tb_courses values
(
	'59d1a261-e20e-432e-8147-702b45445fbf',
	'BEGINNER',
	'INPROGRESS',
	CURRENT_TIMESTAMP,
	'Curso de Spring Boot para experts',
	'imagem_teste',
	CURRENT_TIMESTAMP,
	'Curso de Spring Boot',
	'9bd9dffe-5186-4643-b534-066154c56c24'
);

insert into tb_courses_users values ('a9bfd577-fac8-4cc2-8fda-a96de6dae2b8', '80bc76fd-fc0d-44b6-a8f6-c37b8da265a7', '5930ec8f-ec0e-4a81-a581-b899b4474323');
insert into tb_courses_users values ('b1958899-3af5-4a8b-83cc-1cc714eb054d', 'de8d3267-15f8-4046-890e-286f54e23481', '5930ec8f-ec0e-4a81-a581-b899b4474323');
insert into tb_courses_users values ('83ed5902-40fa-4fa3-a3bf-34b19b01614d', 'de8d3267-15f8-4046-890e-286f54e23481', '59d1a261-e20e-432e-8147-702b45445fbf');