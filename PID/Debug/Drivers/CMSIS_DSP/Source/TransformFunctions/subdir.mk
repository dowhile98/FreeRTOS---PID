################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.c \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.c 

S_UPPER_SRCS += \
../Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.S 

OBJS += \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.o \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.o 

S_UPPER_DEPS += \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.d 

C_DEPS += \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.d \
./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS_DSP/Source/TransformFunctions/%.o Drivers/CMSIS_DSP/Source/TransformFunctions/%.su: ../Drivers/CMSIS_DSP/Source/TransformFunctions/%.c Drivers/CMSIS_DSP/Source/TransformFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG '-D__FPU_PRESENT = 1' -DARM_MATH_CM7 -DUSE_HAL_DRIVER -DSTM32F722xx -c -I../Core/Inc -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Drivers/CMSIS_DSP/Include" -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Middlewares/Third_Party/SEGGER/Config" -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Middlewares/Third_Party/SEGGER/OS" -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Middlewares/Third_Party/SEGGER/SEGGER" -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS_DSP/Source/TransformFunctions/%.o: ../Drivers/CMSIS_DSP/Source/TransformFunctions/%.S Drivers/CMSIS_DSP/Source/TransformFunctions/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Middlewares/Third_Party/SEGGER/Config" -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Middlewares/Third_Party/SEGGER/OS" -I"D:/CURSOS/STM32/CODIGO/STM32F7/PID/Middlewares/Third_Party/SEGGER/SEGGER" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-TransformFunctions

clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-TransformFunctions:
	-$(RM) ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_bitreversal2.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix2_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix4_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_cfft_radix8_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_init_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_dct4_q31.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_f32.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_init_q31.su
	-$(RM) ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q15.su ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.d ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.o ./Drivers/CMSIS_DSP/Source/TransformFunctions/arm_rfft_q31.su

.PHONY: clean-Drivers-2f-CMSIS_DSP-2f-Source-2f-TransformFunctions

