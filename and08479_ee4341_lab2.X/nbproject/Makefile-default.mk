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
SOURCEFILES_QUOTED_IF_SPACED=sourceOfFiles/lab2/accel_define.c sourceOfFiles/lab2/accel_read_x.c sourceOfFiles/lab2/accel_read_y.c sourceOfFiles/lab2/accel_read_z.c sourceOfFiles/lab2/accel_setup.c sourceOfFiles/lab2/spi2_read_register.c sourceOfFiles/lab2/spi2_setup.c sourceOfFiles/lab2/spi2_write_register.c sourceOfFiles/lab2/test..demo.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o ${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o
POSSIBLE_DEPFILES=${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d ${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o ${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o

# Source Files
SOURCEFILES=sourceOfFiles/lab2/accel_define.c sourceOfFiles/lab2/accel_read_x.c sourceOfFiles/lab2/accel_read_y.c sourceOfFiles/lab2/accel_read_z.c sourceOfFiles/lab2/accel_setup.c sourceOfFiles/lab2/spi2_read_register.c sourceOfFiles/lab2/spi2_setup.c sourceOfFiles/lab2/spi2_write_register.c sourceOfFiles/lab2/test..demo.c



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
${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o: sourceOfFiles/lab2/accel_define.c  .generated_files/2f0f6e75329a655fc51ab919965edf602c14fe8d.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o sourceOfFiles/lab2/accel_define.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o: sourceOfFiles/lab2/accel_read_x.c  .generated_files/bb2b258769d6d1ff8bb46d5187f3f71b2046957b.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o sourceOfFiles/lab2/accel_read_x.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o: sourceOfFiles/lab2/accel_read_y.c  .generated_files/1e84d18459d235c7ff4690ce308419b62a921a85.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o sourceOfFiles/lab2/accel_read_y.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o: sourceOfFiles/lab2/accel_read_z.c  .generated_files/148ad12d87ef0f604dd4c7db18ab60c1b2867ce4.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o sourceOfFiles/lab2/accel_read_z.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o: sourceOfFiles/lab2/accel_setup.c  .generated_files/c31719cbd9b388e132fff5185cea7fe26094bfaa.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o sourceOfFiles/lab2/accel_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o: sourceOfFiles/lab2/spi2_read_register.c  .generated_files/d5646b2caa111b2e52b6b7bd4704923d5fedd50d.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o sourceOfFiles/lab2/spi2_read_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o: sourceOfFiles/lab2/spi2_setup.c  .generated_files/37d7d92df23fc47caa996422ea522f2bd603e855.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o sourceOfFiles/lab2/spi2_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o: sourceOfFiles/lab2/spi2_write_register.c  .generated_files/22e400a8cbaa5475792ea6b7457bbc1ad8cdcce9.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o sourceOfFiles/lab2/spi2_write_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o: sourceOfFiles/lab2/test..demo.c  .generated_files/2a427f78d554c1905abccf1fba0d15b872fa554f.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o sourceOfFiles/lab2/test..demo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o: sourceOfFiles/lab2/accel_define.c  .generated_files/c494a225fc173b246476e82c84fe7a5ea0839644.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_define.o sourceOfFiles/lab2/accel_define.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o: sourceOfFiles/lab2/accel_read_x.c  .generated_files/2bb7158009b0f7b58b11c80bcb55df69ccb07c38.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_x.o sourceOfFiles/lab2/accel_read_x.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o: sourceOfFiles/lab2/accel_read_y.c  .generated_files/d261d642695ba9c346dca34c0598dc575a145d6c.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_y.o sourceOfFiles/lab2/accel_read_y.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o: sourceOfFiles/lab2/accel_read_z.c  .generated_files/38859b87b9dbb48ffc58a4964ab367bf01ac93ca.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_read_z.o sourceOfFiles/lab2/accel_read_z.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o: sourceOfFiles/lab2/accel_setup.c  .generated_files/82f46c1da17d738a0d5eeb2dc5956df3e05ea8c8.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/accel_setup.o sourceOfFiles/lab2/accel_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o: sourceOfFiles/lab2/spi2_read_register.c  .generated_files/8a7b84b96ff5d2d51ef4e2aebcfb8199a4cf09e2.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_read_register.o sourceOfFiles/lab2/spi2_read_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o: sourceOfFiles/lab2/spi2_setup.c  .generated_files/c12b8c2227d1ba50e0d657c1056fc7c03985f1d2.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_setup.o sourceOfFiles/lab2/spi2_setup.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o: sourceOfFiles/lab2/spi2_write_register.c  .generated_files/82e40e7e8960bd6fcbb38cec1fdd540c75c03ef6.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/spi2_write_register.o sourceOfFiles/lab2/spi2_write_register.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o: sourceOfFiles/lab2/test..demo.c  .generated_files/18bf2cd0f83f3a3e722839106a0518e3b6553436.flag .generated_files/35b059e026b463500ba6e17fe172f881244224c5.flag
	@${MKDIR} "${OBJECTDIR}/sourceOfFiles/lab2" 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o.d 
	@${RM} ${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o.d" -o ${OBJECTDIR}/sourceOfFiles/lab2/test..demo.o sourceOfFiles/lab2/test..demo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/and08479_ee4341_lab2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
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
