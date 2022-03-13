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
${OBJECTDIR}/lib/src/button.o: lib/src/button.c  .generated_files/bebbb0405ac39bddfcfe6686b002302cd2c7a4e7.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/button.o.d 
	@${RM} ${OBJECTDIR}/lib/src/button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/button.o.d" -o ${OBJECTDIR}/lib/src/button.o lib/src/button.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/i2c.o: lib/src/i2c.c  .generated_files/31e5505b4d8b8fa803d28f8b6b8fac51d2942211.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o.d 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/i2c.o.d" -o ${OBJECTDIR}/lib/src/i2c.o lib/src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/oc.o: lib/src/oc.c  .generated_files/9b670f971ce44ec5d6146e0e11bd325c8d10ec66.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/oc.o.d 
	@${RM} ${OBJECTDIR}/lib/src/oc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/oc.o.d" -o ${OBJECTDIR}/lib/src/oc.o lib/src/oc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/pwm.o: lib/src/pwm.c  .generated_files/a49d1cbac725e976853e89a3a4df90136e5a02b3.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/pwm.o.d" -o ${OBJECTDIR}/lib/src/pwm.o lib/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/servo.o: lib/src/servo.c  .generated_files/8657eb92e579c979ef9e8e6981ada74d66af0e34.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/servo.o.d 
	@${RM} ${OBJECTDIR}/lib/src/servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/servo.o.d" -o ${OBJECTDIR}/lib/src/servo.o lib/src/servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/spiflash.o: lib/src/spiflash.c  .generated_files/eea2bed43ce6782f454a43ffa444c47ffaabc820.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o.d 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/spiflash.o.d" -o ${OBJECTDIR}/lib/src/spiflash.o lib/src/spiflash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/srf.o: lib/src/srf.c  .generated_files/a7839bb06978d06f5311b31b583d0cb2d1c87355.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/srf.o.d 
	@${RM} ${OBJECTDIR}/lib/src/srf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/srf.o.d" -o ${OBJECTDIR}/lib/src/srf.o lib/src/srf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/timer.o: lib/src/timer.c  .generated_files/b6ee02adbaca8ea17e87b1b21fe3bc63a2859d58.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/timer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/timer.o.d" -o ${OBJECTDIR}/lib/src/timer.o lib/src/timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/uart.o: lib/src/uart.c  .generated_files/96d66244072226fb91a393759909d4f139f4ad37.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/uart.o.d" -o ${OBJECTDIR}/lib/src/uart.o lib/src/uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/inc/servocontrol.o: lib/inc/servocontrol.c  .generated_files/56a53f1e86ad66d100f4cc69a32528e022bc021c.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/inc" 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o.d 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/inc/servocontrol.o.d" -o ${OBJECTDIR}/lib/inc/servocontrol.o lib/inc/servocontrol.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/main.o: main.c  .generated_files/cfdd151899e1e9d90f829d804c2f63ae6c86b1d7.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/lib/src/button.o: lib/src/button.c  .generated_files/f99433778a47bac1c19febacd7cfc3d12dc0bbb0.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/button.o.d 
	@${RM} ${OBJECTDIR}/lib/src/button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/button.o.d" -o ${OBJECTDIR}/lib/src/button.o lib/src/button.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/i2c.o: lib/src/i2c.c  .generated_files/d45401fdf1cb058120d5578f3928d1fc47b3b10d.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o.d 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/i2c.o.d" -o ${OBJECTDIR}/lib/src/i2c.o lib/src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/oc.o: lib/src/oc.c  .generated_files/ae759b99c0058909f89ae98d18299437cb1837ca.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/oc.o.d 
	@${RM} ${OBJECTDIR}/lib/src/oc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/oc.o.d" -o ${OBJECTDIR}/lib/src/oc.o lib/src/oc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/pwm.o: lib/src/pwm.c  .generated_files/45428df3a84a26dbc6afe058163dd0340f75080e.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/pwm.o.d" -o ${OBJECTDIR}/lib/src/pwm.o lib/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/servo.o: lib/src/servo.c  .generated_files/3ed768189647c52fc5f9cfb6ea2890fd01da803c.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/servo.o.d 
	@${RM} ${OBJECTDIR}/lib/src/servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/servo.o.d" -o ${OBJECTDIR}/lib/src/servo.o lib/src/servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/spiflash.o: lib/src/spiflash.c  .generated_files/7f87a99511503cbf70810007bf53ef5feb94b3ad.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o.d 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/spiflash.o.d" -o ${OBJECTDIR}/lib/src/spiflash.o lib/src/spiflash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/srf.o: lib/src/srf.c  .generated_files/f16a17448f143d0c20f5e1ba54f846934dabb1ea.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/srf.o.d 
	@${RM} ${OBJECTDIR}/lib/src/srf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/srf.o.d" -o ${OBJECTDIR}/lib/src/srf.o lib/src/srf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/timer.o: lib/src/timer.c  .generated_files/474eae709eaa1a7d5efa11ed963606d2401ec17f.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/timer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/timer.o.d" -o ${OBJECTDIR}/lib/src/timer.o lib/src/timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/uart.o: lib/src/uart.c  .generated_files/491bab09af3ab9240902a52d94def7227f2a6ac2.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/uart.o.d" -o ${OBJECTDIR}/lib/src/uart.o lib/src/uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/inc/servocontrol.o: lib/inc/servocontrol.c  .generated_files/44e47088e9b5919476a0a0841bf7a296b145e818.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/inc" 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o.d 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/inc/servocontrol.o.d" -o ${OBJECTDIR}/lib/inc/servocontrol.o lib/inc/servocontrol.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/main.o: main.c  .generated_files/8f9cdeca85f1f1554bcd9946d72082fe629a695.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.2_a.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
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
