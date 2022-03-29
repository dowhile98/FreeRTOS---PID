# FreeRTOS---PID
control PID  de velociadd de motor de corriente continua usando FreeRTOS

## Materiales
- NUCLEO-F722ZE
- TB6612
- MOTOR FP30-H206Z1B
- 2 baterias de litio 3.7v
- Cables Jeampers para la conexión y un protoboard
<img src="https://user-images.githubusercontent.com/47931397/160669863-b775fae9-df2e-4b47-8d1b-c8811a435aa4.jpeg">

## Conexiones a tomar en cuenta
- PD15 -> salida PWM hacia la entrada PWMB del driver TB6612
- PA0 -> entrada de pulsos generados por el encoder del motor (TIM2 configurado en modo de reloj externo)

## Sobre la implementación 
- La configuración de los perifericos necesarios fue realizado con STM32CubeMx
- La aplicación cuenta con 3 tareas los cuales se comunican mediante el uso de Queue
- Se usa un software timer para la generacion del tiempo de muestreo para la lectura de la velocidad del motor
- La referencia y el control de la aplicación se realiza mediante el labview, el cual se comunica usando el USART3

# RESULTADOS

## LabView
<img src="https://user-images.githubusercontent.com/47931397/160672405-7d74d2e5-b3bf-46aa-ae1a-3378ebc89c94.png">

- Linea roja -> Referencia (rad/s)
- Linea verde -> Velocidad real del motor DC

## Segger SystemView
<img src="https://user-images.githubusercontent.com/47931397/160672993-fba7457f-ee82-489c-8f73-3b5b54a79203.png">

- Para el proyecto se utiliza Segger SystemView para la depuracion FreeRTOS

# Autor
- Quino B. Jeffry en colaboración con UMAKER SAC
- jeffryquino@gmail.com / jeffryqb@gmail.com
- +51 955207709

