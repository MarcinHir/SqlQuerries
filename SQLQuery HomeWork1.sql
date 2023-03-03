SELECT I.Number AS [Numer Faktury], C.FirstName AS [Imiê], C.LastName AS [Nazwisko]
FROM Invoices I
LEFT JOIN Clients C ON C.Id = I.ClientNumber

SELECT I.Number AS [Numer Faktury], P.Name AS [Nazwa], P.Price AS [Cena]
FROM Invoices I
LEFT JOIN InvoicesItems II ON II.InvoiceId  = I.Id
LEFT JOIN Products P ON P.Id = II.ProductId

SELECT I.Number AS [Numer Faktury], sum(II.Quantity) AS [Iloœæ Produktów]
FROM Invoices I
LEFT JOIN InvoicesItems II ON II.InvoiceId  = I.Id
GROUP BY I.Number

SELECT I.Number AS [Numer Faktury], sum(II.Quantity*P.Price) AS [Wartoœæ Faktury]
FROM Invoices I
LEFT JOIN InvoicesItems II ON II.InvoiceId  = I.Id
LEFT JOIN Products P ON P.Id = II.ProductId
GROUP BY I.Number

