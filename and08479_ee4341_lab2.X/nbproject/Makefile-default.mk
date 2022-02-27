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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=sourceOfFiles/and08479_main.c sourceOfFiles/uart1_setup.c sourceOfFiles/io_setup.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/sourceOfFiles/and08479_main.o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o ${OBJECTDIR}/sourceOfFiles/io_setup.o
POSSIBLE_DEPFILES=${OBJECTDIR}/sourceOfFiles/and08479_main.o.d ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d ${OBJECTDIR}/sourceOfFiles/io_setup.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/sourceOfFiles/and08479_main.o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o ${OBJECTDIR}/sourceOfFiles/io_setup.o

# Source Files
SOURCEFILES=sourceOfFiles/and08479_main.c sourceOfFiles/uart1_setup.c sourceOfFiles/io_setup.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX470F512L
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
${OBJECTDIR}/sourceOfFiles/and08479_main.o: sourceOfFiles/and08479_main.c  .generated_files/flags/default/4aa2505606f4bd4dffcce2e580e63d751d45d3ab .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/and08479_main.o.d" -o ${OBJECTDIR}/sourceOfFiles/and08479_main.o sourceOfFiles/and08479_main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/uart1_setup.o: sourceOfFiles/uart1_setup.c  .generated_files/flags/default/764aa404e7e1c6ad72d8a8936470fe0fac5bc5bb .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o sourceOfFiles/uart1_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/io_setup.o: sourceOfFiles/io_setup.c  .generated_files/flags/default/a914db92393a00a6fd0202d5096446a0a09bedc3 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/io_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/io_setup.o sourceOfFiles/io_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/sourceOfFiles/and08479_main.o: sourceOfFiles/and08479_main.c  .generated_files/flags/default/e60bed902a0b6b878cc2f1d85d8a84dc1a68410a .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/and08479_main.o.d" -o ${OBJECTDIR}/sourceOfFiles/and08479_main.o sourceOfFiles/and08479_main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/uart1_setup.o: sourceOfFiles/uart1_setup.c  .generated_files/flags/default/b34a39b690dcd8211e77a63e12e250585d581a64 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o sourceOfFiles/uart1_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/io_setup.o: sourceOfFiles/io_setup.c  .generated_files/flags/default/f6450d37b14a7100d835bc8f620c78a52d4ae68f .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/io_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/io_setup.o sourceOfFiles/io_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../and08479_ee4341_accelerometer_spi.X/dist/default/production/and08479_ee4341_accelerometer_spi.X.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\and08479_ee4341_accelerometer_spi.X\dist\default\production\and08479_ee4341_accelerometer_spi.X.a      -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--defsym=_min_heap_size=256,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../and08479_ee4341_accelerometer_spi.X/dist/default/production/and08479_ee4341_accelerometer_spi.X.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\and08479_ee4341_accelerometer_spi.X\dist\default\production\and08479_ee4341_accelerometer_spi.X.a      -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=256,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
