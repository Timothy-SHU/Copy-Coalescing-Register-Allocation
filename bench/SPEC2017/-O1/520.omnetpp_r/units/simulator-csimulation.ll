; ModuleID = 'simulator/csimulation.cc'
source_filename = "simulator/csimulation.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.StaticEnv = type { %class.cEnvir }
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.SimTime = type { i64 }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%class.cSnapshotWriterVisitor = type <{ %class.cVisitor, ptr, i32, [4 x i8] }>
%class.cVisitor = type { ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%class.cModule = type { %class.cComponent, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cContextTypeSwitcher = type { i32 }
%class.cContextSwitcher = type { ptr }
%class.cMessage = type { %class.cOwnedObject.base, i16, i16, i16, ptr, ptr, ptr, i32, i32, i32, i32, %class.SimTime, %class.SimTime, %class.SimTime, %class.SimTime, i32, i64, i64, i64, i64 }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.cDeleteModuleException = type { %class.cException.base, [4 x i8] }
%class.cException.base = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32 }>
%"class.std::exception" = type { ptr }
%class.cTerminationException = type { %class.cException.base, [4 x i8] }
%class.cRuntimeError = type { %class.cException.base, [4 x i8] }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%class.cSimpleModule = type { %class.cModule, ptr, ptr }
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"struct.std::__cow_string" = type { %union.anon.32 }
%union.anon.32 = type { ptr }

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN8cVisitorD2Ev = comdat any

$_ZN11cSimulation11checkActiveEv = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cOwnedObject11isSoftOwnerEv = comdat any

$_ZNK11cSimulation8getEnvirEv = comdat any

$_ZN9StaticEnv5sputnEPKci = comdat any

$_ZN9StaticEnv7putsmsgEPKc = comdat any

$_ZN9StaticEnv8askyesnoEPKc = comdat any

$_ZN9StaticEnvD0Ev = comdat any

$_ZN9StaticEnv13objectDeletedEP7cObject = comdat any

$_ZN9StaticEnv15simulationEventEP8cMessage = comdat any

$_ZN9StaticEnv20messageSent_OBSOLETEEP8cMessageP5cGate = comdat any

$_ZN9StaticEnv16messageScheduledEP8cMessage = comdat any

$_ZN9StaticEnv16messageCancelledEP8cMessage = comdat any

$_ZN9StaticEnv9beginSendEP8cMessage = comdat any

$_ZN9StaticEnv17messageSendDirectEP8cMessageP5cGate7SimTimeS4_ = comdat any

$_ZN9StaticEnv14messageSendHopEP8cMessageP5cGate = comdat any

$_ZN9StaticEnv14messageSendHopEP8cMessageP5cGate7SimTimeS4_ = comdat any

$_ZN9StaticEnv7endSendEP8cMessage = comdat any

$_ZN9StaticEnv14messageDeletedEP8cMessage = comdat any

$_ZN9StaticEnv16moduleReparentedEP7cModuleS1_ = comdat any

$_ZN9StaticEnv20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag = comdat any

$_ZN9StaticEnv18componentMethodEndEv = comdat any

$_ZN9StaticEnv13moduleCreatedEP7cModule = comdat any

$_ZN9StaticEnv13moduleDeletedEP7cModule = comdat any

$_ZN9StaticEnv11gateCreatedEP5cGate = comdat any

$_ZN9StaticEnv11gateDeletedEP5cGate = comdat any

$_ZN9StaticEnv17connectionCreatedEP5cGate = comdat any

$_ZN9StaticEnv17connectionDeletedEP5cGate = comdat any

$_ZN9StaticEnv20displayStringChangedEP10cComponent = comdat any

$_ZN9StaticEnv13readParameterEP4cPar = comdat any

$_ZN9StaticEnv13isModuleLocalEP7cModulePKci = comdat any

$_ZN9StaticEnv14getXMLDocumentEPKcS1_ = comdat any

$_ZNK9StaticEnv21getExtraStackForEnvirEv = comdat any

$_ZN9StaticEnv9getConfigEv = comdat any

$_ZNK9StaticEnv5isGUIEv = comdat any

$_ZN9StaticEnv6bubbleEP10cComponentPKc = comdat any

$_ZN9StaticEnv5flushEv = comdat any

$_ZN9StaticEnv4getsB5cxx11EPKcS1_ = comdat any

$_ZNK9StaticEnv10getNumRNGsEv = comdat any

$_ZN9StaticEnv6getRNGEi = comdat any

$_ZN9StaticEnv16getRNGMappingForEP10cComponent = comdat any

$_ZN9StaticEnv20registerOutputVectorEPKcS1_ = comdat any

$_ZN9StaticEnv22deregisterOutputVectorEPv = comdat any

$_ZN9StaticEnv18setVectorAttributeEPvPKcS2_ = comdat any

$_ZN9StaticEnv20recordInOutputVectorEPv7SimTimed = comdat any

$_ZN9StaticEnv12recordScalarEP10cComponentPKcdP14opp_string_map = comdat any

$_ZN9StaticEnv15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map = comdat any

$_ZN9StaticEnv20getStreamForSnapshotEv = comdat any

$_ZN9StaticEnv24releaseStreamForSnapshotEPSo = comdat any

$_ZNK9StaticEnv11getArgCountEv = comdat any

$_ZNK9StaticEnv12getArgVectorEv = comdat any

$_ZNK9StaticEnv15getParsimProcIdEv = comdat any

$_ZNK9StaticEnv22getParsimNumPartitionsEv = comdat any

$_ZN9StaticEnv15getUniqueNumberEv = comdat any

$_ZN9StaticEnv4idleEv = comdat any

$_ZN10cExceptionD0Ev = comdat any

$_ZNK10cException4whatEv = comdat any

$_ZNK10cException3dupEv = comdat any

$_ZNK10cException12getErrorCodeEv = comdat any

$_ZN10cException10setMessageEPKc = comdat any

$_ZN10cException14prependMessageEPKc = comdat any

$_ZNK10cException10hasContextEv = comdat any

$_ZNK10cException19getContextClassNameEv = comdat any

$_ZNK10cException18getContextFullPathEv = comdat any

$_ZNK10cException11getModuleIDEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZN22cSnapshotWriterVisitorD0Ev = comdat any

$_ZN22cSnapshotWriterVisitor5visitEP7cObject = comdat any

$_ZN7SimTimeaSEd = comdat any

$_ZN22cDeleteModuleExceptionD0Ev = comdat any

$_ZNK22cDeleteModuleException3dupEv = comdat any

$_ZN21cTerminationExceptionD0Ev = comdat any

$_ZNK21cTerminationException3dupEv = comdat any

$_ZN13cRuntimeErrorD0Ev = comdat any

$_ZNK13cRuntimeError3dupEv = comdat any

$_ZNK9StaticEnv11unsupportedEv = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTS22cDeleteModuleException = comdat any

$_ZTI22cDeleteModuleException = comdat any

$_ZTS21cTerminationException = comdat any

$_ZTI21cTerminationException = comdat any

$_ZTV10cException = comdat any

$_ZTV22cSnapshotWriterVisitor = comdat any

$_ZTS22cSnapshotWriterVisitor = comdat any

$_ZTI22cSnapshotWriterVisitor = comdat any

$_ZTSN8cVisitor21EndTraversalExceptionE = comdat any

$_ZTIN8cVisitor21EndTraversalExceptionE = comdat any

$_ZTV22cDeleteModuleException = comdat any

$_ZTV21cTerminationException = comdat any

$_ZTV13cRuntimeError = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTV17opp_runtime_error = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV11cSimulation = dso_local unnamed_addr constant { [27 x ptr] } { [27 x ptr] [ptr null, ptr @_ZTI11cSimulation, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN11cSimulationD2Ev, ptr @_ZN11cSimulationD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK11cSimulation11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK23cNoncopyableOwnedObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN23cNoncopyableOwnedObject10parsimPackEP11cCommBuffer, ptr @_ZN23cNoncopyableOwnedObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN11cSimulation12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv, ptr @_ZNK11cSimulation8getEnvirEv] }, align 8
@.str = private unnamed_addr constant [17 x i8] c"scheduled-events\00", align 1
@_ZN11cSimulation6simPtrE = dso_local local_unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"cannot delete the active simulation manager object\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZN11cSimulation11staticEvPtrE = dso_local local_unnamed_addr global ptr @_ZL9staticEnv, align 8
@_ZN11cSimulation5evPtrE = dso_local local_unnamed_addr global ptr @_ZL9staticEnv, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"cSimulation::setStaticEnvir(): argument cannot be NULL\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"snapshot(): object pointer is NULL\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Could not create stream for snapshot\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"<?xml version=\221.0\22 encoding=\22ISO-8859-1\22?>\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"<snapshot\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"    object=\22\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"    label=\22\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"    simtime=\22\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"    network=\22\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"    >\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"</snapshot>\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Could not write snapshot\00", align 1
@.str.16 = private unnamed_addr constant [74 x i8] c"setScheduler(): cannot switch schedulers when a network is already set up\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"setScheduler(): scheduler pointer is NULL\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"getModuleByPath(): syntax error in path `%s'\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"setupNetwork: `%s' is not a network\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"Attempt to delete network during simulation\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"transferTo(): attempt to transfer to NULL\00", align 1
@.str.23 = private unnamed_addr constant [128 x i8] c"Stack violation in module (%s)%s: module stack too small? Try increasing it in the class' Module_Class_Members() or constructor\00", align 1
@_ZTS22cDeleteModuleException = linkonce_odr dso_local constant [25 x i8] c"22cDeleteModuleException\00", comdat, align 1
@_ZTI22cDeleteModuleException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22cDeleteModuleException, ptr @_ZTI10cException }, comdat, align 8
@_ZTS21cTerminationException = linkonce_odr dso_local constant [24 x i8] c"21cTerminationException\00", comdat, align 1
@_ZTI21cTerminationException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21cTerminationException, ptr @_ZTI10cException }, comdat, align 8
@.str.24 = private unnamed_addr constant [101 x i8] c"Module not initialized (did you forget to invoke callInitialize() for a dynamically created module?)\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.26 = private unnamed_addr constant [76 x i8] c"<!> WARNING: global object variable (DISCOURAGED) detected: (%s)`%s' at %p\0A\00", align 1
@_ZL9staticEnv = internal global %class.StaticEnv zeroinitializer, align 8
@_ZTS11cSimulation = dso_local constant [14 x i8] c"11cSimulation\00", align 1
@_ZTI23cNoncopyableOwnedObject = external constant ptr
@_ZTI11cSimulation = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11cSimulation, ptr @_ZTI23cNoncopyableOwnedObject }, align 8
@_ZTV9StaticEnv = dso_local unnamed_addr constant { [59 x ptr] } { [59 x ptr] [ptr null, ptr @_ZTI9StaticEnv, ptr @_ZN9StaticEnv5sputnEPKci, ptr @_ZN9StaticEnv7putsmsgEPKc, ptr @_ZN9StaticEnv8askyesnoEPKc, ptr @_ZN6cEnvirD2Ev, ptr @_ZN9StaticEnvD0Ev, ptr @_ZN9StaticEnv13objectDeletedEP7cObject, ptr @_ZN9StaticEnv15simulationEventEP8cMessage, ptr @_ZN9StaticEnv20messageSent_OBSOLETEEP8cMessageP5cGate, ptr @_ZN9StaticEnv16messageScheduledEP8cMessage, ptr @_ZN9StaticEnv16messageCancelledEP8cMessage, ptr @_ZN9StaticEnv9beginSendEP8cMessage, ptr @_ZN9StaticEnv17messageSendDirectEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN9StaticEnv14messageSendHopEP8cMessageP5cGate, ptr @_ZN9StaticEnv14messageSendHopEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN9StaticEnv7endSendEP8cMessage, ptr @_ZN9StaticEnv14messageDeletedEP8cMessage, ptr @_ZN9StaticEnv16moduleReparentedEP7cModuleS1_, ptr @_ZN9StaticEnv20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag, ptr @_ZN9StaticEnv18componentMethodEndEv, ptr @_ZN9StaticEnv13moduleCreatedEP7cModule, ptr @_ZN9StaticEnv13moduleDeletedEP7cModule, ptr @_ZN9StaticEnv11gateCreatedEP5cGate, ptr @_ZN9StaticEnv11gateDeletedEP5cGate, ptr @_ZN9StaticEnv17connectionCreatedEP5cGate, ptr @_ZN9StaticEnv17connectionDeletedEP5cGate, ptr @_ZN9StaticEnv20displayStringChangedEP10cComponent, ptr @_ZN9StaticEnv16undisposedObjectEP7cObject, ptr @_ZN9StaticEnv13readParameterEP4cPar, ptr @_ZN9StaticEnv13isModuleLocalEP7cModulePKci, ptr @_ZN9StaticEnv14getXMLDocumentEPKcS1_, ptr @_ZNK9StaticEnv21getExtraStackForEnvirEv, ptr @_ZN9StaticEnv9getConfigEv, ptr @_ZN6cEnvir11getConfigExEv, ptr @_ZNK9StaticEnv5isGUIEv, ptr @_ZN9StaticEnv6bubbleEP10cComponentPKc, ptr @_ZN6cEnvir9printfmsgEPKcz, ptr @_ZN6cEnvir6printfEPKcz, ptr @_ZN9StaticEnv5flushEv, ptr @_ZN9StaticEnv4getsB5cxx11EPKcS1_, ptr @_ZN6cEnvir8askYesNoEPKcz, ptr @_ZNK9StaticEnv10getNumRNGsEv, ptr @_ZN9StaticEnv6getRNGEi, ptr @_ZN9StaticEnv16getRNGMappingForEP10cComponent, ptr @_ZN9StaticEnv20registerOutputVectorEPKcS1_, ptr @_ZN9StaticEnv22deregisterOutputVectorEPv, ptr @_ZN9StaticEnv18setVectorAttributeEPvPKcS2_, ptr @_ZN9StaticEnv20recordInOutputVectorEPv7SimTimed, ptr @_ZN9StaticEnv12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZN9StaticEnv15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map, ptr @_ZN9StaticEnv20getStreamForSnapshotEv, ptr @_ZN9StaticEnv24releaseStreamForSnapshotEPSo, ptr @_ZNK9StaticEnv11getArgCountEv, ptr @_ZNK9StaticEnv12getArgVectorEv, ptr @_ZNK9StaticEnv15getParsimProcIdEv, ptr @_ZNK9StaticEnv22getParsimNumPartitionsEv, ptr @_ZN9StaticEnv15getUniqueNumberEv, ptr @_ZN9StaticEnv4idleEv] }, align 8
@_ZTS9StaticEnv = dso_local constant [11 x i8] c"9StaticEnv\00", align 1
@_ZTI6cEnvir = external constant ptr
@_ZTI9StaticEnv = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS9StaticEnv, ptr @_ZTI6cEnvir }, align 8
@_ZTV20cSequentialScheduler = external unnamed_addr constant { [26 x ptr] }, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.28 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTV22cSnapshotWriterVisitor = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI22cSnapshotWriterVisitor, ptr @_ZN8cVisitorD2Ev, ptr @_ZN22cSnapshotWriterVisitorD0Ev, ptr @_ZN8cVisitor7processEP7cObject, ptr @_ZN8cVisitor17processChildrenOfEP7cObject, ptr @_ZN22cSnapshotWriterVisitor5visitEP7cObject] }, comdat, align 8
@_ZTS22cSnapshotWriterVisitor = linkonce_odr dso_local constant [25 x i8] c"22cSnapshotWriterVisitor\00", comdat, align 1
@_ZTI8cVisitor = external constant ptr
@_ZTI22cSnapshotWriterVisitor = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22cSnapshotWriterVisitor, ptr @_ZTI8cVisitor }, comdat, align 8
@.str.34 = private unnamed_addr constant [16 x i8] c"<object class=\22\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"\22 fullpath=\22\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"\22>\0A\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"  <info>\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"</info>\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"  <detailedinfo>\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"</detailedinfo>\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"</object>\0A\0A\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN8cVisitor21EndTraversalExceptionE = linkonce_odr dso_local constant [35 x i8] c"N8cVisitor21EndTraversalExceptionE\00", comdat, align 1
@_ZTIN8cVisitor21EndTraversalExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8cVisitor21EndTraversalExceptionE }, comdat, align 8
@_ZN8cMessage9live_msgsE = external local_unnamed_addr global i64, align 8
@_ZN8cMessage10total_msgsE = external local_unnamed_addr global i64, align 8
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@_ZTV22cDeleteModuleException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI22cDeleteModuleException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN22cDeleteModuleExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK22cDeleteModuleException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@_ZTV21cTerminationException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI21cTerminationException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN21cTerminationExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK21cTerminationException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@_ZTV13cRuntimeError = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI13cRuntimeError, ptr @_ZN10cExceptionD2Ev, ptr @_ZN13cRuntimeErrorD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK13cRuntimeError3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@defaultList = external global %class.cDefaultList, align 8
@_ZN11cStaticFlag10staticflagE = external local_unnamed_addr global i8, align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [10 x i8] c"\0A<!> %s\0A\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"StaticEnv: unsupported method called\00", align 1
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@.str.44 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_csimulation.cc, ptr null }]

@_ZN11cSimulationC1EPKcP6cEnvir = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11cSimulationC2EPKcP6cEnvir
@_ZN11cSimulationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11cSimulationD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulationC2EPKcP6cEnvir(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false)
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTV11cSimulation, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 12
  store i64 0, ptr %4, align 8, !tbaa !98
  %5 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  invoke void @_ZN12cMessageHeapC1EPKci(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef null, i32 noundef 128)
          to label %6 unwind label %27, !prof !102

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 5
  store ptr %2, ptr %7, align 8, !tbaa !103
  %8 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 2, ptr %9, align 8, !tbaa !113
  %10 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  store ptr null, ptr %10, align 8, !tbaa !114
  %11 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  store ptr null, ptr %11, align 8, !tbaa !115
  %12 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 2
  store i32 32, ptr %12, align 8, !tbaa !116
  %13 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !117
  %14 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 4
  store i32 0, ptr %14, align 8, !tbaa !118
  %15 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  store ptr null, ptr %15, align 8, !tbaa !119
  %16 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 10
  store ptr null, ptr %16, align 8, !tbaa !120
  %17 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 16
  store ptr null, ptr %17, align 8, !tbaa !121
  invoke void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull @.str)
          to label %18 unwind label %29, !prof !102

18:                                               ; preds = %6
  %19 = load ptr, ptr %0, align 8, !tbaa !95
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5)
          to label %22 unwind label %29, !prof !122

22:                                               ; preds = %18
  %23 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %24 unwind label %29, !prof !102

24:                                               ; preds = %22
  invoke void @_ZN10cSchedulerC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %25 unwind label %31, !prof !102

25:                                               ; preds = %24
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV20cSequentialScheduler, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !95
  invoke void @_ZN11cSimulation12setSchedulerEP10cScheduler(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %23)
          to label %26 unwind label %29, !prof !102

26:                                               ; preds = %25
  ret void

27:                                               ; preds = %3
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %25, %22, %18, %6
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %33

31:                                               ; preds = %24
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %23) #30
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ]
  tail call void @_ZN12cMessageHeapD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #31
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %28, %27 ]
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #31
  resume { ptr, i32 } %36
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN12cMessageHeapC1EPKci(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #0

declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation12setSchedulerEP10cScheduler(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !124

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull %0, ptr noundef nonnull @.str.16)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %30

11:                                               ; preds = %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %18, !prof !125

13:                                               ; preds = %11
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull %0, ptr noundef nonnull @.str.17)
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %30

18:                                               ; preds = %11
  %19 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !126

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !95
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(16) %20) #31, !prof !127
  br label %26

26:                                               ; preds = %22, %18
  store ptr %1, ptr %19, align 8, !tbaa !115
  %27 = load ptr, ptr %1, align 8, !tbaa !95
  %28 = getelementptr inbounds ptr, ptr %27, i64 19
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0), !prof !128
  ret void

30:                                               ; preds = %16, %9
  %31 = phi ptr [ %14, %16 ], [ %7, %9 ]
  %32 = phi { ptr, i32 } [ %17, %16 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %31) #31
  resume { ptr, i32 } %32
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN12cMessageHeapD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11cSimulationD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTV11cSimulation, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %2 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !129
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %7, !prof !130

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull %0, ptr noundef nonnull @.str.1)
          to label %6 unwind label %35

6:                                                ; preds = %4
  invoke void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
          to label %38 unwind label %35

7:                                                ; preds = %1
  invoke void @_ZN11cSimulation13deleteNetworkEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
          to label %8 unwind label %35, !prof !102

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !102

12:                                               ; preds = %8
  tail call void @_ZdlPv(ptr noundef %10) #30
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !130

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !95
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15) #31, !prof !127
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !130

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !95
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(288) %23) #31, !prof !131
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %31 = load ptr, ptr %0, align 8, !tbaa !95
  %32 = getelementptr inbounds ptr, ptr %31, i64 13
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %30)
          to label %34 unwind label %35, !prof !132

34:                                               ; preds = %29
  tail call void @_ZN12cMessageHeapD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %30) #31
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #31
  ret void

35:                                               ; preds = %29, %7, %6, %4
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #33
  unreachable

38:                                               ; preds = %6
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !133 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #31
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11cSimulation13deleteNetworkEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5, !prof !135

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9, !prof !102

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !95
  %11 = getelementptr inbounds ptr, ptr %10, i64 36
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(104) %7)
  %14 = load ptr, ptr %6, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %22, !prof !130

17:                                               ; preds = %9
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.21)
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #31
  resume { ptr, i32 } %21

22:                                               ; preds = %5, %9
  %23 = load ptr, ptr %2, align 8, !tbaa !114
  %24 = load ptr, ptr %23, align 8, !tbaa !95
  %25 = getelementptr inbounds ptr, ptr %24, i64 71
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(176) %23), !prof !137
  %27 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !119
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !130

31:                                               ; preds = %22
  tail call void @_ZdaPv(ptr noundef %29) #30
  br label %32

32:                                               ; preds = %31, %22
  store ptr null, ptr %28, align 8, !tbaa !119
  store i32 0, ptr %27, align 4, !tbaa !117
  %33 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 4
  store i32 0, ptr %33, align 8, !tbaa !118
  %34 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 10
  store ptr null, ptr %34, align 8, !tbaa !120
  tail call void @_ZN7cModule14clearNamePoolsEv()
  %35 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  tail call void @_ZN12cMessageHeap5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %35)
  br label %36

36:                                               ; preds = %1, %32
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11cSimulationD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #6 align 2 !prof !94 {
  tail call void @_ZN11cSimulationD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #31
  tail call void @_ZdlPv(ptr noundef %0) #30
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_ZN11cSimulation19setActiveSimulationEPS_(ptr noundef %0) local_unnamed_addr #9 align 2 !prof !123 {
  store ptr %0, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !129
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 5
  %4 = select i1 %2, ptr @_ZN11cSimulation11staticEvPtrE, ptr %3, !prof !126
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  store ptr %5, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !129
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation14setStaticEnvirEP6cEnvir(ptr noundef %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull @.str.2)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #31
  resume { ptr, i32 } %7

8:                                                ; preds = %1
  store ptr %0, ptr @_ZN11cSimulation11staticEvPtrE, align 8, !tbaa !129
  ret void
}

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !133 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !95
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4)
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %1, align 8, !tbaa !95
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %11)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11cSimulation11getFullPathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = load ptr, ptr %1, align 8, !tbaa !95
  %5 = getelementptr inbounds ptr, ptr %4, i64 7
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !138
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.44) #32
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  store i64 %9, ptr %4, align 8, !tbaa !140
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !141

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !142
  %13 = load i64, ptr %4, align 8, !tbaa !140
  store i64 %13, ptr %5, align 8, !tbaa !144
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !142
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !145

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !144
  store i8 %17, ptr %15, align 1, !tbaa !144
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !146
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !140
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !147
  %22 = load ptr, ptr %0, align 8, !tbaa !142
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11cSimulation8snapshotEP7cObjectPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %class.SimTime, align 8
  %12 = alloca %"class.std::allocator", align 1
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::allocator", align 1
  %16 = alloca %class.cSnapshotWriterVisitor, align 8
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %19, ptr noundef nonnull @.str.3)
          to label %20 unwind label %21

20:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
  unreachable

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %19) #31
  br label %312

23:                                               ; preds = %3
  %24 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !129
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = getelementptr inbounds ptr, ptr %25, i64 49
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(288) %24)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull @.str.4)
          to label %32 unwind label %33

32:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
  unreachable

33:                                               ; preds = %30
  %34 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %31) #31
  br label %312

35:                                               ; preds = %23
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.5, i64 noundef 44)
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.6, i64 noundef 10)
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.7, i64 noundef 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #31
  %39 = load ptr, ptr %1, align 8, !tbaa !95
  %40 = getelementptr inbounds ptr, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %42 unwind label %198

42:                                               ; preds = %35
  %43 = load ptr, ptr %4, align 8, !tbaa !142
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !147
  %46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %43, i64 noundef %45)
          to label %47 unwind label %200

47:                                               ; preds = %42
  %48 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %49 unwind label %200

49:                                               ; preds = %47
  %50 = load ptr, ptr %4, align 8, !tbaa !142
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, ptr %44, align 8, !tbaa !147
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  br label %57

56:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %50) #30
  br label %57

57:                                               ; preds = %53, %56
  %58 = load ptr, ptr %5, align 8, !tbaa !142
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !147
  %64 = icmp ult i64 %63, 16
  call void @llvm.assume(i1 %64)
  br label %66

65:                                               ; preds = %57
  call void @_ZdlPv(ptr noundef %58) #30
  br label %66

66:                                               ; preds = %61, %65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.9, i64 noundef 11)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #31
  %68 = icmp eq ptr %2, null
  %69 = select i1 %68, ptr @.str.10, ptr %2
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  store ptr %70, ptr %7, align 8, !tbaa !138
  %71 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #31
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %69, ptr noundef nonnull %72)
          to label %73 unwind label %220

73:                                               ; preds = %66
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %74 unwind label %222

74:                                               ; preds = %73
  %75 = load ptr, ptr %6, align 8, !tbaa !142
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !147
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %75, i64 noundef %77)
          to label %79 unwind label %224

79:                                               ; preds = %74
  %80 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %81 unwind label %224

81:                                               ; preds = %79
  %82 = load ptr, ptr %6, align 8, !tbaa !142
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i64, ptr %76, align 8, !tbaa !147
  %87 = icmp ult i64 %86, 16
  call void @llvm.assume(i1 %87)
  br label %89

88:                                               ; preds = %81
  call void @_ZdlPv(ptr noundef %82) #30
  br label %89

89:                                               ; preds = %85, %88
  %90 = load ptr, ptr %7, align 8, !tbaa !142
  %91 = icmp eq ptr %90, %70
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !147
  %95 = icmp ult i64 %94, 16
  call void @llvm.assume(i1 %95)
  br label %97

96:                                               ; preds = %89
  call void @_ZdlPv(ptr noundef %90) #30
  br label %97

97:                                               ; preds = %92, %96
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  %98 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.11, i64 noundef 13)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %99 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !129, !noalias !148
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %100 = getelementptr inbounds %class.cSimulation, ptr %99, i64 0, i32 12
  %101 = load i64, ptr %100, align 8, !tbaa !98, !noalias !154
  store i64 %101, ptr %11, align 8, !tbaa !98, !alias.scope !154
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %102 = load ptr, ptr %10, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %102, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %103 unwind label %244

103:                                              ; preds = %97
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %104 unwind label %246

104:                                              ; preds = %103
  %105 = load ptr, ptr %8, align 8, !tbaa !142
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !147
  %108 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %105, i64 noundef %107)
          to label %109 unwind label %248

109:                                              ; preds = %104
  %110 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %111 unwind label %248

111:                                              ; preds = %109
  %112 = load ptr, ptr %8, align 8, !tbaa !142
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %114 = icmp eq ptr %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i64, ptr %106, align 8, !tbaa !147
  %117 = icmp ult i64 %116, 16
  call void @llvm.assume(i1 %117)
  br label %119

118:                                              ; preds = %111
  call void @_ZdlPv(ptr noundef %112) #30
  br label %119

119:                                              ; preds = %115, %118
  %120 = load ptr, ptr %9, align 8, !tbaa !142
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %122 = icmp eq ptr %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !147
  %126 = icmp ult i64 %125, 16
  call void @llvm.assume(i1 %126)
  br label %128

127:                                              ; preds = %119
  call void @_ZdlPv(ptr noundef %120) #30
  br label %128

128:                                              ; preds = %123, %127
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #31
  %129 = load ptr, ptr %10, align 8, !tbaa !142
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %131 = icmp eq ptr %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !147
  %135 = icmp ult i64 %134, 16
  call void @llvm.assume(i1 %135)
  br label %137

136:                                              ; preds = %128
  call void @_ZdlPv(ptr noundef %129) #30
  br label %137

137:                                              ; preds = %132, %136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #31
  %138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.12, i64 noundef 13)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #31
  %139 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 10
  %140 = load ptr, ptr %139, align 8, !tbaa !120
  %141 = icmp eq ptr %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %140, align 8, !tbaa !95
  %144 = getelementptr inbounds ptr, ptr %143, i64 6
  %145 = load ptr, ptr %144, align 8
  %146 = call noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(20) %140)
  br label %147

147:                                              ; preds = %137, %142
  %148 = phi ptr [ %146, %142 ], [ @.str.10, %137 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %148, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %149 unwind label %278

149:                                              ; preds = %147
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %150 unwind label %280

150:                                              ; preds = %149
  %151 = load ptr, ptr %13, align 8, !tbaa !142
  %152 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !147
  %154 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %151, i64 noundef %153)
          to label %155 unwind label %282

155:                                              ; preds = %150
  %156 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %154, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %157 unwind label %282

157:                                              ; preds = %155
  %158 = load ptr, ptr %13, align 8, !tbaa !142
  %159 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %160 = icmp eq ptr %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i64, ptr %152, align 8, !tbaa !147
  %163 = icmp ult i64 %162, 16
  call void @llvm.assume(i1 %163)
  br label %165

164:                                              ; preds = %157
  call void @_ZdlPv(ptr noundef %158) #30
  br label %165

165:                                              ; preds = %161, %164
  %166 = load ptr, ptr %14, align 8, !tbaa !142
  %167 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !147
  %172 = icmp ult i64 %171, 16
  call void @llvm.assume(i1 %172)
  br label %174

173:                                              ; preds = %165
  call void @_ZdlPv(ptr noundef %166) #30
  br label %174

174:                                              ; preds = %169, %173
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #31
  %175 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.13, i64 noundef 6)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #31
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTV22cSnapshotWriterVisitor, i64 0, inrange i32 0, i64 2), ptr %16, align 8, !tbaa !95
  %176 = getelementptr inbounds %class.cSnapshotWriterVisitor, ptr %16, i64 0, i32 1
  store ptr %28, ptr %176, align 8, !tbaa !129
  %177 = getelementptr inbounds %class.cSnapshotWriterVisitor, ptr %16, i64 0, i32 2
  store i32 0, ptr %177, align 8, !tbaa !155
  %178 = invoke noundef zeroext i1 @_ZN8cVisitor7processEP7cObject(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %1)
          to label %179 unwind label %303

179:                                              ; preds = %174
  %180 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.14, i64 noundef 12)
          to label %181 unwind label %303

181:                                              ; preds = %179
  %182 = load ptr, ptr %28, align 8, !tbaa !95
  %183 = getelementptr i8, ptr %182, i64 -24
  %184 = load i64, ptr %183, align 8
  %185 = getelementptr inbounds i8, ptr %28, i64 %184
  %186 = getelementptr inbounds %"class.std::ios_base", ptr %185, i64 0, i32 5
  %187 = load i32, ptr %186, align 8, !tbaa !158
  %188 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !129
  %189 = load ptr, ptr %188, align 8, !tbaa !95
  %190 = getelementptr inbounds ptr, ptr %189, i64 50
  %191 = load ptr, ptr %190, align 8
  invoke void %191(ptr noundef nonnull align 8 dereferenceable(288) %188, ptr noundef nonnull %28)
          to label %192 unwind label %305

192:                                              ; preds = %181
  %193 = and i32 %187, 5
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %309, label %195

195:                                              ; preds = %192
  %196 = call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %196, ptr noundef nonnull @.str.15)
          to label %197 unwind label %307

197:                                              ; preds = %195
  invoke void @__cxa_throw(ptr nonnull %196, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
          to label %314 unwind label %305

198:                                              ; preds = %35
  %199 = landingpad { ptr, i32 }
          cleanup
  br label %209

200:                                              ; preds = %47, %42
  %201 = landingpad { ptr, i32 }
          cleanup
  %202 = load ptr, ptr %4, align 8, !tbaa !142
  %203 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %204 = icmp eq ptr %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i64, ptr %44, align 8, !tbaa !147
  %207 = icmp ult i64 %206, 16
  call void @llvm.assume(i1 %207)
  br label %209

208:                                              ; preds = %200
  call void @_ZdlPv(ptr noundef %202) #30
  br label %209

209:                                              ; preds = %208, %205, %198
  %210 = phi { ptr, i32 } [ %199, %198 ], [ %201, %205 ], [ %201, %208 ]
  %211 = load ptr, ptr %5, align 8, !tbaa !142
  %212 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %213 = icmp eq ptr %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %216 = load i64, ptr %215, align 8, !tbaa !147
  %217 = icmp ult i64 %216, 16
  call void @llvm.assume(i1 %217)
  br label %219

218:                                              ; preds = %209
  call void @_ZdlPv(ptr noundef %211) #30
  br label %219

219:                                              ; preds = %214, %218
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  br label %312

220:                                              ; preds = %66
  %221 = landingpad { ptr, i32 }
          cleanup
  br label %242

222:                                              ; preds = %73
  %223 = landingpad { ptr, i32 }
          cleanup
  br label %233

224:                                              ; preds = %79, %74
  %225 = landingpad { ptr, i32 }
          cleanup
  %226 = load ptr, ptr %6, align 8, !tbaa !142
  %227 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %228 = icmp eq ptr %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load i64, ptr %76, align 8, !tbaa !147
  %231 = icmp ult i64 %230, 16
  call void @llvm.assume(i1 %231)
  br label %233

232:                                              ; preds = %224
  call void @_ZdlPv(ptr noundef %226) #30
  br label %233

233:                                              ; preds = %232, %229, %222
  %234 = phi { ptr, i32 } [ %223, %222 ], [ %225, %229 ], [ %225, %232 ]
  %235 = load ptr, ptr %7, align 8, !tbaa !142
  %236 = icmp eq ptr %235, %70
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %239 = load i64, ptr %238, align 8, !tbaa !147
  %240 = icmp ult i64 %239, 16
  call void @llvm.assume(i1 %240)
  br label %242

241:                                              ; preds = %233
  call void @_ZdlPv(ptr noundef %235) #30
  br label %242

242:                                              ; preds = %241, %237, %220
  %243 = phi { ptr, i32 } [ %221, %220 ], [ %234, %237 ], [ %234, %241 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  br label %312

244:                                              ; preds = %97
  %245 = landingpad { ptr, i32 }
          cleanup
  br label %267

246:                                              ; preds = %103
  %247 = landingpad { ptr, i32 }
          cleanup
  br label %257

248:                                              ; preds = %109, %104
  %249 = landingpad { ptr, i32 }
          cleanup
  %250 = load ptr, ptr %8, align 8, !tbaa !142
  %251 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %252 = icmp eq ptr %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load i64, ptr %106, align 8, !tbaa !147
  %255 = icmp ult i64 %254, 16
  call void @llvm.assume(i1 %255)
  br label %257

256:                                              ; preds = %248
  call void @_ZdlPv(ptr noundef %250) #30
  br label %257

257:                                              ; preds = %256, %253, %246
  %258 = phi { ptr, i32 } [ %247, %246 ], [ %249, %253 ], [ %249, %256 ]
  %259 = load ptr, ptr %9, align 8, !tbaa !142
  %260 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %261 = icmp eq ptr %259, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %257
  %263 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %264 = load i64, ptr %263, align 8, !tbaa !147
  %265 = icmp ult i64 %264, 16
  call void @llvm.assume(i1 %265)
  br label %267

266:                                              ; preds = %257
  call void @_ZdlPv(ptr noundef %259) #30
  br label %267

267:                                              ; preds = %266, %262, %244
  %268 = phi { ptr, i32 } [ %245, %244 ], [ %258, %262 ], [ %258, %266 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #31
  %269 = load ptr, ptr %10, align 8, !tbaa !142
  %270 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %271 = icmp eq ptr %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %274 = load i64, ptr %273, align 8, !tbaa !147
  %275 = icmp ult i64 %274, 16
  call void @llvm.assume(i1 %275)
  br label %277

276:                                              ; preds = %267
  call void @_ZdlPv(ptr noundef %269) #30
  br label %277

277:                                              ; preds = %272, %276
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #31
  br label %312

278:                                              ; preds = %147
  %279 = landingpad { ptr, i32 }
          cleanup
  br label %301

280:                                              ; preds = %149
  %281 = landingpad { ptr, i32 }
          cleanup
  br label %291

282:                                              ; preds = %155, %150
  %283 = landingpad { ptr, i32 }
          cleanup
  %284 = load ptr, ptr %13, align 8, !tbaa !142
  %285 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %286 = icmp eq ptr %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i64, ptr %152, align 8, !tbaa !147
  %289 = icmp ult i64 %288, 16
  call void @llvm.assume(i1 %289)
  br label %291

290:                                              ; preds = %282
  call void @_ZdlPv(ptr noundef %284) #30
  br label %291

291:                                              ; preds = %290, %287, %280
  %292 = phi { ptr, i32 } [ %281, %280 ], [ %283, %287 ], [ %283, %290 ]
  %293 = load ptr, ptr %14, align 8, !tbaa !142
  %294 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %295 = icmp eq ptr %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %291
  %297 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %298 = load i64, ptr %297, align 8, !tbaa !147
  %299 = icmp ult i64 %298, 16
  call void @llvm.assume(i1 %299)
  br label %301

300:                                              ; preds = %291
  call void @_ZdlPv(ptr noundef %293) #30
  br label %301

301:                                              ; preds = %300, %296, %278
  %302 = phi { ptr, i32 } [ %279, %278 ], [ %292, %296 ], [ %292, %300 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #31
  br label %312

303:                                              ; preds = %179, %174
  %304 = landingpad { ptr, i32 }
          cleanup
  br label %310

305:                                              ; preds = %197, %181
  %306 = landingpad { ptr, i32 }
          cleanup
  br label %310

307:                                              ; preds = %195
  %308 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %196) #31
  br label %310

309:                                              ; preds = %192
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #31
  ret i1 true

310:                                              ; preds = %305, %307, %303
  %311 = phi { ptr, i32 } [ %304, %303 ], [ %306, %305 ], [ %308, %307 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #31
  br label %312

312:                                              ; preds = %33, %310, %301, %277, %242, %219, %21
  %313 = phi { ptr, i32 } [ %22, %21 ], [ %34, %33 ], [ %311, %310 ], [ %302, %301 ], [ %268, %277 ], [ %243, %242 ], [ %210, %219 ]
  resume { ptr, i32 } %313

314:                                              ; preds = %197
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca i8, align 1
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !142
  %6 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 60) #34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 62) #34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %12, ptr %0, align 8, !tbaa !138
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !147
  %15 = getelementptr inbounds i8, ptr %5, i64 %14
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %5, ptr noundef %15)
  br label %55

16:                                               ; preds = %8, %2
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %17 = load ptr, ptr %1, align 8, !tbaa !142
  %18 = getelementptr inbounds i8, ptr %4, i64 16
  %19 = getelementptr inbounds i8, ptr %4, i64 16
  %20 = getelementptr inbounds i8, ptr %4, i64 16
  %21 = getelementptr inbounds i8, ptr %4, i64 32
  br label %22

22:                                               ; preds = %46, %16
  %23 = phi ptr [ %17, %16 ], [ %47, %46 ]
  %24 = load i8, ptr %23, align 1, !tbaa !144
  switch i8 %24, label %34 [
    i8 0, label %25
    i8 60, label %27
    i8 62, label %30
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %26)
          to label %48 unwind label %50

27:                                               ; preds = %22
  br label %30

28:                                               ; preds = %30, %43, %41
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %52

30:                                               ; preds = %22, %27
  %31 = phi ptr [ %19, %27 ], [ %18, %22 ]
  %32 = phi ptr [ @.str.30, %27 ], [ @.str.31, %22 ]
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %32, i64 noundef 4)
          to label %46 unwind label %28

34:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %24, ptr %3, align 1, !tbaa !144
  %35 = load ptr, ptr %20, align 8, !tbaa !95
  %36 = getelementptr i8, ptr %35, i64 -24
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr i8, ptr %21, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !164
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %3, i64 noundef 1)
          to label %45 unwind label %28

43:                                               ; preds = %34
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext %24)
          to label %45 unwind label %28

45:                                               ; preds = %43, %41
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %46

46:                                               ; preds = %30, %45
  %47 = getelementptr inbounds i8, ptr %23, i64 1
  br label %22, !llvm.loop !165

48:                                               ; preds = %25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #31
  %49 = getelementptr inbounds i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %49) #31
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #31
  br label %55

50:                                               ; preds = %25
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %52

52:                                               ; preds = %50, %28
  %53 = phi { ptr, i32 } [ %29, %28 ], [ %51, %50 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #31
  %54 = getelementptr inbounds i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %54) #31
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #31
  resume { ptr, i32 } %53

55:                                               ; preds = %48, %11
  ret void
}

declare void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN8cVisitor7processEP7cObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8cVisitorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11cSimulation19loadNedSourceFolderEPKc(ptr noundef %0) local_unnamed_addr #3 align 2 !prof !94 {
  %2 = tail call noundef ptr @_ZN10cNEDLoader11getInstanceEv()
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds ptr, ptr %3, i64 13
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef %0), !prof !168
  ret i32 %6
}

declare noundef ptr @_ZN10cNEDLoader11getInstanceEv() local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation11loadNedFileEPKcS1_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 !prof !133 {
  %4 = tail call noundef ptr @_ZN10cNEDLoader11getInstanceEv()
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = getelementptr inbounds ptr, ptr %5, i64 14
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation11loadNedTextEPKcS1_S1_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 !prof !133 {
  %5 = tail call noundef ptr @_ZN10cNEDLoader11getInstanceEv()
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = getelementptr inbounds ptr, ptr %6, i64 15
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation19doneLoadingNedFilesEv() local_unnamed_addr #3 align 2 !prof !94 {
  %1 = tail call noundef ptr @_ZN10cNEDLoader11getInstanceEv()
  %2 = load ptr, ptr %1, align 8, !tbaa !95
  %3 = getelementptr inbounds ptr, ptr %2, i64 16
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(200) %1), !prof !169
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation22getNedPackageForFolderB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !94 {
  %3 = tail call noundef ptr @_ZN10cNEDLoader11getInstanceEv()
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds ptr, ptr %4, i64 25
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef %1), !prof !170
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation19clearLoadedNedFilesEv() local_unnamed_addr #3 align 2 !prof !94 {
  tail call void @_ZN10cNEDLoader5clearEv()
  ret void
}

declare void @_ZN10cNEDLoader5clearEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11cSimulation14registerModuleEP7cModule(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !171 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !118
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !118
  %6 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !117
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %41, label %9, !prof !172

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !116
  %12 = add nsw i32 %11, %7
  %13 = sext i32 %12 to i64
  %14 = icmp slt i32 %12, 0
  %15 = shl nsw i64 %13, 3
  %16 = select i1 %14, i64 -1, i64 %15, !prof !173
  %17 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %16) #29
  %18 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  %20 = sext i32 %7 to i64
  %21 = shl nsw i64 %20, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %17, ptr align 8 %19, i64 %21, i1 false), !prof !174
  %22 = icmp sgt i32 %11, 0
  br i1 %22, label %23, label %34, !prof !175

23:                                               ; preds = %9
  %24 = sext i32 %7 to i64
  %25 = shl nsw i64 %24, 3
  %26 = getelementptr i8, ptr %17, i64 %25
  %27 = add i32 %7, 1
  %28 = tail call i32 @llvm.smax.i32(i32 %12, i32 %27)
  %29 = xor i32 %7, -1
  %30 = add i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = add nuw nsw i64 %32, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %26, i8 0, i64 %33, i1 false), !tbaa !129
  br label %34

34:                                               ; preds = %23, %9
  %35 = icmp eq ptr %19, null
  br i1 %35, label %37, label %36, !prof !176

36:                                               ; preds = %34
  tail call void @_ZdaPv(ptr noundef %19) #30
  br label %37

37:                                               ; preds = %36, %34
  store ptr %17, ptr %18, align 8, !tbaa !119
  %38 = load i32, ptr %10, align 8, !tbaa !116
  %39 = load i32, ptr %6, align 4, !tbaa !117
  %40 = add nsw i32 %39, %38
  store i32 %40, ptr %6, align 4, !tbaa !117
  br label %41

41:                                               ; preds = %37, %2
  %42 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !119
  %44 = load i32, ptr %3, align 8, !tbaa !118
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45
  store ptr %1, ptr %46, align 8, !tbaa !129
  ret i32 %44
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11cSimulation16deregisterModuleEP7cModule(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef readonly %1) local_unnamed_addr #8 align 2 !prof !171 {
  %3 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !177
  %5 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  store ptr null, ptr %8, align 8, !tbaa !129
  %9 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %16, !prof !181

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !95
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %10), !prof !132
  store ptr null, ptr %9, align 8, !tbaa !114
  br label %16

16:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation15setSystemModuleEP7cModule(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !94 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !114
  %4 = load ptr, ptr %0, align 8, !tbaa !95
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1), !prof !122
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11cSimulation15getModuleByPathEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %82, label %4, !prof !183

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !144
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %82, label %7, !prof !183

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  %9 = add i64 %8, 1
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #29
  %11 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #31
  %12 = tail call ptr @strtok(ptr noundef nonnull %10, ptr noundef nonnull @.str.18) #31
  %13 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = icmp eq ptr %14, null
  br i1 %15, label %78, label %18, !prof !183

16:                                               ; preds = %18
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %80

18:                                               ; preds = %7
  %19 = load ptr, ptr %14, align 8, !tbaa !95
  %20 = getelementptr inbounds ptr, ptr %19, i64 6
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %23 unwind label %16, !prof !184

23:                                               ; preds = %18
  %24 = icmp eq ptr %22, null
  %25 = icmp eq ptr %12, null
  br i1 %24, label %33, label %26, !prof !185

26:                                               ; preds = %23
  br i1 %25, label %29, label %27, !prof !185

27:                                               ; preds = %26
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %12) #34
  br label %38

29:                                               ; preds = %26
  %30 = load i8, ptr %22, align 1, !tbaa !144
  %31 = icmp ne i8 %30, 0
  %32 = zext i1 %31 to i32
  br label %38

33:                                               ; preds = %23
  br i1 %25, label %38, label %34

34:                                               ; preds = %33
  %35 = load i8, ptr %12, align 1, !tbaa !144
  %36 = icmp ne i8 %35, 0
  %37 = sext i1 %36 to i32
  br label %38

38:                                               ; preds = %27, %29, %33, %34
  %39 = phi i32 [ %28, %27 ], [ %32, %29 ], [ 0, %33 ], [ %37, %34 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43, !prof !183

41:                                               ; preds = %38
  %42 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.18) #31
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi ptr [ %42, %41 ], [ %12, %38 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %78, label %46, !prof !186

46:                                               ; preds = %43, %73
  %47 = phi ptr [ %53, %73 ], [ %14, %43 ]
  %48 = phi ptr [ %74, %73 ], [ %44, %43 ]
  %49 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %48, i32 noundef 91) #34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %58, !prof !187

51:                                               ; preds = %46, %69
  %52 = phi i32 [ %72, %69 ], [ -1, %46 ]
  %53 = invoke noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %47, ptr noundef nonnull %48, i32 noundef %52)
          to label %73 unwind label %54, !prof !187

54:                                               ; preds = %51
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %80

56:                                               ; preds = %66
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %80

58:                                               ; preds = %46
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #34
  %60 = add i64 %59, -1
  %61 = getelementptr inbounds i8, ptr %48, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !144
  %63 = icmp eq i8 %62, 93
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %65, ptr noundef nonnull @.str.19, ptr noundef nonnull %1)
          to label %66 unwind label %67

66:                                               ; preds = %64
  invoke void @__cxa_throw(ptr nonnull %65, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
          to label %84 unwind label %56

67:                                               ; preds = %64
  %68 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %65) #31
  br label %80

69:                                               ; preds = %58
  store i8 0, ptr %49, align 1, !tbaa !144
  %70 = getelementptr inbounds i8, ptr %49, i64 1
  %71 = tail call i64 @strtol(ptr nocapture noundef nonnull %70, ptr noundef null, i32 noundef 10) #31
  %72 = trunc i64 %71 to i32
  br label %51

73:                                               ; preds = %51
  %74 = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.18) #31
  %75 = icmp ne ptr %74, null
  %76 = icmp ne ptr %53, null
  %77 = and i1 %75, %76
  br i1 %77, label %46, label %78, !prof !186, !llvm.loop !188

78:                                               ; preds = %73, %43, %7
  %79 = phi ptr [ null, %7 ], [ %14, %43 ], [ %53, %73 ]
  tail call void @_ZdaPv(ptr noundef %10) #30
  br label %82

80:                                               ; preds = %54, %56, %16, %67
  %81 = phi { ptr, i32 } [ %17, %16 ], [ %68, %67 ], [ %55, %54 ], [ %57, %56 ]
  tail call void @_ZdaPv(ptr noundef %10) #30
  resume { ptr, i32 } %81

82:                                               ; preds = %78, %2, %4
  %83 = phi ptr [ null, %4 ], [ null, %2 ], [ %79, %78 ]
  ret ptr %83

84:                                               ; preds = %66
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

declare noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation12setupNetworkEP11cModuleType(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %3 = alloca %class.cContextTypeSwitcher, align 4
  tail call void @_ZN11cSimulation11checkActiveEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %10, !prof !130

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, i32, ...) @_ZN13cRuntimeErrorC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %6, i32 noundef 27)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %63

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !95
  %12 = getelementptr inbounds ptr, ptr %11, i64 34
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(168) %1), !prof !189
  br i1 %14, label %25, label %15, !prof !102

15:                                               ; preds = %10
  %16 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  %17 = load ptr, ptr %1, align 8, !tbaa !95
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(168) %1)
          to label %21 unwind label %23

21:                                               ; preds = %15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %16, ptr noundef nonnull @.str.20, ptr noundef %20)
          to label %22 unwind label %23

22:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
  unreachable

23:                                               ; preds = %21, %15
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %63

25:                                               ; preds = %10
  %26 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 10
  store ptr %1, ptr %26, align 8, !tbaa !120
  %27 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  tail call void @_ZN12cMessageHeap5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  invoke void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0)
          to label %28 unwind label %49, !prof !102

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !120
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(20) %29)
          to label %34 unwind label %51, !prof !190

34:                                               ; preds = %28
  %35 = load ptr, ptr %29, align 8, !tbaa !95
  %36 = getelementptr inbounds ptr, ptr %35, i64 35
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(168) %29, ptr noundef %33, ptr noundef null)
          to label %39 unwind label %51, !prof !191

39:                                               ; preds = %34
  %40 = load ptr, ptr %38, align 8, !tbaa !95
  %41 = getelementptr inbounds ptr, ptr %40, i64 33
  %42 = load ptr, ptr %41, align 8
  invoke void %42(ptr noundef nonnull align 8 dereferenceable(176) %38)
          to label %43 unwind label %51, !prof !192

43:                                               ; preds = %39
  %44 = load ptr, ptr %38, align 8, !tbaa !95
  %45 = getelementptr inbounds ptr, ptr %44, i64 56
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef i32 %46(ptr noundef nonnull align 8 dereferenceable(176) %38)
          to label %48 unwind label %51, !prof !193

48:                                               ; preds = %43
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  ret void

49:                                               ; preds = %25
  %50 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %53

51:                                               ; preds = %43, %39, %34, %28
  %52 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #31
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  %55 = extractvalue { ptr, i32 } %54, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  %56 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #31
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = extractvalue { ptr, i32 } %54, 0
  %60 = call ptr @__cxa_begin_catch(ptr %59) #31
  invoke void @__cxa_rethrow() #32
          to label %71 unwind label %61

61:                                               ; preds = %58
  %62 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %66 unwind label %68

63:                                               ; preds = %8, %23
  %64 = phi ptr [ %16, %23 ], [ %6, %8 ]
  %65 = phi { ptr, i32 } [ %24, %23 ], [ %9, %8 ]
  tail call void @__cxa_free_exception(ptr %64) #31
  br label %66

66:                                               ; preds = %63, %61, %53
  %67 = phi { ptr, i32 } [ %54, %53 ], [ %62, %61 ], [ %65, %63 ]
  resume { ptr, i32 } %67

68:                                               ; preds = %61
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #33
  unreachable

71:                                               ; preds = %58
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11cSimulation11checkActiveEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !194 {
  %2 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !129
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %9, label %4, !prof !195

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull %0, i32 noundef 41)
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #31
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  ret void
}

declare void @_ZN13cRuntimeErrorC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ...) unnamed_addr #0

declare void @_ZN12cMessageHeap5clearEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #0

declare void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #14

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation8startRunEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = alloca %class.cContextSwitcher, align 8
  %3 = alloca %class.SimTime, align 8
  tail call void @_ZN11cSimulation11checkActiveEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  %4 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 12
  %5 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !196
  %6 = icmp eq i32 %5, 65535
  br i1 %6, label %7, label %8, !prof !130

7:                                                ; preds = %1
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef 0.000000e+00)
  br label %8

8:                                                ; preds = %1, %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i64 0, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !140
  store i64 0, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !140
  %9 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = load ptr, ptr %10, align 8, !tbaa !95
  %12 = getelementptr inbounds ptr, ptr %11, i64 20
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(16) %10), !prof !197
  %14 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17, !prof !130

17:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  call void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %15)
  %18 = load ptr, ptr %14, align 8, !tbaa !114
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
          to label %20 unwind label %30, !prof !102

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !95
  %22 = getelementptr inbounds ptr, ptr %21, i64 70
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(176) %18, ptr noundef nonnull %3)
          to label %24 unwind label %30, !prof !198

24:                                               ; preds = %20
  %25 = load ptr, ptr %14, align 8, !tbaa !114
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  %27 = getelementptr inbounds ptr, ptr %26, i64 38
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(176) %25)
          to label %29 unwind label %30, !prof !199

29:                                               ; preds = %24
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  br label %32

30:                                               ; preds = %17, %24, %20
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  resume { ptr, i32 } %31

32:                                               ; preds = %29, %8
  %33 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 13
  store i64 1, ptr %33, align 8, !tbaa !200
  ret void
}

declare void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation10callFinishEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 !prof !94 {
  tail call void @_ZN11cSimulation11checkActiveEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !130

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !95
  %7 = getelementptr inbounds ptr, ptr %6, i64 40
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(176) %3), !prof !201
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation6endRunEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 !prof !94 {
  tail call void @_ZN11cSimulation11checkActiveEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %3), !prof !202
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #8 align 2 !prof !203 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !204

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !95
  %7 = getelementptr inbounds ptr, ptr %6, i64 36
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(104) %3), !prof !205
  %10 = load ptr, ptr %2, align 8
  %11 = select i1 %9, ptr %10, ptr null, !prof !206
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ null, %1 ], [ %11, %5 ]
  ret ptr %13
}

declare void @_ZN7cModule14clearNamePoolsEv() local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZN11cSimulation16selectNextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #15 align 2 !prof !207 {
  br label %2

2:                                                ; preds = %32, %1
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(16) %4), !prof !208
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10, !prof !209

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = getelementptr inbounds %class.cMessage, ptr %8, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !210
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !129
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !prof !209

19:                                               ; preds = %10
  %20 = getelementptr inbounds %class.cNamedObject, ptr %17, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !212
  %22 = and i16 %21, 1024
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %33, label %24, !prof !213

24:                                               ; preds = %19, %10
  %25 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %26 = tail call noundef ptr @_ZN12cMessageHeap11removeFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %25)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !95
  %30 = getelementptr inbounds ptr, ptr %29, i64 4
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(160) %26) #31
  br label %32

32:                                               ; preds = %28, %24
  br label %2

33:                                               ; preds = %19
  %34 = getelementptr inbounds %class.cMessage, ptr %8, i64 0, i32 13
  %35 = load i64, ptr %34, align 8, !tbaa !98, !noalias !214
  %36 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 12
  store i64 %35, ptr %36, align 8, !tbaa !98
  br label %37

37:                                               ; preds = %33, %2
  %38 = phi ptr [ null, %2 ], [ %17, %33 ]
  ret ptr %38
}

declare noundef ptr @_ZN12cMessageHeap11removeFirstEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11cSimulation14guessNextEventEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 !prof !133 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %3 = tail call noundef ptr @_ZNK12cMessageHeap9peekFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  ret ptr %3
}

declare noundef ptr @_ZNK12cMessageHeap9peekFirstEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation16guessNextSimtimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #3 align 2 !prof !133 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %1, i64 0, i32 17
  %4 = tail call noundef ptr @_ZNK12cMessageHeap9peekFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef -1.000000e+00)
  br label %11

8:                                                ; preds = %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %9 = getelementptr inbounds %class.cMessage, ptr %4, i64 0, i32 13
  %10 = load i64, ptr %9, align 8, !tbaa !98, !noalias !217
  store i64 %10, ptr %0, align 8, !tbaa !98, !alias.scope !217
  br label %11

11:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11cSimulation15guessNextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 !prof !133 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %3 = tail call noundef ptr @_ZNK12cMessageHeap9peekFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cMessage, ptr %3, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !210
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %class.cNamedObject, ptr %14, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !212
  %19 = and i16 %18, 1024
  %20 = icmp eq i16 %19, 0
  %21 = select i1 %20, ptr %14, ptr null
  br label %22

22:                                               ; preds = %16, %9, %5, %1
  %23 = phi ptr [ null, %1 ], [ null, %5 ], [ null, %9 ], [ %21, %16 ]
  ret ptr %23
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation10transferToEP13cSimpleModule(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %class.cDeleteModuleException, align 8
  %5 = alloca %class.cTerminationException, align 8
  %6 = alloca %class.cRuntimeError, align 8
  %7 = alloca %class.cException, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull @.str.22)
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #31
  br label %124

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 15
  store ptr null, ptr %15, align 8, !tbaa !220
  %16 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 7
  store ptr %1, ptr %16, align 8, !tbaa !221
  %17 = getelementptr inbounds %class.cSimpleModule, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !222
  tail call void @_ZN10cCoroutine8switchToEPS_(ptr noundef %18)
  %19 = load ptr, ptr %1, align 8, !tbaa !95
  %20 = getelementptr inbounds ptr, ptr %19, i64 75
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(192) %1)
  br i1 %22, label %23, label %59

23:                                               ; preds = %14
  %24 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  %25 = load ptr, ptr %1, align 8, !tbaa !95
  %26 = getelementptr inbounds ptr, ptr %25, i64 5
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %29 unwind label %37

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  %30 = load ptr, ptr %1, align 8, !tbaa !95
  %31 = getelementptr inbounds ptr, ptr %30, i64 8
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1)
          to label %33 unwind label %39

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 8, !tbaa !142
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef nonnull @.str.23, ptr noundef %28, ptr noundef %34)
          to label %35 unwind label %41

35:                                               ; preds = %33
  invoke void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
          to label %36 unwind label %41

36:                                               ; preds = %35
  unreachable

37:                                               ; preds = %23
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %55

39:                                               ; preds = %29
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %52

41:                                               ; preds = %35, %33
  %42 = phi i1 [ false, %35 ], [ true, %33 ]
  %43 = landingpad { ptr, i32 }
          cleanup
  %44 = load ptr, ptr %3, align 8, !tbaa !142
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !147
  %50 = icmp ult i64 %49, 16
  call void @llvm.assume(i1 %50)
  br label %52

51:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %44) #30
  br label %52

52:                                               ; preds = %51, %47, %39
  %53 = phi { ptr, i32 } [ %40, %39 ], [ %43, %47 ], [ %43, %51 ]
  %54 = phi i1 [ true, %39 ], [ %42, %47 ], [ %42, %51 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  br label %55

55:                                               ; preds = %52, %37
  %56 = phi { ptr, i32 } [ %53, %52 ], [ %38, %37 ]
  %57 = phi i1 [ %54, %52 ], [ true, %37 ]
  br i1 %57, label %58, label %124

58:                                               ; preds = %55
  call void @__cxa_free_exception(ptr %24) #31
  br label %124

59:                                               ; preds = %14
  %60 = load ptr, ptr %15, align 8, !tbaa !220
  %61 = icmp eq ptr %60, null
  br i1 %61, label %123, label %62

62:                                               ; preds = %59
  store ptr null, ptr %15, align 8, !tbaa !220
  %63 = tail call ptr @__dynamic_cast(ptr nonnull %60, ptr nonnull @_ZTI10cException, ptr nonnull @_ZTI22cDeleteModuleException, i64 0) #31
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #31
  call void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 dereferenceable(124) %60)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV22cDeleteModuleException, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !95
  %66 = load ptr, ptr %60, align 8, !tbaa !95
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  %68 = load ptr, ptr %67, align 8
  call void %68(ptr noundef nonnull align 8 dereferenceable(124) %60) #31
  %69 = call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %69, ptr noundef nonnull align 8 dereferenceable(124) %4)
          to label %70 unwind label %72

70:                                               ; preds = %65
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV22cDeleteModuleException, i64 0, inrange i32 0, i64 2), ptr %69, align 8, !tbaa !95
  invoke void @__cxa_throw(ptr nonnull %69, ptr nonnull @_ZTI22cDeleteModuleException, ptr nonnull @_ZN10cExceptionD2Ev) #32
          to label %71 unwind label %74

71:                                               ; preds = %70
  unreachable

72:                                               ; preds = %65
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %69) #31
  br label %76

74:                                               ; preds = %70
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %73, %72 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %4) #31
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #31
  br label %124

78:                                               ; preds = %62
  %79 = tail call ptr @__dynamic_cast(ptr nonnull %60, ptr nonnull @_ZTI10cException, ptr nonnull @_ZTI21cTerminationException, i64 0) #31
  %80 = icmp eq ptr %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #31
  call void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 dereferenceable(124) %60)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV21cTerminationException, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !95
  %82 = load ptr, ptr %60, align 8, !tbaa !95
  %83 = getelementptr inbounds ptr, ptr %82, i64 1
  %84 = load ptr, ptr %83, align 8
  call void %84(ptr noundef nonnull align 8 dereferenceable(124) %60) #31
  %85 = call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %85, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %86 unwind label %88

86:                                               ; preds = %81
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV21cTerminationException, i64 0, inrange i32 0, i64 2), ptr %85, align 8, !tbaa !95
  invoke void @__cxa_throw(ptr nonnull %85, ptr nonnull @_ZTI21cTerminationException, ptr nonnull @_ZN10cExceptionD2Ev) #32
          to label %87 unwind label %90

87:                                               ; preds = %86
  unreachable

88:                                               ; preds = %81
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %85) #31
  br label %92

90:                                               ; preds = %86
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %89, %88 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %5) #31
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #31
  br label %124

94:                                               ; preds = %78
  %95 = tail call ptr @__dynamic_cast(ptr nonnull %60, ptr nonnull @_ZTI10cException, ptr nonnull @_ZTI13cRuntimeError, i64 0) #31
  %96 = icmp eq ptr %95, null
  br i1 %96, label %110, label %97

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #31
  call void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull align 8 dereferenceable(124) %60)
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV13cRuntimeError, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !95
  %98 = load ptr, ptr %60, align 8, !tbaa !95
  %99 = getelementptr inbounds ptr, ptr %98, i64 1
  %100 = load ptr, ptr %99, align 8
  call void %100(ptr noundef nonnull align 8 dereferenceable(124) %60) #31
  %101 = call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %101, ptr noundef nonnull align 8 dereferenceable(124) %6)
          to label %102 unwind label %104

102:                                              ; preds = %97
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV13cRuntimeError, i64 0, inrange i32 0, i64 2), ptr %101, align 8, !tbaa !95
  invoke void @__cxa_throw(ptr nonnull %101, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
          to label %103 unwind label %106

103:                                              ; preds = %102
  unreachable

104:                                              ; preds = %97
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %101) #31
  br label %108

106:                                              ; preds = %102
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi { ptr, i32 } [ %107, %106 ], [ %105, %104 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %6) #31
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #31
  br label %124

110:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #31
  call void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull align 8 dereferenceable(124) %60)
  %111 = load ptr, ptr %60, align 8, !tbaa !95
  %112 = getelementptr inbounds ptr, ptr %111, i64 1
  %113 = load ptr, ptr %112, align 8
  call void %113(ptr noundef nonnull align 8 dereferenceable(124) %60) #31
  %114 = call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %114, ptr noundef nonnull align 8 dereferenceable(124) %7)
          to label %115 unwind label %117

115:                                              ; preds = %110
  invoke void @__cxa_throw(ptr nonnull %114, ptr nonnull @_ZTI10cException, ptr nonnull @_ZN10cExceptionD2Ev) #32
          to label %116 unwind label %119

116:                                              ; preds = %115
  unreachable

117:                                              ; preds = %110
  %118 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %114) #31
  br label %121

119:                                              ; preds = %115
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi { ptr, i32 } [ %120, %119 ], [ %118, %117 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %7) #31
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #31
  br label %124

123:                                              ; preds = %59
  ret void

124:                                              ; preds = %76, %92, %108, %121, %55, %58, %12
  %125 = phi { ptr, i32 } [ %13, %12 ], [ %56, %58 ], [ %56, %55 ], [ %77, %76 ], [ %93, %92 ], [ %109, %108 ], [ %122, %121 ]
  resume { ptr, i32 } %125
}

declare void @_ZN10cCoroutine8switchToEPS_(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #16

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !102

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !147
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #30
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !142
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !102

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !147
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #30
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !142
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !130

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !147
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #30
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11cSimulation10doOneEventEP13cSimpleModule(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 !prof !207 {
  %3 = alloca %class.cRuntimeError, align 8
  %4 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 8
  store ptr %1, ptr %4, align 8, !tbaa !136
  invoke void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef %1)
          to label %5 unwind label %26, !prof !213

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 9
  store i32 2, ptr %6, align 8, !tbaa !113
  %7 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10, !prof !213

10:                                               ; preds = %5
  %11 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !129, !noalias !224
  %12 = getelementptr inbounds %class.cSimulation, ptr %11, i64 0, i32 12
  %13 = load i64, ptr %12, align 8, !tbaa !98, !noalias !227
  %14 = trunc i64 %13 to i32
  %15 = load i32, ptr %8, align 4, !tbaa !230
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 1)
  %17 = xor i32 %16, %14
  %18 = lshr i64 %13, 32
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 1)
  %21 = xor i32 %20, %19
  store i32 %21, ptr %8, align 4, !tbaa !230
  %22 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !177
  %24 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 1)
  %25 = xor i32 %24, %23
  store i32 %25, ptr %8, align 4, !tbaa !230
  br label %28

26:                                               ; preds = %2
  %27 = landingpad { ptr, i32 }
          catch ptr @_ZTI22cDeleteModuleException
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  br label %65

28:                                               ; preds = %10, %5
  %29 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %30 = invoke noundef ptr @_ZN12cMessageHeap11removeFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %29)
          to label %31 unwind label %52, !prof !213

31:                                               ; preds = %28
  %32 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !129
  %33 = getelementptr inbounds %class.cEnvir, ptr %32, i64 0, i32 2
  %34 = load i8, ptr %33, align 1, !tbaa !232, !range !236, !noundef !237
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40, !prof !213

36:                                               ; preds = %31
  %37 = load ptr, ptr %32, align 8, !tbaa !95
  %38 = getelementptr inbounds ptr, ptr %37, i64 6
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(288) %32, ptr noundef %30)
          to label %40 unwind label %52, !prof !238

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 13
  %42 = load i64, ptr %41, align 8, !tbaa !200
  %43 = getelementptr inbounds %class.cMessage, ptr %30, i64 0, i32 17
  store i64 %42, ptr %43, align 8, !tbaa !239
  %44 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %45 = load i16, ptr %44, align 8, !tbaa !212
  %46 = and i16 %45, 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %56, !prof !209

48:                                               ; preds = %40
  %49 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %49, ptr noundef nonnull %1, ptr noundef nonnull @.str.24)
          to label %50 unwind label %54

50:                                               ; preds = %48
  invoke void @__cxa_throw(ptr nonnull %49, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
          to label %51 unwind label %52

51:                                               ; preds = %50
  unreachable

52:                                               ; preds = %61, %59, %50, %36, %28
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI22cDeleteModuleException
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  br label %65

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI22cDeleteModuleException
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %49) #31
  br label %65

56:                                               ; preds = %40
  %57 = and i16 %45, 512
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %61, label %59, !prof !213

59:                                               ; preds = %56
  %60 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 14
  store ptr %30, ptr %60, align 8, !tbaa !240
  invoke void @_ZN11cSimulation10transferToEP13cSimpleModule(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %1)
          to label %80 unwind label %52

61:                                               ; preds = %56
  %62 = load ptr, ptr %1, align 8, !tbaa !95
  %63 = getelementptr inbounds ptr, ptr %62, i64 74
  %64 = load ptr, ptr %63, align 8
  invoke void %64(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull %30)
          to label %80 unwind label %52, !prof !241

65:                                               ; preds = %52, %54, %26
  %66 = phi { ptr, i32 } [ %27, %26 ], [ %53, %52 ], [ %55, %54 ]
  %67 = extractvalue { ptr, i32 } %66, 0
  %68 = extractvalue { ptr, i32 } %66, 1
  %69 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI22cDeleteModuleException) #31
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = tail call ptr @__cxa_begin_catch(ptr %67) #31
  store ptr null, ptr %4, align 8, !tbaa !136
  invoke void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef nonnull @defaultList)
          to label %73 unwind label %122

73:                                               ; preds = %71
  %74 = icmp eq ptr %1, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %1, align 8, !tbaa !95
  %77 = getelementptr inbounds ptr, ptr %76, i64 4
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(192) %1) #31
  br label %79

79:                                               ; preds = %75, %73
  tail call void @__cxa_end_catch()
  br label %80

80:                                               ; preds = %61, %59, %79
  store ptr null, ptr %4, align 8, !tbaa !136
  tail call void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef nonnull @defaultList)
  %81 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 13
  %82 = load i64, ptr %81, align 8, !tbaa !200
  %83 = add nsw i64 %82, 1
  store i64 %83, ptr %81, align 8, !tbaa !200
  ret void

84:                                               ; preds = %65
  %85 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI10cException) #31
  %86 = icmp eq i32 %68, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = tail call ptr @__cxa_begin_catch(ptr %67) #31
  store ptr null, ptr %4, align 8, !tbaa !136
  invoke void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef nonnull @defaultList)
          to label %89 unwind label %120

89:                                               ; preds = %87
  invoke void @__cxa_rethrow() #32
          to label %90 unwind label %120

90:                                               ; preds = %89
  unreachable

91:                                               ; preds = %84
  %92 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #31
  %93 = icmp eq i32 %68, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %91
  %95 = tail call ptr @__cxa_begin_catch(ptr %67) #31
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #31
  %96 = load ptr, ptr %95, align 8, !tbaa !95
  %97 = getelementptr inbounds ptr, ptr %96, i64 -1
  %98 = load ptr, ptr %97, align 8
  %99 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %98)
          to label %100 unwind label %110

100:                                              ; preds = %94
  %101 = load ptr, ptr %95, align 8, !tbaa !95
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8
  %104 = tail call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %95) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull @.str.25, ptr noundef %99, ptr noundef %104)
          to label %105 unwind label %110

105:                                              ; preds = %100
  store ptr null, ptr %4, align 8, !tbaa !136
  invoke void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef nonnull @defaultList)
          to label %106 unwind label %112

106:                                              ; preds = %105
  %107 = call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %107, ptr noundef nonnull align 8 dereferenceable(124) %3)
          to label %108 unwind label %114

108:                                              ; preds = %106
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV13cRuntimeError, i64 0, inrange i32 0, i64 2), ptr %107, align 8, !tbaa !95
  invoke void @__cxa_throw(ptr nonnull %107, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #32
          to label %109 unwind label %112

109:                                              ; preds = %108
  unreachable

110:                                              ; preds = %100, %94
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %118

112:                                              ; preds = %105, %108
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %116

114:                                              ; preds = %106
  %115 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %107) #31
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi { ptr, i32 } [ %113, %112 ], [ %115, %114 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %3) #31
  br label %118

118:                                              ; preds = %116, %110
  %119 = phi { ptr, i32 } [ %117, %116 ], [ %111, %110 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #31
  invoke void @__cxa_end_catch()
          to label %124 unwind label %126

120:                                              ; preds = %87, %89
  %121 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %124 unwind label %126

122:                                              ; preds = %71
  %123 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %124 unwind label %126

124:                                              ; preds = %122, %120, %118, %91
  %125 = phi { ptr, i32 } [ %66, %91 ], [ %119, %118 ], [ %121, %120 ], [ %123, %122 ]
  resume { ptr, i32 } %125

126:                                              ; preds = %122, %120, %118
  %127 = landingpad { ptr, i32 }
          catch ptr null
  %128 = extractvalue { ptr, i32 } %127, 0
  call void @__clang_call_terminate(ptr %128) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11cSimulation10setContextEP10cComponent(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !242 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 8
  store ptr %1, ptr %3, align 8, !tbaa !136
  tail call void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef %1)
  ret void
}

declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cSimulation14transferToMainEv(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 !prof !133 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !tbaa !221
  tail call void @_ZN10cCoroutine12switchToMainEv()
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

declare void @_ZN10cCoroutine12switchToMainEv() local_unnamed_addr #0

declare void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11cSimulation22getContextSimpleModuleEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #8 align 2 !prof !243 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5, !prof !244

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !95
  %7 = getelementptr inbounds ptr, ptr %6, i64 36
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(104) %3), !prof !245
  br i1 %9, label %10, label %18, !prof !246

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !136
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = getelementptr inbounds ptr, ptr %12, i64 57
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(176) %11), !prof !247
  %16 = load ptr, ptr %2, align 8
  %17 = select i1 %15, ptr %16, ptr null, !prof !246
  br label %18

18:                                               ; preds = %10, %1, %5
  %19 = phi ptr [ null, %5 ], [ null, %1 ], [ %17, %10 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZN11cSimulation15getUniqueNumberEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 !prof !133 {
  %2 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !129
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = getelementptr inbounds ptr, ptr %3, i64 55
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i64 %5(ptr noundef nonnull align 8 dereferenceable(288) %2)
  ret i64 %6
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11cSimulation9setHasherEP7cHasher(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !94 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !102

6:                                                ; preds = %2
  tail call void @_ZdlPv(ptr noundef %4) #30
  br label %7

7:                                                ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !121
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11cSimulation9insertMsgEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #15 align 2 !prof !248 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 13
  %4 = load i64, ptr %3, align 8, !tbaa !200
  %5 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 17
  store i64 %4, ptr %5, align 8, !tbaa !239
  %6 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !129
  %7 = getelementptr inbounds %class.cSimulation, ptr %6, i64 0, i32 17
  tail call void @_ZN12cMessageHeap6insertEP8cMessage(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %1)
  ret void
}

declare void @_ZN12cMessageHeap6insertEP8cMessage(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9StaticEnv16undisposedObjectEP7cObject(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = load i8, ptr @_ZN11cStaticFlag10staticflagE, align 1, !tbaa !249, !range !236, !noundef !237
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !95
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  %11 = load ptr, ptr %1, align 8, !tbaa !95
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  call void %13(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %14 = load ptr, ptr %3, align 8, !tbaa !142
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef %10, ptr noundef %14, ptr noundef nonnull %1)
  %16 = load ptr, ptr %3, align 8, !tbaa !142
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !147
  %22 = icmp ult i64 %21, 16
  call void @llvm.assume(i1 %22)
  br label %24

23:                                               ; preds = %6
  call void @_ZdlPv(ptr noundef %16) #30
  br label %24

24:                                               ; preds = %19, %23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  br label %25

25:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZN6cEnvirD2Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #1

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #18 comdat align 2 !prof !250 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !251
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.10, ptr %3, !prof !252
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !253 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !254
  ret ptr %5
}

declare void @_ZNK7cObject4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef ptr @_ZNK23cNoncopyableOwnedObject3dupEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN23cNoncopyableOwnedObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #0

declare void @_ZN23cNoncopyableOwnedObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #18 comdat align 2 !prof !255 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !256
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #18 comdat align 2 !prof !257 {
  ret i1 true
}

declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !212
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  ret i1 false
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11cSimulation8getEnvirEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv5sputnEPKci(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !133 {
  %4 = sext i32 %2 to i64
  %5 = load ptr, ptr @stdout, align 8, !tbaa !129
  %6 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv7putsmsgEPKc(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !133 {
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9StaticEnv8askyesnoEPKc(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret i1 false
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnvD0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  tail call void @_ZN6cEnvirD2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) #31
  tail call void @_ZdlPv(ptr noundef %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv13objectDeletedEP7cObject(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #19 comdat align 2 !prof !258 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv15simulationEventEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv20messageSent_OBSOLETEEP8cMessageP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv16messageScheduledEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv16messageCancelledEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv9beginSendEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv17messageSendDirectEP8cMessageP5cGate7SimTimeS4_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv14messageSendHopEP8cMessageP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv14messageSendHopEP8cMessageP5cGate7SimTimeS4_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv7endSendEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv14messageDeletedEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv16moduleReparentedEP7cModuleS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv18componentMethodEndEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv13moduleCreatedEP7cModule(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv13moduleDeletedEP7cModule(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv11gateCreatedEP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv11gateDeletedEP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv17connectionCreatedEP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv17connectionDeletedEP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv20displayStringChangedEP10cComponent(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv13readParameterEP4cPar(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9StaticEnv13isModuleLocalEP7cModulePKci(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #6 comdat align 2 !prof !133 {
  ret i1 true
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN9StaticEnv14getXMLDocumentEPKcS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret ptr null
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9StaticEnv21getExtraStackForEnvirEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  ret i32 0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN9StaticEnv9getConfigEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #3 comdat align 2 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret ptr null
}

declare noundef ptr @_ZN6cEnvir11getConfigExEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9StaticEnv5isGUIEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  ret i1 false
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv6bubbleEP10cComponentPKc(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

declare void @_ZN6cEnvir9printfmsgEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #0

declare noundef i32 @_ZN6cEnvir6printfEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN9StaticEnv5flushEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #3 comdat align 2 !prof !133 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !129
  %3 = tail call i32 @fflush(ptr noundef %2)
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv4getsB5cxx11EPKcS1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %1)
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !138
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !147
  store i8 0, ptr %5, align 8, !tbaa !144
  ret void
}

declare noundef zeroext i1 @_ZN6cEnvir8askYesNoEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9StaticEnv10getNumRNGsEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  ret i32 0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN9StaticEnv6getRNGEi(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv16getRNGMappingForEP10cComponent(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !133 {
  %3 = getelementptr inbounds %class.cComponent, ptr %1, i64 0, i32 2
  store i16 0, ptr %3, align 8, !tbaa !259
  %4 = getelementptr inbounds %class.cComponent, ptr %1, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !260
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN9StaticEnv20registerOutputVectorEPKcS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !133 {
  ret ptr null
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv22deregisterOutputVectorEPv(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv18setVectorAttributeEPvPKcS2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9StaticEnv20recordInOutputVectorEPv7SimTimed(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, double noundef %3) unnamed_addr #6 comdat align 2 !prof !133 {
  ret i1 false
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv12recordScalarEP10cComponentPKcdP14opp_string_map(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 !prof !133 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN9StaticEnv20getStreamForSnapshotEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #3 comdat align 2 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv24releaseStreamForSnapshotEPSo(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9StaticEnv11getArgCountEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #3 comdat align 2 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret i32 0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9StaticEnv12getArgVectorEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #3 comdat align 2 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret ptr null
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9StaticEnv15getParsimProcIdEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  ret i32 0
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9StaticEnv22getParsimNumPartitionsEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  ret i32 1
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN9StaticEnv15getUniqueNumberEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #3 comdat align 2 !prof !133 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0)
  ret i64 0
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9StaticEnv4idleEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  ret i1 false
}

declare void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare void @_ZN10cSchedulerC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #31
  tail call void @_ZdlPv(ptr noundef %0) #30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !94 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #30
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !261
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !133 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !147
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.28)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !138, !alias.scope !264
  %10 = load ptr, ptr %7, align 8, !tbaa !142
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !147
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !142, !alias.scope !264
  %19 = load i64, ptr %11, align 8, !tbaa !144
  store i64 %19, ptr %9, align 8, !tbaa !144, !alias.scope !264
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !147
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !147, !alias.scope !264
  store ptr %11, ptr %7, align 8, !tbaa !142
  store i64 0, ptr %21, align 8, !tbaa !147
  store i8 0, ptr %11, align 8, !tbaa !144
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !147, !noalias !267
  %27 = load i64, ptr %23, align 8, !tbaa !147, !noalias !267
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !142, !noalias !267
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !138, !alias.scope !267
  %37 = load ptr, ptr %34, align 8, !tbaa !142
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !147
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !142, !alias.scope !267
  %46 = load i64, ptr %38, align 8, !tbaa !144
  store i64 %46, ptr %36, align 8, !tbaa !144, !alias.scope !267
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !147
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !147, !alias.scope !267
  store ptr %38, ptr %34, align 8, !tbaa !142
  store i64 0, ptr %48, align 8, !tbaa !147
  store i8 0, ptr %38, align 8, !tbaa !144
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #31
  %52 = load ptr, ptr %3, align 8, !tbaa !142
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !147
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #30
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !142
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !147
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #30
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !142
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !147
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #30
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !142
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !147
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #30
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !142
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !147
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #30
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !94 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !270, !range !236, !noundef !237
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !271
  ret i32 %3
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #8 align 2

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !140
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !273

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !142
  %11 = load i64, ptr %4, align 8, !tbaa !140
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !144
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !142
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !274

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !144
  store i8 %16, ptr %14, align 1, !tbaa !144
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !275
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !140
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !147
  %21 = load ptr, ptr %0, align 8, !tbaa !142
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3 align 2

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #6 align 2

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22cSnapshotWriterVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #21 comdat align 2 !prof !133 {
  tail call void @_ZdlPv(ptr noundef %0) #30
  ret void
}

declare noundef zeroext i1 @_ZN8cVisitor17processChildrenOfEP7cObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN22cSnapshotWriterVisitor5visitEP7cObject(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  %10 = getelementptr inbounds %class.cSnapshotWriterVisitor, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !155
  %12 = shl nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %14, ptr %3, align 8, !tbaa !138
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %13, i8 noundef signext 32)
  %15 = getelementptr inbounds %class.cSnapshotWriterVisitor, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !276
  %17 = load ptr, ptr %3, align 8, !tbaa !142
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !147
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %17, i64 noundef %19)
          to label %21 unwind label %140

21:                                               ; preds = %2
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.34, i64 noundef 15)
          to label %23 unwind label %140

23:                                               ; preds = %21
  %24 = load ptr, ptr %1, align 8, !tbaa !95
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %28 unwind label %140

28:                                               ; preds = %23
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %28
  %31 = load ptr, ptr %20, align 8, !tbaa !95
  %32 = getelementptr i8, ptr %31, i64 -24
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds i8, ptr %20, i64 %33
  %35 = getelementptr inbounds %"class.std::ios_base", ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !158
  %37 = or i32 %36, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %34, i32 noundef %37)
          to label %41 unwind label %140

38:                                               ; preds = %28
  %39 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #31
  %40 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %27, i64 noundef %39)
          to label %41 unwind label %140

41:                                               ; preds = %38, %30
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.35, i64 noundef 12)
          to label %43 unwind label %140

43:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #31
  %44 = load ptr, ptr %1, align 8, !tbaa !95
  %45 = getelementptr inbounds ptr, ptr %44, i64 8
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %47 unwind label %142

47:                                               ; preds = %43
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %48 unwind label %144

48:                                               ; preds = %47
  %49 = load ptr, ptr %4, align 8, !tbaa !142
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !147
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %49, i64 noundef %51)
          to label %53 unwind label %146

53:                                               ; preds = %48
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull @.str.36, i64 noundef 3)
          to label %55 unwind label %146

55:                                               ; preds = %53
  %56 = load ptr, ptr %4, align 8, !tbaa !142
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, ptr %50, align 8, !tbaa !147
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  br label %63

62:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef %56) #30
  br label %63

63:                                               ; preds = %59, %62
  %64 = load ptr, ptr %5, align 8, !tbaa !142
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !147
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  br label %72

71:                                               ; preds = %63
  call void @_ZdlPv(ptr noundef %64) #30
  br label %72

72:                                               ; preds = %67, %71
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  %73 = load ptr, ptr %15, align 8, !tbaa !276
  %74 = load ptr, ptr %3, align 8, !tbaa !142
  %75 = load i64, ptr %18, align 8, !tbaa !147
  %76 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef %74, i64 noundef %75)
          to label %77 unwind label %140

77:                                               ; preds = %72
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.37, i64 noundef 8)
          to label %79 unwind label %140

79:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #31
  %80 = load ptr, ptr %1, align 8, !tbaa !95
  %81 = getelementptr inbounds ptr, ptr %80, i64 9
  %82 = load ptr, ptr %81, align 8
  invoke void %82(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %83 unwind label %167

83:                                               ; preds = %79
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %84 unwind label %169

84:                                               ; preds = %83
  %85 = load ptr, ptr %6, align 8, !tbaa !142
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !147
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %85, i64 noundef %87)
          to label %89 unwind label %171

89:                                               ; preds = %84
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull @.str.38, i64 noundef 8)
          to label %91 unwind label %171

91:                                               ; preds = %89
  %92 = load ptr, ptr %6, align 8, !tbaa !142
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, ptr %86, align 8, !tbaa !147
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %99

98:                                               ; preds = %91
  call void @_ZdlPv(ptr noundef %92) #30
  br label %99

99:                                               ; preds = %95, %98
  %100 = load ptr, ptr %7, align 8, !tbaa !142
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !147
  %106 = icmp ult i64 %105, 16
  call void @llvm.assume(i1 %106)
  br label %108

107:                                              ; preds = %99
  call void @_ZdlPv(ptr noundef %100) #30
  br label %108

108:                                              ; preds = %103, %107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #31
  %109 = load ptr, ptr %1, align 8, !tbaa !95
  %110 = getelementptr inbounds ptr, ptr %109, i64 10
  %111 = load ptr, ptr %110, align 8
  invoke void %111(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %112 unwind label %192

112:                                              ; preds = %108
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !147
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %209, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %15, align 8, !tbaa !276
  %118 = load ptr, ptr %3, align 8, !tbaa !142
  %119 = load i64, ptr %18, align 8, !tbaa !147
  %120 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef %118, i64 noundef %119)
          to label %121 unwind label %194

121:                                              ; preds = %116
  %122 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef nonnull @.str.39, i64 noundef 16)
          to label %123 unwind label %194

123:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #31
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %124 unwind label %196

124:                                              ; preds = %123
  %125 = load ptr, ptr %9, align 8, !tbaa !142
  %126 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !147
  %128 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef %125, i64 noundef %127)
          to label %129 unwind label %198

129:                                              ; preds = %124
  %130 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %128, ptr noundef nonnull @.str.40, i64 noundef 16)
          to label %131 unwind label %198

131:                                              ; preds = %129
  %132 = load ptr, ptr %9, align 8, !tbaa !142
  %133 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i64, ptr %126, align 8, !tbaa !147
  %137 = icmp ult i64 %136, 16
  call void @llvm.assume(i1 %137)
  br label %139

138:                                              ; preds = %131
  call void @_ZdlPv(ptr noundef %132) #30
  br label %139

139:                                              ; preds = %135, %138
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #31
  br label %209

140:                                              ; preds = %77, %72, %41, %38, %30, %21, %2, %23
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %263

142:                                              ; preds = %43
  %143 = landingpad { ptr, i32 }
          cleanup
  br label %165

144:                                              ; preds = %47
  %145 = landingpad { ptr, i32 }
          cleanup
  br label %155

146:                                              ; preds = %53, %48
  %147 = landingpad { ptr, i32 }
          cleanup
  %148 = load ptr, ptr %4, align 8, !tbaa !142
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i64, ptr %50, align 8, !tbaa !147
  %153 = icmp ult i64 %152, 16
  call void @llvm.assume(i1 %153)
  br label %155

154:                                              ; preds = %146
  call void @_ZdlPv(ptr noundef %148) #30
  br label %155

155:                                              ; preds = %154, %151, %144
  %156 = phi { ptr, i32 } [ %145, %144 ], [ %147, %151 ], [ %147, %154 ]
  %157 = load ptr, ptr %5, align 8, !tbaa !142
  %158 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %159 = icmp eq ptr %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %162 = load i64, ptr %161, align 8, !tbaa !147
  %163 = icmp ult i64 %162, 16
  call void @llvm.assume(i1 %163)
  br label %165

164:                                              ; preds = %155
  call void @_ZdlPv(ptr noundef %157) #30
  br label %165

165:                                              ; preds = %164, %160, %142
  %166 = phi { ptr, i32 } [ %143, %142 ], [ %156, %160 ], [ %156, %164 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  br label %263

167:                                              ; preds = %79
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %190

169:                                              ; preds = %83
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %180

171:                                              ; preds = %89, %84
  %172 = landingpad { ptr, i32 }
          cleanup
  %173 = load ptr, ptr %6, align 8, !tbaa !142
  %174 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %175 = icmp eq ptr %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load i64, ptr %86, align 8, !tbaa !147
  %178 = icmp ult i64 %177, 16
  call void @llvm.assume(i1 %178)
  br label %180

179:                                              ; preds = %171
  call void @_ZdlPv(ptr noundef %173) #30
  br label %180

180:                                              ; preds = %179, %176, %169
  %181 = phi { ptr, i32 } [ %170, %169 ], [ %172, %176 ], [ %172, %179 ]
  %182 = load ptr, ptr %7, align 8, !tbaa !142
  %183 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %184 = icmp eq ptr %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %187 = load i64, ptr %186, align 8, !tbaa !147
  %188 = icmp ult i64 %187, 16
  call void @llvm.assume(i1 %188)
  br label %190

189:                                              ; preds = %180
  call void @_ZdlPv(ptr noundef %182) #30
  br label %190

190:                                              ; preds = %189, %185, %167
  %191 = phi { ptr, i32 } [ %168, %167 ], [ %181, %185 ], [ %181, %189 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  br label %263

192:                                              ; preds = %108
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %261

194:                                              ; preds = %222, %215, %121, %116, %234, %209
  %195 = landingpad { ptr, i32 }
          cleanup
  br label %252

196:                                              ; preds = %123
  %197 = landingpad { ptr, i32 }
          cleanup
  br label %207

198:                                              ; preds = %129, %124
  %199 = landingpad { ptr, i32 }
          cleanup
  %200 = load ptr, ptr %9, align 8, !tbaa !142
  %201 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %202 = icmp eq ptr %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i64, ptr %126, align 8, !tbaa !147
  %205 = icmp ult i64 %204, 16
  call void @llvm.assume(i1 %205)
  br label %207

206:                                              ; preds = %198
  call void @_ZdlPv(ptr noundef %200) #30
  br label %207

207:                                              ; preds = %206, %203, %196
  %208 = phi { ptr, i32 } [ %197, %196 ], [ %199, %203 ], [ %199, %206 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #31
  br label %252

209:                                              ; preds = %139, %112
  %210 = load i32, ptr %10, align 8, !tbaa !155
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %10, align 8, !tbaa !155
  %212 = load ptr, ptr %1, align 8, !tbaa !95
  %213 = getelementptr inbounds ptr, ptr %212, i64 18
  %214 = load ptr, ptr %213, align 8
  invoke void %214(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
          to label %215 unwind label %194

215:                                              ; preds = %209
  %216 = load i32, ptr %10, align 8, !tbaa !155
  %217 = add nsw i32 %216, -1
  store i32 %217, ptr %10, align 8, !tbaa !155
  %218 = load ptr, ptr %15, align 8, !tbaa !276
  %219 = load ptr, ptr %3, align 8, !tbaa !142
  %220 = load i64, ptr %18, align 8, !tbaa !147
  %221 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %218, ptr noundef %219, i64 noundef %220)
          to label %222 unwind label %194

222:                                              ; preds = %215
  %223 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %221, ptr noundef nonnull @.str.41, i64 noundef 11)
          to label %224 unwind label %194

224:                                              ; preds = %222
  %225 = load ptr, ptr %15, align 8, !tbaa !276
  %226 = load ptr, ptr %225, align 8, !tbaa !95
  %227 = getelementptr i8, ptr %226, i64 -24
  %228 = load i64, ptr %227, align 8
  %229 = getelementptr inbounds i8, ptr %225, i64 %228
  %230 = getelementptr inbounds %"class.std::ios_base", ptr %229, i64 0, i32 5
  %231 = load i32, ptr %230, align 8, !tbaa !158
  %232 = and i32 %231, 5
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %224
  %235 = call ptr @__cxa_allocate_exception(i64 1) #31
  invoke void @__cxa_throw(ptr nonnull %235, ptr nonnull @_ZTIN8cVisitor21EndTraversalExceptionE, ptr null) #32
          to label %272 unwind label %194

236:                                              ; preds = %224
  %237 = load ptr, ptr %8, align 8, !tbaa !142
  %238 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %239 = icmp eq ptr %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i64, ptr %113, align 8, !tbaa !147
  %242 = icmp ult i64 %241, 16
  call void @llvm.assume(i1 %242)
  br label %244

243:                                              ; preds = %236
  call void @_ZdlPv(ptr noundef %237) #30
  br label %244

244:                                              ; preds = %240, %243
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #31
  %245 = load ptr, ptr %3, align 8, !tbaa !142
  %246 = icmp eq ptr %245, %14
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load i64, ptr %18, align 8, !tbaa !147
  %249 = icmp ult i64 %248, 16
  call void @llvm.assume(i1 %249)
  br label %251

250:                                              ; preds = %244
  call void @_ZdlPv(ptr noundef %245) #30
  br label %251

251:                                              ; preds = %247, %250
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  ret void

252:                                              ; preds = %207, %194
  %253 = phi { ptr, i32 } [ %195, %194 ], [ %208, %207 ]
  %254 = load ptr, ptr %8, align 8, !tbaa !142
  %255 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %256 = icmp eq ptr %254, %255
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load i64, ptr %113, align 8, !tbaa !147
  %259 = icmp ult i64 %258, 16
  call void @llvm.assume(i1 %259)
  br label %261

260:                                              ; preds = %252
  call void @_ZdlPv(ptr noundef %254) #30
  br label %261

261:                                              ; preds = %260, %257, %192
  %262 = phi { ptr, i32 } [ %193, %192 ], [ %253, %257 ], [ %253, %260 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #31
  br label %263

263:                                              ; preds = %261, %190, %165, %140
  %264 = phi { ptr, i32 } [ %262, %261 ], [ %191, %190 ], [ %141, %140 ], [ %166, %165 ]
  %265 = load ptr, ptr %3, align 8, !tbaa !142
  %266 = icmp eq ptr %265, %14
  br i1 %266, label %267, label %270

267:                                              ; preds = %263
  %268 = load i64, ptr %18, align 8, !tbaa !147
  %269 = icmp ult i64 %268, 16
  call void @llvm.assume(i1 %269)
  br label %271

270:                                              ; preds = %263
  call void @_ZdlPv(ptr noundef %265) #30
  br label %271

271:                                              ; preds = %270, %267
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  resume { ptr, i32 } %264

272:                                              ; preds = %234
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #15 comdat align 2 !prof !277 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !196
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !278

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1)
  br label %6

6:                                                ; preds = %2, %5
  %7 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !279
  %8 = fmul double %7, %1
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43DFFFFFFFFFEDC8
  br i1 %10, label %11, label %12, !prof !278

11:                                               ; preds = %6
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %8)
  br label %12

12:                                               ; preds = %6, %11
  %13 = fptosi double %8 to i64
  store i64 %13, ptr %0, align 8, !tbaa !98
  ret ptr %0
}

declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

declare void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22cDeleteModuleExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #21 comdat align 2 !prof !133 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #31
  tail call void @_ZdlPv(ptr noundef %0) #30
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22cDeleteModuleException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
  invoke void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV22cDeleteModuleException, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !95
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #30
  resume { ptr, i32 } %5
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21cTerminationExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #21 comdat align 2 !prof !133 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #31
  tail call void @_ZdlPv(ptr noundef %0) #30
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK21cTerminationException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
  invoke void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV21cTerminationException, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !95
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #30
  resume { ptr, i32 } %5
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13cRuntimeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #21 comdat align 2 !prof !133 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #31
  tail call void @_ZdlPv(ptr noundef %0) #30
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cRuntimeError3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
  invoke void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV13cRuntimeError, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !95
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #30
  resume { ptr, i32 } %5
}

declare void @_ZN6cEnvirC2Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #31
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.43)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #32
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #31
  resume { ptr, i32 } %5
}

declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !147
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #30
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #31
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !147
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #30
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #31
  tail call void @_ZdlPv(ptr noundef %0) #30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !133 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  ret ptr %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !281 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !140
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !141

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !142
  %11 = load i64, ptr %4, align 8, !tbaa !140
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !144
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !142
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !145

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !144
  store i8 %16, ptr %14, align 1, !tbaa !144
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !282
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !140
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !147
  %21 = load ptr, ptr %0, align 8, !tbaa !142
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_csimulation.cc() #24 section ".text.startup" !prof !94 !PGOFuncName !283 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #31
  tail call void @_ZN6cEnvirC2Ev(ptr noundef nonnull align 8 dereferenceable(288) @_ZL9staticEnv)
  store ptr getelementptr inbounds ({ [59 x ptr] }, ptr @_ZTV9StaticEnv, i64 0, inrange i32 0, i64 2), ptr @_ZL9staticEnv, align 8, !tbaa !95
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6cEnvirD2Ev, ptr nonnull @_ZL9staticEnv, ptr nonnull @__dso_handle) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind memory(none) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!93}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!35 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN12cOwnedObjectC2EPKcb, i64 1}
!36 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN12cMessageHeapC1EPKci, i64 1}
!37 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN12cNamedObject7setNameEPKc, i64 1}
!38 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN7cObject4takeEP12cOwnedObject, i64 1}
!39 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_Znwm, i64 1}
!40 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN10cSchedulerC2Ev, i64 1}
!41 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN11cSimulation12setSchedulerEP10cScheduler, i64 1}
!42 = !{ptr @_ZN11cSimulationD2Ev, ptr @_ZN11cSimulation13deleteNetworkEv, i64 1}
!43 = !{ptr @_ZN11cSimulationD2Ev, ptr @_ZN7cObject4dropEP12cOwnedObject, i64 1}
!44 = !{ptr @_ZN11cSimulationD2Ev, ptr @_ZN12cMessageHeapD1Ev, i64 1}
!45 = !{ptr @_ZN11cSimulationD2Ev, ptr @_ZN12cOwnedObjectD2Ev, i64 1}
!46 = !{ptr @_ZN11cSimulation13deleteNetworkEv, ptr @_ZdaPv, i64 1}
!47 = !{ptr @_ZN11cSimulation13deleteNetworkEv, ptr @_ZN7cModule14clearNamePoolsEv, i64 1}
!48 = !{ptr @_ZN11cSimulation13deleteNetworkEv, ptr @_ZN12cMessageHeap5clearEv, i64 1}
!49 = !{ptr @_ZN11cSimulationD0Ev, ptr @_ZN11cSimulationD2Ev, i64 1}
!50 = !{ptr @_ZN11cSimulationD0Ev, ptr @_ZdlPv, i64 1}
!51 = !{ptr @_ZN11cSimulation19loadNedSourceFolderEPKc, ptr @_ZN10cNEDLoader11getInstanceEv, i64 1}
!52 = !{ptr @_ZN11cSimulation19doneLoadingNedFilesEv, ptr @_ZN10cNEDLoader11getInstanceEv, i64 1}
!53 = !{ptr @_ZN11cSimulation22getNedPackageForFolderB5cxx11EPKc, ptr @_ZN10cNEDLoader11getInstanceEv, i64 1}
!54 = !{ptr @_ZN11cSimulation19clearLoadedNedFilesEv, ptr @_ZN10cNEDLoader5clearEv, i64 1}
!55 = !{ptr @_ZN11cSimulation14registerModuleEP7cModule, ptr @_Znam, i64 920}
!56 = !{ptr @_ZN11cSimulation14registerModuleEP7cModule, ptr @_ZdaPv, i64 919}
!57 = !{ptr @_ZN11cSimulation16deregisterModuleEP7cModule, ptr @_ZN7cObject4dropEP12cOwnedObject, i64 1}
!58 = !{ptr @_ZN11cSimulation15setSystemModuleEP7cModule, ptr @_ZN7cObject4takeEP12cOwnedObject, i64 1}
!59 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @strlen, i64 4920}
!60 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_Znam, i64 4920}
!61 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @strcpy, i64 4920}
!62 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @strtok, i64 9840}
!63 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_ZNK12cNamedObject7getNameEv, i64 2789}
!64 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @strcmp, i64 4920}
!65 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @strchr, i64 4920}
!66 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_ZN7cModule12getSubmoduleEPKci, i64 4920}
!67 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_ZdaPv, i64 4920}
!68 = !{ptr @_ZN11cSimulation12setupNetworkEP11cModuleType, ptr @_ZN11cSimulation11checkActiveEv, i64 1}
!69 = !{ptr @_ZN11cSimulation12setupNetworkEP11cModuleType, ptr @_ZN12cMessageHeap5clearEv, i64 1}
!70 = !{ptr @_ZN11cSimulation12setupNetworkEP11cModuleType, ptr @_ZN20cContextTypeSwitcherC1Ei, i64 1}
!71 = !{ptr @_ZN11cSimulation12setupNetworkEP11cModuleType, ptr @_ZNK12cNamedObject7getNameEv, i64 1}
!72 = !{ptr @_ZN11cSimulation12setupNetworkEP11cModuleType, ptr @_ZN20cContextTypeSwitcherD1Ev, i64 1}
!73 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZN11cSimulation11checkActiveEv, i64 1}
!74 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZN16cContextSwitcherC1EPK10cComponent, i64 1}
!75 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZN7SimTimeaSEd, i64 1}
!76 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZN16cContextSwitcherD1Ev, i64 1}
!77 = !{ptr @_ZN11cSimulation10callFinishEv, ptr @_ZN11cSimulation11checkActiveEv, i64 1}
!78 = !{ptr @_ZN11cSimulation6endRunEv, ptr @_ZN11cSimulation11checkActiveEv, i64 1}
!79 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!80 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!81 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList, i64 934625204}
!82 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN12cMessageHeap11removeFirstEv, i64 467312602}
!83 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @__cxa_begin_catch, i64 446}
!84 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @__cxa_end_catch, i64 446}
!85 = !{ptr @_ZN11cSimulation10setContextEP10cComponent, ptr @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList, i64 382308}
!86 = !{ptr @_ZN11cSimulation9insertMsgEP8cMessage, ptr @_ZN12cMessageHeap6insertEP8cMessage, i64 468305915}
!87 = !{ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK12cNamedObject7getNameEv, i64 97893}
!88 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1399683}
!89 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!90 = !{ptr @_GLOBAL__sub_I_csimulation.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!91 = !{ptr @_GLOBAL__sub_I_csimulation.cc, ptr @__cxa_atexit, i64 2}
!92 = !{ptr @_GLOBAL__sub_I_csimulation.cc, ptr @_ZN6cEnvirC2Ev, i64 1}
!93 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!94 = !{!"function_entry_count", i64 1}
!95 = !{!96, !96, i64 0}
!96 = !{!"vtable pointer", !97, i64 0}
!97 = !{!"Simple C++ TBAA"}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTS7SimTime", !100, i64 0}
!100 = !{!"long", !101, i64 0}
!101 = !{!"omnipotent char", !97, i64 0}
!102 = !{!"branch_weights", i32 1, i32 0}
!103 = !{!104, !109, i64 64}
!104 = !{!"_ZTS11cSimulation", !105, i64 0, !111, i64 36, !111, i64 40, !109, i64 48, !111, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !111, i64 96, !109, i64 104, !109, i64 112, !99, i64 120, !100, i64 128, !109, i64 136, !109, i64 144, !109, i64 152, !112, i64 160}
!105 = !{!"_ZTS23cNoncopyableOwnedObject", !106, i64 0}
!106 = !{!"_ZTS12cOwnedObject", !107, i64 0, !109, i64 24, !111, i64 32}
!107 = !{!"_ZTS12cNamedObject", !108, i64 0, !109, i64 8, !110, i64 16, !110, i64 18}
!108 = !{!"_ZTS7cObject"}
!109 = !{!"any pointer", !101, i64 0}
!110 = !{!"short", !101, i64 0}
!111 = !{!"int", !101, i64 0}
!112 = !{!"_ZTS12cMessageHeap", !106, i64 0, !109, i64 40, !111, i64 48, !111, i64 52, !100, i64 56}
!113 = !{!104, !111, i64 96}
!114 = !{!104, !109, i64 72}
!115 = !{!104, !109, i64 112}
!116 = !{!104, !111, i64 40}
!117 = !{!104, !111, i64 36}
!118 = !{!104, !111, i64 56}
!119 = !{!104, !109, i64 48}
!120 = !{!104, !109, i64 104}
!121 = !{!104, !109, i64 152}
!122 = !{!"VP", i32 0, i64 1, i64 4492280530626840185, i64 1}
!123 = !{!"function_entry_count", i64 2}
!124 = !{!"branch_weights", i32 2, i32 0}
!125 = !{!"branch_weights", i32 0, i32 2}
!126 = !{!"branch_weights", i32 1, i32 1}
!127 = !{!"VP", i32 0, i64 1, i64 -8358340401259026772, i64 1}
!128 = !{!"VP", i32 0, i64 2, i64 8960365699694254509, i64 2}
!129 = !{!109, !109, i64 0}
!130 = !{!"branch_weights", i32 0, i32 1}
!131 = !{!"VP", i32 0, i64 1, i64 5016790796673309778, i64 1}
!132 = !{!"VP", i32 0, i64 1, i64 -1820763669184359675, i64 1}
!133 = !{!"function_entry_count", i64 0}
!134 = !{!"function_entry_count", i64 3}
!135 = !{!"branch_weights", i32 2, i32 1}
!136 = !{!104, !109, i64 88}
!137 = !{!"VP", i32 0, i64 1, i64 7534758426153292387, i64 1}
!138 = !{!139, !109, i64 0}
!139 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !109, i64 0}
!140 = !{!100, !100, i64 0}
!141 = !{!"branch_weights", i32 1257662, i32 631781}
!142 = !{!143, !109, i64 0}
!143 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !139, i64 0, !100, i64 8, !101, i64 16}
!144 = !{!101, !101, i64 0}
!145 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!146 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!147 = !{!143, !100, i64 8}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_Z7simTimev: argument 0"}
!150 = distinct !{!150, !"_Z7simTimev"}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!153 = distinct !{!153, !"_ZNK11cSimulation10getSimTimeEv"}
!154 = !{!152, !149}
!155 = !{!156, !111, i64 16}
!156 = !{!"_ZTS22cSnapshotWriterVisitor", !157, i64 0, !109, i64 8, !111, i64 16}
!157 = !{!"_ZTS8cVisitor"}
!158 = !{!159, !161, i64 32}
!159 = !{!"_ZTSSt8ios_base", !100, i64 8, !100, i64 16, !160, i64 24, !161, i64 28, !161, i64 32, !109, i64 40, !162, i64 48, !101, i64 64, !111, i64 192, !109, i64 200, !163, i64 208}
!160 = !{!"_ZTSSt13_Ios_Fmtflags", !101, i64 0}
!161 = !{!"_ZTSSt12_Ios_Iostate", !101, i64 0}
!162 = !{!"_ZTSNSt8ios_base6_WordsE", !109, i64 0, !100, i64 8}
!163 = !{!"_ZTSSt6locale", !109, i64 0}
!164 = !{!159, !100, i64 16}
!165 = distinct !{!165, !166, !167}
!166 = !{!"llvm.loop.mustprogress"}
!167 = !{!"llvm.loop.unroll.disable"}
!168 = !{!"VP", i32 0, i64 1, i64 -6467620144785859817, i64 1}
!169 = !{!"VP", i32 0, i64 1, i64 710932862581801333, i64 1}
!170 = !{!"VP", i32 0, i64 1, i64 1426661710438430632, i64 1}
!171 = !{!"function_entry_count", i64 29423}
!172 = !{!"branch_weights", i32 28503, i32 920}
!173 = !{!"branch_weights", i32 0, i32 920}
!174 = !{!"VP", i32 1, i64 920, i64 513, i64 917, i64 0, i64 1, i64 256, i64 1, i64 512, i64 1}
!175 = !{!"branch_weights", i32 919, i32 1}
!176 = !{!"branch_weights", i32 1, i32 919}
!177 = !{!178, !111, i64 112}
!178 = !{!"_ZTS7cModule", !179, i64 0, !109, i64 104, !111, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !111, i64 152, !109, i64 160, !111, i64 168, !111, i64 172}
!179 = !{!"_ZTS10cComponent", !180, i64 0, !109, i64 56, !110, i64 64, !109, i64 72, !110, i64 80, !110, i64 82, !109, i64 88, !109, i64 96}
!180 = !{!"_ZTS12cDefaultList", !105, i64 0, !109, i64 40, !111, i64 48, !111, i64 52}
!181 = !{!"branch_weights", i32 1, i32 29422}
!182 = !{!"function_entry_count", i64 4920}
!183 = !{!"branch_weights", i32 0, i32 4920}
!184 = !{!"VP", i32 0, i64 4920, i64 -1846066915438621208, i64 2789, i64 8390818187414654894, i64 1814, i64 -3513973037635291526, i64 315}
!185 = !{!"branch_weights", i32 0, i32 2470429}
!186 = !{!"branch_weights", i32 1, i32 4919}
!187 = !{!"branch_weights", i32 4920, i32 0}
!188 = distinct !{!188, !166, !167}
!189 = !{!"VP", i32 0, i64 1, i64 -5447649856236546587, i64 1}
!190 = !{!"VP", i32 0, i64 1, i64 -1846066915438621208, i64 1}
!191 = !{!"VP", i32 0, i64 1, i64 1168002709506545484, i64 1}
!192 = !{!"VP", i32 0, i64 1, i64 7898639491118595991, i64 1}
!193 = !{!"VP", i32 0, i64 1, i64 8372052171370556026, i64 1}
!194 = !{!"function_entry_count", i64 4}
!195 = !{!"branch_weights", i32 4, i32 0}
!196 = !{!111, !111, i64 0}
!197 = !{!"VP", i32 0, i64 1, i64 4898120981724587968, i64 1}
!198 = !{!"VP", i32 0, i64 1, i64 -6162698241647835938, i64 1}
!199 = !{!"VP", i32 0, i64 1, i64 3053490022412847523, i64 1}
!200 = !{!104, !100, i64 128}
!201 = !{!"VP", i32 0, i64 1, i64 -1205116461865144208, i64 1}
!202 = !{!"VP", i32 0, i64 1, i64 2179309163369747878, i64 1}
!203 = !{!"function_entry_count", i64 424030}
!204 = !{!"branch_weights", i32 2, i32 424028}
!205 = !{!"VP", i32 0, i64 424028, i64 2302742087759282761, i64 424028}
!206 = !{!"branch_weights", i32 424028, i32 0}
!207 = !{!"function_entry_count", i64 467312602}
!208 = !{!"VP", i32 0, i64 467312602, i64 -4948067768712430043, i64 467312602}
!209 = !{!"branch_weights", i32 0, i32 467312602}
!210 = !{!211, !111, i64 80}
!211 = !{!"_ZTS8cMessage", !106, i64 0, !110, i64 36, !110, i64 38, !110, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !111, i64 72, !111, i64 76, !111, i64 80, !111, i64 84, !99, i64 88, !99, i64 96, !99, i64 104, !99, i64 112, !111, i64 120, !100, i64 128, !100, i64 136, !100, i64 144, !100, i64 152}
!212 = !{!107, !110, i64 16}
!213 = !{!"branch_weights", i32 467312602, i32 0}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZNK8cMessage14getArrivalTimeEv: argument 0"}
!216 = distinct !{!216, !"_ZNK8cMessage14getArrivalTimeEv"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZNK8cMessage14getArrivalTimeEv: argument 0"}
!219 = distinct !{!219, !"_ZNK8cMessage14getArrivalTimeEv"}
!220 = !{!104, !109, i64 144}
!221 = !{!104, !109, i64 80}
!222 = !{!223, !109, i64 184}
!223 = !{!"_ZTS13cSimpleModule", !178, i64 0, !109, i64 176, !109, i64 184}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_Z7simTimev: argument 0"}
!226 = distinct !{!226, !"_Z7simTimev"}
!227 = !{!228, !225}
!228 = distinct !{!228, !229, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!229 = distinct !{!229, !"_ZNK11cSimulation10getSimTimeEv"}
!230 = !{!231, !111, i64 0}
!231 = !{!"_ZTS7cHasher", !111, i64 0}
!232 = !{!233, !234, i64 9}
!233 = !{!"_ZTS6cEnvir", !234, i64 8, !234, i64 9, !234, i64 10, !235, i64 16}
!234 = !{!"bool", !101, i64 0}
!235 = !{!"_ZTSSo"}
!236 = !{i8 0, i8 2}
!237 = !{}
!238 = !{!"VP", i32 0, i64 467312602, i64 8776882086898788696, i64 467312602}
!239 = !{!211, !100, i64 136}
!240 = !{!104, !109, i64 136}
!241 = !{!"VP", i32 0, i64 467312602, i64 2902093976178334995, i64 447191441, i64 4168254975003466523, i64 11164187, i64 43002266661794932, i64 8725535}
!242 = !{!"function_entry_count", i64 382308}
!243 = !{!"function_entry_count", i64 100587}
!244 = !{!"branch_weights", i32 0, i32 100587}
!245 = !{!"VP", i32 0, i64 100587, i64 2302742087759282761, i64 100587}
!246 = !{!"branch_weights", i32 100587, i32 0}
!247 = !{!"VP", i32 0, i64 100587, i64 -8226754602187134676, i64 100587}
!248 = !{!"function_entry_count", i64 468305915}
!249 = !{!234, !234, i64 0}
!250 = !{!"function_entry_count", i64 192538233}
!251 = !{!107, !109, i64 8}
!252 = !{!"branch_weights", i32 0, i32 192538233}
!253 = !{!"function_entry_count", i64 235321}
!254 = !{!"VP", i32 0, i64 235321, i64 8390818187414654894, i64 137428, i64 -1846066915438621208, i64 97893}
!255 = !{!"function_entry_count", i64 542987320}
!256 = !{!106, !109, i64 24}
!257 = !{!"function_entry_count", i64 147484992}
!258 = !{!"function_entry_count", i64 15544}
!259 = !{!179, !110, i64 64}
!260 = !{!179, !109, i64 72}
!261 = !{!262, !111, i64 8}
!262 = !{!"_ZTS10cException", !263, i64 0, !111, i64 8, !143, i64 16, !234, i64 48, !143, i64 56, !143, i64 88, !111, i64 120}
!263 = !{!"_ZTSSt9exception"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!266 = distinct !{!266, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!269 = distinct !{!269, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!270 = !{!262, !234, i64 48}
!271 = !{!262, !111, i64 120}
!272 = !{!"function_entry_count", i64 1974042}
!273 = !{!"branch_weights", i32 1399683, i32 574359}
!274 = !{!"branch_weights", i32 1590758, i32 96, i32 383188}
!275 = !{!"VP", i32 1, i64 1590758, i64 17, i64 829384, i64 32, i64 307024, i64 33, i64 262262, i64 8, i64 98100}
!276 = !{!156, !109, i64 8}
!277 = !{!"function_entry_count", i64 980215783}
!278 = !{!"branch_weights", i32 0, i32 980215783}
!279 = !{!280, !280, i64 0}
!280 = !{!"double", !101, i64 0}
!281 = !{!"function_entry_count", i64 1889443}
!282 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!283 = !{!"simulator/csimulation.cc;_GLOBAL__sub_I_csimulation.cc"}
