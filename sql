use crimemanagement;
show tables;
+---------------------------+
| Tables_in_crimemanagement |
+---------------------------+
| evidence                  |
| incident                  |
| lawenforcementagencies    |
| officer                   |
| report                    |
| suspect                   |
| victim                    |
+---------------------------+
mysql> select * from evidence;
+------------+-------------------------------+------------------------+------------+
| EvidenceID | Description                   | LocationFound          | IncidentID |
+------------+-------------------------------+------------------------+------------+
|          1 | CCTV footage from nearby shop | Shop No. 34, CP Market |          1 |
+------------+-------------------------------+------------------------+------------+
1 row in set (0.06 sec)
select * from incident;

mysql> select * from lawenforcementagencies;
+----------+-------------------------+---------------+------------------------+
| AgencyID | AgencyName              | Jurisdiction  | ContactInfo            |
+----------+-------------------------+---------------+------------------------+
|        1 | Delhi Police Department | Central Delhi | contact@dp.in, 011-100 |
+----------+-------------------------+---------------+------------------------+
1 row in set (0.10 sec)



mysql> select * from officer;
+-----------+-----------+----------+-------------+-----------+----------------------------------------+----------+
| OfficerID | FirstName | LastName | BadgeNumber | Rank      | ContactInfo                            | AgencyID |
+-----------+-----------+----------+-------------+-----------+----------------------------------------+----------+
|         1 | Arjun     | Verma    | DP1234      | Inspector | arjun.verma@delhipolice.in, 9988776655 |        1 |
+-----------+-----------+----------+-------------+-----------+----------------------------------------+----------+
1 row in set (0.01 sec)

mysql> select * from report;
+----------+------------+------------------+------------+-----------------------------------------------+-----------+
| ReportID | IncidentID | ReportingOfficer | ReportDate | ReportDetails                                 | Status    |
+----------+------------+------------------+------------+-----------------------------------------------+-----------+
|        1 |          1 |                1 | 2025-04-16 | Initial FIR registered by Officer Arjun Verma | Draft     |
|        2 |          2 |                1 | 2003-10-23 | William born that day                         | Finalized |
+----------+------------+------------------+------------+-----------------------------------------------+-----------+
2 rows in set (0.01 sec)


mysql> select * from suspect;
+-----------+-----------+----------+-------------+--------+-------------------------------------+
| SuspectID | FirstName | LastName | DateOfBirth | Gender | ContactInfo                         |
+-----------+-----------+----------+-------------+--------+-------------------------------------+
|         1 | Priya     | Kumar    | 1992-07-25  | Female | 78 Nehru Street, Mumbai, 8765432109 |
+-----------+-----------+----------+-------------+--------+-------------------------------------+
1 row in set (0.01 sec)

mysql> select * from victim;
+----------+-----------+----------+-------------+--------+-------------------------------+
| VictimID | FirstName | LastName | DateOfBirth | Gender | ContactInfo                   |
+----------+-----------+----------+-------------+--------+-------------------------------+
|        1 | Ravi      | Sharma   | 1985-03-12  | Male   | 12 MG Road, Delhi, 9876543210 |
+----------+-----------+----------+-------------+--------+-------------------------------+
1 row in set (0.00 sec)

mysql> select * from report where status="finalized";
+----------+------------+------------------+------------+-----------------------+-----------+
| ReportID | IncidentID | ReportingOfficer | ReportDate | ReportDetails         | Status    |
+----------+------------+------------------+------------+-----------------------+-----------+
|        2 |          2 |                1 | 2003-10-23 | William born that day | Finalized |
+----------+------------+------------------+------------+-----------------------+-----------+
1 row in set (0.00 sec)
