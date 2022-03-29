################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.c \
../Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.c 

OBJS += \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.o \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.o 

C_DEPS += \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.d \
./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS_DSP/Source/SupportFunctions/%.o Drivers/CMSIS_DSP/Source/SupportFunctions/%.su: ../Drivers/CMSIS_DSP/Source/SupportFunctions/%.c Drivers/CMSIS_DSP/Source/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG '-D__FPU_PRESENT = 1' -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F722xx -c -I../Core/Inc -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Drivers/CMSIS_DSP/Include" -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Middlewares/Third_Party/SEGGER/Config" -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Middlewares/Third_Party/SEGGER/OS" -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Middlewares/Third_Party/SEGGER/SEGGER" -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-SupportFunctions

clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-SupportFunctions:
	-$(RM) ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_f32.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q15.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q31.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_copy_q7.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_f32.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q15.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q31.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_fill_q7.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q15.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q31.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_float_to_q7.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_float.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q31.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q15_to_q7.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_float.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q15.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q31_to_q7.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_float.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q15.su ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.d ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.o ./Drivers/CMSIS_DSP/Source/SupportFunctions/arm_q7_to_q31.su

.PHONY: clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-SupportFunctions

