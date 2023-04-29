Create Table Players
(
ID int primary Key not null,
Fname nvarchar(50),
Lname nvarchar(50),
Age int,
Position nvarchar(50)
)


Create Table ClubTeams
(
Id int primary key not null,
Name Nvarchar(50),
Country Nvarchar(50),
Continent Nvarchar(50)
)


Create Table Details
(
PlayerID int not null,
Nationality Nvarchar(50) not null,
Salary int,
MatchesPlayed int,
Goals int,
Assists int,
Foreign Key (PlayerId) References Players(ID),
)


Insert into Players(Id,Fname,Lname,Age,Position) values
(1, 'Kylian', 'Mbappé', 24, 'ST'),
(2, 'Kevin', 'De Bruyne', 31, 'CM'),
(3, 'Robert', 'Lewandowski', 34, 'ST'),
(4, 'Karim', 'Benzema', 35, 'CF'),
(5, 'Lionel','Messi', 35, 'CAM'),
(6, 'Mohamed','Salah', 30,'RW'),
(7, 'Thibaut', 'Courtois', 30, 'GK'),
(8, 'Manuel', 'Neuer', 37, 'GK'),
(9, 'Erling', 'Haaland', 22,'ST'),
(10,'Alisson','Becker', 30, 'GK'),
(11,'Joshua', 'Kimmich', 28, 'CDM'),
(12,'Ederson','Santana', 29,'GK'),
(13,'Sadio', 'Mané', 31,'LM'),
(14,'Virgil', 'Van Dijk', 31, 'CB'),
(15,'Harry', 'Kane', 29, 'ST'),
(16,'Jan', 'Oblak', 30, 'GK'),
(17,'Carlos', 'Casimiro', 31, 'CDM'),
(18,'Heung', 'Son', 30, 'LW'),
(19,'Neymar', 'Jr', 31,'LW'),
(20,'Rúben', 'Dias', 25, 'CB')


Insert into ClubTeams Values
(1,'Paris Saint-Germain', 'France', 'Europe'),
(2,'Manchester City', 'Belgium', 'Europe'),
(3,'FC Barcelona', 'Spain', 'Europe'),
(4,'Real Madrid', 'Spain', 'Europe'),
(5,'Liverpool', 'England', 'Europe'),
(6,'FC Bayern München', 'Germany','Europe'),
(7,'Tottenham Hotspur', 'England','Europe'),
(8,'Atlético de Madrid', 'Spain', 'Europe'),
(9,'Manchester United', 'England','Europe'),
(10,'Chelsea', 'England','Europe')


Insert into Details(PlayerID,ClubteamID,Nationality,Salary,MatchesPlayed,Goals,Assists) Values
(1,'France', 79031880.00, 28, 22, 4),
(2,'Belgium', 25831000.00, 33, Null, 15),
(3,'Poland', 25245490.00, 26, 17, Null),
(4,'France', 9933600.00, 36, 26, 6),
(5,'Argentina', 44453205.00, 27, 15, 15),
(6,'Egypt', 22594845.00, 29, 15, 7),
(7,'Belgium', 8938260.00, 39, 0, 0),
(8,'Germany', 23050440.00, 29, 0, 0),
(9,'Norway', 24204667.50, 28, 32, 5),
(10,'Brazil', Null, 28, Null, 1),
(11,'Germany', 19917000.00, 42, 6, 9),
(12,'Brazil', $4091932.00, 33, 0, 1),
(13,'Senegal', 24345420.00, 16, 7, 4),
(14,'Netherland', 14272200.80, 26, 3, 0),
(15,'England', 12969632.00, 32, 24, 2),
(16,'Slovenia', 11049840.00, 28, 0, 0),
(17,'Brazil', 13086675.00, 16, 2, 3),
(18,'South Korea', 12443758.08, 27, 8, 4),
(19,'Brazil', 50874703.20, 18, 13, 11),
(20,'Portugal', 11677582.80, 18, 0, 0)

Select * from Players
Select * from ClubTeams
Select * from Details


Alter Table Details
Add ClubTeamsID int,
Foreign Key (clubTeamID) References ClubTeams(ID)

Select * from Details

Update Details Set ClubTeamID = 1
where  ClubTeamID is null

--Select * from ClubTeams C
--join Details D
----Select * from Details
--on C.Id = D.ClubTeamID

Drop Table Details

Create Table Details
(
PlayerID int not null,
ClubTeamID int,
Nationality Nvarchar(50) not null,
Salary int,
MatchesPlayed int,
Goals int,
Assists int,
Foreign Key (PlayerId) References Players(ID),
Foreign Key (ClubTeamID) References ClubTeams(ID)
)

Select * from Details

Insert into Details(PlayerID,ClubteamID,Nationality,Salary,MatchesPlayed,Goals,Assists) Values
(1,1,'France', 79031880.00, 28, 22, 4),
(2,2,'Belgium', 25831000.00, 33, Null, 15),
(3,3,'Poland', 25245490.00, 26, 17, Null),
(4,4,'France', 9933600.00, 36, 26, 6),
(5,3,'Argentina', 44453205.00, 27, 15, 15),
(6,5,'Egypt', 22594845.00, 29, 15, 7),
(7,4,'Belgium', 8938260.00, 39, 0, 0),
(8,6,'Germany', 23050440.00, 29, 0, 0),
(9,2,'Norway', 24204667.50, 28, 32, 5),
(10,5,'Brazil', Null, 28, Null, 1),
(11,6,'Germany', 19917000.00, 42, 6, 9),
(12,2,'Brazil', $4091932.00, 33, 0, 1),
(13,6,'Senegal', 24345420.00, 16, 7, 4),
(14,5,'Netherland', 14272200.80, 26, 3, 0),
(15,7,'England', 12969632.00, 32, 24, 2),
(16,8,'Slovenia', 11049840.00, 28, 0, 0),
(17,9,'Brazil', 13086675.00, 16, 2, 3),
(18,7,'South Korea', 12443758.08, 27, 8, 4),
(19,3,'Brazil', 50874703.20, 18, 13, 11),
(20,2,'Portugal', 11677582.80, 18, 0, 0)

Select * from Details
Select * from Players
Select * from ClubTeams

--A Query to retrieve players, ClubTeam and their positions
Select Fname + '  ' + Lname as Players, position, C.Name as ClubTeam
From Players p
join Details D
On p.ID = D.playerid
join ClubTeams C
on C.id = D.ClubTeamID

--A Query to retrieve players, ClubTeam and their positions who plays for Barcelona
Select Fname + '  ' + Lname as Players, position, C.Name as ClubTeam
From Players p
join Details D
On p.ID = D.playerid
join ClubTeams C
on C.id = D.ClubTeamID
where C.Name = 'FC Barcelona'

-- Transferring Neymar and Messi to their current ClubTeams('Paris Saint Germain')
Update Details Set ClubTeamID = 1
where PlayerID In (5,19)

Select Fname + '  ' + Lname as Player, C.name as ClubTeam from  Players p
join Details D
On p.ID = D.PlayerID
join ClubTeams C
On C.Id = D.ClubTeamID
where C.Name = 'Paris Saint-Germain'

--What's the highest salary among the players
Select Max(Salary) 'Highest Salary' 
From Players P
Join Details D
On P.ID = D.PlayerID

-- Which Player has the Lowest Salary
Select Fname+ '  ' + Lname as Player, Min(Salary) 'Lowest Salary' 
From Players P
Join Details D
On P.ID = D.PlayerID
where  Salary <= (Select min(salary) from Details)
Group by Fname+ '  ' + Lname
--Order by Salary

-- Updating any player that has 'NULL' Goals
Select * from Details
where Goals is null

-- (Kevin De Bruyne)
Update Details Set Goals = 7
where PlayerID = 2

-- (Alisson Becker)
Update Details Set Goals = 0
where Goals is null

-- A Query to show every player and their corresponding Salary Currently (2023)
Select P.Fname+'  '+Lname as Players, Salary from Players P
Join Details D
On P.ID = D.PlayerID
where Salary is not null --(Alisson Becker with Null salary excluded)
Order by Salary desc

-- A query to retrieve the Top 5 Goal scorers,their Assists and Match Played in the Season
Select Top 5 Fname,Lname,MatchesPlayed,Goals,Assists
From Details D
Inner Join Players P
On P.ID = D.PlayerID
Order by Goals desc

Update Details Set Assists = 6, Goals = 18 
where PlayerID = 3

---- A Query to retrieve the players who are above the Average Age Class 
Select Fname, Lname, Age, Avg(Age) over() as AverageAge from Players
Group by Fname, Lname, Age
Having Age > (Select Avg(age) from Players)
Order by Age

Insert into Players(ID,Age) Values (21,31)
Insert into Players(ID,Fname,Position) Values (100,'Henry',8)
Select * from Players

Delete from Players
where Id = 21 or Id = 100

-- A Query to retrieve all the strikers
Select * from Players
where Position like 'ST'

-- A Query to retrieve all info of a player whose whose First Name starts with N but ends with R
Select * from Players P
Full Join Details D
on P.ID = D.PlayerID
Left Join ClubTeams C
on D.ClubTeamID = C.Id
where Fname Like 'N%R'
--where Fname Like 'n%' and Lname Like '%r' --(Fname starts with N and Lname ends with R)


-- A Query to Retrieve players Nationalities and their ClubTeams
Select Fname,Lname,C.Name, Nationality from Players P
Right Join Details D
on P.ID = D.PlayerID
Left Join ClubTeams C
on D.ClubTeamID = C.Id
Order by Nationality


-- A Query to Retrieve how many Brazilian Players
Select Count(Nationality) as 'No of Players from Brazil' from Details
where Nationality = 'Brazil'

-- Creating New Table Name SoccerPlayers with the same Values of Players Table
Select * into SoccerPlayers from Players

Select * from SoccerPlayers


--A Seperate Table for players from Brazil
Create Table BrazilPlayers
(
Fname nvarchar(50),
Lname nvarchar(50),
Nationality Nvarchar(50)
)

Insert into BrazilPlayers
Select Fname,Lname,Nationality from Players p
join Details D
On P.ID = D.PlayerID
where Nationality = 'Brazil'

Select * from BrazilPlayers


