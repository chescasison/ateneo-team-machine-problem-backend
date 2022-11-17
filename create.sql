create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint courses_fk 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint degree_id_fk 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint offered_course_fk 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint student_id_fk 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint course_fk 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint room_fk 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint schedule_fk 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint section_fk 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint term_fk 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint degree_fk 
       foreign key (degree_program_id) 
       references degree;

create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
create sequence course_id_generator start 1 increment 50;
create sequence degree_id_generator start 1 increment 50;
create sequence faculty_id_generator start 1 increment 50;
create sequence offered_course_id_generator start 1 increment 50;
create sequence room_id_generator start 1 increment 50;
create sequence schedule_id_generator start 1 increment 50;
create sequence section_id_generator start 1 increment 50;
create sequence student_id_generator start 1 increment 50;
create sequence term_id_generator start 1 increment 50;

    create table course (
       id int4 not null,
        course_code varchar(255),
        course_description varchar(255),
        units int4 not null,
        primary key (id)
    );

    create table degree (
       id int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table degree_courses (
       degree_id int4 not null,
        courses_id int4 not null,
        primary key (degree_id, courses_id)
    );

    create table enrollment (
       id int4 not null,
        offered_course_id int4,
        student_id int4,
        primary key (id)
    );

    create table faculty (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        primary key (id)
    );

    create table offered_course (
       id int4 not null,
        course_id int4,
        room_id int4,
        schedule_id int4,
        section_id int4,
        term_id int4,
        primary key (id)
    );

    create table room (
       id int4 not null,
        primary key (id)
    );

    create table schedule (
       id int4 not null,
        day1 int4,
        day1end_time time,
        day1start_time time,
        day2 int4,
        day2end_time time,
        day2start_time time,
        primary key (id)
    );

    create table section (
       id int4 not null,
        number_of_seats int4 not null,
        section_code varchar(255),
        primary key (id)
    );

    create table student (
       id int4 not null,
        name varchar(255),
        role varchar(255),
        status varchar(255),
        year_level int4 not null,
        degree_program_id int4,
        primary key (id)
    );

    create table term (
       id int4 not null,
        end_year date,
        start_year date,
        term_number int4 not null,
        primary key (id)
    );

    alter table if exists degree_courses 
       add constraint UK_anwsifmuwd7s4lm92x9fup768 unique (courses_id);

    alter table if exists degree_courses 
       add constraint FKfmpu2mw4xsiotmc295ldftob7 
       foreign key (courses_id) 
       references course;

    alter table if exists degree_courses 
       add constraint FK5544r6mgjyeniyqywiewv4x5d 
       foreign key (degree_id) 
       references degree;

    alter table if exists enrollment 
       add constraint FKfi6i25osw72kvim6o17ibay6b 
       foreign key (offered_course_id) 
       references offered_course;

    alter table if exists enrollment 
       add constraint FKio7fsy3vhvfgv7c0gjk15nyk4 
       foreign key (student_id) 
       references student;

    alter table if exists offered_course 
       add constraint FK9cpvivtsec6hld3jn8ppuubs2 
       foreign key (course_id) 
       references course;

    alter table if exists offered_course 
       add constraint FKt0iw4j8n5xb4k7dqlhpegd23y 
       foreign key (room_id) 
       references room;

    alter table if exists offered_course 
       add constraint FKm520vsk40lk4q1pijqkm8duvm 
       foreign key (schedule_id) 
       references schedule;

    alter table if exists offered_course 
       add constraint FKl0of66d2uag4db9g8ehm5242d 
       foreign key (section_id) 
       references section;

    alter table if exists offered_course 
       add constraint FK884ivqr8aedm9y8g3s4rjhi70 
       foreign key (term_id) 
       references term;

    alter table if exists student 
       add constraint FKlrx0hx4rve4jc6srf4lmiwa30 
       foreign key (degree_program_id) 
       references degree;
