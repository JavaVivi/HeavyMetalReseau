##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=reseauC
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=C:/Users/Marc-Antoine/Desktop/Vivi/c
ProjectPath            :=C:/Users/Marc-Antoine/Desktop/Vivi/réseau/reseauC
IntermediateDirectory  :=../../c/build-$(ConfigurationName)/__/réseau/reseauC
OutDir                 :=../../c/build-$(ConfigurationName)/__/réseau/reseauC
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Marc-Antoine
Date                   :=07/11/2019
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :="C:/Program Files (x86)/CodeBlocks/MinGW/bin/g++.exe"
SharedObjectLinkerName :="C:/Program Files (x86)/CodeBlocks/MinGW/bin/g++.exe" -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=..\..\c\build-$(ConfigurationName)\bin\$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :="C:/Program Files (x86)/CodeBlocks/MinGW/bin/windres.exe"
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := "C:/Program Files (x86)/CodeBlocks/MinGW/bin/ar.exe" rcu
CXX      := "C:/Program Files (x86)/CodeBlocks/MinGW/bin/g++.exe"
CC       := "C:/Program Files (x86)/CodeBlocks/MinGW/bin/gcc.exe"
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := "C:/Program Files (x86)/CodeBlocks/MinGW/bin/as.exe"


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=../../c/build-$(ConfigurationName)/__/réseau/reseauC/main.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../../c/build-$(ConfigurationName)/__/réseau/reseauC/.d $(Objects) 
	@if not exist "..\..\c\build-$(ConfigurationName)\__\réseau\reseauC" mkdir "..\..\c\build-$(ConfigurationName)\__\réseau\reseauC"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "..\..\c\build-$(ConfigurationName)\__\réseau\reseauC" mkdir "..\..\c\build-$(ConfigurationName)\__\réseau\reseauC"
	@if not exist ""..\..\c\build-$(ConfigurationName)\bin"" mkdir ""..\..\c\build-$(ConfigurationName)\bin""

../../c/build-$(ConfigurationName)/__/réseau/reseauC/.d:
	@if not exist "..\..\c\build-$(ConfigurationName)\__\réseau\reseauC" mkdir "..\..\c\build-$(ConfigurationName)\__\réseau\reseauC"

PreBuild:


##
## Objects
##
../../c/build-$(ConfigurationName)/__/réseau/reseauC/main.c$(ObjectSuffix): main.c ../../c/build-$(ConfigurationName)/__/réseau/reseauC/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Marc-Antoine/Desktop/Vivi/réseau/reseauC/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
../../c/build-$(ConfigurationName)/__/réseau/reseauC/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT../../c/build-$(ConfigurationName)/__/réseau/reseauC/main.c$(ObjectSuffix) -MF../../c/build-$(ConfigurationName)/__/réseau/reseauC/main.c$(DependSuffix) -MM main.c

../../c/build-$(ConfigurationName)/__/réseau/reseauC/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../../c/build-$(ConfigurationName)/__/réseau/reseauC/main.c$(PreprocessSuffix) main.c


-include ../../c/build-$(ConfigurationName)/__/réseau/reseauC//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


