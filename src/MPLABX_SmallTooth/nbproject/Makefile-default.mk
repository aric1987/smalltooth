#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLABX_SmallTooth.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLABX_SmallTooth.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/380863233/bt_utils.o ${OBJECTDIR}/_ext/380863233/hci.o ${OBJECTDIR}/_ext/380863233/hci_usb.o ${OBJECTDIR}/_ext/380863233/l2cap_2.o ${OBJECTDIR}/_ext/380863233/rfcomm.o ${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o ${OBJECTDIR}/_ext/380863233/sdp.o ${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o ${OBJECTDIR}/_ext/1472/BTApp.o ${OBJECTDIR}/_ext/1472/debug.o ${OBJECTDIR}/_ext/2137914310/main.o ${OBJECTDIR}/_ext/2137914310/usb_config.o ${OBJECTDIR}/_ext/343710134/usb_host.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/380863233/bt_utils.o.d ${OBJECTDIR}/_ext/380863233/hci.o.d ${OBJECTDIR}/_ext/380863233/hci_usb.o.d ${OBJECTDIR}/_ext/380863233/l2cap_2.o.d ${OBJECTDIR}/_ext/380863233/rfcomm.o.d ${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o.d ${OBJECTDIR}/_ext/380863233/sdp.o.d ${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o.d ${OBJECTDIR}/_ext/1472/BTApp.o.d ${OBJECTDIR}/_ext/1472/debug.o.d ${OBJECTDIR}/_ext/2137914310/main.o.d ${OBJECTDIR}/_ext/2137914310/usb_config.o.d ${OBJECTDIR}/_ext/343710134/usb_host.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/380863233/bt_utils.o ${OBJECTDIR}/_ext/380863233/hci.o ${OBJECTDIR}/_ext/380863233/hci_usb.o ${OBJECTDIR}/_ext/380863233/l2cap_2.o ${OBJECTDIR}/_ext/380863233/rfcomm.o ${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o ${OBJECTDIR}/_ext/380863233/sdp.o ${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o ${OBJECTDIR}/_ext/1472/BTApp.o ${OBJECTDIR}/_ext/1472/debug.o ${OBJECTDIR}/_ext/2137914310/main.o ${OBJECTDIR}/_ext/2137914310/usb_config.o ${OBJECTDIR}/_ext/343710134/usb_host.o


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLABX_SmallTooth.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
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
${OBJECTDIR}/_ext/380863233/bt_utils.o: ../Bluetooth/bt_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/bt_utils.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/bt_utils.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/bt_utils.o.d" -o ${OBJECTDIR}/_ext/380863233/bt_utils.o ../Bluetooth/bt_utils.c  
	
${OBJECTDIR}/_ext/380863233/hci.o: ../Bluetooth/hci.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/hci.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/hci.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/hci.o.d" -o ${OBJECTDIR}/_ext/380863233/hci.o ../Bluetooth/hci.c  
	
${OBJECTDIR}/_ext/380863233/hci_usb.o: ../Bluetooth/hci_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/hci_usb.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/hci_usb.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/hci_usb.o.d" -o ${OBJECTDIR}/_ext/380863233/hci_usb.o ../Bluetooth/hci_usb.c  
	
${OBJECTDIR}/_ext/380863233/l2cap_2.o: ../Bluetooth/l2cap_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/l2cap_2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/l2cap_2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/l2cap_2.o.d" -o ${OBJECTDIR}/_ext/380863233/l2cap_2.o ../Bluetooth/l2cap_2.c  
	
${OBJECTDIR}/_ext/380863233/rfcomm.o: ../Bluetooth/rfcomm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/rfcomm.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/rfcomm.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/rfcomm.o.d" -o ${OBJECTDIR}/_ext/380863233/rfcomm.o ../Bluetooth/rfcomm.c  
	
${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o: ../Bluetooth/rfcomm_fcs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o.d" -o ${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o ../Bluetooth/rfcomm_fcs.c  
	
${OBJECTDIR}/_ext/380863233/sdp.o: ../Bluetooth/sdp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/sdp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/sdp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/sdp.o.d" -o ${OBJECTDIR}/_ext/380863233/sdp.o ../Bluetooth/sdp.c  
	
${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o: ../PIC32_USB/usb_host_bluetooth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/592302047 
	@${RM} ${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o.d" -o ${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o ../PIC32_USB/usb_host_bluetooth.c  
	
${OBJECTDIR}/_ext/1472/BTApp.o: ../BTApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BTApp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BTApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/1472/BTApp.o.d" -o ${OBJECTDIR}/_ext/1472/BTApp.o ../BTApp.c  
	
${OBJECTDIR}/_ext/1472/debug.o: ../debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/debug.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/debug.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/1472/debug.o.d" -o ${OBJECTDIR}/_ext/1472/debug.o ../debug.c  
	
${OBJECTDIR}/_ext/2137914310/main.o: ../PIC32/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2137914310 
	@${RM} ${OBJECTDIR}/_ext/2137914310/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2137914310/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/2137914310/main.o.d" -o ${OBJECTDIR}/_ext/2137914310/main.o ../PIC32/main.c  
	
${OBJECTDIR}/_ext/2137914310/usb_config.o: ../PIC32/usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2137914310 
	@${RM} ${OBJECTDIR}/_ext/2137914310/usb_config.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2137914310/usb_config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/2137914310/usb_config.o.d" -o ${OBJECTDIR}/_ext/2137914310/usb_config.o ../PIC32/usb_config.c  
	
${OBJECTDIR}/_ext/343710134/usb_host.o: ../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/343710134 
	@${RM} ${OBJECTDIR}/_ext/343710134/usb_host.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/343710134/usb_host.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/343710134/usb_host.o.d" -o ${OBJECTDIR}/_ext/343710134/usb_host.o ../Microchip/USB/usb_host.c  
	
else
${OBJECTDIR}/_ext/380863233/bt_utils.o: ../Bluetooth/bt_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/bt_utils.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/bt_utils.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/bt_utils.o.d" -o ${OBJECTDIR}/_ext/380863233/bt_utils.o ../Bluetooth/bt_utils.c  
	
${OBJECTDIR}/_ext/380863233/hci.o: ../Bluetooth/hci.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/hci.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/hci.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/hci.o.d" -o ${OBJECTDIR}/_ext/380863233/hci.o ../Bluetooth/hci.c  
	
${OBJECTDIR}/_ext/380863233/hci_usb.o: ../Bluetooth/hci_usb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/hci_usb.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/hci_usb.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/hci_usb.o.d" -o ${OBJECTDIR}/_ext/380863233/hci_usb.o ../Bluetooth/hci_usb.c  
	
${OBJECTDIR}/_ext/380863233/l2cap_2.o: ../Bluetooth/l2cap_2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/l2cap_2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/l2cap_2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/l2cap_2.o.d" -o ${OBJECTDIR}/_ext/380863233/l2cap_2.o ../Bluetooth/l2cap_2.c  
	
${OBJECTDIR}/_ext/380863233/rfcomm.o: ../Bluetooth/rfcomm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/rfcomm.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/rfcomm.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/rfcomm.o.d" -o ${OBJECTDIR}/_ext/380863233/rfcomm.o ../Bluetooth/rfcomm.c  
	
${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o: ../Bluetooth/rfcomm_fcs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o.d" -o ${OBJECTDIR}/_ext/380863233/rfcomm_fcs.o ../Bluetooth/rfcomm_fcs.c  
	
${OBJECTDIR}/_ext/380863233/sdp.o: ../Bluetooth/sdp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/380863233 
	@${RM} ${OBJECTDIR}/_ext/380863233/sdp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/380863233/sdp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/380863233/sdp.o.d" -o ${OBJECTDIR}/_ext/380863233/sdp.o ../Bluetooth/sdp.c  
	
${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o: ../PIC32_USB/usb_host_bluetooth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/592302047 
	@${RM} ${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o.d" -o ${OBJECTDIR}/_ext/592302047/usb_host_bluetooth.o ../PIC32_USB/usb_host_bluetooth.c  
	
${OBJECTDIR}/_ext/1472/BTApp.o: ../BTApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BTApp.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BTApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/1472/BTApp.o.d" -o ${OBJECTDIR}/_ext/1472/BTApp.o ../BTApp.c  
	
${OBJECTDIR}/_ext/1472/debug.o: ../debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/debug.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/debug.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/1472/debug.o.d" -o ${OBJECTDIR}/_ext/1472/debug.o ../debug.c  
	
${OBJECTDIR}/_ext/2137914310/main.o: ../PIC32/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2137914310 
	@${RM} ${OBJECTDIR}/_ext/2137914310/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2137914310/main.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/2137914310/main.o.d" -o ${OBJECTDIR}/_ext/2137914310/main.o ../PIC32/main.c  
	
${OBJECTDIR}/_ext/2137914310/usb_config.o: ../PIC32/usb_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/2137914310 
	@${RM} ${OBJECTDIR}/_ext/2137914310/usb_config.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2137914310/usb_config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/2137914310/usb_config.o.d" -o ${OBJECTDIR}/_ext/2137914310/usb_config.o ../PIC32/usb_config.c  
	
${OBJECTDIR}/_ext/343710134/usb_host.o: ../Microchip/USB/usb_host.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/343710134 
	@${RM} ${OBJECTDIR}/_ext/343710134/usb_host.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/343710134/usb_host.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -DPIC32_STARTER_KIT -DSYS_CLOCK=80000000 -I"../Microchip/Include" -I".." -I"../Bluetooth" -I"../Microchip/Include/USB" -I"../Microchip/USB" -I"../PIC32_USB" -I"../PIC32" -MMD -MF "${OBJECTDIR}/_ext/343710134/usb_host.o.d" -o ${OBJECTDIR}/_ext/343710134/usb_host.o ../Microchip/USB/usb_host.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLABX_SmallTooth.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLABX_SmallTooth.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=8192,-L"../../../../../../Microchip Starter Kits/PIC32 Starter Kits/MPLAB C32 Suite/lib",-L"../../../../../../Microchip Starter Kits/PIC32 Starter Kits/MPLAB C32 Suite/pic32mx/lib",-Map="${DISTDIR}/BTv1.01.X.${IMAGE_TYPE}.map" 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLABX_SmallTooth.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MPLABX_SmallTooth.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=8192,-L"../../../../../../Microchip Starter Kits/PIC32 Starter Kits/MPLAB C32 Suite/lib",-L"../../../../../../Microchip Starter Kits/PIC32 Starter Kits/MPLAB C32 Suite/pic32mx/lib",-Map="${DISTDIR}/BTv1.01.X.${IMAGE_TYPE}.map"
	${MP_CC_DIR}/pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MPLABX_SmallTooth.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
