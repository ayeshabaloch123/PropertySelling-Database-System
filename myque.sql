select * from Property where type='flat';

select  MAX(Price) as LargestPrice ,State from Property where State = 'London' OR State = 'NewYork' Group By State;


select MIN(Price) as MinimumPrice , State from Property where State = 'London' Group By State;


select Top 1 COUNT(AgentId) as totalAppointment, AgentId   from Appointment Group By AgentId Order By AgentId DESC;


select Top 1  COUNT(CustomerId) as totalAppointment, CustomerId   from Appointment Group By CustomerId Order By CustomerId DESC;



SELECT Price FROM Property WHERE Price > (SELECT AVG(Price) FROM Property where State = 'Tokyo');
