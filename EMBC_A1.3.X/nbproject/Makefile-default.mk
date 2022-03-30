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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=servocontrol.c lib/src/timer.c lib/src/button.c lib/src/i2c.c lib/src/oc.c lib/src/pwm.c lib/src/servo.c lib/src/spiflash.c lib/src/srf.c lib/src/uart.c lib/inc/servocontrol.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/servocontrol.o ${OBJECTDIR}/lib/src/timer.o ${OBJECTDIR}/lib/src/button.o ${OBJECTDIR}/lib/src/i2c.o ${OBJECTDIR}/lib/src/oc.o ${OBJECTDIR}/lib/src/pwm.o ${OBJECTDIR}/lib/src/servo.o ${OBJECTDIR}/lib/src/spiflash.o ${OBJECTDIR}/lib/src/srf.o ${OBJECTDIR}/lib/src/uart.o ${OBJECTDIR}/lib/inc/servocontrol.o
POSSIBLE_DEPFILES=${OBJECTDIR}/servocontrol.o.d ${OBJECTDIR}/lib/src/timer.o.d ${OBJECTDIR}/lib/src/button.o.d ${OBJECTDIR}/lib/src/i2c.o.d ${OBJECTDIR}/lib/src/oc.o.d ${OBJECTDIR}/lib/src/pwm.o.d ${OBJECTDIR}/lib/src/servo.o.d ${OBJECTDIR}/lib/src/spiflash.o.d ${OBJECTDIR}/lib/src/srf.o.d ${OBJECTDIR}/lib/src/uart.o.d ${OBJECTDIR}/lib/inc/servocontrol.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/servocontrol.o ${OBJECTDIR}/lib/src/timer.o ${OBJECTDIR}/lib/src/button.o ${OBJECTDIR}/lib/src/i2c.o ${OBJECTDIR}/lib/src/oc.o ${OBJECTDIR}/lib/src/pwm.o ${OBJECTDIR}/lib/src/servo.o ${OBJECTDIR}/lib/src/spiflash.o ${OBJECTDIR}/lib/src/srf.o ${OBJECTDIR}/lib/src/uart.o ${OBJECTDIR}/lib/inc/servocontrol.o

# Source Files
SOURCEFILES=servocontrol.c lib/src/timer.c lib/src/button.c lib/src/i2c.c lib/src/oc.c lib/src/pwm.c lib/src/servo.c lib/src/spiflash.c lib/src/srf.c lib/src/uart.c lib/inc/servocontrol.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/servocontrol.o: servocontrol.c  .generated_files/8cb593154cfbdae518fdceddffa65590946e8067.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/servocontrol.o.d 
	@${RM} ${OBJECTDIR}/servocontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/servocontrol.o.d" -o ${OBJECTDIR}/servocontrol.o servocontrol.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/timer.o: lib/src/timer.c  .generated_files/c2ba05459eb20dfb323459aa8dad2b9569e1d49b.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/timer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/timer.o.d" -o ${OBJECTDIR}/lib/src/timer.o lib/src/timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/button.o: lib/src/button.c  .generated_files/639a3fd29cb162945e078bd256e4a3ad4e0cf6e5.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/button.o.d 
	@${RM} ${OBJECTDIR}/lib/src/button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/button.o.d" -o ${OBJECTDIR}/lib/src/button.o lib/src/button.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/i2c.o: lib/src/i2c.c  .generated_files/b2bd4e2b2bddc734797cf8b6d7f30fbaa683de1.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o.d 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/i2c.o.d" -o ${OBJECTDIR}/lib/src/i2c.o lib/src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/oc.o: lib/src/oc.c  .generated_files/d467dbb506b79c01b51754e97a9fa4e5e5189ae8.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/oc.o.d 
	@${RM} ${OBJECTDIR}/lib/src/oc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/oc.o.d" -o ${OBJECTDIR}/lib/src/oc.o lib/src/oc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/pwm.o: lib/src/pwm.c  .generated_files/e437ad2e57731e8e64bcd738c69d5a02e46fe167.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/pwm.o.d" -o ${OBJECTDIR}/lib/src/pwm.o lib/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/servo.o: lib/src/servo.c  .generated_files/f60a78b26e007396ebcee48216418e66d0400c60.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/servo.o.d 
	@${RM} ${OBJECTDIR}/lib/src/servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/servo.o.d" -o ${OBJECTDIR}/lib/src/servo.o lib/src/servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/spiflash.o: lib/src/spiflash.c  .generated_files/6be5ffa9c6aad728275280ae6c655ae1cdfc0f4b.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o.d 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/spiflash.o.d" -o ${OBJECTDIR}/lib/src/spiflash.o lib/src/spiflash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/srf.o: lib/src/srf.c  .generated_files/d052a298f1cec2dec12f6bba7ac2cbe23e53030b.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/srf.o.d 
	@${RM} ${OBJECTDIR}/lib/src/srf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/srf.o.d" -o ${OBJECTDIR}/lib/src/srf.o lib/src/srf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/uart.o: lib/src/uart.c  .generated_files/f8906964eef683683f36f56c54ee239d87cf461d.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/uart.o.d" -o ${OBJECTDIR}/lib/src/uart.o lib/src/uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/inc/servocontrol.o: lib/inc/servocontrol.c  .generated_files/47cce6f40c58837bafd15ad3375e11b57353b531.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/inc" 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o.d 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/inc/servocontrol.o.d" -o ${OBJECTDIR}/lib/inc/servocontrol.o lib/inc/servocontrol.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/servocontrol.o: servocontrol.c  .generated_files/dc970a0259ac260ac5d6eba3033da53293a1e8d.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/servocontrol.o.d 
	@${RM} ${OBJECTDIR}/servocontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/servocontrol.o.d" -o ${OBJECTDIR}/servocontrol.o servocontrol.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/timer.o: lib/src/timer.c  .generated_files/ff3981c03b5a308669ac29de260c5b145da213ba.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/timer.o.d 
	@${RM} ${OBJECTDIR}/lib/src/timer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/timer.o.d" -o ${OBJECTDIR}/lib/src/timer.o lib/src/timer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/button.o: lib/src/button.c  .generated_files/62d012acbfd6f646409b103161d57925efdcb8e0.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/button.o.d 
	@${RM} ${OBJECTDIR}/lib/src/button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/button.o.d" -o ${OBJECTDIR}/lib/src/button.o lib/src/button.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/i2c.o: lib/src/i2c.c  .generated_files/d1f73b23a218df5e497856d61124953401f06c51.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o.d 
	@${RM} ${OBJECTDIR}/lib/src/i2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/i2c.o.d" -o ${OBJECTDIR}/lib/src/i2c.o lib/src/i2c.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/oc.o: lib/src/oc.c  .generated_files/b77cf39f7a650608272f33fe93ef6373564782f2.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/oc.o.d 
	@${RM} ${OBJECTDIR}/lib/src/oc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/oc.o.d" -o ${OBJECTDIR}/lib/src/oc.o lib/src/oc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/pwm.o: lib/src/pwm.c  .generated_files/2930f040e2d552966cbf1d102a56febaacd66ef.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o.d 
	@${RM} ${OBJECTDIR}/lib/src/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/pwm.o.d" -o ${OBJECTDIR}/lib/src/pwm.o lib/src/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/servo.o: lib/src/servo.c  .generated_files/34a76a253e734812f2d555f8c7d657b269c18886.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/servo.o.d 
	@${RM} ${OBJECTDIR}/lib/src/servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/servo.o.d" -o ${OBJECTDIR}/lib/src/servo.o lib/src/servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/spiflash.o: lib/src/spiflash.c  .generated_files/3788eb7b6cb9cea5d83fdf82b9607d3ba821ed1.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o.d 
	@${RM} ${OBJECTDIR}/lib/src/spiflash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/spiflash.o.d" -o ${OBJECTDIR}/lib/src/spiflash.o lib/src/spiflash.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/srf.o: lib/src/srf.c  .generated_files/ea85bf808433f072c8a10af7a5cc06ad403122b4.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/srf.o.d 
	@${RM} ${OBJECTDIR}/lib/src/srf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/srf.o.d" -o ${OBJECTDIR}/lib/src/srf.o lib/src/srf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/src/uart.o: lib/src/uart.c  .generated_files/ce2bf0a1a1bbaedd1a3782440f5841904848329.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/src" 
	@${RM} ${OBJECTDIR}/lib/src/uart.o.d 
	@${RM} ${OBJECTDIR}/lib/src/uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/src/uart.o.d" -o ${OBJECTDIR}/lib/src/uart.o lib/src/uart.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/lib/inc/servocontrol.o: lib/inc/servocontrol.c  .generated_files/505e36003b44dd5bbd66aa1f6e48d0a1e6006a63.flag .generated_files/16f2622abf5d8a03fc6ac4e3777700166a2841fe.flag
	@${MKDIR} "${OBJECTDIR}/lib/inc" 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o.d 
	@${RM} ${OBJECTDIR}/lib/inc/servocontrol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"lib/src" -I"lib/inc" -MP -MMD -MF "${OBJECTDIR}/lib/inc/servocontrol.o.d" -o ${OBJECTDIR}/lib/inc/servocontrol.o lib/inc/servocontrol.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/EMBC_A1.3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
