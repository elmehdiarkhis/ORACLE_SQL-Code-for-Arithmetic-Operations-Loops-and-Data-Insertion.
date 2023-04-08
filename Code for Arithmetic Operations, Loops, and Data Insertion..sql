


SET SERVEROUTPUT ON
DECLARE
v_valueOne NUMBER(5):=&v_valueOne;
v_valueTwo NUMBER(5):=&v_valueTwo;
v_resultat NUMBER(10);
v_operator VARCHAR(10):='&v_operator';

BEGIN
if (v_operator='Addition')then
    v_resultat := v_valueOne+v_valueTwo;
    dbms_output.put_line(v_resultat);
elsif (v_operator='Soustraction')then
    v_resultat := v_valueOne-v_valueTwo;
    dbms_output.put_line(v_resultat);
elsif (v_operator='multiplication')then
    v_resultat := v_valueOne*v_valueTwo;
    dbms_output.put_line(v_resultat);
elsif (v_operator='division') AND (v_valueTwo <>0) then 
    v_resultat := v_valueOne/v_valueTwo;
    dbms_output.put_line(v_resultat);
elsif (v_operator='division') AND (v_valueTwo =0) then 
    dbms_output.put_line('division sur zero non accepter');
end if;
END;


SET SERVEROUTPUT ON
DECLARE
v_valueOne NUMBER(5):=&v_valueOne;
v_valueTwo NUMBER(5):=&v_valueTwo;
v_resultat NUMBER(10);
v_operator VARCHAR(10):='&v_operator';

BEGIN

CASE v_operator
  WHEN 'Addition' THEN
    v_resultat := v_valueOne+v_valueTwo;
    dbms_output.put_line(v_resultat);
    
  WHEN 'Soustraction' THEN
    v_resultat := v_valueOne-v_valueTwo;
    dbms_output.put_line(v_resultat);
    
    WHEN 'multiplication' THEN
    v_resultat := v_valueOne*v_valueTwo;
    dbms_output.put_line(v_resultat);
    
    WHEN 'division' THEN
    v_resultat := v_valueOne+v_valueTwo;
    dbms_output.put_line(v_resultat);  

 

END CASE;
END;





SET SERVEROUTPUT ON;
DECLARE
v_marque VARCHAR(10):='&v_marque';
v_nombreVelo NUMBER(10):=&v_nombreVelo;
v_index NUMBER(10):=1;

BEGIN
while v_index <= v_nombreVelo
    loop
       dbms_output.put_line(v_marque||v_index);
       v_index:=v_index+1;
    end loop;
END;







SET SERVEROUTPUT ON;
DECLARE
v_marque VARCHAR(10):='&v_marque';
v_nombreVelo NUMBER(10):=&v_nombreVelo;
v_index NUMBER(10);
BEGIN

for v_index in 1..v_nombreVelo
    loop
       dbms_output.put_line(v_marque||v_index);
       
       INSERT INTO VELO(code,marque)
       VALUES
       (v_marque||v_index,v_marque);
       
    end loop;
END;
