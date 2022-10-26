select 
t.NOMBRE TIENDA,
p.FECHA_ENTREGA as "FECHA ENTREGA", 
count(*) as "N° PEDIDOS"
from pedidos p join tiendas t
on p.TIENDA_ID = t.ID
group by TIENDA_ID, FECHA_ENTREGA
order by FECHA_ENTREGA, NOMBRE