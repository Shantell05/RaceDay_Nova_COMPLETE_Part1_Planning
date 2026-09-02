USE RaceDayNovaDB;
GO

/* Quick relationship checks for SSMS demonstration. */
SELECT
    e.EventName,
    u.FirstName + ' ' + u.LastName AS Organiser,
    COUNT(ec.EventCategoryId) AS CategoryCount
FROM dbo.Events e
JOIN dbo.Users u ON u.UserId = e.OrganiserId
LEFT JOIN dbo.EventCategories ec ON ec.EventId = e.EventId
GROUP BY e.EventName, u.FirstName, u.LastName
ORDER BY e.EventName;

SELECT
    u.FirstName + ' ' + u.LastName AS Participant,
    e.EventName,
    c.CategoryName,
    en.EnrolmentStatus
FROM dbo.Enrolments en
JOIN dbo.Users u ON u.UserId = en.ParticipantId
JOIN dbo.EventCategories ec ON ec.EventCategoryId = en.EventCategoryId
JOIN dbo.Events e ON e.EventId = ec.EventId
JOIN dbo.Categories c ON c.CategoryId = ec.CategoryId
ORDER BY Participant, e.EventName;
GO
