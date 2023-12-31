create table appliedvol(
    ap_no number(3) primary key,
    a_no number(3) not null,
    v_no number(3),
    ap_status varchar2(200 char),
    ap_title varchar2(200 char),
    ap_postdate Date,
    ap_img varchar2(300 char),
    ap_txt varchar2(5000 char),
    a_email varchar2(200 char)
);

create sequence appliedvol_seq;

insert into appliedvol values(appliedvol_seq.nextval, ?,?,?,?,?,?,?);

select * from appliedvol;

drop table appliedvol;

drop sequence appliedvol_seq;


