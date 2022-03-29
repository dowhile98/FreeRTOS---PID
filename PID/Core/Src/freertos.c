/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "arm_math.h"
#include "gpio.h"
#include "usart.h"
#include "tim.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#include "PID.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define PID_PARAM_KP		0.0121			/* Proporcional */
#define PID_PARAM_KI		0.39		/* Integral */
#define PID_PARAM_KD		8.95E-4			/* Derivative */
#define UC_MAX				8.4			/* max voltaje */
#define UC_MIN				0			/* Min voltaje */

#define S					120				//cantidad de pulsos por vuelta
#define Ts					20E-3			//tiempo de muestreo

#define KP	0.0452
#define KI	1.1202
#define KD  0.00046
#define UMIN 	0
#define UMAX	8.6
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
uint8_t byte;
arm_pid_instance_f32 PID;

PID_Def_t MotorDC;

QueueHandle_t RxQueue;
QueueHandle_t radsQueue;
QueueHandle_t RefQueue;
/* USER CODE END Variables */
osThreadId DataHandle;
osThreadId PID_MotorHandle;
osThreadId LabViewRXHandle;
osTimerId GetDataHandle;
osSemaphoreId DataSemHandle;

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void SensorTask(void const * argument);
void PID_Task(void const * argument);
void LabViewRX_Task(void const * argument);
void GetDataMotorDC(void const * argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/* GetIdleTaskMemory prototype (linked to static allocation support) */
void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize );

/* GetTimerTaskMemory prototype (linked to static allocation support) */
void vApplicationGetTimerTaskMemory( StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize );

/* USER CODE BEGIN GET_IDLE_TASK_MEMORY */
static StaticTask_t xIdleTaskTCBBuffer;
static StackType_t xIdleStack[configMINIMAL_STACK_SIZE];

void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize )
{
  *ppxIdleTaskTCBBuffer = &xIdleTaskTCBBuffer;
  *ppxIdleTaskStackBuffer = &xIdleStack[0];
  *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
  /* place for user code */
}
/* USER CODE END GET_IDLE_TASK_MEMORY */

/* USER CODE BEGIN GET_TIMER_TASK_MEMORY */
static StaticTask_t xTimerTaskTCBBuffer;
static StackType_t xTimerStack[configTIMER_TASK_STACK_DEPTH];

void vApplicationGetTimerTaskMemory( StaticTask_t **ppxTimerTaskTCBBuffer, StackType_t **ppxTimerTaskStackBuffer, uint32_t *pulTimerTaskStackSize )
{
  *ppxTimerTaskTCBBuffer = &xTimerTaskTCBBuffer;
  *ppxTimerTaskStackBuffer = &xTimerStack[0];
  *pulTimerTaskStackSize = configTIMER_TASK_STACK_DEPTH;
  /* place for user code */
}
/* USER CODE END GET_TIMER_TASK_MEMORY */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* Create the semaphores(s) */
  /* definition and creation of DataSem */
  osSemaphoreDef(DataSem);
  DataSemHandle = osSemaphoreCreate(osSemaphore(DataSem), 1);

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* Create the timer(s) */
  /* definition and creation of GetData */
  osTimerDef(GetData, GetDataMotorDC);
  GetDataHandle = osTimerCreate(osTimer(GetData), osTimerPeriodic, NULL);

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  RxQueue = xQueueCreate(10,sizeof(uint8_t));				//queue rx data
  configASSERT(RxQueue != NULL);

  radsQueue = xQueueCreate(2,sizeof(float32_t));			//rads calculados
  configASSERT(radsQueue != NULL);

  RefQueue = xQueueCreate(16,sizeof(float32_t));				//referencia leida
  configASSERT(RefQueue != NULL);
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* definition and creation of Data */
  osThreadDef(Data, SensorTask, osPriorityAboveNormal, 0, 2048);
  DataHandle = osThreadCreate(osThread(Data), NULL);

  /* definition and creation of PID_Motor */
  osThreadDef(PID_Motor, PID_Task, osPriorityNormal, 0, 128);
  PID_MotorHandle = osThreadCreate(osThread(PID_Motor), NULL);

  /* definition and creation of LabViewRX */
  osThreadDef(LabViewRX, LabViewRX_Task, osPriorityAboveNormal, 0, 128);
  LabViewRXHandle = osThreadCreate(osThread(LabViewRX), NULL);

  /* definition and creation of LabViewTX */


  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  HAL_UART_Receive_IT(&huart3, &byte, 1);
  /* USER CODE END RTOS_THREADS */

}

/* USER CODE BEGIN Header_SensorTask */
/**
  * @brief  Function implementing the Data thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_SensorTask */
void SensorTask(void const * argument)
{
  /* USER CODE BEGIN SensorTask */
	uint16_t pulses;
	float32_t rads;
	float32_t rpm;
	uint8_t buffer[20];
  /* Infinite loop */
  for(;;)
  {
	  /*wait semaphore */
	  osSemaphoreWait(DataSemHandle, osWaitForever);
	  /* get data from motor dc */
	  taskENTER_CRITICAL();
	  pulses = __HAL_TIM_GET_COUNTER(&htim2);
	  __HAL_TIM_SET_COUNTER(&htim2,0);
	  /* calc rpm and rads */
	  rpm = pulses * 60.0 /(Ts * S);
	  rads = rpm * (2 * PI ) / 60;
	  /* send rads to pid task */
	  xQueueSend(radsQueue,&rads,100);

	  /*send data to labview*/
	  sprintf((char*)buffer, "%.2f\r\n",rads);
	  HAL_UART_Transmit(&huart3,buffer,strlen((char*)buffer),5);
	  taskEXIT_CRITICAL();
  }
  /* USER CODE END SensorTask */
}

/* USER CODE BEGIN Header_PID_Task */
/**
* @brief Function implementing the PID_Motor thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_PID_Task */
void PID_Task(void const * argument)
{
  /* USER CODE BEGIN PID_Task */
	float32_t ref = 0;
	float32_t _ref = ref;
	float32_t rads;
	//float32_t pid_error;
	float32_t uc;
	uint16_t duty;

//	PID.Kp = PID_PARAM_KP;		/* Proporcional */
//	PID.Ki = PID_PARAM_KI;		/* Integral */
//	PID.Kd = PID_PARAM_KD;		/* Derivative */
	//arm_pid_init_f32(&PID, 1);
	PID_Init(&MotorDC, KP, KI, KD, Ts, UMIN, UMAX);
  /* Infinite loop */
  for(;;)
  {
	  if(xQueueReceive(RefQueue, &ref, 0) == pdPASS)		//se lee la referencia en caso se cambió
		  _ref = ref;
	  xQueueReceive(radsQueue, &rads, portMAX_DELAY);
	  /*pid calc*/
	  taskENTER_CRITICAL();
	  /* calc error*/
	  //pid_error = ref - rads;
	  /* calc pid */
	  uc = PID_Compute(&MotorDC, _ref, rads);
	  /* anti wind up */
	  /* calc duty */
	  duty = (uint16_t) ( uc * htim4.Instance->ARR / UC_MAX);
	  /* set duty*/
	  __HAL_TIM_SET_COMPARE(&htim4,TIM_CHANNEL_4,duty);
	  taskEXIT_CRITICAL();
  }
  /* USER CODE END PID_Task */
}

/* USER CODE BEGIN Header_LabViewRX_Task */
/**
* @brief Function implementing the LabViewRX thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_LabViewRX_Task */
void LabViewRX_Task(void const * argument)
{
  /* USER CODE BEGIN LabViewRX_Task */
	uint8_t data[20];
	uint8_t _byte;
	uint8_t i = 0;
	float32_t ref;
  /* Infinite loop */

	osThreadSuspend(PID_MotorHandle);
	osThreadSuspend(DataHandle);
	osTimerStop(GetDataHandle);
  for(;;)
  {
    xQueueReceive(RxQueue, &_byte, portMAX_DELAY);

    taskENTER_CRITICAL();
    if((_byte != 'x') && (_byte != 'c')){
    	data[i] = _byte;
    	i++;
    }
    else if(_byte == 'c'){

    	if(data[0] == '1'){

    		xQueueReset(RxQueue);
    		HAL_TIM_Base_Start(&htim2);						//Lecutura de pulsos del encoder
    		__HAL_TIM_SET_COUNTER(&htim2,0);
    		HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_4);		//se inicia el PWM
    		__HAL_TIM_SET_COMPARE(&htim4,TIM_CHANNEL_4,0);
    		/*start task and timer*/
    		osThreadResume(PID_MotorHandle);
    		osThreadResume(DataHandle);
    		osTimerStart(GetDataHandle, 20);				//inicia el muestreo del dato

    	}else{
    		HAL_TIM_Base_Stop(&htim2);
    		HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_4);
    		/* suspend task and stop software timer */
    		osThreadSuspend(PID_MotorHandle);
    		osThreadSuspend(DataHandle);
    		osTimerStop(GetDataHandle);
    	}
    	/*reset buffer*/
		memset(data,0,i);
		i = 0;
    }
    else{
    	xQueueReset(RxQueue);
    	data[i] = '\0';										//caracter de terminacion para la cadena
    	ref = atof((char*)data);							//se obtiene el valor numerico
    	memset(data,0,i);
    	i = 0;
    	/*se verifica el espacio disponible*/
    	if(uxQueueSpacesAvailable(RxQueue) == 0)
    		xQueueReset(RxQueue);							//reset queue
    	/*se envia el queue hacia pid task*/
    	xQueueSend(RefQueue,&ref,20);
    }
    taskEXIT_CRITICAL();
  }
  /* USER CODE END LabViewRX_Task */
}

/* USER CODE BEGIN Header_LabViewTX_Task */
/**
* @brief Function implementing the LabViewTX thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_LabViewTX_Task */


/* GetDataMotorDC function */
void GetDataMotorDC(void const * argument)
{
  /* USER CODE BEGIN GetDataMotorDC */
	osSemaphoreRelease(DataSemHandle);
  /* USER CODE END GetDataMotorDC */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	xQueueSendFromISR(RxQueue,&byte,pdFALSE);		//se envia el byte recibido

	HAL_UART_Receive_IT(huart, &byte, 1);

	return;
}
/* USER CODE END Application */

