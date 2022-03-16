#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.2_a.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.2_a.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=lib/src/button.c lib/src/i2c.c lib/src/oc.c lib/src/pwm.c lib/src/servo.c lib/src/spiflash.c lib/src/srf.c lib/src/timer.c lib/src/uart.c lib/inc/servocontrol.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/lib/src/button.o ${OBJECTDIR}/lib/src/i2c.o ${OBJECTDIR}/lib/src/oc.o ${OBJECTDIR}/lib/src/pwm.o ${OBJECTDIR}/lib/src/servo.o ${OBJECTDIR}/lib/src/spiflash.o ${OBJECTDIR}/lib/src/srf.o ${OBJECTDIR}/lib/src/timer.o ${OBJECTDIR}/lib/src/uart.o ${OBJECTDIR}/lib/inc/servocontrol.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/lib/src/button.o.d ${OBJECTDIR}/lib/src/i2c.o.d ${OBJECTDIR}/lib/src/oc.o.d ${OBJECTDIR}/lib/src/pwm.o.d ${OBJECTDIR}/lib/src/servo.o.d ${OBJECTDIR}/lib/src/spiflash.o.d ${OBJECTDIR}/lib/src/srf.o.d ${OBJECTDIR}/lib/src/timer.o.d ${OBJECTDIR}/lib/src/uart.o.d ${OBJECTDIR}/lib/inc/servocontrol.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/lib/src/button.o ${OBJECTDIR}/lib/src/i2c.o ${OBJECTDIR}/lib/src/oc.o ${OBJECTDIR}/lib/src/pwm.o ${OBJECTDIR}/lib/src/servo.o ${OBJECTDIR}/lib/src/spiflash.o ${OBJECTDIR}/lib/src/srf.o ${OBJECTDIR}/lib/src/timer.o ${OBJECTDIR}/lib/src/uart.o ${OBJECTDIR}/lib/inc/servocontrol.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=lib/src/button.c lib/src/i2c.c lib/src/oc.c lib/src/pwm.c lib/src/servo.c lib/src/spiflash.c lib/src/srf.c lib/src/timer.c lib/src/uart.c lib/inc/servocontrol.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.2_a.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX370F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lib/src/button.o: lib/src/button.c  .generated_files/flags/default/80da339ee59ec52ad23892dc553a3cb75c925a92 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/button.o.d 
	@${RM} ${OBJECTDIR}/lib/src/button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/button.o.d" -o ${OBJECTDIR}/lib/src/button.o lib/src/button.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/i2c.o: lib/src/i2c.c  .generated_files/flags/default/952762417464ae1ebdb4ff0c9254b26ec2c4b644 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o.d 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/i2c.o.d" -o ${OBJECTDIR}/lib/src/i2c.o lib/src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/oc.o: lib/src/oc.c  .generated_files/flags/default/53d6d72994e7eab851259f0bed466fb8871425e3 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/oc.o.d 
	@${RM} ${OBJECTDIR}/lib/src/oc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/oc.o.d" -o ${OBJECTDIR}/lib/src/oc.o lib/src/oc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/pwm.o: lib/src/pwm.c  .generated_files/flags/default/f45c553529c038edffbdaf7b9075aa2d9cb25838 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/pwm.o.d" -o ${OBJECTDIR}/lib/src/pwm.o lib/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/servo.o: lib/src/servo.c  .generated_files/flags/default/379e7336cd976679cf13754c854664795a6bb7fe .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/servo.o.d 
	@${RM} ${OBJECTDIR}/lib/src/servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/servo.o.d" -o ${OBJECTDIR}/lib/src/servo.o lib/src/servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/spiflash.o: lib/src/spiflash.c  .generated_files/flags/default/ca9f7e5a6b16d8902e203528f7b763d813e1a453 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o.d 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/spiflash.o.d" -o ${OBJECTDIR}/lib/src/spiflash.o lib/src/spiflash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/srf.o: lib/src/srf.c  .generated_files/flags/default/ac2cdc7a732c03032f59a2d2f9edddf2996cd004 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/srf.o.d 
	@${RM} ${OBJECTDIR}/lib/src/srf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/srf.o.d" -o ${OBJECTDIR}/lib/src/srf.o lib/src/srf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/timer.o: lib/src/timer.c  .generated_files/flags/default/37bc8880beb2fdb7880122ca3a7287d11b38b95a .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/timer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/timer.o.d" -o ${OBJECTDIR}/lib/src/timer.o lib/src/timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/uart.o: lib/src/uart.c  .generated_files/flags/default/4a4b22664b3ab73816951d838699e91f7104e5ac .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/uart.o.d" -o ${OBJECTDIR}/lib/src/uart.o lib/src/uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/inc/servocontrol.o: lib/inc/servocontrol.c  .generated_files/flags/default/8bbc3beaf2baf78309233251158ad22a0325c7f9 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/inc" 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o.d 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/inc/servocontrol.o.d" -o ${OBJECTDIR}/lib/inc/servocontrol.o lib/inc/servocontrol.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/687eebdd893a64015d483719ff4eb0b8bc7de3a2 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/lib/src/button.o: lib/src/button.c  .generated_files/flags/default/9a199c41e55581565d13558d30161c39df39be51 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/button.o.d 
	@${RM} ${OBJECTDIR}/lib/src/button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/button.o.d" -o ${OBJECTDIR}/lib/src/button.o lib/src/button.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/i2c.o: lib/src/i2c.c  .generated_files/flags/default/e4e68851a94362a34351941556b388572b1b0ab8 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o.d 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/i2c.o.d" -o ${OBJECTDIR}/lib/src/i2c.o lib/src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/oc.o: lib/src/oc.c  .generated_files/flags/default/8ce9f538f1edeaae2b0b30611fd06bf4a84451c2 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/oc.o.d 
	@${RM} ${OBJECTDIR}/lib/src/oc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/oc.o.d" -o ${OBJECTDIR}/lib/src/oc.o lib/src/oc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/pwm.o: lib/src/pwm.c  .generated_files/flags/default/7a8697a6ef47910995907600ddf592c77d780b27 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/pwm.o.d" -o ${OBJECTDIR}/lib/src/pwm.o lib/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/servo.o: lib/src/servo.c  .generated_files/flags/default/dddf08bc5a8c8ebd7164004282ad99ab3acc2938 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/servo.o.d 
	@${RM} ${OBJECTDIR}/lib/src/servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/servo.o.d" -o ${OBJECTDIR}/lib/src/servo.o lib/src/servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/spiflash.o: lib/src/spiflash.c  .generated_files/flags/default/8e8f9481b757d962b1a5d1cfeb18699921c510ec .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o.d 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/spiflash.o.d" -o ${OBJECTDIR}/lib/src/spiflash.o lib/src/spiflash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/srf.o: lib/src/srf.c  .generated_files/flags/default/7bc0cf874537862c367b75d13d05b3a728787c65 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/srf.o.d 
	@${RM} ${OBJECTDIR}/lib/src/srf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/srf.o.d" -o ${OBJECTDIR}/lib/src/srf.o lib/src/srf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/timer.o: lib/src/timer.c  .generated_files/flags/default/e956858b8349c099b6c13da3af50ab9fc390ab94 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/timer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/timer.o.d" -o ${OBJECTDIR}/lib/src/timer.o lib/src/timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/uart.o: lib/src/uart.c  .generated_files/flags/default/73ae6edc7cad9fa37258f8adc4fe04aab70cb115 .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/src/uart.o.d" -o ${OBJECTDIR}/lib/src/uart.o lib/src/uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/inc/servocontrol.o: lib/inc/servocontrol.c  .generated_files/flags/default/6db85527d58ed4d1bde543a62b2d85759f5cd17b .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}/lib/inc" 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o.d 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/lib/inc/servocontrol.o.d" -o ${OBJECTDIR}/lib/inc/servocontrol.o lib/inc/servocontrol.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/2ff75ca5f93006bd417d803d801aca60ebb5830b .generated_files/flags/default/d36d8e9644fd003593b843844aa77ca19a168a8b
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -fno-common -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.2_a.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.2_a.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.2_a.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.2_a.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.2_a.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
