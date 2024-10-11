insert into tb_users values
(
	'4ac94bbf-e80e-48ec-a79e-112755c01f26',
	'31559509864',
	CURRENT_TIMESTAMP,
	'raphael.segalla@gmail.com',
	'Raphael Fernando Pimentel Segalla',
	'imagem_teste',
	CURRENT_TIMESTAMP,
	'416424',
	'12996586115',
	'ACTIVE',
	'STUDENT',
	'rsegalla'
);

insert into tb_users values
(
	'80bc76fd-fc0d-44b6-a8f6-c37b8da265a7',
	'59777126000',
	CURRENT_TIMESTAMP,
	'thaina.segalla@gmail.com',
	'Thaina Liberato Segalla',
	'imagem_teste',
	CURRENT_TIMESTAMP,
	'416424',
	'12956789523',
	'ACTIVE',
	'STUDENT',
	'tsegalla'
);

insert into tb_users values
(
	'de8d3267-15f8-4046-890e-286f54e23481',
	'33269517874',
	CURRENT_TIMESTAMP,
	'alessandra.segalla@gmail.com',
	'Alessandra Liberato Segalla',
	'imagem_teste',
	CURRENT_TIMESTAMP,
	'416424',
	'12996012265',
	'ACTIVE',
	'STUDENT',
	'asegalla'
);

insert into tb_users_courses values ('3c6e7d9b-e90a-4b1d-9348-3d06b2b899a6', '5930ec8f-ec0e-4a81-a581-b899b4474323', '4ac94bbf-e80e-48ec-a79e-112755c01f26');
insert into tb_users_courses values ('7bf73e9d-32cc-4b0b-a4f2-186a729cc3da', '5930ec8f-ec0e-4a81-a581-b899b4474323', '80bc76fd-fc0d-44b6-a8f6-c37b8da265a7');
insert into tb_users_courses values ('6e000ef7-92fb-4454-a42f-c5ee2dd9ee03', 'db97a33e-c9fa-4225-9c0f-56a15907074c', '4ac94bbf-e80e-48ec-a79e-112755c01f26');