#Operador Switch personal:

helado="Pistache"

switch(
  helado,
  "Chocolate"={respuesta="Un clásico..."},
  "Vainilla"={respuesta="Es bueno..."},
  "Limon"={respuesta="Muy básico pero rico..."},
  "Fresa"={respuesta="Qué buen gusto..."},
  "Galleta"={respuesta="Es bueno, pero hay mejores"},
  "Napolitano"={respuesta="Excelente, 3x1..."},
  {respuesta="Eso es un sabor de helado?"}
)
respuesta

