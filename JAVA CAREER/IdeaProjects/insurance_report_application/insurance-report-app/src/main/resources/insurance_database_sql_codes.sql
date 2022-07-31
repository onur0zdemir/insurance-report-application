CREATE TABLE public.payment (

payment_id bigint NOT NULL,
policy_id bigint NOT NULL,
type_of_payment varchar NOT NULL,
payment_amount bigint NOT NULL,
payment_date date NOT NULL,
CONSTRAINT payment_pkey PRIMARY KEY (payment_id)

);

CREATE TABLE public.policy (

policy_id bigint NOT NULL,
type_of_insurance varchar(50) NOT NULL,
insurance_agency_id varchar(50) NOT NULL,
status varchar(50) NOT NULL,
policy_end_date date NOT NULL,
CONSTRAINT policy_pkey PRIMARY KEY(policy_id)

);

CREATE TABLE public.customer(

customer_id bigint NOT NULL,
customer_name varchar(50) NOT NULL,
customer_surname varchar(50) NOT NULL,
birth_date date NOT NULL,
email varchar(50) NOT NULL,
city varchar NOT NULL,
CONSTRAINT customer_pkey PRIMARY KEY(customer_id)

);

CREATE TABLE public.insurance_agency (
insurance_agency_id bigint NOT NULL,
insurance_agency_company_name varchar(50) NOT NULL,

CONSTRAINT insurance_agency_pkey PRIMARY KEY(insurance_agency_id)

);

CREATE TABLE public.customer_policy(
customer_policy_id bigint NOT NULL,
customer_id bigint NOT NULL,
policy_id bigint NOT NULL,

CONSTRAINT customer_policy_pkey PRIMARY KEY(customer_policy_id)
);




ALTER DATABASE "insurance_database" SET datestyle TO "ISO, DMY";  --Database date formatını değiştirmek için.





INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1001, 'Fatma', 'Acar', '21.01.1986', 'fatmaacar@gmail.com', 'İstanbul');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1002, 'Burak', 'Altın', '12.05.1985', 'burakaltin@gmail.com', 'İzmir');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1003, 'Emre', 'Aykanat', '25.02.1989', 'emreaykanat@gmail.com', 'Adana');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1004, 'Selin', 'Korsan', '13.06.1993', 'selinkorsan@gmail.com', 'İstanbul');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1005, 'Fatma', 'Korkmaz', '22.01.1981', 'fatmakorkmaz@gmail.com', 'Mersin');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1006, 'Mehmet', 'Gemici', '12.05.1993', 'mehmetgemici@gmail.com', 'Bartın');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1007, 'Atakan', 'Adanır', '21.03.1981', 'atakanadanir@gmail.com', 'İzmir');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1008, 'Müge', 'Ak', '15.07.1971', 'mugeak@gmail.com', 'Antalya');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1009, 'Sevinç', 'Ada', '03.01.1961', 'sevincada@gmail.com', 'Tunceli');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1010, 'Cihan', 'Akarpınar', '21.12.1981', 'cihanakarpinar@gmail.com', 'İstanbul');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1011, 'Mehmet', 'Akay', '26.01.1966', 'mehmetakay@gmail.com', 'Gaziantep');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1012, 'Servet', 'Çetin', '07.02.1983', 'servetcetin@gmail.com', 'Konya');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1013, 'Arda', 'Güler', '23.03.1976', 'ardaguler@gmail.com', 'Trabzon');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1014, 'Emre', 'Mor', '01.12.1986', 'emremor@gmail.com', 'İstanbul');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1015, 'Ercüment', 'Çözer', '18.11.1978', 'ercumentcozer@gmail.com', 'Ankara');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1016, 'Taylan', 'Antalyalı', '12.06.1991', 'taylanantalyali@gmail.com', 'Antalya');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1017, 'Harun', 'Sinanoğlu', '21.11.1994', 'harunsinanoglu@gmail.com', 'Ankara');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1018, 'Behzat', 'Çetin', '11.08.1975', 'behzatcetin@gmail.com', 'Isparta');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1019, 'Esra', 'Alıcı', '06.05.1969', 'esraalici@gmail.com', 'Mersin');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1020, 'Şahin', 'Nehir', '25.05.1976', 'sahinnehir@gmail.com', 'Artvin');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1021, 'Murat', 'Akman', '11.03.1991', 'muratakman@gmail.com', 'İstanbul');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1022, 'Serdar', 'Dursun', '10.01.1978', 'serdardursun@gmail.com', 'Adana');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1023, 'Cem', 'Kara', '19.02.1991', 'cemkara@gmail.com', 'Çanakkale');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1024, 'Ozan', 'Yılmaz', '25.05.1966', 'ozanyilmaz@gmail.com', 'Ankara');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1025, 'Deniz', 'Görür', '25.08.1963', 'denizgorur@gmail.com', 'İzmir');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1026, 'Esra', 'Nehir', '17.11.1959', 'esranehir@gmail.com', 'Ankara');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1027, 'Sevgi', 'Turşu', '03.07.1984', 'sevgitursu@gmail.com', 'Denizli');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1028, 'Gazi', 'Sevda', '27.12.1994', 'gazisevda@gmail.com', 'Antalya');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1029, 'Mahir', 'Kurtuluş', '09.12.1982', 'mahirkurtulus@gmail.com', 'Muğla');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1030, 'Nadir', 'Işık', '30.08.1995', 'nadirisik@gmail.com', 'Isparta');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1031, 'Onur', 'Kurultay', '06.09.1986', 'onurkurultay@gmail.com', 'Eskişehir');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1032, 'Merve', 'Aldı', '21.02.1982', 'mervealdi@gmail.com', 'Kayseri');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1033, 'Gizem', 'Derin', '11.02.1991', 'gizemderin@gmail.com', 'Gaziantep');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1034, 'Ecem', 'Akova', '29.05.1963', 'ecemakova@gmail.com', 'İstanbul');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1035, 'Hatice', 'Aksoy', '30.09.1992', 'haticeaksoy@gmail.com', 'Mersin');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1036, 'Senem', 'Altın', '21.11.1961', 'senemaltin@gmail.com', 'Osmaniye');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1037, 'Çisem', 'Ankara', '25.09.1971', 'cisemankara@gmail.com', 'Gaziantep');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1038, 'Tünay', 'Seyhan', '22.01.1993', 'tunayseyhan@gmail.com', 'Van');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1039, 'Tanju', 'Seymen', '30.03.1982', 'tanjuseymen@gmail.com', 'Ankara');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1040, 'Eser', 'Yorgun', '15.11.1991', 'eseryorgun@gmail.com', 'Eskişehir');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1041, 'Buse', 'Yudulmaz', '11.09.1973', 'buseyudulmaz@gmail.com', 'Bursa');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1042, 'Elif', 'Yurtsever', '03.04.1989', 'elifyurtsever@gmail.com', 'İzmir');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1043, 'Ali', 'Ünlü', '07.04.1991', 'aliunlu@gmail.com', 'Bursa');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1044, 'Berk', 'Yükselen', '25.09.1994', 'berkyukselen@gmail.com', 'Adana');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1045, 'Yusuf', 'Uzun', '11.12.1988', 'yusufuzun@gmail.com', 'Van');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1046, 'Ozan', 'Ulusoy', '10.03.1991', 'ozanulusoy@gmail.com', 'İstanbul');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1047, 'Yiğit', 'Türkoğlu', '20.06.1988', 'yigitturkoglu@gmail.com', 'Eskişehir');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1048, 'İpek', 'Şahin', '04.03.1980', 'ipeksahin@gmail.com', 'İstanbul');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1049, 'Emre', 'Su', '25.01.1971', 'emresu@gmail.com', 'Bursa');
INSERT INTO public.customer(customer_id, customer_name, customer_surname, birth_date, email, city) values (1050, 'Büşra', 'Selvi', '29.04.1990', 'busraselvi@gmail.com', 'Eskişehir');




INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(1, 'Konut', 10051, 'Active', '20.02.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(2, 'DASK', 10052, 'Active', '19.01.2023');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(3, 'Sağlık', 10053, 'Active', '29.11.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(4, 'Kasko', 10052, 'Active', '11.08.2025');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(5, 'Kasko', 10051, 'Inactive', '23.03.2021');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(6, 'DASK', 10054, 'Active', '06.05.2027');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(7, 'DASK', 10055, 'Active', '21.12.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(8, 'Kasko', 10053, 'Active', '30.07.2026');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(9, 'Kasko', 10054, 'Active', '18.12.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(10, 'Sağlık', 10051, 'Inactive', '20.12.2019');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(11, 'Kasko', 10055, 'Active', '01.01.2023');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(12, 'DASK', 10052, 'Inactive', '29.04.2017');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(13, 'Kasko', 10051, 'Active', '25.11.2028');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(14, 'Konut', 10053, 'Inactive', '12.04.2022');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(15, 'Kasko', 10054, 'Active', '20.08.2026');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(16, 'DASK', 10054, 'Inactive', '26.02.2020');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(17, 'Kasko', 10055, 'Active', '23.03.2028');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(18, 'Kasko', 10053, 'Active', '13.01.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(19, 'DASK', 10051, 'Active', '09.04.2023');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(20, 'Sağlık', 10052, 'Inactive', '22.05.2021');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(21, 'Kasko', 10054, 'Active', '17.05.2025');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(22, 'Konut', 10055, 'Active', '11.07.2027');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(23, 'Sağlık', 10052, 'Active', '19.11.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(24, 'DASK', 10051, 'Active', '03.12.2026');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(25, 'Sağlık', 10053, 'Inactive', '03.01.2022');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(26, 'DASK', 10052, 'Active', '21.06.2026');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(27, 'Kasko', 10052, 'Active', '22.12.2025');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(28, 'Konut', 10051, 'Active', '15.10.2029');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(29, 'Kasko', 10054, 'Inactive', '02.02.2022');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(30, 'Sağlık', 10055, 'Active', '29.07.2029');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(31, 'Kasko', 10053, 'Active', '08.04.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(32, 'Sağlık', 10052, 'Active', '16.11.2026');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(33, 'Konut', 10053, 'Active', '11.12.2026');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(34, 'DASK', 10055, 'Active', '28.03.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(35, 'Kasko', 10055, 'Inactive', '25.08.2019');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(36, 'Konut', 10051, 'Active', '07.05.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(37, 'Sağlık', 10053, 'Active', '24.04.2026');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(38, 'Kasko', 10052, 'Active', '19.11.2028');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(39, 'Sağlık', 10053, 'Inactive', '01.05.2016');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(40, 'Kasko', 10054, 'Inactive', '20.09.2018');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(41, 'Konut', 10054, 'Inactive', '07.12.2021');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(42, 'Konut', 10053, 'Active', '21.01.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(43, 'Sağlık', 10054, 'Active', '27.05.2025');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(44, 'Kasko', 10055, 'Inactive', '25.09.2019');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(45, 'Konut', 10051, 'Active', '15.10.2027');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(46, 'Kasko', 10052, 'Active', '11.02.2026');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(47, 'Sağlık', 10051, 'Inactive', '03.06.2015');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(48, 'DASK', 10054, 'Active', '05.11.2025');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(49, 'DASK', 10053, 'Inactive', '29.11.2013');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(50, 'Kasko', 10055, 'Active', '10.03.2024');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(51, 'Sağlık', 10055, 'Inactive', '30.07.2014');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(52, 'Konut', 10053, 'Active', '15.01.2023');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(53, 'Kasko', 10052, 'Inactive', '13.12.2013');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(54, 'DASK', 10054, 'Active', '26.04.2023');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(55, 'Konut', 10051, 'Active', '25.08.2025');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(56, 'Sağlık', 10051, 'Active', '21.03.2023');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(57, 'Konut', 10053, 'Inactive', '15.06.2021');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(58, 'Kasko', 10052, 'Inactive', '11.11.2020');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(59, 'Konut', 10054, 'Inactive', '03.01.2021');
INSERT INTO public.policy(policy_id, type_of_insurance, insurance_agency_id, status, policy_end_date) values(60, 'DASK', 10055, 'Active', '08.12.2024');


INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (101, 1, 'Cash', 3400, '20.02.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (102, 2, 'Debit Card', 2300, '19.01.2022');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (103, 3, 'Cash', 1600, '29.11.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (104, 4, 'Debit Card', 4700, '11.08.2024');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (105, 5, 'Debit Card', 3300, '23.03.2020');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (106, 6, 'Cash', 2300, '06.05.2026');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (107, 7, 'Debit Card', 2600, '21.12.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (108, 8, 'Cash', 4000, '30.07.2025');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (109, 9, 'Cash', 4900, '18.12.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (110, 10, 'Debit Card', 1500, '20.12.2018');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (111, 11, 'Debit Card', 3300, '01.01.2022');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (112, 12, 'Debit Card', 2100, '29.04.2016');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (113, 13, 'Debit Card', 2900, '25.11.2027');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (114, 14, 'Debit Card', 3600, '12.04.2021');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (115, 15, 'Cash', 3000, '20.08.2025');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (116, 16, 'Cash', 2400, '26.02.2019');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (117, 17, 'Debit Card', 3700, '23.03.2027');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (118, 18, 'Cash', 3700, '13.01.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (119, 19, 'Debit Card', 2600, '09.04.2022');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (120, 20, 'Debit Card', 2200, '22.05.2020');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (121, 21, 'Cash', 4400, '17.05.2024');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (122, 22, 'Cash', 3100, '11.07.2026');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (123, 23, 'Debit Card', 2500, '19.11.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (124, 24, 'Cash', 3000, '03.12.2025');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (125, 25, 'Debit Card', 2900, '03.01.2021');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (126, 26, 'Cash', 3000, '21.06.2025');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (127, 27, 'Cash', 3900, '22.12.2024');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (128, 28, 'Debit Card', 3500, '15.10.2028');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (129, 29, 'Debit Card', 3100, '02.02.2021');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (130, 30, 'Cash', 4000, '29.07.2029');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (131, 31, 'Debit Card', 4900, '08.04.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (132, 32, 'Debit Card', 2500, '16.11.2025');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (133, 33, 'Debit Card', 3400, '11.12.2025');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (134, 34, 'Cash', 2700, '28.03.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (135, 35, 'Debit Card', 4600, '25.08.2018');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (136, 36, 'Cash', 3400, '07.05.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (137, 37, 'Cash', 3400, '24.04.2025');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (138, 38, 'Debit Card', 4000, '19.11.2027');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (139, 39, 'Debit Card', 1800, '01.05.2015');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (140, 40, 'Cash', 3300, '20.09.2017');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (141, 41, 'Debit Card', 4500, '07.12.2020');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (142, 42, 'Cash', 4200, '21.01.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (143, 43, 'Cash', 1900, '27.05.2024');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (144, 44, 'Debit Card', 2300, '25.09.2018');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (145, 45, 'Debit Card', 2600, '15.10.2026');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (146, 46, 'Cash', 3000, '11.02.2025');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (147, 47, 'Debit Card', 4100, '03.06.2014');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (148, 48, 'Cash', 1500, '05.11.2024');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (149, 49, 'Cash', 2600, '29.11.2012');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (150, 50, 'Debit Card', 3700, '10.03.2023');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (151, 51, 'Debit Card', 3100, '30.07.2013');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (152, 52, 'Debit Card', 3300, '15.01.2022');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (153, 53, 'Cash', 4100, '13.12.2012');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (154, 54, 'Cash', 2600, '26.04.2022');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (155, 55, 'Debit Card', 2900, '25.08.2024');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (156, 56, 'Debit Card', 3000, '21.03.2022');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (157, 57, 'Cash', 3700, '15.06.2020');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (158, 58, 'Debit Card', 4000, '11.11.2019');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (159, 59, 'Cash', 2000, '03.01.2020');
INSERT INTO public.payment(payment_id, policy_id, type_of_payment, payment_amount, payment_date) values (160, 60, 'Debit Card', 1800, '08.12.2023');




INSERT INTO public.insurance_agency(insurance_agency_id, insurance_agency_company_name) values (10051, 'Erdemli Bölge Acentesi');
INSERT INTO public.insurance_agency(insurance_agency_id, insurance_agency_company_name) values (10052, 'Akdeniz Bölge Acentesi');
INSERT INTO public.insurance_agency(insurance_agency_id, insurance_agency_company_name) values (10053, 'Mezitli Bölge Acentesi');
INSERT INTO public.insurance_agency(insurance_agency_id, insurance_agency_company_name) values (10054, 'Tarsus Bölge Acentesi');
INSERT INTO public.insurance_agency(insurance_agency_id, insurance_agency_company_name) values (10055, 'Anamur Bölge Acentesi');





INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (501, 1015, 1);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (502, 1006, 2);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (503, 1007, 3);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (504, 1016, 4);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (505, 1001, 5);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (506, 1007, 6);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (507, 1012, 7);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (508, 1002, 8);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (509, 1007, 9);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (510, 1017, 10);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (511, 1003, 11);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (512, 1008, 12);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (513, 1014, 13);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (514, 1013, 14);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (515, 1009, 15);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (516, 1004, 16);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (517, 1010, 17);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (518, 1020, 18);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (519, 1011, 19);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (520, 1012, 20);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (521, 1005, 21);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (522, 1019, 22);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (523, 1013, 23);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (524, 1015, 24);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (525, 1042, 25);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (526, 1021, 26);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (527, 1028, 27);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (528, 1035, 28);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (529, 1043, 29);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (530, 1044, 30);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (531, 1022, 31);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (532, 1029, 32);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (533, 1036, 33);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (534, 1045, 34);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (535, 1046, 35);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (536, 1023, 36);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (537, 1030, 37);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (538, 1037, 38);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (539, 1049, 39);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (540, 1047, 40);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (541, 1024, 41);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (542, 1031, 42);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (543, 1038, 43);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (544, 1048, 44);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (545, 1050, 45);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (546, 1025, 46);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (547, 1032, 47);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (548, 1039, 48);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (549, 1018, 49);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (550, 1029, 50);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (551, 1026, 51);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (552, 1033, 52);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (553, 1040, 53);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (554, 1041, 54);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (556, 1027, 56);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (557, 1034, 57);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (558, 1041, 58);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (559, 1023, 59);
INSERT INTO public.customer_policy(customer_policy_id, customer_id, policy_id) values (560, 1050, 60);


