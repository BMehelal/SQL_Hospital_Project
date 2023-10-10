
-- Patients Table
-- Table Name: patients
-- Description: This table stores information about patients.
-- Fields:
-- patient_id (Primary Key): Unique identifier for each patient.
-- first_name: First name of the patient.
-- last_name: Last name of the patient.
-- insurance: Type of insurance the patient has.
-- DOB: Date of birth of the patient.
-- email: Email address of the patient.
-- address: Address of the patient.
-- phone_number: Phone number of the patient.
-- gender: Gender of the patient.

CREATE TABLE
    patients (
        patient_id INT PRIMARY KEY,
        first_name VARCHAR(20),
        last_name VARCHAR(20),
        insurance VARCHAR(20),
        DOB DATE,
        email VARCHAR(40),
        address VARCHAR(40),
        phone_number VARCHAR(15),
        gender VARCHAR(1)
    );

-- Doctors Table
-- Table Name: doctors
-- Description: This table stores information about doctors.
-- Fields:
-- doctor_id (Primary Key): Unique identifier for each doctor.
-- first_name: First name of the doctor.
-- last_name: Last name of the doctor.
-- email: Email address of the doctor.
-- phone_number: Phone number of the doctor.
-- specialization: Medical specialization of the doctor.
-- gender: Gender of the doctor.
CREATE TABLE
    doctors (
        doctor_id INT PRIMARY KEY,
        first_name VARCHAR(20),
        last_name VARCHAR(20),
        email VARCHAR(40),
        phone_number VARCHAR(15),
        specialization VARCHAR(20),
        gender VARCHAR(1)
    );
-- Appointments Table
-- Table Name: appointments
-- Description: This table stores information about patient appointments with doctors.
-- Fields:
-- appt_id (Primary Key): Unique identifier for each appointment.
-- appt_date: Date of the appointment.
-- appt_time: Time of the appointment.
-- status: Status of the appointment (e.g., Scheduled, Completed).
-- patient_id (Foreign Key): References the 'patients' table to link to the patient.
-- doctor_id (Foreign Key): References the 'doctors' table to link to the doctor.
CREATE TABLE
    appointments (
        appt_id INT PRIMARY KEY,
        appt_date DATE,
        appt_time TIME,
        status VARCHAR(20),
        patient_id INT,
        doctor_id INT,
        FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
        FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) ON DELETE CASCADE
    );
-- Medical Records Table
-- Table Name: medical_records
-- Description: This table stores medical records for patients.
-- Fields:
-- record_id (Primary Key): Unique identifier for each medical record.
-- prescriptions: Prescriptions for the patient.
-- diagnose: Diagnosis for the patient.
-- patient_id (Foreign Key): References the 'patients' table to link to the patient.
-- doctor_id (Foreign Key): References the 'doctors table' to link to the doctor.
CREATE TABLE
    medical_records (
        record_id INT PRIMARY KEY,
        prescriptions VARCHAR(20),
        diagnose VARCHAR(20),
        patient_id INT,
        doctor_id INT,
        FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
        FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) ON DELETE CASCADE
    );
-- Billing Table
-- Table Name: billing
-- Description: This table stores billing information for appointments.
-- Fields:
-- billing_id (Primary Key): Unique identifier for each billing record.
-- bill_date: Date of the bill.
-- payment_status: Payment status (e.g., Completed, Incomplete).
-- total_amount: Total amount to be paid.
-- patient_id (Foreign Key): References the 'patients' table to link to the patient.
-- doctor_id (Foreign Key): References the 'doctors' table to link to the doctor.
CREATE TABLE
    billing(
        billing_id INT PRIMARY KEY,
        bill_date DATE,
        payment_status VARCHAR(20),
        total_amount INT,
        patient_id INT,
        doctor_id INT,
        FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
        FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) ON DELETE CASCADE
    );
-- Rooms Table
-- Table Name: rooms
-- Description: This table tracks the status of patient rooms.
-- Fields:
-- room_id (Primary Key): Unique identifier for each room.
-- status: Status of the room (e.g., Occupied, Vacant).
-- patient_id (Foreign Key): References the 'patients' table to link to the patient.
CREATE TABLE
    rooms(
        room_id INT PRIMARY KEY,
        status VARCHAR(20),
        patient_id INT,
        FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE
    );

INSERT INTO patients
VALUES
(
        1000,
        'Honey',
        'Bean',
        'BlueCross',
        "2018-11-16",
        'honeybean@hotmail.com',
        '9701 North Military Drive
Canandaigua',
        '(275) 959-2036',
        'M'
    );

INSERT INTO patients
VALUES
(
        1001,
        'Arran',
        'Armstrong',
        'Nationwide',
        "1954-02-21",
        'arranarmstrong@hotmail.com',
        '127 Brookside Dr.
Terre Haute,',
        '(716) 224-2991',
        'M'
    );

INSERT INTO patients
VALUES
(
        1002,
        'Enzo',
        'Hernandez',
        'Liberty Mutual',
        "2005-07-13",
        'enzohernandez@hotmail.com',
        '7 Bayport Lane
Hopkinsville,',
        '(841) 901-4008',
        'M'
    );

INSERT INTO patients
VALUES
(
        1003,
        'Samira',
        'Haas',
        'WellPoint',
        "1965-03-05",
        'samirahaas@hotmail.com',
        '82 Lakeview Avenue
Millville',
        '(430) 284-5824',
        'F'
    );

INSERT INTO patients
VALUES
(
        1004,
        'Alissa',
        'Smith',
        'SafeAuto',
        "1943-02-3",
        'alissasmith@hotmail.com',
        '56 Campfire Road
Rock Hill',
        '(491) 285-8440',
        'F'
    );

INSERT INTO patients
VALUES
(
        1005,
        'Adil',
        'Sullivan',
        'AARP',
        "1944-05-12",
        'adilsullivan@hotmail.com',
        '155 E. Sulphur Springs Lane
Miamisburg',
        '(737) 769-0755',
        'F'
    );

INSERT INTO patients
VALUES
(
        1006,
        'Patrick',
        'Matthews',
        'New York Life',
        "1979-01-22",
        'patrickmattews@hotmail.com',
        '890 Bohemia Dr.
Goshen',
        '(949) 914-3282',
        'M'
    );

INSERT INTO patients
VALUES
(
        1007,
        'Alannah',
        'Santiago',
        'Allstate',
        "1956-10-09",
        'alannahsanitago@hotmail.com',
        '157 Johnson Rd.
Hummelstown',
        '(926) 633-9501',
        'F'
    );

INSERT INTO patients
VALUES
(
        1008,
        'Libby',
        'Glenn',
        'AXA',
        "1940-03-07",
        'libbyglenn@hotmail.com',
        '60 Squaw Creek St.
Muncie',
        '(306) 327-6305',
        'F'
    );

INSERT INTO patients
VALUES
(
        1009,
        'Maryam ',
        'Pena',
        'Nationwide',
        "1975-12-06",
        'maryampena@hotmail.com',
        '655 Wrangler Circle
North Royalton',
        '(461) 480-0451',
        'F'
    );

INSERT INTO doctors
VALUES
(
        2000,
        'Mohamed',
        'Giles',
        'mohamedgiles@hotmail.com',
        '(419) 275-1481',
        'pediatrics',
        'M'
    );

INSERT INTO doctors
VALUES
(
        2001,
        'Gwen',
        'Bruce',
        'gwenbruce@hotmail.com',
        '(265) 768-2440',
        'dermatology',
        'F'
    );

INSERT INTO doctors
VALUES
(
        2002,
        'Faiza',
        'Beard',
        'faizabeard@hotmail.com',
        '(257) 399-6482',
        'allergy',
        'F'
    );

select*from appointments;

INSERT INTO appointments
VALUES
(
        3000,
        '2023-11-15',
        '9:00:00',
        'Scheduled',
        1000,
        2001
    );

INSERT INTO appointments
VALUES
(
        3001,
        '2023-11-10',
        '10:00:00',
        'Scheduled',
        1001,
        2001
    );

INSERT INTO appointments
VALUES
(
        3002,
        '2023-11-09',
        '9:50:00',
        'Scheduled',
        1002,
        2001
    );

INSERT INTO appointments
VALUES
(
        3003,
        '2023-11-22',
        '9:00:00',
        'Scheduled',
        1003,
        2000
    );

INSERT INTO appointments
VALUES
(
        3004,
        '2023-10-15',
        '11:00:00',
        'Completed',
        1004,
        2000
    );

INSERT INTO appointments
VALUES
(
        3005,
        '2023-10-25',
        '12:40:00',
        'Completed',
        1005,
        2000
    );

INSERT INTO appointments
VALUES
(
        3006,
        '2023-10-17',
        '14:50:00',
        'Completed',
        1006,
        2002
    );

INSERT INTO appointments
VALUES
(
        3007,
        '2023-12-01',
        '13:20:00',
        'Scheduled',
        1007,
        2002
    );

INSERT INTO appointments
VALUES
(
        3008,
        '2023-11-13',
        '14:30:00',
        'Scheduled',
        1008,
        2002
    );

INSERT INTO appointments
VALUES
(
        3009,
        '2023-11-19',
        '12:10:00',
        'Scheduled',
        1009,
        2002
    );

INSERT INTO medical_records
VALUES
(
        3001,
        'cleansor',
        'acne',
        1000,
        2001
    );

INSERT INTO medical_records
VALUES
(
        3002,
        'exfoliate',
        'acne',
        1001,
        2001
    );

INSERT INTO medical_records
VALUES
(
        3003,
        'pimple patches',
        'acne',
        1002,
        2001
    );

INSERT INTO medical_records
VALUES
(
        3004,
        'food',
        'malnutrition',
        1003,
        2000
    );

INSERT INTO medical_records
VALUES
(
        3005,
        'iron-supplements',
        'anemia',
        1004,
        2000
    );

INSERT INTO medical_records
VALUES
(
        3006,
        'cough-suppressant',
        'bad cough',
        1005,
        2000
    );

INSERT INTO medical_records
VALUES
(
        3007,
        'Allegra',
        'allergies',
        1006,
        2002
    );

INSERT INTO medical_records
VALUES
(
        3008,
        'Claritin',
        'sneezing',
        1007,
        2002
    );

INSERT INTO medical_records
VALUES
(
        3009,
        'benadryl ',
        'hey-fever',
        1008,
        2002
    );

INSERT INTO medical_records
VALUES
(
        3010,
        'EpiPen',
        'allergic reaction',
        1009,
        2002
    );

INSERT INTO billing
VALUES
(
        4000,
        '2023-11-20',
        'Completed',
        100,
        1000,
        2001
    );

INSERT INTO billing
VALUES
(
        4001,
        '2023-11-23',
        'Incomplete',
        25,
        1001,
        2001
    );

INSERT INTO billing
VALUES
(
        4002,
        '2023-11-25',
        'Completed',
        75,
        1002,
        2001
    );

INSERT INTO billing
VALUES
(
        4003,
        '2023-11-17',
        'Incomplete',
        200,
        1003,
        2000
    );

INSERT INTO billing
VALUES
(
        4004,
        '2023-11-03',
        'Completed',
        250,
        1004,
        2000
    );

INSERT INTO billing
VALUES
(
        4005,
        '2023-11-20',
        'Incomplete',
        225,
        1005,
        2000
    );

INSERT INTO billing
VALUES
(
        4006,
        '2023-10-20',
        'Incomplete',
        335,
        1006,
        2002
    );

INSERT INTO billing
VALUES
(
        4007,
        '2023-11-27',
        'Completed',
        79,
        1007,
        2002
    );

INSERT INTO billing
VALUES
(
        4008,
        '2023-11-16',
        'Completed',
        122,
        1008,
        2002
    );

INSERT INTO billing
VALUES
(
        4009,
        '2023-10-31',
        'Incomplete',
        160,
        1009,
        2002
    );

INSERT INTO rooms VALUES(5000, 'Occupied', 1000);

INSERT INTO rooms VALUES(5001, 'Vacant', 1001);

INSERT INTO rooms VALUES(5002, 'Occupied', 1002);

INSERT INTO rooms VALUES(5003, 'Vacant', 1003);

INSERT INTO rooms VALUES(5004, 'Occupied', 1004);

INSERT INTO rooms VALUES(5005, 'Vacant', 1005);

INSERT INTO rooms VALUES(5006, 'Occupied', 1006);

INSERT INTO rooms VALUES(5007, 'Vacant', 1007);

INSERT INTO rooms VALUES(5008, 'Occupied', 1008);

INSERT INTO rooms VALUES(5009, 'Occupied', 1009);

-- Query 1
-- Purpose: Retrieve patient information along with their medical records, appointment details, billing information, and doctor information.
SELECT
    p.first_name AS FirstName,
    p.last_name AS LastName,
    d.first_name AS DoctorFirstName,
    d.last_name AS DoctorLastName,
    mr.prescriptions AS Prescription,
    mr.diagnose AS Diagnoses,
    a.appt_date AS AppointmentDate,
    a.appt_time AS AppointmentTime,
    a.status AS AppointmentStatus,
    b.bill_date AS BillDate,
    b.payment_status AS PaymentStatus,
    b.total_amount AS TotalAmount
FROM patients AS p
    JOIN medical_records AS mr ON p.patient_id = mr.patient_id
    JOIN appointments AS a ON p.patient_id = a.patient_id
    JOIN billing AS b ON p.patient_id = b.patient_id
    JOIN doctors AS d ON mr.doctor_id = d.doctor_id;

-- Query 2
-- Purpose: Retrieve patient appointment details for appointments with a specific doctor (Faiza Beard).
SELECT
    p.first_name AS FirstName,
    p.last_name AS LastName,
    d.first_name AS DoctorFirstName,
    d.last_name AS DoctorLastName,
    a.appt_date AS AppointmentDate,
    a.appt_time AS AppointmentTime,
    a.status AS AppointmentStatus
FROM patients AS p
    JOIN appointments AS a ON p.patient_id = a.patient_id
    JOIN doctors AS d ON a.doctor_id = d.doctor_id
where d.last_name = 'Beard';

-- Query 3
-- Purpose: Calculate the total amount of completed billing records.
SELECT
    SUM(billing.total_amount) AS TotalAmount
FROM billing
WHERE
    billing.payment_status = 'Completed';
-- Query 4
-- Purpose: Retrieve the count of appointments for each doctor, ordered by appointment count (descending).
SELECT
    d.first_name AS DoctorFirstName,
    d.last_name AS DoctorLastName,
    COUNT(a.appt_date) AS AppointmentCount
FROM doctors AS d
    LEFT JOIN appointments AS a ON d.doctor_id = a.doctor_id
GROUP BY
    d.first_name,
    d.last_name
ORDER BY AppointmentCount DESC;

-- Query 5
-- Purpose: Retrieve patient information for appointments that are completed and have incomplete billing records.
SELECT
    p.first_name AS FirstName,
    p.last_name AS LastName,
    a.status AS AppointmentStatus,
    b.payment_status AS PaymentStatus
FROM patients AS p
    JOIN appointments AS a ON p.patient_id = a.patient_id
    JOIN billing AS b ON p.patient_id = b.patient_id
WHERE
    a.status = 'Completed'
    AND b.payment_status = 'Incomplete';
-- Query 6
-- Purpose: Calculate the average occupancy rate for rooms.
SELECT
    AVG(
        CASE
            WHEN status = 'Occupied' THEN 1
            ELSE 0
        END
    ) AS AverageOccupancyRate
FROM rooms;