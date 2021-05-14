Create or replace trigger notnullmana
before insert on departments
for each row
begin
if :new.manager_id is null THEN
    Raise_application_error (-20100, 'No puede ser nulo');
    end if;
end notnullmana;

insert into departments values(420,'yoquese',null,1800);