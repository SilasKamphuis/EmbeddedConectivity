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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/src\ folder/i2c.o: src\ folder/i2c.c  .generated_files/e4024307e607c13ab186324f447c908b44af0c9a.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/i2c.o".d 
	@${RM} "${OBJECTDIR}/src folder/i2c.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/i2c.o.d" -o "${OBJECTDIR}/src folder/i2c.o" "src folder/i2c.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/oc.o: src\ folder/oc.c  .generated_files/484fa5e358783f0fc69c0a9f8786b09cfeeecbb6.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/oc.o".d 
	@${RM} "${OBJECTDIR}/src folder/oc.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/oc.o.d" -o "${OBJECTDIR}/src folder/oc.o" "src folder/oc.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/pwm.o: src\ folder/pwm.c  .generated_files/969304179cf23ef3f3aefe89e38c6316009e5895.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/pwm.o".d 
	@${RM} "${OBJECTDIR}/src folder/pwm.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/pwm.o.d" -o "${OBJECTDIR}/src folder/pwm.o" "src folder/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/servo.o: src\ folder/servo.c  .generated_files/e71c4212219eb98edbb8d8dbeef06302e7ca4e8c.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/servo.o".d 
	@${RM} "${OBJECTDIR}/src folder/servo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/servo.o.d" -o "${OBJECTDIR}/src folder/servo.o" "src folder/servo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/shell.o: src\ folder/shell.c  .generated_files/843d6a57a4a764330778a50e7f5a0ed606b3956.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/shell.o".d 
	@${RM} "${OBJECTDIR}/src folder/shell.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/shell.o.d" -o "${OBJECTDIR}/src folder/shell.o" "src folder/shell.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/spiflash.o: src\ folder/spiflash.c  .generated_files/afc0881550bf73365cdc1563aa86d8b80a0596e.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o".d 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/spiflash.o.d" -o "${OBJECTDIR}/src folder/spiflash.o" "src folder/spiflash.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/srf.o: src\ folder/srf.c  .generated_files/54620be9e4a939e042506033214d58d798213517.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/srf.o".d 
	@${RM} "${OBJECTDIR}/src folder/srf.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/srf.o.d" -o "${OBJECTDIR}/src folder/srf.o" "src folder/srf.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/testservo.o: src\ folder/testservo.c  .generated_files/6e04012b1364f58c31b2f23a4f04dd9ebee17dff.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/testservo.o".d 
	@${RM} "${OBJECTDIR}/src folder/testservo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/testservo.o.d" -o "${OBJECTDIR}/src folder/testservo.o" "src folder/testservo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/timer.o: src\ folder/timer.c  .generated_files/ae8c4583ded0e71c06ffb5ab52afa05c79b00322.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/timer.o".d 
	@${RM} "${OBJECTDIR}/src folder/timer.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/timer.o.d" -o "${OBJECTDIR}/src folder/timer.o" "src folder/timer.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/uart.o: src\ folder/uart.c  .generated_files/29c0b91e34a11b9b590f4979f95ea8226caefda0.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/uart.o".d 
	@${RM} "${OBJECTDIR}/src folder/uart.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/uart.o.d" -o "${OBJECTDIR}/src folder/uart.o" "src folder/uart.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/src\ folder/i2c.o: src\ folder/i2c.c  .generated_files/e445f16a57c92ed71efe6e2e0c3c4a93264eedc.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/i2c.o".d 
	@${RM} "${OBJECTDIR}/src folder/i2c.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/i2c.o.d" -o "${OBJECTDIR}/src folder/i2c.o" "src folder/i2c.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/oc.o: src\ folder/oc.c  .generated_files/ccd02760692c36337ac45fa2e5137c612ec96238.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/oc.o".d 
	@${RM} "${OBJECTDIR}/src folder/oc.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/oc.o.d" -o "${OBJECTDIR}/src folder/oc.o" "src folder/oc.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/pwm.o: src\ folder/pwm.c  .generated_files/6cc58b1847ba3c49bcb12b288dda2e1b074b1506.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/pwm.o".d 
	@${RM} "${OBJECTDIR}/src folder/pwm.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/pwm.o.d" -o "${OBJECTDIR}/src folder/pwm.o" "src folder/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/servo.o: src\ folder/servo.c  .generated_files/be0dec06af8747ac43eb9c154e0f706cc1a31e1e.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/servo.o".d 
	@${RM} "${OBJECTDIR}/src folder/servo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/servo.o.d" -o "${OBJECTDIR}/src folder/servo.o" "src folder/servo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/shell.o: src\ folder/shell.c  .generated_files/91202c4838a4eee7dd991561ba65853bad7580b7.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/shell.o".d 
	@${RM} "${OBJECTDIR}/src folder/shell.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/shell.o.d" -o "${OBJECTDIR}/src folder/shell.o" "src folder/shell.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/spiflash.o: src\ folder/spiflash.c  .generated_files/8af41287a5e4767d38e8f86dfcef578c7e508950.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o".d 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/spiflash.o.d" -o "${OBJECTDIR}/src folder/spiflash.o" "src folder/spiflash.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/srf.o: src\ folder/srf.c  .generated_files/34425d4f46f6b9797b6e67695ae1246c8deae633.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/srf.o".d 
	@${RM} "${OBJECTDIR}/src folder/srf.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/srf.o.d" -o "${OBJECTDIR}/src folder/srf.o" "src folder/srf.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/testservo.o: src\ folder/testservo.c  .generated_files/347d00add0c839f873fbed8bb63a71c40ce75a58.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/testservo.o".d 
	@${RM} "${OBJECTDIR}/src folder/testservo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/testservo.o.d" -o "${OBJECTDIR}/src folder/testservo.o" "src folder/testservo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/timer.o: src\ folder/timer.c  .generated_files/497382e4c40d37d66ab36de1b78af2584af74da.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/timer.o".d 
	@${RM} "${OBJECTDIR}/src folder/timer.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/timer.o.d" -o "${OBJECTDIR}/src folder/timer.o" "src folder/timer.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/uart.o: src\ folder/uart.c  .generated_files/74c7e76eb5feb62cc954d0f5ab3163a452cea952.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/uart.o".d 
	@${RM} "${OBJECTDIR}/src folder/uart.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/uart.o.d" -o "${OBJECTDIR}/src folder/uart.o" "src folder/uart.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_E2A1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.4_E2A1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
