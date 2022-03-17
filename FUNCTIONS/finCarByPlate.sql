CREATE OR REPLACE FUNCTION findCarByPlate (p_plate car.plate%type)
    RETURN NUMBER
    is 
    p_car_id number;
    
    begin
        select car.car_id into p_car_id
        from car
        where car.plate = p_plate;
        return p_car_id;
        
        
        EXCEPTION
          when no_data_found THEN
          dbms_output.put_line('No such car');
          when others then 
          dbms_output.put_line('Error');
    end;


