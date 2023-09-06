#Se crea la función:
VFfuncion2=function(umbral,nlter){
  #Creamos los objetos con los datos de entrada del problema:
  VA=1 #Valor actual de $1
  i=1 #Tasa de interés anualizada 100% (i=1)
  VF0=1 #El valor inicial del valor futuro en la interación
  #umbral=0.000000000001 #Asigno un valor de umbral 
  DeltaVF= Inf #Asigno un valor inicial del incremento del VF en cada interación 
  n=0 #Valor inicial a n en las interaciones 
  
  #Operador while
  
  while(DeltaVF>umbral&n<nlter){
    #Actualizo el valor de n, según el número de interaciónes realizado:
    n=n+1
    #Calculo el valor futuro:
    VF=VA*(1+(1/n))^n
    #Actualizamos el incremento de valor futuro de esta interación con el de la interación antrerior (VF0):
    DeltaVF=VF-VF0
    #Actualizo el valor futuro de esta interación como el valor futuro de "la interación anteriro" para futuras interaciones:
    VF0=VF
    
  }
  #Se imprime el mensaje de salida:
    if (n>=nlter){
      print(
        paste0("Se llego a un VF de ",VF, " por ",nlter," numero de interaciones"))
    } else {
      print(
        paste0("Despues de ",n," interaciones,", "se llegó a un VF de " ,VF,
               " dado el umbral de ",umbral," que llevó a un valor DeltaVF de "
               ,DeltaVF))
      }
}




