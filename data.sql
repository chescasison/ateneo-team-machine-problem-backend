insert into course values (nextval('course_id_generator'), 'MATH01', 'ADVANCE ALGEBRA', 3);
insert into course values (nextval('course_id_generator'), 'ENG1', 'ENGLISH 1', 3);
insert into course values (nextval('course_id_generator'), 'PROG1', 'PROGRAMMING 1', 3);

insert into degree values(nextval('degree_id_generator'),'BS CSSE');

insert into faculty values(1,'Diane Rivera','admin');

insert into room values(nextval('room_id_generator'));
insert into room values(nextval('room_id_generator'));
insert into room values(nextval('room_id_generator'));

insert into schedule values(nextval('schedule_id_generator'),1, '09:00:00', '07:00:00', 4, '09:00:00', '07:00:00');
insert into schedule values(nextval('schedule_id_generator'),2, '10:00:00', '07:00:00', null, null, null);

insert into section values(nextval('section_id_generator'),2,'C01');
insert into section values(nextval('section_id_generator'),2,'F01');

insert into student values(nextval('student_id_generator'),'Chesca Delos Reyes','student','continuing',1,2);
insert into student values(nextval('student_id_generator'),'Kim Perez','student','continuing',1,2);
insert into student values(nextval('student_id_generator'),'Meghan Markle','student','continuing',1,2);

insert into term values(nextval('term_id_generator'),'2020-01-01','2019-01-01',1);

insert into offered_course values(nextval('offered_course_id_generator'),4,4,3,3,1);
insert into offered_course values(nextval('offered_course_id_generator'),5,5,4,4,1);
