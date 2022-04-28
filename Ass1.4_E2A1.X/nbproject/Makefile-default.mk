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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_Alec_Sjors_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_Alec_Sjors_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED="src folder/i2c.c" "src folder/oc.c" "src folder/pwm.c" "src folder/servo.c" "src folder/shell.c" "src folder/spiflash.c" "src folder/srf.c" "src folder/testservo.c" "src folder/timer.c" "src folder/uart.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED="${OBJECTDIR}/src folder/i2c.o" "${OBJECTDIR}/src folder/oc.o" "${OBJECTDIR}/src folder/pwm.o" "${OBJECTDIR}/src folder/servo.o" "${OBJECTDIR}/src folder/shell.o" "${OBJECTDIR}/src folder/spiflash.o" "${OBJECTDIR}/src folder/srf.o" "${OBJECTDIR}/src folder/testservo.o" "${OBJECTDIR}/src folder/timer.o" "${OBJECTDIR}/src folder/uart.o"
POSSIBLE_DEPFILES="${OBJECTDIR}/src folder/i2c.o.d" "${OBJECTDIR}/src folder/oc.o.d" "${OBJECTDIR}/src folder/pwm.o.d" "${OBJECTDIR}/src folder/servo.o.d" "${OBJECTDIR}/src folder/shell.o.d" "${OBJECTDIR}/src folder/spiflash.o.d" "${OBJECTDIR}/src folder/srf.o.d" "${OBJECTDIR}/src folder/testservo.o.d" "${OBJECTDIR}/src folder/timer.o.d" "${OBJECTDIR}/src folder/uart.o.d"

# Object Files
OBJECTFILES=${OBJECTDIR}/src\ folder/i2c.o ${OBJECTDIR}/src\ folder/oc.o ${OBJECTDIR}/src\ folder/pwm.o ${OBJECTDIR}/src\ folder/servo.o ${OBJECTDIR}/src\ folder/shell.o ${OBJECTDIR}/src\ folder/spiflash.o ${OBJECTDIR}/src\ folder/srf.o ${OBJECTDIR}/src\ folder/testservo.o ${OBJECTDIR}/src\ folder/timer.o ${OBJECTDIR}/src\ folder/uart.o

# Source Files
SOURCEFILES=src folder/i2c.c src folder/oc.c src folder/pwm.c src folder/servo.c src folder/shell.c src folder/spiflash.c src folder/srf.c src folder/testservo.c src folder/timer.c src folder/uart.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_Alec_Sjors_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/src\ folder/i2c.o: src\ folder/i2c.c  .generated_files/bbfd82483542be27d3abac87e8d2155064b59981.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/i2c.o".d 
	@${RM} "${OBJECTDIR}/src folder/i2c.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/i2c.o.d" -o "${OBJECTDIR}/src folder/i2c.o" "src folder/i2c.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/oc.o: src\ folder/oc.c  .generated_files/961399c714d0ce009204d617febb962b61df18ca.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/oc.o".d 
	@${RM} "${OBJECTDIR}/src folder/oc.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/oc.o.d" -o "${OBJECTDIR}/src folder/oc.o" "src folder/oc.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/pwm.o: src\ folder/pwm.c  .generated_files/84be470b7b6c841e4e033a59699c0bdf1c6ffb24.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/pwm.o".d 
	@${RM} "${OBJECTDIR}/src folder/pwm.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/pwm.o.d" -o "${OBJECTDIR}/src folder/pwm.o" "src folder/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/servo.o: src\ folder/servo.c  .generated_files/2f2548aaecc1651082183d79373bbc568773213e.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/servo.o".d 
	@${RM} "${OBJECTDIR}/src folder/servo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/servo.o.d" -o "${OBJECTDIR}/src folder/servo.o" "src folder/servo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/shell.o: src\ folder/shell.c  .generated_files/66868c465d4a909f75ac2e5ab2ce406bcab19fbc.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/shell.o".d 
	@${RM} "${OBJECTDIR}/src folder/shell.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/shell.o.d" -o "${OBJECTDIR}/src folder/shell.o" "src folder/shell.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/spiflash.o: src\ folder/spiflash.c  .generated_files/89fa8b122506a77f487d9097dee64cd6e5700b61.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o".d 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/spiflash.o.d" -o "${OBJECTDIR}/src folder/spiflash.o" "src folder/spiflash.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/srf.o: src\ folder/srf.c  .generated_files/1dd9758e795703d4b3994693affa8f57adcce54f.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/srf.o".d 
	@${RM} "${OBJECTDIR}/src folder/srf.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/srf.o.d" -o "${OBJECTDIR}/src folder/srf.o" "src folder/srf.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/testservo.o: src\ folder/testservo.c  .generated_files/42a41a0ab01e4c6c29a403d93b946441e15f9fc4.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/testservo.o".d 
	@${RM} "${OBJECTDIR}/src folder/testservo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/testservo.o.d" -o "${OBJECTDIR}/src folder/testservo.o" "src folder/testservo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/timer.o: src\ folder/timer.c  .generated_files/decd2c5e3aef20da468cd9a5ebe9722cc178c237.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/timer.o".d 
	@${RM} "${OBJECTDIR}/src folder/timer.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/timer.o.d" -o "${OBJECTDIR}/src folder/timer.o" "src folder/timer.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/uart.o: src\ folder/uart.c  .generated_files/cb542bcda903775a302ce1a2861920cf535d2099.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/uart.o".d 
	@${RM} "${OBJECTDIR}/src folder/uart.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/uart.o.d" -o "${OBJECTDIR}/src folder/uart.o" "src folder/uart.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/src\ folder/i2c.o: src\ folder/i2c.c  .generated_files/34df06302c7222716177a0f01c5923bb99767b8a.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/i2c.o".d 
	@${RM} "${OBJECTDIR}/src folder/i2c.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/i2c.o.d" -o "${OBJECTDIR}/src folder/i2c.o" "src folder/i2c.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/oc.o: src\ folder/oc.c  .generated_files/899f050bd7a42a2ad5fe34c5d98bebeca9a06074.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/oc.o".d 
	@${RM} "${OBJECTDIR}/src folder/oc.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/oc.o.d" -o "${OBJECTDIR}/src folder/oc.o" "src folder/oc.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/pwm.o: src\ folder/pwm.c  .generated_files/24ca9f91b659a1aeba66b101b73cb42c049b08ce.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/pwm.o".d 
	@${RM} "${OBJECTDIR}/src folder/pwm.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/pwm.o.d" -o "${OBJECTDIR}/src folder/pwm.o" "src folder/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/servo.o: src\ folder/servo.c  .generated_files/cb79f90fa3790a77159065825438ff853f422daf.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/servo.o".d 
	@${RM} "${OBJECTDIR}/src folder/servo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/servo.o.d" -o "${OBJECTDIR}/src folder/servo.o" "src folder/servo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/shell.o: src\ folder/shell.c  .generated_files/ed5d9faac3a756a6ae312df4d56034d07e614397.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/shell.o".d 
	@${RM} "${OBJECTDIR}/src folder/shell.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/shell.o.d" -o "${OBJECTDIR}/src folder/shell.o" "src folder/shell.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/spiflash.o: src\ folder/spiflash.c  .generated_files/6ab59f627378e7369b3ca639403e57c16aff14d7.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o".d 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/spiflash.o.d" -o "${OBJECTDIR}/src folder/spiflash.o" "src folder/spiflash.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/srf.o: src\ folder/srf.c  .generated_files/fd2766032dda414fe77aaf069f7c28fa89375c96.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/srf.o".d 
	@${RM} "${OBJECTDIR}/src folder/srf.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/srf.o.d" -o "${OBJECTDIR}/src folder/srf.o" "src folder/srf.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/testservo.o: src\ folder/testservo.c  .generated_files/42acfa2da6e47ce47bfb23f7327f33dcccf5618f.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/testservo.o".d 
	@${RM} "${OBJECTDIR}/src folder/testservo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/testservo.o.d" -o "${OBJECTDIR}/src folder/testservo.o" "src folder/testservo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/timer.o: src\ folder/timer.c  .generated_files/14ccb0ff9acc1a6a270609f6d58e6f39b38d9c10.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/timer.o".d 
	@${RM} "${OBJECTDIR}/src folder/timer.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/timer.o.d" -o "${OBJECTDIR}/src folder/timer.o" "src folder/timer.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/src\ folder/uart.o: src\ folder/uart.c  .generated_files/612ccd4b34eee400b29968c3fdb4c034c93ccc57.flag .generated_files/9c38dd73fa47c8727ca672a3ac38932765b77050.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/uart.o".d 
	@${RM} "${OBJECTDIR}/src folder/uart.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/uart.o.d" -o "${OBJECTDIR}/src folder/uart.o" "src folder/uart.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_Alec_Sjors_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_Alec_Sjors_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_Alec_Sjors_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_Alec_Sjors_E2A1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_Alec_Sjors_E2A1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
