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
FINAL_IMAGE=${DISTDIR}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=
FINAL_IMAGE=${DISTDIR}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o: sourceOfFiles/lab2/accel_define.c  .generated_files/flags/default/428fb0278c0192358092006a8ff130b251074f42 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o sourceOfFiles/lab2/accel_define.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o: sourceOfFiles/lab2/accel_read_x.c  .generated_files/flags/default/5019111558a6fb11944f54f429ca4918c79d889d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o sourceOfFiles/lab2/accel_read_x.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o: sourceOfFiles/lab2/accel_read_y.c  .generated_files/flags/default/7a7f2c30fc90f68f48c27a8f0ceed0c40b391db0 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o sourceOfFiles/lab2/accel_read_y.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o: sourceOfFiles/lab2/accel_read_z.c  .generated_files/flags/default/3b1d9f2ce488cc17527803f87d07cb19805ddaf .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o sourceOfFiles/lab2/accel_read_z.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o: sourceOfFiles/lab2/accel_setup.c  .generated_files/flags/default/d8a84b61d55083898337671713df3e707c64ecf9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o sourceOfFiles/lab2/accel_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o: sourceOfFiles/lab2/spi2_read_register.c  .generated_files/flags/default/e1371b3962f37c253700ac5265a425a12159f9a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o sourceOfFiles/lab2/spi2_read_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o: sourceOfFiles/lab2/spi2_setup.c  .generated_files/flags/default/3f5a4902b4485fa011c443768a9dfb1d3686bc1a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o sourceOfFiles/lab2/spi2_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o: sourceOfFiles/lab2/spi2_write_register.c  .generated_files/flags/default/83e59943b4502da46166157f78ad712f7eee66ba .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o sourceOfFiles/lab2/spi2_write_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o: sourceOfFiles/lab2/accel_define.c  .generated_files/flags/default/15e666e8a3b75eb0b0c1a8cf017dca905fd9e42e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o sourceOfFiles/lab2/accel_define.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o: sourceOfFiles/lab2/accel_read_x.c  .generated_files/flags/default/b9a67e65b7d9bb2c47d48ef549ed3fc5874efaf2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o sourceOfFiles/lab2/accel_read_x.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o: sourceOfFiles/lab2/accel_read_y.c  .generated_files/flags/default/205a048a7b8a4c7eb15b9d74acf2358958dca1c4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o sourceOfFiles/lab2/accel_read_y.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o: sourceOfFiles/lab2/accel_read_z.c  .generated_files/flags/default/df594de5ec303d7b1333ba0d39dd244b5b0cbec2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o sourceOfFiles/lab2/accel_read_z.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o: sourceOfFiles/lab2/accel_setup.c  .generated_files/flags/default/b549cf7d0a03a1134aeaecdb822374b8de502b0a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o sourceOfFiles/lab2/accel_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o: sourceOfFiles/lab2/spi2_read_register.c  .generated_files/flags/default/2eb775629fb5f5da3dc232b2d263bbc7bc8bf261 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o sourceOfFiles/lab2/spi2_read_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o: sourceOfFiles/lab2/spi2_setup.c  .generated_files/flags/default/eeb7b6ff6452f441ca0fc8eaee331aae22017087 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o sourceOfFiles/lab2/spi2_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o: sourceOfFiles/lab2/spi2_write_register.c  .generated_files/flags/default/9c98b5ebbe3cdc82f7c2fa5113e8b0b7db7adb05 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
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
${DISTDIR}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  r ${DISTDIR}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
else
${DISTDIR}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  r ${DISTDIR}/and08479_ee4341_accelerometer_spi.X.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    
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
