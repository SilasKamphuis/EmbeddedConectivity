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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.3_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.3_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED="src folder/oc.c" "src folder/pwm.c" "src folder/servo.c" "src folder/spiflash.c" "src folder/testservo.c" "src folder/timer.c" "src folder/uart.c" "src folder/shell.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED="${OBJECTDIR}/src folder/oc.o" "${OBJECTDIR}/src folder/pwm.o" "${OBJECTDIR}/src folder/servo.o" "${OBJECTDIR}/src folder/spiflash.o" "${OBJECTDIR}/src folder/testservo.o" "${OBJECTDIR}/src folder/timer.o" "${OBJECTDIR}/src folder/uart.o" "${OBJECTDIR}/src folder/shell.o"
POSSIBLE_DEPFILES="${OBJECTDIR}/src folder/oc.o.d" "${OBJECTDIR}/src folder/pwm.o.d" "${OBJECTDIR}/src folder/servo.o.d" "${OBJECTDIR}/src folder/spiflash.o.d" "${OBJECTDIR}/src folder/testservo.o.d" "${OBJECTDIR}/src folder/timer.o.d" "${OBJECTDIR}/src folder/uart.o.d" "${OBJECTDIR}/src folder/shell.o.d"

# Object Files
OBJECTFILES=${OBJECTDIR}/src\ folder/oc.o ${OBJECTDIR}/src\ folder/pwm.o ${OBJECTDIR}/src\ folder/servo.o ${OBJECTDIR}/src\ folder/spiflash.o ${OBJECTDIR}/src\ folder/testservo.o ${OBJECTDIR}/src\ folder/timer.o ${OBJECTDIR}/src\ folder/uart.o ${OBJECTDIR}/src\ folder/shell.o

# Source Files
SOURCEFILES=src folder/oc.c src folder/pwm.c src folder/servo.c src folder/spiflash.c src folder/testservo.c src folder/timer.c src folder/uart.c src folder/shell.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.3_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/src\ folder/oc.o: src\ folder/oc.c  .generated_files/ac2b228619295c4da1edfce624edbfaa466524d4.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/oc.o".d 
	@${RM} "${OBJECTDIR}/src folder/oc.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/oc.o.d" -o "${OBJECTDIR}/src folder/oc.o" "src folder/oc.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/pwm.o: src\ folder/pwm.c  .generated_files/3ab5548b77a692958a78a2350e82d521132803fd.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/pwm.o".d 
	@${RM} "${OBJECTDIR}/src folder/pwm.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/pwm.o.d" -o "${OBJECTDIR}/src folder/pwm.o" "src folder/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/servo.o: src\ folder/servo.c  .generated_files/1c041e5d16a4135352aef80645f5c97668ad35ca.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/servo.o".d 
	@${RM} "${OBJECTDIR}/src folder/servo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/servo.o.d" -o "${OBJECTDIR}/src folder/servo.o" "src folder/servo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/spiflash.o: src\ folder/spiflash.c  .generated_files/6f9b292da0b7f31817d95fbbb5ad3e9c7e6e0aa5.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o".d 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/spiflash.o.d" -o "${OBJECTDIR}/src folder/spiflash.o" "src folder/spiflash.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/testservo.o: src\ folder/testservo.c  .generated_files/c4104c9f7f9629fc29abf6d00e3e52b73cc0dd1e.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/testservo.o".d 
	@${RM} "${OBJECTDIR}/src folder/testservo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/testservo.o.d" -o "${OBJECTDIR}/src folder/testservo.o" "src folder/testservo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/timer.o: src\ folder/timer.c  .generated_files/16ee9b5be93cbbe028180c1ff59ab506d0631faa.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/timer.o".d 
	@${RM} "${OBJECTDIR}/src folder/timer.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/timer.o.d" -o "${OBJECTDIR}/src folder/timer.o" "src folder/timer.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/uart.o: src\ folder/uart.c  .generated_files/1b80bad403b729586f732507fc285595b5e71406.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/uart.o".d 
	@${RM} "${OBJECTDIR}/src folder/uart.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/uart.o.d" -o "${OBJECTDIR}/src folder/uart.o" "src folder/uart.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/shell.o: src\ folder/shell.c  .generated_files/1a1cbbab61a5a264f49cf189d6e9bd3b4283b3c1.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/shell.o".d 
	@${RM} "${OBJECTDIR}/src folder/shell.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/shell.o.d" -o "${OBJECTDIR}/src folder/shell.o" "src folder/shell.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/src\ folder/oc.o: src\ folder/oc.c  .generated_files/943a682a24816968e7fb5fbd8b1c00e51f033d43.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/oc.o".d 
	@${RM} "${OBJECTDIR}/src folder/oc.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/oc.o.d" -o "${OBJECTDIR}/src folder/oc.o" "src folder/oc.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/pwm.o: src\ folder/pwm.c  .generated_files/d3f43e58d36cc10f792676007dabc4d4ce8c50b8.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/pwm.o".d 
	@${RM} "${OBJECTDIR}/src folder/pwm.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/pwm.o.d" -o "${OBJECTDIR}/src folder/pwm.o" "src folder/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/servo.o: src\ folder/servo.c  .generated_files/d5653ec2852976ec5294715f942fc8aa0ef457ff.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/servo.o".d 
	@${RM} "${OBJECTDIR}/src folder/servo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/servo.o.d" -o "${OBJECTDIR}/src folder/servo.o" "src folder/servo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/spiflash.o: src\ folder/spiflash.c  .generated_files/206ada8fa67ee663e00434105644419f6f6e93af.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o".d 
	@${RM} "${OBJECTDIR}/src folder/spiflash.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/spiflash.o.d" -o "${OBJECTDIR}/src folder/spiflash.o" "src folder/spiflash.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/testservo.o: src\ folder/testservo.c  .generated_files/121c6ff7149188deaf7a059b05c05f23fd5a2c34.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/testservo.o".d 
	@${RM} "${OBJECTDIR}/src folder/testservo.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/testservo.o.d" -o "${OBJECTDIR}/src folder/testservo.o" "src folder/testservo.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/timer.o: src\ folder/timer.c  .generated_files/5126b9ff64bdcc9595540fa577581aba855f9b7f.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/timer.o".d 
	@${RM} "${OBJECTDIR}/src folder/timer.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/timer.o.d" -o "${OBJECTDIR}/src folder/timer.o" "src folder/timer.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/uart.o: src\ folder/uart.c  .generated_files/640f60e2e7e0113785093632651b03e39028007.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/uart.o".d 
	@${RM} "${OBJECTDIR}/src folder/uart.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/uart.o.d" -o "${OBJECTDIR}/src folder/uart.o" "src folder/uart.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src\ folder/shell.o: src\ folder/shell.c  .generated_files/634894c784a64f1be83aa4f725d0a5404a5e7f58.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src folder" 
	@${RM} "${OBJECTDIR}/src folder/shell.o".d 
	@${RM} "${OBJECTDIR}/src folder/shell.o" 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc folder" -I"src folder" -MP -MMD -MF "${OBJECTDIR}/src folder/shell.o.d" -o "${OBJECTDIR}/src folder/shell.o" "src folder/shell.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.3_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.3_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.3_E2A1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.3_E2A1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Ass1.3_E2A1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
