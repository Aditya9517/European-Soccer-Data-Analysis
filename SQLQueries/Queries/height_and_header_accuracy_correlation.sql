select Player.player_name as Name, avg(Player.height) as Height,avg(Player_Attributes.heading_accuracy) AS Header_Accuracy
from Player_Attributes FULL OUTER JOIN Player on Player_Attributes.player_api_id = Player.player_api_id
where height > 180
group by Player.player_name
order by Height ASC, Header_Accuracy ASC