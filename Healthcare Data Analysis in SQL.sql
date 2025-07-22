create database healthcare;
use healthcare;

select * from patients;
select * from appointments;
select * from billing;
select * from doctors;
select * from prescriptions;

-- Get all appointments for a specific patient 
select * from appointments
where patient_id=1;

-- Retrive all prescriptions for a specific appointment 
select * from prescriptions
where appointment_id=1;

-- Get Billing information for specific appointment 
select * from billing
where appointment_id=2;

-- List all appointments with billing status
select a.appointment_id,p.first_name as patient_first_name,p.last_name as patient_last_name,
d.first_name as doctor_first_name,d.last_name as doctor_last_name,b.amount,b.payment_date,b.status
from appointments a
join patients p on a.patient_id=p.patient_id
join doctors d on a.doctor_id=d.doctor_id
join billing b on a.appointment_id=b.appointment_id;

-- Find all paid Billing
select * from billing
where status='paid';

-- Calculate total amount billed and total paid amount 
select (select sum(amount) from billing) as total_billed,
(select sum(amount) from billing where status='paid') as total_paid;

-- Get number of appointments by speciality 
select d.specialty,count(a.appointment_id) as number_of_apppointments
from appointments a
join doctors d on a.doctor_id=d.doctor_id
group by d.specialty;

-- Find the most common reasons for appointments
select reason,count(*) as count
from appointments 
group by reason
order by count desc;

-- List patients with their latest appointment date
select p.patient_id,p.first_name,p.last_name,max(a.appointment_date) as latest_appointment
from patients p
join appointments a on p.patient_id=a.patient_id
group by p.patient_id,p.first_name,p.last_name;

-- List all doctors and the number of appointments they had 
select d.doctor_id,d.first_name,d.last_name,count(a.appointment_id) as number_of_appointments
from doctors d
left join appointments a on d.doctor_id=a.doctor_id
group by d.doctor_id,d.first_name,d.last_name
order by number_of_appointments desc;

-- Retrieve patients who had appointments in the last 30 days
select pr.prescription_id,pr.medication,pr.dosage,pr.instructions 
from prescriptions pr
join appointments a on pr.appointment_id=a.appointment_id
join billing b on a.appointment_id=b.appointment_id
where b.status='pending'
order by pr.dosage;




