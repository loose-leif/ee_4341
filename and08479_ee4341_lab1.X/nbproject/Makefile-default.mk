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
FINAL_IMAGE=${DISTDIR}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=sourceOfFiles/and08479_main.c sourceOfFiles/io_setup.c sourceOfFiles/uart1_setup.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/sourceOfFiles/and08479_main.o ${OBJECTDIR}/sourceOfFiles/io_setup.o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o
POSSIBLE_DEPFILES=${OBJECTDIR}/sourceOfFiles/and08479_main.o.d ${OBJECTDIR}/sourceOfFiles/io_setup.o.d ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/sourceOfFiles/and08479_main.o ${OBJECTDIR}/sourceOfFiles/io_setup.o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o

# Source Files
SOURCEFILES=sourceOfFiles/and08479_main.c sourceOfFiles/io_setup.c sourceOfFiles/uart1_setup.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/sourceOfFiles/and08479_main.o: sourceOfFiles/and08479_main.c  .generated_files/flags/default/686bc46b0dcbea3fbb882a7082c57c0506cf256e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/and08479_main.o.d" -o ${OBJECTDIR}/sourceOfFiles/and08479_main.o sourceOfFiles/and08479_main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/io_setup.o: sourceOfFiles/io_setup.c  .generated_files/flags/default/d5d95aaa51f892c9f29d75f8376f0f0613c168ea .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/io_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/io_setup.o sourceOfFiles/io_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/uart1_setup.o: sourceOfFiles/uart1_setup.c  .generated_files/flags/default/1e75c0cdd540652fde6481ac102d670faae4d64c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o sourceOfFiles/uart1_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/sourceOfFiles/and08479_main.o: sourceOfFiles/and08479_main.c  .generated_files/flags/default/985c06e86ac8e21c0cdc3a4517783c0a48ca8119 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/and08479_main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/and08479_main.o.d" -o ${OBJECTDIR}/sourceOfFiles/and08479_main.o sourceOfFiles/and08479_main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/io_setup.o: sourceOfFiles/io_setup.c  .generated_files/flags/default/da2e1c49ab76b980ee5683a16aadda9cd2998bec .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/io_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/io_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/io_setup.o sourceOfFiles/io_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/uart1_setup.o: sourceOfFiles/uart1_setup.c  .generated_files/flags/default/f7f799044c8805ffc41e9a43ef3a61c54afa235b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/uart1_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/uart1_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/uart1_setup.o sourceOfFiles/uart1_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--defsym=_min_heap_size=256,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=256,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/and08479_ee4341_lab1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
