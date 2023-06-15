USE UEFA;

select * from League;

select * from Teams;

select * from Coach;

select * from Player;

select * from Matches;

select * from Ticket;

select * from Fan;

select * from Statistics;

select *
from Teams as t
left join Player as p
on t.team_id = p.team_id;

select  t.name ,p.player_fname, p.player_lname, p.position
from Teams as t
left join Player as p
on t.team_id = p.team_id
where p.position = 'MF';  /* Find the player who plays in Mid Fielder Position */

select t.name ,p.player_fname, p.player_lname
from Teams as t
left join Player as p
on t.team_id = p.team_id
where t.name = 'Arsenal';  /* Find the name of player who plays in Arsenal */