/// --------------------------------------  COMANDOS BASICOS DE FLUX----------------------------------


// from() para recuperar datos de la fuente de datos
//operador de canalizacion directa |>  para enviar la salida de cada funcion a la siguiente entrada
// range(), filter() o ambos para filtrar datos segun los valors de las columnas.
// mean() para calcular el promedio de los valores devueltos por la fuente de datos
// yield() para producir datos al usuario

from (bucket: "ejemplo")
   |>range(start: -1d)
   |>filter(fn: (r) => r.measurement == "ejemplo_medicion")
   |>mean()
   |>yield(name: "resultados")