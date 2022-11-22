/* 
The goal is to identify:
1) Who the thief is,
2) What city the thief escaped to, and
3) Who the thief’s accomplice is who helped them escape
All we know is that the theft took place on July 28, 2021 and that it took place on Humphrey Street. */

/* Info gathered:
- July 28, 2021
- Humphrey Street bakery
- Robbed at 10:15 am
- 3 witnesses
- Ruth says: Sometime within ten minutes of the theft, I saw the thief get into a car in the bakery parking
lot and drive away. If you have security footage from the bakery parking lot,
you might want to look for cars that left the parking lot in that time frame.

- Security footage from the parking lot:
| 260 | 2021 | 7     | 28  | 10   | 16     | exit     | 5P2BI95       |
| 261 | 2021 | 7     | 28  | 10   | 18     | exit     | 94KL13X       |
| 262 | 2021 | 7     | 28  | 10   | 18     | exit     | 6P58WS2       |
| 263 | 2021 | 7     | 28  | 10   | 19     | exit     | 4328GD8       |
| 264 | 2021 | 7     | 28  | 10   | 20     | exit     | G412CB7       |
| 265 | 2021 | 7     | 28  | 10   | 21     | exit     | L93JTIZ       |
| 266 | 2021 | 7     | 28  | 10   | 23     | exit     | 322W7JE       |
| 267 | 2021 | 7     | 28  | 10   | 23     | exit     | 0NTHK55       |

- Names for people with number plates above:
+--------+---------+----------------+-----------------+---------------+
|   id   |  name   |  phone_number  | passport_number | license_plate |
+--------+---------+----------------+-----------------+---------------+
| 221103 | Vanessa | (725) 555-4692 | 2963008352      | 5P2BI95       |
| 243696 | Barry   | (301) 555-4174 | 7526138472      | 6P58WS2       |
| 396669 | Iman    | (829) 555-5269 | 7049073643      | L93JTIZ       |
| 398010 | Sofia   | (130) 555-0289 | 1695452385      | G412CB7       |
| 467400 | Luca    | (389) 555-5198 | 8496433585      | 4328GD8       |
| 514354 | Diana   | (770) 555-1861 | 3592750733      | 322W7JE       |
| 560886 | Kelsey  | (499) 555-9472 | 8294398571      | 0NTHK55       |
| 686048 | Bruce   | (367) 555-5533 | 5773159633      | 94KL13X       |
| 745650 | Sophia  | (027) 555-1068 | 3642612721      | 13FNH73       |
+--------+---------+----------------+-----------------+---------------+


- Eugene says: I don't know the thief's name, but it was someone I recognized.
Earlier this morning, before I arrived at Emma's bakery, I was walking by the ATM on Leggett Street
and saw the thief there withdrawing some money.

- ATM transactions from Leggett Street on July 28th 2021:
| id  | account_number | year | month | day |  atm_location  | transaction_type | amount |
+-----+----------------+------+-------+-----+----------------+------------------+--------+
| 246 | 28500762       | 2021 | 7     | 28  | Leggett Street | withdraw         | 48     |
| 264 | 28296815       | 2021 | 7     | 28  | Leggett Street | withdraw         | 20     |
| 266 | 76054385       | 2021 | 7     | 28  | Leggett Street | withdraw         | 60     |
| 267 | 49610011       | 2021 | 7     | 28  | Leggett Street | withdraw         | 50     |
| 269 | 16153065       | 2021 | 7     | 28  | Leggett Street | withdraw         | 80     |
| 275 | 86363979       | 2021 | 7     | 28  | Leggett Street | deposit          | 10     |
| 288 | 25506511       | 2021 | 7     | 28  | Leggett Street | withdraw         | 20     |
| 313 | 81061156       | 2021 | 7     | 28  | Leggett Street | withdraw         | 30     |
| 336 | 26013199       | 2021 | 7     | 28  | Leggett Street | withdraw         | 35     |

- Check out names of people with the account numbers above:
+---------+
|  name   |
+---------+
| Kenny   |
| Iman    |
| Benista |
| Taylor  |
| Brooke  |
| Luca    |
| Diana   |
| Bruce   |
| Kaelyn  |
+---------+

- Raymond says: As the thief was leaving the bakery, they called someone who talked to them for less than a minute.
In the call, I heard the thief say that they were planning to take the earliest flight out of Fiftyville tomorrow.
The thief then asked the person on the other end of the phone to purchase the flight ticket.

- Phone call records on July 28th with less than 70 seconds duration:
+-----+----------------+----------------+------+-------+-----+----------+
| id  |     caller     |    receiver    | year | month | day | duration |
+-----+----------------+----------------+------+-------+-----+----------+
| 221 | (130) 555-0289 | (996) 555-8899 | 2021 | 7     | 28  | 51       |
| 224 | (499) 555-9472 | (892) 555-8872 | 2021 | 7     | 28  | 36       |
| 233 | (367) 555-5533 | (375) 555-8161 | 2021 | 7     | 28  | 45       |
| 234 | (609) 555-5876 | (389) 555-5198 | 2021 | 7     | 28  | 60       |
| 240 | (636) 555-4198 | (670) 555-8598 | 2021 | 7     | 28  | 69       |
| 251 | (499) 555-9472 | (717) 555-1342 | 2021 | 7     | 28  | 50       |
| 254 | (286) 555-6063 | (676) 555-6554 | 2021 | 7     | 28  | 43       |
| 255 | (770) 555-1861 | (725) 555-3243 | 2021 | 7     | 28  | 49       |
| 260 | (669) 555-6918 | (971) 555-6468 | 2021 | 7     | 28  | 67       |
| 261 | (031) 555-6622 | (910) 555-3251 | 2021 | 7     | 28  | 38       |
| 271 | (751) 555-6567 | (594) 555-6254 | 2021 | 7     | 28  | 61       |
| 279 | (826) 555-1652 | (066) 555-9701 | 2021 | 7     | 28  | 55       |
| 281 | (338) 555-6650 | (704) 555-2131 | 2021 | 7     | 28  | 54       |
+-----+----------------+----------------+------+-------+-----+----------+

- Names of callers from the list above:
+---------+
|  name   |
+---------+
| Kenny   |
| Sofia   |
| Benista |
| Taylor  |
| Diana   |
| Kelsey  |
| Kathryn |
| Peter   |
| Bruce   |
| Jason   |
| Harold  |
| Carina  |
+---------+

- Names of receivers from the list above:
+------------+
|    name    |
+------------+
| James      |
| Larry      |
| Luca       |
| Anna       |
| Jack       |
| Melissa    |
| Ethan      |
| Jacqueline |
| Daniel     |
| Philip     |
| Robin      |
| Amy        |
| Doris      |
+------------+

- airports in Fiftyville:
+----+--------------+-----------------------------+------------+
| id | abbreviation |          full_name          |    city    |
+----+--------------+-----------------------------+------------+
| 8  | CSF          | Fiftyville Regional Airport | Fiftyville |
+----+--------------+-----------------------------+------------+

- Flight records on July 29th:
+----+-------------------+------------------------+------+-------+-----+------+--------+
| id | origin_airport_id | destination_airport_id | year | month | day | hour | minute |
+----+-------------------+------------------------+------+-------+-----+------+--------+
| 18 | 8                 | 6                      | 2021 | 7     | 29  | 16   | 0      |
| 23 | 8                 | 11                     | 2021 | 7     | 29  | 12   | 15     |
| 36 | 8                 | 4                      | 2021 | 7     | 29  | 8    | 20     |
| 43 | 8                 | 1                      | 2021 | 7     | 29  | 9    | 30     |
| 53 | 8                 | 9                      | 2021 | 7     | 29  | 15   | 20     |
+----+-------------------+------------------------+------+-------+-----+------+--------+

- The earliest flight out of Fiftyville is at 08:20 am on July 29th 2021.

- Passport info for passengers of flight 36:
+-----------+-----------------+------+
| flight_id | passport_number | seat |
+-----------+-----------------+------+
| 36        | 7214083635      | 2A   |
| 36        | 1695452385      | 3B   |
| 36        | 5773159633      | 4A   |
| 36        | 1540955065      | 5C   |
| 36        | 8294398571      | 6C   |
| 36        | 1988161715      | 6D   |
| 36        | 9878712108      | 7A   |
| 36        | 8496433585      | 7B   |
+-----------+-----------------+------+
- Names of people listed above:
+--------+
|  name  |
+--------+
| Kenny  |
| Sofia  |
| Taylor |
| Luca   |
| Kelsey |
| Edward |
| Bruce  |
| Doris  |


- PUTTING IT ALL TOGETHER.
What we know about the thief.
The info on the thief would overlap as we have their data on:
name TEXT, phone_number TEXT, passport_number INTEGER,license_plate TEXT.

- The thief is Bruce. His flight was to destination airport 4, which is New York City.
The accomplice is the person Bruce called, Robin.
*/

-- Have a look at the crime scene reports
SELECT *
FROM crime_scene_reports
limit 10;

SELECT *
FROM crime_scene_reports
WHERE month = 7;

-- Check out interviews table
SELECT *
FROM interviews
Limit 10;

SELECT name, year, month, day, transcript
FROM interviews
WHERE year = 2021
AND transcript LIKE "%bakery%";

/* Analyse Ruth's statement: Sometime within ten minutes of the theft, I saw the thief get into a car in the bakery parking
lot and drive away. If you have security footage from the bakery parking lot,
you might want to look for cars that left the parking lot in that time frame. */
-- Check out bakery security logs
SELECT *
FROM bakery_security_logs
WHERE year = 2021
AND month = 7
AND day = 28
AND hour > 9
AND hour < 11
AND minute > 10
AND minute < 35;

/* Analyse Eugene's statement:
I don't know the thief's name, but it was someone I recognized.
Earlier this morning, before I arrived at Emma's bakery, I was walking by the ATM on Leggett Street
and saw the thief there withdrawing some money. */

-- CHeck out ATM records
SELECT *
FROM atm_transactions
WHERE year = 2021
AND month = 7
AND day = 28
AND atm_location LIKE "%Leggett%";

/* Analyse Raymond's statement:
Raymond says: As the thief was leaving the bakery, they called someone who talked to them for less than a minute.
In the call, I heard the thief say that they were planning to take the earliest flight out of Fiftyville tomorrow.
The thief then asked the person on the other end of the phone to purchase the flight ticket. */

-- Check out phone calls table
SELECT *
FROM phone_calls
WHERE year = 2021
AND month = 7
AND day = 28
AND duration < 70;

-- Check out airports in Fiftyville
SELECT *
FROM airports
WHERE city = "Fiftyville";

-- Check out flights from Fiftyville airport
SELECT *
FROM flights
WHERE origin_airport_id = 8
AND year = 2021
AND month = 7
AND day = 29;

/* Now time to connect the dots somehow */

-- Check out names of people with selected number plates
SELECT *
FROM people
WHERE license_plate IN
    (SELECT license_plate
    FROM bakery_security_logs
    WHERE year = 2021
    AND month = 7
    AND day = 28
    AND hour > 9
    AND hour < 11
    AND minute > 10
    AND minute < 35);

-- Check out names of people with the account numbers above:
SELECT name
FROM people
WHERE id IN
    (SELECT person_id
    FROM bank_accounts
    WHERE account_number IN
        (SELECT account_number
        FROM atm_transactions
        WHERE year = 2021
        AND month = 7
        AND day = 28
        AND atm_location LIKE "%Leggett%"));

-- Check out names of callers from phone call records on July 28th with less than 70 seconds duration:
SELECT name
FROM people
WHERE phone_number IN
    (SELECT caller
    FROM phone_calls
    WHERE year = 2021
    AND month = 7
    AND day = 28
    AND duration < 70);

-- Check out names of receivers from phone call records on July 28th with less than 70 seconds duration:
SELECT name
FROM people
WHERE phone_number IN
    (SELECT receiver
    FROM phone_calls
    WHERE year = 2021
    AND month = 7
    AND day = 28
    AND duration < 70);


-- CHeck out passengers for flight id 36 at 08:20,
SELECT *
FROM passengers
WHERE flight_id = 36;

-- Figure out the name of passengers of flight id 36 at 08:20 based on passport number
SELECT name
FROM people
WHERE passport_number IN
    (SELECT passport_number
    FROM passengers
    WHERE flight_id = 36);

-- Figure out the thief:
SELECT name
FROM people
WHERE passport_number IN
    (SELECT passport_number
    FROM passengers
    WHERE flight_id = 36)
    AND phone_number IN
        (SELECT caller
        FROM phone_calls
        WHERE year = 2021
        AND month = 7
        AND day = 28
        AND duration < 70)
        AND id IN
            (SELECT person_id
            FROM bank_accounts
            WHERE account_number IN
                (SELECT account_number
                FROM atm_transactions
                WHERE year = 2021
                AND month = 7
                AND day = 28
                AND atm_location LIKE "%Leggett%"))
                AND license_plate IN
                    (SELECT license_plate
                    FROM bakery_security_logs
                    WHERE year = 2021
                    AND month = 7
                    AND day = 28
                    AND hour > 9
                    AND hour < 11
                    AND minute > 10
                    AND minute < 35);
-- The thief is Bruce.

-- Figure out his destination airport 4
SELECT city
FROM airports
WHERE id = 4;
-- Bruce flew to New York City.

-- Figure out who did Bruce call
SELECT phone_number
FROM people
WHERE name = "Bruce";

SELECT name
FROM people
WHERE phone_number IN
    (SELECT receiver
    FROM phone_calls
    WHERE caller IN
        (SELECT phone_number
        FROM people
        WHERE name = "Bruce"
        AND year = 2021
        AND month = 7
        AND day = 28
        AND duration < 70));
-- Bruce called Robin
