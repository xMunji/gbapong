#---------------------------------------------------------------------------------------------------------------------
# Project settings:
#---------------------------------------------------------------------------------------------------------------------
TARGET      	:=  $(notdir $(CURDIR))        # Name of the output file
BUILD       	:=  build                      # Directory for object and intermediate files
LIBBUTANO   	:=  /opt/devkitpro/libtonc/butano/butano  # Path to Butano library
PYTHON      	:=  python
SOURCES     	:=  src $(LIBBUTANO)/src       # Include Butano source files
INCLUDES    	:=  include $(LIBBUTANO)/include  # Include Butano headers
DATA        	:=
GRAPHICS    	:=  graphics
AUDIO       	:=  audio
DMGAUDIO    	:=  dmg_audio
ROMTITLE    	:=  BUTANO-PONG
ROMCODE     	:=  SBTP
USERFLAGS   	:=  
USERCXXFLAGS	:=  -I$(LIBBUTANOABS)/include
USERASFLAGS 	:=  
USERLDFLAGS 	:=  
USERLIBDIRS 	:=  
USERLIBS    	:=  
DEFAULTLIBS 	:=  
STACKTRACE		:=	
USERBUILD   	:=  
EXTTOOL     	:=  

#---------------------------------------------------------------------------------------------------------------------
# Export absolute Butano path:
#---------------------------------------------------------------------------------------------------------------------
ifndef LIBBUTANOABS
	export LIBBUTANOABS	:=	$(realpath $(LIBBUTANO))
endif

# Compiler flags:
CXXFLAGS := -I$(LIBBUTANOABS)/include $(CXXFLAGS)

#---------------------------------------------------------------------------------------------------------------------
# Include Butano main makefile:
#---------------------------------------------------------------------------------------------------------------------
include $(LIBBUTANOABS)/butano.mak
