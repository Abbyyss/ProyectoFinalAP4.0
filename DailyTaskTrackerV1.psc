Algoritmo DailyTaskManager
	
Definir NombreTarea, DescripcionTarea, PrioridadTarea Como Caracter
Definir TareaCompletada como Logico
Definir Tareas como Entero
	NombreTarea <- ""
	DescripcionTarea <- ""
	PrioridadTarea <- ""
	TareaCompletada <- Falso
	Tareas <- 0

    Repetir
        Escribir "=== DailyTaskTracker ==="
        Escribir "1. Agregar Tarea"
        Escribir "2. Listar Tarea"
        Escribir "3. Marcar Tarea como Completada"
        Escribir "4. Eliminar Tarea"
        Escribir "5. Salir"
        Escribir "==================================="
        Escribir "Seleccione una opcion: "
        Leer Opcion
        
        Segun opcion Hacer
            1:
                Escribir "Nombre de la tarea: "
                Leer NombreTarea
                
                Escribir "Descripcion de la tarea: "
                Leer DescripcionTarea
                
                Escribir "Prioridad de la tarea (alta, media, baja): "
				Leer PrioridadTarea
				Si PrioridadTarea <> "alta" o PrioridadTarea <> "media" o PrioridadTarea <> "baja" Entonces
					Escribir "Elija una de las opciones disponibles"
					Leer PrioridadTarea
					Fin si
                TareaCompletada <- Falso
                Tareas <- Tareas + 1
		
			
            2:
                Si Tareas > 0 Entonces
                    Escribir "Nombre de la tarea: ", NombreTarea
                    Escribir "Descripcion de la tarea: ", DescripcionTarea
                    Escribir "Prioridad de la tarea: ", PrioridadTarea
                    Si TareaCompletada Entonces
                        Escribir "Estado: Completada"
                    Sino
                        Escribir "Estado: Pendiente"
                    FinSi
                Sino
                    Escribir "No hay tareas"
                FinSi
                
            3:
                Si Tareas > 0 Entonces
                    TareaCompletada <- Verdadero
                Sino
                    Escribir "No hay tareas"
                FinSi
                
            4:
                Si Tareas > 0 Entonces
                    NombreTarea <- ""
                    DescripcionTarea <- ""
                    PrioridadTarea <- ""
                    TareaCompletada <- Falso
                    Tareas <- 0
                    Escribir "Tarea eliminada"
                Sino
                    Escribir "No hay tareas"
                FinSi
                
            5:
                Escribir "Saliendo del programa"
                
            Otro:
                Escribir "Opcion no valida"
        FinSegun
	Hasta Que  opcion = 5
FinAlgoritmo