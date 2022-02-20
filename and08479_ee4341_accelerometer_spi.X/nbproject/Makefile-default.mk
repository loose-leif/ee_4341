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
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=sourceOfFiles/lab2/accel_define.c sourceOfFiles/lab2/accel_read_x.c sourceOfFiles/lab2/accel_read_y.c sourceOfFiles/lab2/accel_read_z.c sourceOfFiles/lab2/accel_setup.c sourceOfFiles/lab2/spi2_read_register.c sourceOfFiles/lab2/spi2_setup.c sourceOfFiles/lab2/spi2_write_register.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o
POSSIBLE_DEPFILES=${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o

# Source Files
SOURCEFILES=sourceOfFiles/lab2/accel_define.c sourceOfFiles/lab2/accel_read_x.c sourceOfFiles/lab2/accel_read_y.c sourceOfFiles/lab2/accel_read_z.c sourceOfFiles/lab2/accel_setup.c sourceOfFiles/lab2/spi2_read_register.c sourceOfFiles/lab2/spi2_setup.c sourceOfFiles/lab2/spi2_write_register.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX570F512L
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
${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o: sourceOfFiles/lab2/accel_define.c  .generated_files/flags/default/64167dd05624d6f67cc079d9ca57e5fcfbea016f .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o sourceOfFiles/lab2/accel_define.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o: sourceOfFiles/lab2/accel_read_x.c  .generated_files/flags/default/30a4e20ca0832c422c05476131e6cc2d5b911fa6 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o sourceOfFiles/lab2/accel_read_x.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o: sourceOfFiles/lab2/accel_read_y.c  .generated_files/flags/default/5f3175ec9818a99ef253cdcd414eeb559b0bc2a2 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o sourceOfFiles/lab2/accel_read_y.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o: sourceOfFiles/lab2/accel_read_z.c  .generated_files/flags/default/7472363b4b794bc68761189bd77e20117e93e662 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o sourceOfFiles/lab2/accel_read_z.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o: sourceOfFiles/lab2/accel_setup.c  .generated_files/flags/default/6533c941455ec268683e5cb933ba9b3db43c5d6c .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o sourceOfFiles/lab2/accel_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o: sourceOfFiles/lab2/spi2_read_register.c  .generated_files/flags/default/1d3d20de119caece31efc77b52a1c098db2077c8 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o sourceOfFiles/lab2/spi2_read_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o: sourceOfFiles/lab2/spi2_setup.c  .generated_files/flags/default/60e60505c35ed44ae53e5048d2c865a3c6fa70bd .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o sourceOfFiles/lab2/spi2_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o: sourceOfFiles/lab2/spi2_write_register.c  .generated_files/flags/default/dc6b56e2143004d0a4fbc66671c9ce4755be482 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o sourceOfFiles/lab2/spi2_write_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o: sourceOfFiles/lab2/accel_define.c  .generated_files/flags/default/43428a3e779f688cb03ccefbef7444e143d460 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o sourceOfFiles/lab2/accel_define.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o: sourceOfFiles/lab2/accel_read_x.c  .generated_files/flags/default/446a5dcfdfb2b25e13478cf6a904fc9d9eb611bc .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o sourceOfFiles/lab2/accel_read_x.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o: sourceOfFiles/lab2/accel_read_y.c  .generated_files/flags/default/f7da393e5f0269b7961cc1685d9120356194c8e1 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o sourceOfFiles/lab2/accel_read_y.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o: sourceOfFiles/lab2/accel_read_z.c  .generated_files/flags/default/fa009a3e133c9695702b0d7596630140c070e70 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o sourceOfFiles/lab2/accel_read_z.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o: sourceOfFiles/lab2/accel_setup.c  .generated_files/flags/default/7243857c3602f5935bcf2cd6b430cb10bc133dbe .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o sourceOfFiles/lab2/accel_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o: sourceOfFiles/lab2/spi2_read_register.c  .generated_files/flags/default/ce99fa3b7f8f42b6b64ac3dd06091ccdc27efddc .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o sourceOfFiles/lab2/spi2_read_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o: sourceOfFiles/lab2/spi2_setup.c  .generated_files/flags/default/64076df4c9e56bd0eb4adde747d834c54255b1b1 .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o sourceOfFiles/lab2/spi2_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o: sourceOfFiles/lab2/spi2_write_register.c  .generated_files/flags/default/949d8b6b11a5a229183068ac41c5b274d589296d .generated_files/flags/default/5a72ac1cc227a866bb30217c0e6ea1920c4e18c3
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o sourceOfFiles/lab2/spi2_write_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  r dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
else
dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  r dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
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
