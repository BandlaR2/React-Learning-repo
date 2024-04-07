----*****************************************
	--List unique district present in the address table
	-- it will retrieve distinct values
	--from the "district" column in the "address" table. 
	--*****************************************
	
	
	
create or replace function fn_distinct_address()
returns TABLE (district character varying(20))
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN query
    Select distinct a.district
    from address a;
END;
$$;

SELECT * FROM fn_distinct_address();



