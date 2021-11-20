SELECT FirstName, LastName, InvoiceDate, Total FROM Invoice
JOIN Customer on Invoice.CustomerId = Customer.CustomerId
ORDER BY Total DESC, InvoiceDate DESC
LIMIT 10;