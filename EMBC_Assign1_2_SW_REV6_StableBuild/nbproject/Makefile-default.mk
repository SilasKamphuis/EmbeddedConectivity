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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_Assign1_2_SW_REV6_StableBuild.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_Assign1_2_SW_REV6_StableBuild.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=src/oc.c src/pwm.c src/servo.c src/testservo.c src/timer.c src/spiflash.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/oc.o ${OBJECTDIR}/src/pwm.o ${OBJECTDIR}/src/servo.o ${OBJECTDIR}/src/testservo.o ${OBJECTDIR}/src/timer.o ${OBJECTDIR}/src/spiflash.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/oc.o.d ${OBJECTDIR}/src/pwm.o.d ${OBJECTDIR}/src/servo.o.d ${OBJECTDIR}/src/testservo.o.d ${OBJECTDIR}/src/timer.o.d ${OBJECTDIR}/src/spiflash.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/oc.o ${OBJECTDIR}/src/pwm.o ${OBJECTDIR}/src/servo.o ${OBJECTDIR}/src/testservo.o ${OBJECTDIR}/src/timer.o ${OBJECTDIR}/src/spiflash.o

# Source Files
SOURCEFILES=src/oc.c src/pwm.c src/servo.c src/testservo.c src/timer.c src/spiflash.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_Assign1_2_SW_REV6_StableBuild.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/src/oc.o: src/oc.c  .generated_files/6cb676521f8f1e8a366c908d70fadfa4b538376a.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/oc.o.d 
	@${RM} ${OBJECTDIR}/src/oc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/oc.o.d" -o ${OBJECTDIR}/src/oc.o src/oc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/pwm.o: src/pwm.c  .generated_files/aab3b0c8c745a0c9fcbf4b1a1447dfcb5a0f1d9b.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/pwm.o.d 
	@${RM} ${OBJECTDIR}/src/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/pwm.o.d" -o ${OBJECTDIR}/src/pwm.o src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/servo.o: src/servo.c  .generated_files/9136e5905acd0b05b4bc30a10f62e407e00b4026.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/servo.o.d 
	@${RM} ${OBJECTDIR}/src/servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/servo.o.d" -o ${OBJECTDIR}/src/servo.o src/servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/testservo.o: src/testservo.c  .generated_files/9ee4171662e44e098137fc136c72ec07b3e94b84.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/testservo.o.d 
	@${RM} ${OBJECTDIR}/src/testservo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/testservo.o.d" -o ${OBJECTDIR}/src/testservo.o src/testservo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/timer.o: src/timer.c  .generated_files/9ba655e26353e7e1d497ec52f099a8ecf8955b0a.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/timer.o.d 
	@${RM} ${OBJECTDIR}/src/timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/timer.o.d" -o ${OBJECTDIR}/src/timer.o src/timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/spiflash.o: src/spiflash.c  .generated_files/bc3dee505c83294c6027e950712e929d618f76c1.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/spiflash.o.d 
	@${RM} ${OBJECTDIR}/src/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/spiflash.o.d" -o ${OBJECTDIR}/src/spiflash.o src/spiflash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/src/oc.o: src/oc.c  .generated_files/45711dd94dfab86d82612e0fb399b1329b8fa5ae.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/oc.o.d 
	@${RM} ${OBJECTDIR}/src/oc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/oc.o.d" -o ${OBJECTDIR}/src/oc.o src/oc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/pwm.o: src/pwm.c  .generated_files/1732c197349afc653c6685d24943032ac07bad34.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/pwm.o.d 
	@${RM} ${OBJECTDIR}/src/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/pwm.o.d" -o ${OBJECTDIR}/src/pwm.o src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/servo.o: src/servo.c  .generated_files/3ac96337da6746ce873203560b237273e8268748.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/servo.o.d 
	@${RM} ${OBJECTDIR}/src/servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/servo.o.d" -o ${OBJECTDIR}/src/servo.o src/servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/testservo.o: src/testservo.c  .generated_files/52c53e009c7d15c00f9c185d6ea24a42a9570b08.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/testservo.o.d 
	@${RM} ${OBJECTDIR}/src/testservo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/testservo.o.d" -o ${OBJECTDIR}/src/testservo.o src/testservo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/timer.o: src/timer.c  .generated_files/c58aba5c2acae2b55ee757c7bd1f7f2ef6d6541e.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/timer.o.d 
	@${RM} ${OBJECTDIR}/src/timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/timer.o.d" -o ${OBJECTDIR}/src/timer.o src/timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/src/spiflash.o: src/spiflash.c  .generated_files/ee5b6ccca5b1d3e4e190fe9cd4a2e1daefce027d.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/spiflash.o.d 
	@${RM} ${OBJECTDIR}/src/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"inc" -I"src" -MP -MMD -MF "${OBJECTDIR}/src/spiflash.o.d" -o ${OBJECTDIR}/src/spiflash.o src/spiflash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_Assign1_2_SW_REV6_StableBuild.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_Assign1_2_SW_REV6_StableBuild.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_Assign1_2_SW_REV6_StableBuild.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_Assign1_2_SW_REV6_StableBuild.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_Assign1_2_SW_REV6_StableBuild.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
