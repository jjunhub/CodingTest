-- 코드를 입력하세요
(
SELECT DATE_FORMAT(ONS.SALES_DATE, "%Y-%m-%d") AS SALES_DATE, ONS.PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE AS ONS
WHERE ONS.SALES_DATE LIKE "2022-03%"
)
UNION ALL
(
SELECT DATE_FORMAT(OFS.SALES_DATE, "%Y-%m-%d") AS SALES_DATE, OFS.PRODUCT_ID, NULL as USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE AS OFS
WHERE OFS.SALES_DATE LIKE "2022-03%"
)
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID