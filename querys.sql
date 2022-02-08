select pr.nombre from propietarios pr 
inner join propiedad p on p.idPropietario = pr.idPropietario 
inner join arriendos a ON p.idPropiedad = a.idPropiedad 

select pr.nombre, count(p.idPropiedad) as cantidad_propiedades from propiedad p 
inner join propietarios pr on pr.idPropietario = p.idPropietario 
group by p.idPropietario, p.pais 

select ar.nombre from arrendatario ar 
inner join arriendos a on a.idArrendatario = ar.idArrendatario 
inner join propiedad p on p.idPropiedad = a.idPropiedad 
where p.pais != 'Chile'

select p.pais from propiedad p 
inner join arriendos a on p.idPropiedad = a.idPropiedad 
group by (p.pais) having max(a.monto) >= avg(a.monto)

select min(a.monto) as monto_minimo, max(a.monto) as monto_maximo,
round(avg(a.monto)) as monto_promedio 
from arriendos a inner join propietarios p on p.idPropietario = a.idArrendatario;