# SQL_Hospital_Project

Small SQL database project encompassing 6 different tables, modeling some layouts of what might happen in a hospital. It uses 6 queries to retrieve important data about what might be important data in a hospital. 

### Patients Table ###
* Table Name: patients
* Description: This table stores information about patients.
* Fields:
* patient_id (Primary Key): Unique identifier for each patient.
* first_name: First name of the patient.
* last_name: Last name of the patient.
* insurance: Type of insurance the patient has.
* DOB: Date of birth of the patient.
* email: Email address of the patient.
* address: Address of the patient.
* phone_number: Phone number of the patient.
* gender: Gender of the patient.

 ### Doctors Table ###
 * Description: This table stores information about doctors.
* Fields:
* doctor_id (Primary Key): Unique identifier for each doctor.
* first_name: First name of the doctor.
* last_name: Last name of the doctor.
* email: Email address of the doctor.
* phone_number: Phone number of the doctor.
* specialization: Medical specialization of the doctor.
* gender: Gender of the doctor.

 ### Appointments Table ###
 * Description: This table stores information about patient appointments with doctors.
* Fields:
* appt_id (Primary Key): Unique identifier for each appointment.
* appt_date: Date of the appointment.
* appt_time: Time of the appointment.
* status: Status of the appointment (e.g., Scheduled, Completed).
* patient_id (Foreign Key): References the 'patients' table to link to the patient.
* doctor_id (Foreign Key): References the 'doctors' table to link to the doctor.\

### Medical Records Table ###
* Description: This table stores medical records for patients.
* Fields:
* record_id (Primary Key): Unique identifier for each medical record.
* prescriptions: Prescriptions for the patient.
* diagnose: Diagnosis for the patient.
* patient_id (Foreign Key): References the 'patients' table to link to the patient.
* doctor_id (Foreign Key): References the 'doctors table' to link to the doctor.
 ### Billing Table ###
 * Description: This table stores billing information for appointments.
* Fields:
* billing_id (Primary Key): Unique identifier for each billing record.
* bill_date: Date of the bill.
* payment_status: Payment status (e.g., Completed, Incomplete).
* total_amount: Total amount to be paid.
* patient_id (Foreign Key): References the 'patients' table to link to the patient.
* doctor_id (Foreign Key): References the 'doctors' table to link to the doctor.
### Rooms Table ###
* Description: This table tracks the status of patient rooms.
* Fields:
* room_id (Primary Key): Unique identifier for each room.
* status: Status of the room (e.g., Occupied, Vacant).
* patient_id (Foreign Key): References the 'patients' table to link to the patient.
### Query 1 ### 
* Purpose: Retrieve patient information along with their medical records, appointment details, billing information, and doctor information.
### Query 2 ### 
* Purpose: Retrieve patient appointment details for appointments with a specific doctor (Faiza Beard).
### Query 3 ### 
* Purpose: Calculate the total amount of completed billing records.
### Query 4 ### 
* Purpose: Retrieve the count of appointments for each doctor, ordered by appointment count (descending).
### Query 5 ### 
* Purpose: Retrieve patient information for appointments that are completed and have incomplete billing records.
### Query 6 ### 
-Purpose: Calculate the average occupancy rate for rooms.
