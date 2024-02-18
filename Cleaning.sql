SELECT * 
FROM NashvilleHousing.nashvillehousing;

--------------------------------------------------------------------------------------------------------------------------

-- Standardize the Date column to "YYYY-MM-DD" format from the current format

SELECT SaleDate, DATE_FORMAT(STR_TO_DATE(SaleDate, '%M %e, %Y'), '%Y-%m-%d') AS FormattedSaleDate
FROM NashvilleHousing.nashvillehousing;

-- Using UPDATE since we need to modify the existing data in the table

UPDATE NashvilleHousing.nashvillehousing
SET SaleDate = DATE_FORMAT(STR_TO_DATE(SaleDate, '%M %e, %Y'), '%Y-%m-%d');

-- If we need to add a new column as the updated date i.e modify the table we can use ALTER

-- Alter the table to add a new column
ALTER TABLE NashvilleHousing
ADD COLUMN SaleDateConverted DATE;

-- Update the new column with converted values
UPDATE NashvilleHousing
SET SaleDateConverted = DATE_FORMAT(STR_TO_DATE(SaleDate, '%M %e, %Y'), '%Y-%m-%d');


 --------------------------------------------------------------------------------------------------------------------------

-- Populate Property Address data by updating the NULL values with existing Property addresses with the same unique ParcelID

SELECT *
FROM NashvilleHousing.nashvillehousing
ORDER BY ParcelID;

-- Since, every ParcelID has the same PropertyAddress

SELECT A.ParcelID, A.PropertyAddress, B.ParcelID, B.PropertyAddress,
	   COALESCE(A.PropertyAddress, B.PropertyAddress) AS FoundAddress
FROM NashvilleHousing.nashvillehousing A
LEFT JOIN NashvilleHousing.nashvillehousing B
	ON A.ParcelID = B.ParcelID AND A.UniqueID <> B.UniqueID
WHERE A.PropertyAddress IS NULL;
   
-- Since, MySQL doesn't allow updating a table while referencing it directly in a subquery
WITH UpdatedAddresses AS (
	SELECT A.ParcelID, COALESCE(A.PropertyAddress, B.PropertyAddress) AS FoundAddress
	FROM NashvilleHousing.nashvillehousing A
	LEFT JOIN NashvilleHousing.nashvillehousing B
		ON A.ParcelID = B.ParcelID AND A.UniqueID <> B.UniqueID
	WHERE A.PropertyAddress IS NULL
)

UPDATE NashvilleHousing.nashvillehousing AS A
JOIN UpdatedAddresses AS U
    ON A.ParcelID = U.ParcelID
SET A.PropertyAddress = U.FoundAddress;

--------------------------------------------------------------------------------------------------------------------------

-- Breaking out Address into Individual Columns (Address, City, State)

SELECT PropertyAddress
FROM NashvilleHousing.nashvillehousing;

-- Extracting the individual attributes from the Address columns using Substrings and Character Indexes of the deliminator

SELECT 
    TRIM(SUBSTRING_INDEX(PropertyAddress, ',', 1)) AS PropertyStreetAddress,
    TRIM(SUBSTRING_INDEX(PropertyAddress, ',', -1)) AS PropertyCity
FROM NashvilleHousing.nashvillehousing;

-- Alter the table and add the columns

ALTER TABLE NashvilleHousing.nashvillehousing
ADD COLUMN PropertyStreetAddress VARCHAR(255),
ADD COLUMN PropertyCity VARCHAR(255);

UPDATE NashvilleHousing.nashvillehousing
SET 
    PropertyStreetAddress = TRIM(SUBSTRING_INDEX(PropertyAddress, ',', 1)),
    PropertyCity = TRIM(SUBSTRING_INDEX(PropertyAddress, ',', -1));

-- Splitting the Owner Address

SELECT OwnerAddress
FROM NashvilleHousing.nashvillehousing;

SELECT
    TRIM(SUBSTRING_INDEX(OwnerAddress, ',', 1)) AS OwnerStreetAddress,
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(OwnerAddress, ',', 2), ',', -1)) AS OwnerCity,
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(OwnerAddress, ',', 3), ',', -1)) AS OwnerState
FROM NashvilleHousing.nashvillehousing;

-- Alter the table and add the columns

ALTER TABLE NashvilleHousing.nashvillehousing
ADD COLUMN OwnerStreetAddress VARCHAR(255),
ADD COLUMN OwnerCity VARCHAR(255),
ADD COLUMN OwnerState VARCHAR(255);

UPDATE NashvilleHousing.nashvillehousing
SET 
    OwnerStreetAddress = TRIM(SUBSTRING_INDEX(OwnerAddress, ',', 1)),
    OwnerCity = TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(OwnerAddress, ',', 2), ',', -1)),
	OwnerState = TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(OwnerAddress, ',', 3), ',', -1));
    
--------------------------------------------------------------------------------------------------------------------------

-- Checking the distinct values in the SoldAsVacant field
SELECT DISTINCT(SoldAsVacant), COUNT(SoldAsVacant)
FROM NashvilleHousing.nashvillehousing
GROUP BY SoldAsVacant
ORDER BY 2;

-- We have Yes, No, Y and N 

-- Updating the Y and N to Yes and No in "SoldAsVacant" field so we only have the binary values using CASE statements

SELECT SoldAsVacant
, CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
	   WHEN SoldAsVacant = 'N' THEN 'No'
	   ELSE SoldAsVacant
	   END AS UpdatedSoldAsVacant
FROM NashvilleHousing.nashvillehousing; 

UPDATE NashvilleHousing.nashvillehousing
SET SoldAsVacant = CASE 
    WHEN SoldAsVacant = 'Y' THEN 'Yes'
    WHEN SoldAsVacant = 'N' THEN 'No'
    ELSE SoldAsVacant
END;


-----------------------------------------------------------------------------------------------------------------------------------------------------------

/* Finding Duplicates

Using a CTE and windows functions to find the duplicate values

If multiple attributes are the exact same, then we will pretend that it is a duplicate row.

We are assigning a unique row number to each row within each partition defined by using the defined combination of columns
ordered by UniqueID

*/

WITH RowNumCTE AS (
	SELECT *, 
		ROW_NUMBER() OVER (
			PARTITION BY ParcelID, PropertyAddress, SalePrice, SaleDate, LegalReference ORDER BY UniqueID) AS Row_Num
	FROM NashvilleHousing.nashvillehousing
)

-- These are the duplicated rows
SELECT * 
FROM RowNumCTE
WHERE Row_Num > 1
ORDER BY PropertyAddress;

---------------------------------------------------------------------------------------------------------

-- Delete Unused Columns

-- Since, we split the Addresses we will delete the whole addresses and some more unused columns

ALTER TABLE NashvilleHousing.nashvillehousing
DROP COLUMN OwnerAddress,
DROP COLUMN TaxDistrict,
DROP COLUMN PropertyAddress;
