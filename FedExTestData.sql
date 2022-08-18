Select *
From Portfolio..FedExTestData

-- Change ship date to just the date format

Select Ship_Date, Convert(Date,Ship_Date)
From Portfolio..FedExTestData

Update FedExTestData
SET Ship_Date = Convert(Date,Ship_Date)

Select Ship_Date
From Portfolio..FedExTestData

---- It doesnt convert so I did it another way

Alter Table FedExTestData
ADD ShipDateConverted Date;

Update FedExTestData
SET ShipDateConverted = Convert(Date,Ship_Date)

-- Conversion Worked
Select ShipDateConverted
From Portfolio..FedExTestData

-- Change Expected delivery date to just the date format 

Alter Table FedExTestData
ADD ExpectedDeliveryDateConverted Date;

Update FedExTestData
SET ExpectedDeliveryDateConverted = Convert(Date,Expected_Delivery_Date)

-- Conversion Worked
Select ExpectedDeliveryDateConverted
From Portfolio..FedExTestData

-- Change Actual Delivery Date to just the date format
Alter Table FedExTestData
ADD ActualDeliveryDateConverted Date;

Update FedExTestData
SET ActualDeliveryDateConverted = Convert(Date,Actual_Delivery_Date)

-- Conversion Worked
Select ActualDeliveryDateConverted
From Portfolio..FedExTestData



-- I wanted to change the expected delivery time and actual delivery time but the dates on them are wrong dated back to 1901
-- but if they were right I would do a time elapsed for the faster service types like next day, two day, and three day service types

-- I would have liked to have the order dates so I can compare the service types to when the order was placed to the expected and actual dates and times to be delivered





---- The ammont of days between ship date and actual dilivery date compared to the expected dilivery date for standard ground service type
Select Carrier, Generic_Service_Type, ShipDateConverted, ExpectedDeliveryDateConverted, ActualDeliveryDateConverted, Shipper_State, Shipper_City, Recipient_State, Recipient_City, Generic_Zone, Residential_Delivery_Indicator, datediff(day, ShipDateConverted, ActualDeliveryDateConverted) as ConvertedDaysInBetween 
From Portfolio..FedExTestData
Where Generic_Service_Type NOT IN ('Standard Postal Insertion', 'Two Day Standard Air', 'Next Day Priority Air', 'Three Day Standard Air', 'Next Day Standard Air', 'Next Day First Air', 'Two Day Priority Air')
AND Carrier NOT IN ('LASERSHIP', 'ONTRAC', 'UPS');

---- The ammont of days between ship date and actual dilivery date compared to the expected dilivery date for Standard Postal Insertion service type
Select Carrier, Generic_Service_Type, ShipDateConverted, ExpectedDeliveryDateConverted, ActualDeliveryDateConverted, Shipper_State, Shipper_City, Recipient_State, Recipient_City, Generic_Zone, Residential_Delivery_Indicator, datediff(day, ShipDateConverted, ActualDeliveryDateConverted) as ConvertedDaysInBetween 
From Portfolio..FedExTestData
Where Generic_Service_Type NOT IN ('Standard Ground', 'Two Day Standard Air', 'Next Day Priority Air', 'Three Day Standard Air', 'Next Day Standard Air', 'Next Day First Air', 'Two Day Priority Air')
AND Carrier NOT IN ('LASERSHIP', 'ONTRAC', 'UPS');

---- The ammont of days between ship date and actual dilivery date compared to the expected dilivery date for Two Day Standard Air service type
Select Carrier, Generic_Service_Type, ShipDateConverted, ExpectedDeliveryDateConverted, ActualDeliveryDateConverted, Shipper_State, Shipper_City, Recipient_State, Recipient_City, Generic_Zone, Residential_Delivery_Indicator, datediff(day, ShipDateConverted, ActualDeliveryDateConverted) as ConvertedDaysInBetween 
From Portfolio..FedExTestData
Where Generic_Service_Type NOT IN ('Standard Ground', 'Standard Postal Insertion', 'Next Day Priority Air', 'Three Day Standard Air', 'Next Day Standard Air', 'Next Day First Air', 'Two Day Priority Air')
AND Carrier NOT IN ('LASERSHIP', 'ONTRAC', 'UPS');

---- The ammont of days between ship date and actual dilivery date compared to the expected dilivery date for Next Day Priority Air service type
Select Carrier, Generic_Service_Type, ShipDateConverted, ExpectedDeliveryDateConverted, ActualDeliveryDateConverted, Shipper_State, Shipper_City, Recipient_State, Recipient_City, Generic_Zone, Residential_Delivery_Indicator, datediff(day, ShipDateConverted, ActualDeliveryDateConverted) as ConvertedDaysInBetween 
From Portfolio..FedExTestData
Where Generic_Service_Type NOT IN ('Standard Ground', 'Standard Postal Insertion', 'Two Day Standard Air', 'Three Day Standard Air', 'Next Day Standard Air', 'Next Day First Air', 'Two Day Priority Air')
AND Carrier NOT IN ('LASERSHIP', 'ONTRAC', 'UPS');

---- The ammont of days between ship date and actual dilivery date compared to the expected dilivery date for Three Day Standard Air service type
Select Carrier, Generic_Service_Type, ShipDateConverted, ExpectedDeliveryDateConverted, ActualDeliveryDateConverted, Shipper_State, Shipper_City, Recipient_State, Recipient_City, Generic_Zone, Residential_Delivery_Indicator, datediff(day, ShipDateConverted, ActualDeliveryDateConverted) as ConvertedDaysInBetween 
From Portfolio..FedExTestData
Where Generic_Service_Type NOT IN ('Standard Ground', 'Standard Postal Insertion', 'Two Day Standard Air', 'Next Day Priority Air', 'Next Day Standard Air', 'Next Day First Air', 'Two Day Priority Air')
AND Carrier NOT IN ('LASERSHIP', 'ONTRAC', 'UPS');

---- The ammont of days between ship date and actual dilivery date compared to the expected dilivery date for Next Day Standard Air service type
Select Carrier, Generic_Service_Type, ShipDateConverted, ExpectedDeliveryDateConverted, ActualDeliveryDateConverted, Shipper_State, Shipper_City, Recipient_State, Recipient_City, Generic_Zone, Residential_Delivery_Indicator, datediff(day, ShipDateConverted, ActualDeliveryDateConverted) as ConvertedDaysInBetween 
From Portfolio..FedExTestData
Where Generic_Service_Type NOT IN ('Standard Ground', 'Standard Postal Insertion', 'Two Day Standard Air', 'Next Day Priority Air', 'Three Day Standard Air', 'Next Day First Air', 'Two Day Priority Air')
AND Carrier NOT IN ('LASERSHIP', 'ONTRAC', 'UPS');

---- The ammont of days between ship date and actual dilivery date compared to the expected dilivery date for Next Day First Air service type
Select Carrier, Generic_Service_Type, ShipDateConverted, ExpectedDeliveryDateConverted, ActualDeliveryDateConverted, Shipper_State, Shipper_City, Recipient_State, Recipient_City, Generic_Zone, Residential_Delivery_Indicator, datediff(day, ShipDateConverted, ActualDeliveryDateConverted) as ConvertedDaysInBetween 
From Portfolio..FedExTestData
Where Generic_Service_Type NOT IN ('Standard Ground', 'Standard Postal Insertion', 'Two Day Standard Air', 'Next Day Priority Air', 'Three Day Standard Air', 'Next Day Standard Air', 'Two Day Priority Air')
AND Carrier NOT IN ('LASERSHIP', 'ONTRAC', 'UPS');

---- The ammont of days between ship date and actual dilivery date compared to the expected dilivery date for Two Day Priority Air service type
Select Carrier, Generic_Service_Type, ShipDateConverted, ExpectedDeliveryDateConverted, ActualDeliveryDateConverted, Shipper_State, Shipper_City, Recipient_State, Recipient_City, Generic_Zone, Residential_Delivery_Indicator, datediff(day, ShipDateConverted, ActualDeliveryDateConverted) as ConvertedDaysInBetween 
From Portfolio..FedExTestData
Where Generic_Service_Type NOT IN ('Standard Ground', 'Standard Postal Insertion', 'Two Day Standard Air', 'Next Day Priority Air', 'Three Day Standard Air', 'Next Day Standard Air', 'Next Day First Air')
AND Carrier NOT IN ('LASERSHIP', 'ONTRAC', 'UPS');

-- Created Average of the days in between for different service types in excel for visuals 






 
-- These are the types of charges given in this dataset

-- First I would talk about the residential delivery indicator 
-- I would change that data type to a decimal and give the percentage of each type given (R,U,C) and make that a charge because it should go into the shipper cost
-- Next I would look into the generic zone ill keep the zone but add the exact mileage per shipment so it can be accounted for with the other charges
-- Next I would like to know what goes into the asccessorial and fuel charges is it based on mileage? Because based on this sample thats where 
-- I would make my money at increasing these charges and keeping freight charges or rates the same for the type of service





Select Generic_Service_Type, Total_Closed_Charge_Amount, Total_Closed_Credit_Amount, Base_Freight_Charges, Fuel_Charges, Accessorial_Charges, Generic_Zone, Residential_Delivery_Indicator
From Portfolio..FedExTestData

-- Then Ill break down the service type and all of the charges made 
-- and see who uses what service more and tell the customer to charge more accordingly 



----------------------------------------------------------------



-- Shipped out 100,000
Select Shipper_State
From Portfolio..FedExTestData
 
--- Where do you ship out the most to find where to build the next DC

-- Shipped out 1,462 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'AL%';

--- Didnt ship from Alaska
--Select Shipper_State 
--From Portfolio..FedExTestData
--Where Shipper_State LIKE 'AK%';

-- Shipped out 730 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'AZ%';

--Didnt ship from Arkansas
--Select Shipper_State 
--From Portfolio..FedExTestData
--Where Shipper_State LIKE 'AR%';

-- Shipped out 17,374 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'CA%';

-- Shipped out 481
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'CO%';

-- Shipped out 253 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'CT%';

-- Shipped out 19 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'DE%';

-- Shipped out 5,054 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'FL%';

-- Shipped out 9,485 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'GA%';

-- Shipped out 1 time 
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'HI%';

-- Shipped out 98 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'ID%';

-- Shipped out 4,163 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'IL%';

-- Shipped out 6,202 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'IN%';

-- Shipped out 254 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'IA%';

-- Shipped out 975 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'KS%';

-- Shipped out 1,674 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'KY%';

-- Shipped out 183 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'LA%';

-- Shipped out 97 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'ME%';

-- Shipped out 770 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'MD%';

-- Shipped out 682 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'MA%';

-- Shipped out 1,807 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'MI%';

-- Shipped out 434 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'MN%';

-- Shipped out 429 times 
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'MS%';

-- Shipped out 1,055 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'MO%';

-- Shipped out 93 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'MT%';

-- Shipped out 113 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'NE%';

-- Shipped out 1,355 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'NV%';

-- Shipped out 128 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'NH%';

-- Shipped out 5,571 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'NJ%';

-- Shipped out 106 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'NM%';

-- Shipped out 4,405 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'NY%';

-- Shipped out 2,766 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'NC%';

-- Shipped out 49 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'ND%';

-- Shipped out 5,487 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'OH%';

-- Shipped out 373 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'OK%';

-- Shipped out 275 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'OR%';

-- Shipped out 5,863 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'PA%';

-- Shipped out 69 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'RI%';

-- Shipped out 2,244 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'SC%';

-- Shipped out 50 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'SD%';

-- Shipped out 2,715 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'TN%';

-- Shipped out 10,875 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'TX%';

-- Shipped out 864 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'UT%';

-- Shipped out 27 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'VT%';

-- Shipped out 735 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'VA%';

-- Shipped out 1,008 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'WA%';

-- Shipped out 170 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'WV%';

-- Shipped out 702 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'WI%';

-- Shipped out 17 times
Select Shipper_State 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'WY%';


--------------------------------
Select *
From Portfolio..FedExTestData

--- Top 3 states that you ship from

-- Shipped out 10,875 times 
-- Close to 11% of all shipments
Select Shipper_State, Shipper_City 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'TX%';

-- Shipped out 9,485 times
--Close to 10% of all shipments
Select Shipper_State, Shipper_City 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'GA%';

-- Shipped out 17,374 times
-- 17% of all shipments
Select Shipper_State, Shipper_City 
From Portfolio..FedExTestData
Where Shipper_State LIKE 'CA%';

-- I would start to look into the top states that ship the most products along with the corresponding cities 
-- and compare greatest to least shipping state and city then deep dive into the cost along with the envionment of the city and state among other factors. 