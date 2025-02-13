; ModuleID = 'simulator/csimulation.cc'
source_filename = "simulator/csimulation.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.StaticEnv = type { %class.cEnvir }
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.SimTime = type { i64 }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%struct._Guard = type { ptr }
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
%class.opp_string = type { ptr }
%class.cContextTypeSwitcher = type { i32 }
%class.cContextSwitcher = type { ptr }
%class.cMessage = type { %class.cOwnedObject.base, i16, i16, i16, ptr, ptr, ptr, i32, i32, i32, i32, %class.SimTime, %class.SimTime, %class.SimTime, %class.SimTime, i32, i64, i64, i64, i64 }
%class.cDeleteModuleException = type { %class.cException.base, [4 x i8] }
%class.cException.base = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32 }>
%class.cTerminationException = type { %class.cException.base, [4 x i8] }
%class.cRuntimeError = type { %class.cException.base, [4 x i8] }
%class.cSimpleModule = type { %class.cModule, ptr, ptr }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"struct.std::__cow_string" = type { %union.anon.33 }
%union.anon.33 = type { ptr }

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

$_ZN23cNoncopyableOwnedObjectC2EPKcb = comdat any

$_ZN7SimTimeC2Ev = comdat any

$_ZN20cSequentialSchedulerC2Ev = comdat any

$_ZN23cNoncopyableOwnedObjectD2Ev = comdat any

$_ZN11noncopyableC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11noncopyableD2Ev = comdat any

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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$_Z7simTimev = comdat any

$_ZN22cSnapshotWriterVisitorC2ERSo = comdat any

$_ZN8cVisitorD2Ev = comdat any

$_ZN11cSimulation19getActiveSimulationEv = comdat any

$_ZNK11cSimulation10getSimTimeEv = comdat any

$_ZN7SimTimeC2ERKS_ = comdat any

$_ZN7SimTimeaSERKS_ = comdat any

$_ZN8cVisitorC2Ev = comdat any

$_ZN22cSnapshotWriterVisitorD0Ev = comdat any

$_ZN22cSnapshotWriterVisitor5visitEP7cObject = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_ = comdat any

$_ZN8cVisitor21EndTraversalExceptionC2Ev = comdat any

$_ZNK7cModule5getIdEv = comdat any

$_Z11opp_isemptyPKc = comdat any

$_ZN10opp_stringC2EPKc = comdat any

$_ZN10opp_string6bufferEv = comdat any

$_ZNK11cSimulation15getSystemModuleEv = comdat any

$_ZNK7cObject6isNameEPKc = comdat any

$_ZN10opp_stringD2Ev = comdat any

$_Z10opp_strdupPKc = comdat any

$_Z10opp_strcmpPKcS0_ = comdat any

$_ZN11cSimulation11checkActiveEv = comdat any

$_ZN7SimTimeaSIiEERKS_T_ = comdat any

$_ZN8cMessage20resetMessageCountersEv = comdat any

$_ZNK11cSimulation12getSchedulerEv = comdat any

$_ZN7SimTimeC2Ed = comdat any

$_ZN7SimTime5checkIiEEvT_ = comdat any

$_ZN7SimTime7toInt64Ed = comdat any

$_ZN7SimTimeaSEd = comdat any

$_ZN7SimTime5checkIdEEvT_ = comdat any

$_ZNK8cMessage18getArrivalModuleIdEv = comdat any

$_ZNK13cSimpleModule12isTerminatedEv = comdat any

$_ZNK8cMessage14getArrivalTimeEv = comdat any

$_ZN22cDeleteModuleExceptionC2ERKS_ = comdat any

$_ZN21cTerminationExceptionC2ERKS_ = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZN13cRuntimeErrorC2ERKS_ = comdat any

$_ZN22cDeleteModuleExceptionD0Ev = comdat any

$_ZNK22cDeleteModuleException3dupEv = comdat any

$_ZN21cTerminationExceptionD0Ev = comdat any

$_ZNK21cTerminationException3dupEv = comdat any

$_ZN13cRuntimeErrorD0Ev = comdat any

$_ZNK13cRuntimeError3dupEv = comdat any

$_ZN11cSimulation14setContextTypeEi = comdat any

$_ZN11cSimulation9getHasherEv = comdat any

$_ZN7cHasher3addEl = comdat any

$_ZNK7SimTime3rawEv = comdat any

$_ZN7cHasher3addEi = comdat any

$_ZN8cMessage22setPreviousEventNumberEl = comdat any

$_ZNK10cComponent11initializedEv = comdat any

$_ZNK13cSimpleModule12usesActivityEv = comdat any

$_ZN11cSimulation16setGlobalContextEv = comdat any

$_ZN7cHasher6merge2Em = comdat any

$_ZN7cHasher5mergeEj = comdat any

$_ZN11cStaticFlag5isSetEv = comdat any

$_ZN9StaticEnvC2Ev = comdat any

$_ZNK9StaticEnv11unsupportedEv = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZN10cComponent9setRNGMapEsPi = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

$_ZTV22cSnapshotWriterVisitor = comdat any

$_ZTS22cSnapshotWriterVisitor = comdat any

$_ZTI22cSnapshotWriterVisitor = comdat any

$_ZTSN8cVisitor21EndTraversalExceptionE = comdat any

$_ZTIN8cVisitor21EndTraversalExceptionE = comdat any

$_ZTS22cDeleteModuleException = comdat any

$_ZTI22cDeleteModuleException = comdat any

$_ZTS21cTerminationException = comdat any

$_ZTI21cTerminationException = comdat any

$_ZTV22cDeleteModuleException = comdat any

$_ZTV21cTerminationException = comdat any

$_ZTV13cRuntimeError = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTV17opp_runtime_error = comdat any

@_ZTV11cSimulation = dso_local unnamed_addr constant { [27 x ptr] } { [27 x ptr] [ptr null, ptr @_ZTI11cSimulation, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN11cSimulationD2Ev, ptr @_ZN11cSimulationD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK11cSimulation11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK23cNoncopyableOwnedObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN23cNoncopyableOwnedObject10parsimPackEP11cCommBuffer, ptr @_ZN23cNoncopyableOwnedObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN11cSimulation12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv, ptr @_ZNK11cSimulation8getEnvirEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS11cSimulation = dso_local constant [14 x i8] c"11cSimulation\00", align 1
@_ZTI23cNoncopyableOwnedObject = external constant ptr
@_ZTI11cSimulation = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11cSimulation, ptr @_ZTI23cNoncopyableOwnedObject }, align 8
@_ZTV9StaticEnv = dso_local unnamed_addr constant { [59 x ptr] } { [59 x ptr] [ptr null, ptr @_ZTI9StaticEnv, ptr @_ZN9StaticEnv5sputnEPKci, ptr @_ZN9StaticEnv7putsmsgEPKc, ptr @_ZN9StaticEnv8askyesnoEPKc, ptr @_ZN6cEnvirD2Ev, ptr @_ZN9StaticEnvD0Ev, ptr @_ZN9StaticEnv13objectDeletedEP7cObject, ptr @_ZN9StaticEnv15simulationEventEP8cMessage, ptr @_ZN9StaticEnv20messageSent_OBSOLETEEP8cMessageP5cGate, ptr @_ZN9StaticEnv16messageScheduledEP8cMessage, ptr @_ZN9StaticEnv16messageCancelledEP8cMessage, ptr @_ZN9StaticEnv9beginSendEP8cMessage, ptr @_ZN9StaticEnv17messageSendDirectEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN9StaticEnv14messageSendHopEP8cMessageP5cGate, ptr @_ZN9StaticEnv14messageSendHopEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN9StaticEnv7endSendEP8cMessage, ptr @_ZN9StaticEnv14messageDeletedEP8cMessage, ptr @_ZN9StaticEnv16moduleReparentedEP7cModuleS1_, ptr @_ZN9StaticEnv20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag, ptr @_ZN9StaticEnv18componentMethodEndEv, ptr @_ZN9StaticEnv13moduleCreatedEP7cModule, ptr @_ZN9StaticEnv13moduleDeletedEP7cModule, ptr @_ZN9StaticEnv11gateCreatedEP5cGate, ptr @_ZN9StaticEnv11gateDeletedEP5cGate, ptr @_ZN9StaticEnv17connectionCreatedEP5cGate, ptr @_ZN9StaticEnv17connectionDeletedEP5cGate, ptr @_ZN9StaticEnv20displayStringChangedEP10cComponent, ptr @_ZN9StaticEnv16undisposedObjectEP7cObject, ptr @_ZN9StaticEnv13readParameterEP4cPar, ptr @_ZN9StaticEnv13isModuleLocalEP7cModulePKci, ptr @_ZN9StaticEnv14getXMLDocumentEPKcS1_, ptr @_ZNK9StaticEnv21getExtraStackForEnvirEv, ptr @_ZN9StaticEnv9getConfigEv, ptr @_ZN6cEnvir11getConfigExEv, ptr @_ZNK9StaticEnv5isGUIEv, ptr @_ZN9StaticEnv6bubbleEP10cComponentPKc, ptr @_ZN6cEnvir9printfmsgEPKcz, ptr @_ZN6cEnvir6printfEPKcz, ptr @_ZN9StaticEnv5flushEv, ptr @_ZN9StaticEnv4getsB5cxx11EPKcS1_, ptr @_ZN6cEnvir8askYesNoEPKcz, ptr @_ZNK9StaticEnv10getNumRNGsEv, ptr @_ZN9StaticEnv6getRNGEi, ptr @_ZN9StaticEnv16getRNGMappingForEP10cComponent, ptr @_ZN9StaticEnv20registerOutputVectorEPKcS1_, ptr @_ZN9StaticEnv22deregisterOutputVectorEPv, ptr @_ZN9StaticEnv18setVectorAttributeEPvPKcS2_, ptr @_ZN9StaticEnv20recordInOutputVectorEPv7SimTimed, ptr @_ZN9StaticEnv12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZN9StaticEnv15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map, ptr @_ZN9StaticEnv20getStreamForSnapshotEv, ptr @_ZN9StaticEnv24releaseStreamForSnapshotEPSo, ptr @_ZNK9StaticEnv11getArgCountEv, ptr @_ZNK9StaticEnv12getArgVectorEv, ptr @_ZNK9StaticEnv15getParsimProcIdEv, ptr @_ZNK9StaticEnv22getParsimNumPartitionsEv, ptr @_ZN9StaticEnv15getUniqueNumberEv, ptr @_ZN9StaticEnv4idleEv] }, align 8
@_ZTS9StaticEnv = dso_local constant [11 x i8] c"9StaticEnv\00", align 1
@_ZTI6cEnvir = external constant ptr
@_ZTI9StaticEnv = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS9StaticEnv, ptr @_ZTI6cEnvir }, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [17 x i8] c"scheduled-events\00", align 1
@_ZTV23cNoncopyableOwnedObject = external unnamed_addr constant { [26 x ptr] }, align 8
@_ZTV20cSequentialScheduler = external unnamed_addr constant { [26 x ptr] }, align 8
@_ZN11cSimulation6simPtrE = dso_local local_unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"cannot delete the active simulation manager object\00", align 1
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN11cSimulation11staticEvPtrE = dso_local local_unnamed_addr global ptr @_ZL9staticEnv, align 8
@_ZN11cSimulation5evPtrE = dso_local local_unnamed_addr global ptr @_ZL9staticEnv, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"cSimulation::setStaticEnvir(): argument cannot be NULL\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"snapshot(): object pointer is NULL\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Could not create stream for snapshot\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"<?xml version=\221.0\22 encoding=\22ISO-8859-1\22?>\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"<snapshot\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"    object=\22\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"    label=\22\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"    simtime=\22\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"    network=\22\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"    >\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"</snapshot>\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Could not write snapshot\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@_ZTV22cSnapshotWriterVisitor = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI22cSnapshotWriterVisitor, ptr @_ZN8cVisitorD2Ev, ptr @_ZN22cSnapshotWriterVisitorD0Ev, ptr @_ZN8cVisitor7processEP7cObject, ptr @_ZN8cVisitor17processChildrenOfEP7cObject, ptr @_ZN22cSnapshotWriterVisitor5visitEP7cObject] }, comdat, align 8
@_ZTS22cSnapshotWriterVisitor = linkonce_odr dso_local constant [25 x i8] c"22cSnapshotWriterVisitor\00", comdat, align 1
@_ZTI8cVisitor = external constant ptr
@_ZTI22cSnapshotWriterVisitor = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22cSnapshotWriterVisitor, ptr @_ZTI8cVisitor }, comdat, align 8
@_ZTV8cVisitor = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.23 = private unnamed_addr constant [16 x i8] c"<object class=\22\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"\22 fullpath=\22\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"\22>\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"  <info>\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"</info>\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"  <detailedinfo>\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"</detailedinfo>\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"</object>\0A\0A\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN8cVisitor21EndTraversalExceptionE = linkonce_odr dso_local constant [35 x i8] c"N8cVisitor21EndTraversalExceptionE\00", comdat, align 1
@_ZTIN8cVisitor21EndTraversalExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8cVisitor21EndTraversalExceptionE }, comdat, align 8
@.str.31 = private unnamed_addr constant [74 x i8] c"setScheduler(): cannot switch schedulers when a network is already set up\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"setScheduler(): scheduler pointer is NULL\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"getModuleByPath(): syntax error in path `%s'\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"setupNetwork: `%s' is not a network\00", align 1
@_ZN7SimTime6dscaleE = external local_unnamed_addr global i64, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@_ZN8cMessage9live_msgsE = external local_unnamed_addr global i64, align 8
@_ZN8cMessage10total_msgsE = external local_unnamed_addr global i64, align 8
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@.str.36 = private unnamed_addr constant [44 x i8] c"Attempt to delete network during simulation\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"transferTo(): attempt to transfer to NULL\00", align 1
@.str.38 = private unnamed_addr constant [128 x i8] c"Stack violation in module (%s)%s: module stack too small? Try increasing it in the class' Module_Class_Members() or constructor\00", align 1
@_ZTS22cDeleteModuleException = linkonce_odr dso_local constant [25 x i8] c"22cDeleteModuleException\00", comdat, align 1
@_ZTI22cDeleteModuleException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22cDeleteModuleException, ptr @_ZTI10cException }, comdat, align 8
@_ZTS21cTerminationException = linkonce_odr dso_local constant [24 x i8] c"21cTerminationException\00", comdat, align 1
@_ZTI21cTerminationException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21cTerminationException, ptr @_ZTI10cException }, comdat, align 8
@_ZTV22cDeleteModuleException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI22cDeleteModuleException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN22cDeleteModuleExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK22cDeleteModuleException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@_ZTV21cTerminationException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI21cTerminationException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN21cTerminationExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK21cTerminationException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@_ZTV13cRuntimeError = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI13cRuntimeError, ptr @_ZN10cExceptionD2Ev, ptr @_ZN13cRuntimeErrorD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK13cRuntimeError3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.39 = private unnamed_addr constant [101 x i8] c"Module not initialized (did you forget to invoke callInitialize() for a dynamically created module?)\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@defaultList = external global %class.cDefaultList, align 8
@.str.41 = private unnamed_addr constant [76 x i8] c"<!> WARNING: global object variable (DISCOURAGED) detected: (%s)`%s' at %p\0A\00", align 1
@_ZN11cStaticFlag10staticflagE = external local_unnamed_addr global i8, align 1
@_ZL9staticEnv = internal global %class.StaticEnv zeroinitializer, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [10 x i8] c"\0A<!> %s\0A\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"StaticEnv: unsupported method called\00", align 1
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_csimulation.cc, ptr null }]

@_ZN11cSimulationC1EPKcP6cEnvir = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11cSimulationC2EPKcP6cEnvir
@_ZN11cSimulationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11cSimulationD2Ev

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11cSimulationD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11cSimulationD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 !prof !159 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.13, ptr %3, !prof !167
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !168 {
  %2 = load ptr, ptr %0, align 8, !tbaa !169
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11cSimulation11getFullPathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = load ptr, ptr %1, align 8, !tbaa !169
  %5 = getelementptr inbounds ptr, ptr %4, i64 7
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #26
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #25
          to label %8 unwind label %9

8:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #26
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #26
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZNK7cObject4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare noundef ptr @_ZNK23cNoncopyableOwnedObject3dupEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN23cNoncopyableOwnedObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN23cNoncopyableOwnedObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !172 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !176 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !171 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !177
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !169
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4) #25
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %1, align 8, !tbaa !169
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %11) #25
  ret void
}

; Function Attrs: optsize
declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !183
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11cSimulation8getEnvirEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv5sputnEPKci(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !171 {
  %4 = sext i32 %2 to i64
  %5 = load ptr, ptr @stdout, align 8, !tbaa !185
  %6 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %4, ptr noundef %5) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv7putsmsgEPKc(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !171 {
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9StaticEnv8askyesnoEPKc(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  ret i1 false
}

; Function Attrs: nounwind optsize
declare void @_ZN6cEnvirD2Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnvD0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN6cEnvirD2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv13objectDeletedEP7cObject(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !186 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv15simulationEventEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv20messageSent_OBSOLETEEP8cMessageP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv16messageScheduledEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv16messageCancelledEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv9beginSendEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv17messageSendDirectEP8cMessageP5cGate7SimTimeS4_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv14messageSendHopEP8cMessageP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv14messageSendHopEP8cMessageP5cGate7SimTimeS4_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv7endSendEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv14messageDeletedEP8cMessage(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv16moduleReparentedEP7cModuleS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv18componentMethodEndEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv13moduleCreatedEP7cModule(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv13moduleDeletedEP7cModule(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv11gateCreatedEP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv11gateDeletedEP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv17connectionCreatedEP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv17connectionDeletedEP5cGate(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv20displayStringChangedEP10cComponent(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9StaticEnv16undisposedObjectEP7cObject(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = tail call noundef zeroext i1 @_ZN11cStaticFlag5isSetEv() #25
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !169
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %10 = load ptr, ptr %1, align 8, !tbaa !169
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  call void %12(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  %13 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, ptr noundef %9, ptr noundef %13, ptr noundef nonnull %1) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %15

15:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv13readParameterEP4cPar(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9StaticEnv13isModuleLocalEP7cModulePKci(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 comdat align 2 !prof !171 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9StaticEnv14getXMLDocumentEPKcS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9StaticEnv21getExtraStackForEnvirEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9StaticEnv9getConfigEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  ret ptr null
}

; Function Attrs: optsize
declare noundef ptr @_ZN6cEnvir11getConfigExEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9StaticEnv5isGUIEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv6bubbleEP10cComponentPKc(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN6cEnvir9printfmsgEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #0

; Function Attrs: optsize
declare noundef i32 @_ZN6cEnvir6printfEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN9StaticEnv5flushEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 comdat align 2 !prof !171 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !185
  %3 = tail call i32 @fflush(ptr noundef %2) #25
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv4getsB5cxx11EPKcS1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %5 = alloca %"class.std::allocator", align 1
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %1) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #26
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %5) #25
          to label %6 unwind label %7

6:                                                ; preds = %4
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #26
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #26
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN6cEnvir8askYesNoEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9StaticEnv10getNumRNGsEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9StaticEnv6getRNGEi(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv16getRNGMappingForEP10cComponent(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZN10cComponent9setRNGMapEsPi(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef signext 0, ptr noundef null) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9StaticEnv20registerOutputVectorEPKcS1_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !171 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv22deregisterOutputVectorEPv(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv18setVectorAttributeEPvPKcS2_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9StaticEnv20recordInOutputVectorEPv7SimTimed(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, double noundef %3) unnamed_addr #1 comdat align 2 !prof !171 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv12recordScalarEP10cComponentPKcdP14opp_string_map(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9StaticEnv20getStreamForSnapshotEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnv24releaseStreamForSnapshotEPSo(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9StaticEnv11getArgCountEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9StaticEnv12getArgVectorEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9StaticEnv15getParsimProcIdEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9StaticEnv22getParsimNumPartitionsEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  ret i32 1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9StaticEnv15getUniqueNumberEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  ret i64 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9StaticEnv4idleEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  ret i1 false
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #25
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #26
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulationC2EPKcP6cEnvir(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  tail call void @_ZN23cNoncopyableOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false) #25
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTV11cSimulation, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %4 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 12
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  %5 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  invoke void @_ZN12cMessageHeapC1EPKci(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef null, i32 noundef 128) #25
          to label %6 unwind label %27

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 5
  store ptr %2, ptr %7, align 8, !tbaa !184
  %8 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 2, ptr %9, align 8, !tbaa !188
  %10 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  store ptr null, ptr %10, align 8, !tbaa !177
  %11 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  store ptr null, ptr %11, align 8, !tbaa !189
  %12 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 2
  store i32 32, ptr %12, align 8, !tbaa !190
  %13 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !191
  %14 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 4
  store i32 0, ptr %14, align 8, !tbaa !192
  %15 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  store ptr null, ptr %15, align 8, !tbaa !193
  %16 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 10
  store ptr null, ptr %16, align 8, !tbaa !194
  %17 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 16
  store ptr null, ptr %17, align 8, !tbaa !195
  invoke void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull @.str) #25
          to label %18 unwind label %29

18:                                               ; preds = %6
  %19 = load ptr, ptr %0, align 8, !tbaa !169
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #25
          to label %22 unwind label %29

22:                                               ; preds = %18
  %23 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %24 unwind label %29

24:                                               ; preds = %22
  invoke void @_ZN20cSequentialSchedulerC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #25
          to label %25 unwind label %31

25:                                               ; preds = %24
  invoke void @_ZN11cSimulation12setSchedulerEP10cScheduler(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %23) #25
          to label %26 unwind label %29

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
  tail call void @_ZdlPv(ptr noundef nonnull %23) #24
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ]
  tail call void @_ZN12cMessageHeapD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #23
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %28, %27 ]
  tail call void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #23
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN23cNoncopyableOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !196 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext %2) #25
  tail call void @_ZN11noncopyableC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #25
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV23cNoncopyableOwnedObject, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !197 {
  store i64 0, ptr %0, align 8, !tbaa !198
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN12cMessageHeapC1EPKci(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation12setSchedulerEP10cScheduler(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !177
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !200

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #25
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %30

11:                                               ; preds = %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %18, !prof !201

13:                                               ; preds = %11
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #25
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %30

18:                                               ; preds = %11
  %19 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !189
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !169
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(16) %20) #23
  br label %26

26:                                               ; preds = %22, %18
  store ptr %1, ptr %19, align 8, !tbaa !189
  %27 = load ptr, ptr %1, align 8, !tbaa !169
  %28 = getelementptr inbounds ptr, ptr %27, i64 19
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0) #25
  ret void

30:                                               ; preds = %16, %9
  %31 = phi ptr [ %14, %16 ], [ %7, %9 ]
  %32 = phi { ptr, i32 } [ %17, %16 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %31) #26
  resume { ptr, i32 } %32
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN20cSequentialSchedulerC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 !prof !199 {
  tail call void @_ZN10cSchedulerC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV20cSequentialScheduler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare void @_ZN12cMessageHeapD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11noncopyableD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #23
  ret void
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11noncopyableC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !202 {
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN10cSchedulerC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11cSimulationD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTV11cSimulation, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %2 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !185
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %7, !prof !203

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #25
          to label %6 unwind label %35

6:                                                ; preds = %4
  invoke void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
          to label %38 unwind label %35

7:                                                ; preds = %1
  invoke void @_ZN11cSimulation13deleteNetworkEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
          to label %8 unwind label %35

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 16
  %10 = load ptr, ptr %9, align 8, !tbaa !195
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @_ZN11noncopyableD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %10) #23
  tail call void @_ZdlPv(ptr noundef nonnull %10) #24
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !189
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !169
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15) #23
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !184
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !169
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(288) %23) #23
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %31 = load ptr, ptr %0, align 8, !tbaa !169
  %32 = getelementptr inbounds ptr, ptr %31, i64 13
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %30) #25
          to label %34 unwind label %35

34:                                               ; preds = %29
  tail call void @_ZN12cMessageHeapD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %30) #23
  tail call void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #23
  ret void

35:                                               ; preds = %29, %7, %6, %4
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #29
  unreachable

38:                                               ; preds = %6
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #26
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation13deleteNetworkEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !204 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5, !prof !205

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !206

8:                                                ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.36) #25
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #26
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = load ptr, ptr %2, align 8, !tbaa !177
  %15 = load ptr, ptr %14, align 8, !tbaa !169
  %16 = getelementptr inbounds ptr, ptr %15, i64 71
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(176) %14) #25
  %18 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !193
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  tail call void @_ZdaPv(ptr noundef nonnull %20) #24
  br label %23

23:                                               ; preds = %22, %13
  store ptr null, ptr %19, align 8, !tbaa !193
  store i32 0, ptr %18, align 4, !tbaa !191
  %24 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 4
  store i32 0, ptr %24, align 8, !tbaa !192
  %25 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 10
  store ptr null, ptr %25, align 8, !tbaa !194
  tail call void @_ZN7cModule14clearNamePoolsEv() #25
  %26 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  tail call void @_ZN12cMessageHeap5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %26) #25
  br label %27

27:                                               ; preds = %1, %23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11noncopyableD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !207 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !187 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #25
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !208
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !171 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #26
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #25
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2) #25
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #25
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !187 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !214, !range !215, !noundef !216
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !217
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat !prof !199 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !218 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #25
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #30
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #25
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #25
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !219 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !220 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #25
  store i64 %6, ptr %4, align 8, !tbaa !221
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !222

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #25
  %10 = load i64, ptr %4, align 8, !tbaa !221
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #25
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #25
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #25
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #23
  store ptr null, ptr %5, align 8, !tbaa !223
  %15 = load i64, ptr %4, align 8, !tbaa !221
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #25
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !220 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !185
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #25
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !220 {
  store ptr %1, ptr %0, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %2 = load ptr, ptr %0, align 8, !tbaa !223
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !225

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #25
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #29
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !220 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !220 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_ZN11cSimulation19setActiveSimulationEPS_(ptr noundef %0) local_unnamed_addr #13 align 2 !prof !199 {
  store ptr %0, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !185
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 5
  %4 = select i1 %2, ptr @_ZN11cSimulation11staticEvPtrE, ptr %3, !prof !226
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  store ptr %5, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation14setStaticEnvirEP6cEnvir(ptr noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull @.str.5) #25
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #26
  resume { ptr, i32 } %7

8:                                                ; preds = %1
  store ptr %0, ptr @_ZN11cSimulation11staticEvPtrE, align 8, !tbaa !185
  ret void
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11cSimulation8snapshotEP7cObjectPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %class.SimTime, align 8
  %13 = alloca %"class.std::allocator", align 1
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::allocator", align 1
  %17 = alloca %class.cSnapshotWriterVisitor, align 8
  %18 = icmp eq ptr %1, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull @.str.6) #25
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #26
  br label %146

24:                                               ; preds = %3
  %25 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #25
  %26 = load ptr, ptr %25, align 8, !tbaa !169
  %27 = getelementptr inbounds ptr, ptr %26, i64 49
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(288) %25) #25
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %32, ptr noundef nonnull @.str.7) #25
          to label %33 unwind label %34

33:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
  unreachable

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %32) #26
  br label %146

36:                                               ; preds = %24
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.8) #25
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.9) #25
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.10) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %40 = load ptr, ptr %1, align 8, !tbaa !169
  %41 = getelementptr inbounds ptr, ptr %40, i64 8
  %42 = load ptr, ptr %41, align 8
  call void %42(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #25
          to label %43 unwind label %101

43:                                               ; preds = %36
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(32) %4) #25
          to label %45 unwind label %103

45:                                               ; preds = %43
  %46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull @.str.11) #25
          to label %47 unwind label %103

47:                                               ; preds = %45
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.12) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #26
  %49 = icmp eq ptr %2, null
  %50 = select i1 %49, ptr @.str.13, ptr %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #26
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %50, ptr noundef nonnull align 1 dereferenceable(1) %8) #25
          to label %51 unwind label %107

51:                                               ; preds = %47
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #25
          to label %52 unwind label %109

52:                                               ; preds = %51
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(32) %6) #25
          to label %54 unwind label %111

54:                                               ; preds = %52
  %55 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull @.str.11) #25
          to label %56 unwind label %111

56:                                               ; preds = %54
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #23
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #26
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.14) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #26
  call void @_Z7simTimev(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %12) #25
  call void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #25
  %58 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #26
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %58, ptr noundef nonnull align 1 dereferenceable(1) %13) #25
          to label %59 unwind label %117

59:                                               ; preds = %56
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10) #25
          to label %60 unwind label %119

60:                                               ; preds = %59
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(32) %9) #25
          to label %62 unwind label %121

62:                                               ; preds = %60
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef nonnull @.str.11) #25
          to label %64 unwind label %121

64:                                               ; preds = %62
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #23
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #26
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.15) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #26
  %66 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !194
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %67, align 8, !tbaa !169
  %71 = getelementptr inbounds ptr, ptr %70, i64 6
  %72 = load ptr, ptr %71, align 8
  %73 = call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(20) %67) #25
  br label %74

74:                                               ; preds = %64, %69
  %75 = phi ptr [ %73, %69 ], [ @.str.13, %64 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #26
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %75, ptr noundef nonnull align 1 dereferenceable(1) %16) #25
          to label %76 unwind label %127

76:                                               ; preds = %74
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15) #25
          to label %77 unwind label %129

77:                                               ; preds = %76
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull align 8 dereferenceable(32) %14) #25
          to label %79 unwind label %131

79:                                               ; preds = %77
  %80 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull @.str.11) #25
          to label %81 unwind label %131

81:                                               ; preds = %79
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #23
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #26
  %82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.16) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #26
  call void @_ZN22cSnapshotWriterVisitorC2ERSo(ptr noundef nonnull align 8 dereferenceable(20) %17, ptr noundef nonnull align 8 dereferenceable(8) %29) #25
  %83 = invoke noundef zeroext i1 @_ZN8cVisitor7processEP7cObject(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull %1) #25
          to label %84 unwind label %137

84:                                               ; preds = %81
  %85 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.17) #25
          to label %86 unwind label %137

86:                                               ; preds = %84
  %87 = load ptr, ptr %29, align 8, !tbaa !169
  %88 = getelementptr i8, ptr %87, i64 -24
  %89 = load i64, ptr %88, align 8
  %90 = getelementptr inbounds i8, ptr %29, i64 %89
  %91 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %90) #25
          to label %92 unwind label %139

92:                                               ; preds = %86
  %93 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #25
  %94 = load ptr, ptr %93, align 8, !tbaa !169
  %95 = getelementptr inbounds ptr, ptr %94, i64 50
  %96 = load ptr, ptr %95, align 8
  invoke void %96(ptr noundef nonnull align 8 dereferenceable(288) %93, ptr noundef nonnull %29) #25
          to label %97 unwind label %139

97:                                               ; preds = %92
  br i1 %91, label %98, label %143

98:                                               ; preds = %97
  %99 = call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %99, ptr noundef nonnull @.str.18) #25
          to label %100 unwind label %141

100:                                              ; preds = %98
  invoke void @__cxa_throw(ptr nonnull %99, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
          to label %148 unwind label %139

101:                                              ; preds = %36
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %105

103:                                              ; preds = %45, %43
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %102, %101 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  br label %146

107:                                              ; preds = %47
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %115

109:                                              ; preds = %51
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %113

111:                                              ; preds = %54, %52
  %112 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #23
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi { ptr, i32 } [ %112, %111 ], [ %110, %109 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #23
  br label %115

115:                                              ; preds = %113, %107
  %116 = phi { ptr, i32 } [ %114, %113 ], [ %108, %107 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #26
  br label %146

117:                                              ; preds = %56
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %125

119:                                              ; preds = %59
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %123

121:                                              ; preds = %62, %60
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %120, %119 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #23
  br label %125

125:                                              ; preds = %123, %117
  %126 = phi { ptr, i32 } [ %124, %123 ], [ %118, %117 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #26
  br label %146

127:                                              ; preds = %74
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %135

129:                                              ; preds = %76
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %133

131:                                              ; preds = %79, %77
  %132 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #23
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi { ptr, i32 } [ %132, %131 ], [ %130, %129 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #23
  br label %135

135:                                              ; preds = %133, %127
  %136 = phi { ptr, i32 } [ %134, %133 ], [ %128, %127 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #26
  br label %146

137:                                              ; preds = %84, %81
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %144

139:                                              ; preds = %100, %92, %86
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %144

141:                                              ; preds = %98
  %142 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %99) #26
  br label %144

143:                                              ; preds = %97
  call void @_ZN8cVisitorD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %17) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #26
  ret i1 true

144:                                              ; preds = %139, %141, %137
  %145 = phi { ptr, i32 } [ %138, %137 ], [ %140, %139 ], [ %142, %141 ]
  call void @_ZN8cVisitorD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %17) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #26
  br label %146

146:                                              ; preds = %34, %144, %135, %125, %115, %105, %22
  %147 = phi { ptr, i32 } [ %23, %22 ], [ %35, %34 ], [ %145, %144 ], [ %136, %135 ], [ %126, %125 ], [ %116, %115 ], [ %106, %105 ]
  resume { ptr, i32 } %147

148:                                              ; preds = %100
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #1 comdat align 2 !prof !227 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !185
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !171 !PGOFuncName !228 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %4 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #23
  %5 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 60) #31
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #23
  %9 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 62) #31
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #25
  br label %34

12:                                               ; preds = %7, %2
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #25
  %13 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #23
  %14 = getelementptr inbounds i8, ptr %3, i64 16
  br label %15

15:                                               ; preds = %27, %12
  %16 = phi ptr [ %13, %12 ], [ %28, %27 ]
  %17 = load i8, ptr %16, align 1, !tbaa !229
  switch i8 %17, label %25 [
    i8 0, label %18
    i8 60, label %19
    i8 62, label %22
  ]

18:                                               ; preds = %15
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %3) #25
          to label %29 unwind label %30

19:                                               ; preds = %15
  br label %22

20:                                               ; preds = %22, %25
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %32

22:                                               ; preds = %15, %19
  %23 = phi ptr [ @.str.19, %19 ], [ @.str.20, %15 ]
  %24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %23) #25
          to label %27 unwind label %20

25:                                               ; preds = %15
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext %17) #25
          to label %27 unwind label %20

27:                                               ; preds = %22, %25
  %28 = getelementptr inbounds i8, ptr %16, i64 1
  br label %15, !llvm.loop !230

29:                                               ; preds = %18
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #26
  br label %34

30:                                               ; preds = %18
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi { ptr, i32 } [ %21, %20 ], [ %31, %30 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #26
  resume { ptr, i32 } %33

34:                                               ; preds = %29, %11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_Z7simTimev(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0) local_unnamed_addr #2 comdat !prof !232 {
  %2 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #25
  tail call void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %2) #25
  ret void
}

; Function Attrs: optsize
declare void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22cSnapshotWriterVisitorC2ERSo(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !171 {
  tail call void @_ZN8cVisitorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTV22cSnapshotWriterVisitor, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %3 = getelementptr inbounds %class.cSnapshotWriterVisitor, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !185
  %4 = getelementptr inbounds %class.cSnapshotWriterVisitor, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !233
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN8cVisitor7processEP7cObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8cVisitorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation19getActiveSimulationEv() local_unnamed_addr #1 comdat align 2 !prof !236 {
  %1 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !185
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #2 comdat align 2 !prof !237 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %1, i64 0, i32 12
  tail call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !238 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !239 {
  %3 = load i64, ptr %1, align 8, !tbaa !198
  store i64 %3, ptr %0, align 8, !tbaa !198
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8cVisitorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTV8cVisitor, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22cSnapshotWriterVisitorD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN8cVisitorD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN8cVisitor17processChildrenOfEP7cObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN22cSnapshotWriterVisitor5visitEP7cObject(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %11 = getelementptr inbounds %class.cSnapshotWriterVisitor, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !233
  %13 = shl nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #26
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %14, i8 noundef signext 32, ptr noundef nonnull align 1 dereferenceable(1) %4) #25
          to label %15 unwind label %70

15:                                               ; preds = %2
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #26
  %16 = getelementptr inbounds %class.cSnapshotWriterVisitor, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !240
  %18 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(32) %3) #25
          to label %19 unwind label %72

19:                                               ; preds = %15
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.23) #25
          to label %21 unwind label %72

21:                                               ; preds = %19
  %22 = load ptr, ptr %1, align 8, !tbaa !169
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1) #25
          to label %26 unwind label %72

26:                                               ; preds = %21
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %25) #25
          to label %28 unwind label %72

28:                                               ; preds = %26
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.24) #25
          to label %30 unwind label %72

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #26
  %31 = load ptr, ptr %1, align 8, !tbaa !169
  %32 = getelementptr inbounds ptr, ptr %31, i64 8
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #25
          to label %34 unwind label %74

34:                                               ; preds = %30
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #25
          to label %35 unwind label %76

35:                                               ; preds = %34
  %36 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(32) %5) #25
          to label %37 unwind label %78

37:                                               ; preds = %35
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull @.str.25) #25
          to label %39 unwind label %78

39:                                               ; preds = %37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  %40 = load ptr, ptr %16, align 8, !tbaa !240
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(32) %3) #25
          to label %42 unwind label %72

42:                                               ; preds = %39
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull @.str.26) #25
          to label %44 unwind label %72

44:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #26
  %45 = load ptr, ptr %1, align 8, !tbaa !169
  %46 = getelementptr inbounds ptr, ptr %45, i64 9
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #25
          to label %48 unwind label %84

48:                                               ; preds = %44
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8) #25
          to label %49 unwind label %86

49:                                               ; preds = %48
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(32) %7) #25
          to label %51 unwind label %88

51:                                               ; preds = %49
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull @.str.27) #25
          to label %53 unwind label %88

53:                                               ; preds = %51
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #26
  %54 = load ptr, ptr %1, align 8, !tbaa !169
  %55 = getelementptr inbounds ptr, ptr %54, i64 10
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #25
          to label %57 unwind label %94

57:                                               ; preds = %53
  %58 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  br i1 %58, label %104, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr %16, align 8, !tbaa !240
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(32) %3) #25
          to label %62 unwind label %96

62:                                               ; preds = %59
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef nonnull @.str.28) #25
          to label %64 unwind label %96

64:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #26
  invoke fastcc void @_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %9) #25
          to label %65 unwind label %98

65:                                               ; preds = %64
  %66 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(32) %10) #25
          to label %67 unwind label %100

67:                                               ; preds = %65
  %68 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull @.str.29) #25
          to label %69 unwind label %100

69:                                               ; preds = %67
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #26
  br label %104

70:                                               ; preds = %2
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #26
  br label %134

72:                                               ; preds = %42, %39, %28, %26, %21, %19, %15
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %132

74:                                               ; preds = %30
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %82

76:                                               ; preds = %34
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %80

78:                                               ; preds = %37, %35
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #23
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi { ptr, i32 } [ %79, %78 ], [ %77, %76 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #23
  br label %82

82:                                               ; preds = %80, %74
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %132

84:                                               ; preds = %44
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %92

86:                                               ; preds = %48
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %90

88:                                               ; preds = %51, %49
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #23
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %87, %86 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #23
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #26
  br label %132

94:                                               ; preds = %53
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %130

96:                                               ; preds = %125, %117, %115, %110, %104, %62, %59
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %128

98:                                               ; preds = %64
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %102

100:                                              ; preds = %67, %65
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #23
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #26
  br label %128

104:                                              ; preds = %69, %57
  %105 = load i32, ptr %11, align 8, !tbaa !233
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %11, align 8, !tbaa !233
  %107 = load ptr, ptr %1, align 8, !tbaa !169
  %108 = getelementptr inbounds ptr, ptr %107, i64 18
  %109 = load ptr, ptr %108, align 8
  invoke void %109(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #25
          to label %110 unwind label %96

110:                                              ; preds = %104
  %111 = load i32, ptr %11, align 8, !tbaa !233
  %112 = add nsw i32 %111, -1
  store i32 %112, ptr %11, align 8, !tbaa !233
  %113 = load ptr, ptr %16, align 8, !tbaa !240
  %114 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull align 8 dereferenceable(32) %3) #25
          to label %115 unwind label %96

115:                                              ; preds = %110
  %116 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %114, ptr noundef nonnull @.str.30) #25
          to label %117 unwind label %96

117:                                              ; preds = %115
  %118 = load ptr, ptr %16, align 8, !tbaa !240
  %119 = load ptr, ptr %118, align 8, !tbaa !169
  %120 = getelementptr i8, ptr %119, i64 -24
  %121 = load i64, ptr %120, align 8
  %122 = getelementptr inbounds i8, ptr %118, i64 %121
  %123 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %122) #25
          to label %124 unwind label %96

124:                                              ; preds = %117
  br i1 %123, label %125, label %127

125:                                              ; preds = %124
  %126 = call ptr @__cxa_allocate_exception(i64 1) #26
  call void @_ZN8cVisitor21EndTraversalExceptionC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %126) #25
  invoke void @__cxa_throw(ptr nonnull %126, ptr nonnull @_ZTIN8cVisitor21EndTraversalExceptionE, ptr null) #28
          to label %136 unwind label %96

127:                                              ; preds = %124
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void

128:                                              ; preds = %102, %96
  %129 = phi { ptr, i32 } [ %97, %96 ], [ %103, %102 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  br label %130

130:                                              ; preds = %128, %94
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #26
  br label %132

132:                                              ; preds = %130, %92, %82, %72
  %133 = phi { ptr, i32 } [ %131, %130 ], [ %93, %92 ], [ %73, %72 ], [ %83, %82 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  br label %134

134:                                              ; preds = %132, %70
  %135 = phi { ptr, i32 } [ %133, %132 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  resume { ptr, i32 } %135

136:                                              ; preds = %125
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef signext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #25
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef signext %2) #25
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8cVisitor21EndTraversalExceptionC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11cSimulation19loadNedSourceFolderEPKc(ptr noundef %0) local_unnamed_addr #2 align 2 !prof !187 {
  %2 = tail call noundef ptr @_ZN10cNEDLoader11getInstanceEv() #25
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = getelementptr inbounds ptr, ptr %3, i64 13
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef %0) #25
  ret i32 %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN10cNEDLoader11getInstanceEv() local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation11loadNedFileEPKcS1_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !171 {
  %4 = tail call noundef ptr @_ZN10cNEDLoader11getInstanceEv() #25
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  %6 = getelementptr inbounds ptr, ptr %5, i64 14
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation11loadNedTextEPKcS1_S1_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 !prof !171 {
  %5 = tail call noundef ptr @_ZN10cNEDLoader11getInstanceEv() #25
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = getelementptr inbounds ptr, ptr %6, i64 15
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation19doneLoadingNedFilesEv() local_unnamed_addr #2 align 2 !prof !187 {
  %1 = tail call noundef ptr @_ZN10cNEDLoader11getInstanceEv() #25
  %2 = load ptr, ptr %1, align 8, !tbaa !169
  %3 = getelementptr inbounds ptr, ptr %2, i64 16
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(200) %1) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation22getNedPackageForFolderB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !187 {
  %3 = tail call noundef ptr @_ZN10cNEDLoader11getInstanceEv() #25
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = getelementptr inbounds ptr, ptr %4, i64 25
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation19clearLoadedNedFilesEv() local_unnamed_addr #2 align 2 !prof !187 {
  tail call void @_ZN10cNEDLoader5clearEv() #25
  ret void
}

; Function Attrs: optsize
declare void @_ZN10cNEDLoader5clearEv() local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11cSimulation14registerModuleEP7cModule(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !241 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !192
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !192
  %6 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !191
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %12, !prof !242

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !193
  br label %45

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !190
  %15 = add nsw i32 %14, %7
  %16 = sext i32 %15 to i64
  %17 = icmp slt i32 %15, 0
  %18 = shl nsw i64 %16, 3
  %19 = select i1 %17, i64 -1, i64 %18
  %20 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #27
  %21 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = sext i32 %7 to i64
  %24 = shl nsw i64 %23, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %20, ptr align 8 %22, i64 %24, i1 false)
  %25 = icmp sgt i32 %14, 0
  br i1 %25, label %26, label %35, !prof !243

26:                                               ; preds = %12
  %27 = getelementptr i8, ptr %20, i64 %24
  %28 = add i32 %7, 1
  %29 = tail call i32 @llvm.smax.i32(i32 %15, i32 %28)
  %30 = xor i32 %7, -1
  %31 = add i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = add nuw nsw i64 %33, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, i8 0, i64 %34, i1 false), !tbaa !185
  br label %35

35:                                               ; preds = %26, %12
  %36 = icmp eq ptr %22, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  tail call void @_ZdaPv(ptr noundef nonnull %22) #24
  %38 = load i32, ptr %13, align 8, !tbaa !190
  %39 = load i32, ptr %6, align 4, !tbaa !191
  %40 = load i32, ptr %3, align 8, !tbaa !192
  %41 = add nsw i32 %39, %38
  br label %42

42:                                               ; preds = %37, %35
  %43 = phi i32 [ %41, %37 ], [ %15, %35 ]
  %44 = phi i32 [ %40, %37 ], [ %5, %35 ]
  store ptr %20, ptr %21, align 8, !tbaa !193
  store i32 %43, ptr %6, align 4, !tbaa !191
  br label %45

45:                                               ; preds = %9, %42
  %46 = phi i32 [ %5, %9 ], [ %44, %42 ]
  %47 = phi ptr [ %11, %9 ], [ %20, %42 ]
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  store ptr %1, ptr %49, align 8, !tbaa !185
  ret i32 %46
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation16deregisterModuleEP7cModule(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %1) local_unnamed_addr #2 align 2 !prof !241 {
  %3 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #25
  %4 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  store ptr null, ptr %7, align 8, !tbaa !185
  %8 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !177
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %15, !prof !244

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8, !tbaa !169
  %13 = getelementptr inbounds ptr, ptr %12, i64 13
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #25
  store ptr null, ptr %8, align 8, !tbaa !177
  br label %15

15:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #1 comdat align 2 !prof !245 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !246
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation15setSystemModuleEP7cModule(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !187 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !177
  %4 = load ptr, ptr %0, align 8, !tbaa !169
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11cSimulation15getModuleByPathEPKc(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !250 {
  %3 = alloca %class.opp_string, align 8
  %4 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %1) #25
  br i1 %4, label %55, label %5, !prof !251

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @_ZN10opp_stringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #25
  %6 = call noundef ptr @_ZN10opp_string6bufferEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %7 = call ptr @strtok(ptr noundef %6, ptr noundef nonnull @.str.33) #23
  %8 = call noundef ptr @_ZNK11cSimulation15getSystemModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %12, !prof !251

10:                                               ; preds = %12
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %53

12:                                               ; preds = %5
  %13 = invoke noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7) #25
          to label %14 unwind label %10

14:                                               ; preds = %12
  br i1 %13, label %15, label %17, !prof !251

15:                                               ; preds = %14
  %16 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.33) #23
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi ptr [ %16, %15 ], [ %7, %14 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %51, label %20, !prof !252

20:                                               ; preds = %17, %46
  %21 = phi ptr [ %27, %46 ], [ %8, %17 ]
  %22 = phi ptr [ %47, %46 ], [ %18, %17 ]
  %23 = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %22, i32 noundef 91) #31
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %32, !prof !253

25:                                               ; preds = %20, %43
  %26 = phi i32 [ %45, %43 ], [ -1, %20 ]
  %27 = invoke noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %21, ptr noundef nonnull %22, i32 noundef %26) #25
          to label %46 unwind label %28

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %53

30:                                               ; preds = %40
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %53

32:                                               ; preds = %20
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #31
  %34 = add i64 %33, -1
  %35 = getelementptr inbounds i8, ptr %22, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !229
  %37 = icmp eq i8 %36, 93
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %39, ptr noundef nonnull @.str.34, ptr noundef %1) #25
          to label %40 unwind label %41

40:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
          to label %57 unwind label %30

41:                                               ; preds = %38
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %39) #26
  br label %53

43:                                               ; preds = %32
  store i8 0, ptr %23, align 1, !tbaa !229
  %44 = getelementptr inbounds i8, ptr %23, i64 1
  %45 = call i32 @atoi(ptr nocapture noundef nonnull %44) #31
  br label %25

46:                                               ; preds = %25
  %47 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.33) #23
  %48 = icmp ne ptr %47, null
  %49 = icmp ne ptr %27, null
  %50 = and i1 %48, %49
  br i1 %50, label %20, label %51, !prof !252, !llvm.loop !254

51:                                               ; preds = %46, %17, %5
  %52 = phi ptr [ null, %5 ], [ %8, %17 ], [ %27, %46 ]
  call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  br label %55

53:                                               ; preds = %28, %30, %41, %10
  %54 = phi { ptr, i32 } [ %11, %10 ], [ %42, %41 ], [ %29, %28 ], [ %31, %30 ]
  call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  resume { ptr, i32 } %54

55:                                               ; preds = %2, %51
  %56 = phi ptr [ %52, %51 ], [ null, %2 ]
  ret ptr %56

57:                                               ; preds = %40
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %0) local_unnamed_addr #1 comdat !prof !255 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !256

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !229
  %5 = icmp eq i8 %4, 0
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ true, %1 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !257 {
  %3 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #25
  store ptr %3, ptr %0, align 8, !tbaa !258
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN10opp_string6bufferEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !260 {
  %2 = load ptr, ptr %0, align 8, !tbaa !258
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11cSimulation15getSystemModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #1 comdat align 2 !prof !250 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !261 {
  %3 = load ptr, ptr %0, align 8, !tbaa !169
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %7 = tail call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %6, ptr noundef %1) #25
  %8 = icmp eq i32 %7, 0
  ret i1 %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !262 {
  %2 = load ptr, ptr %0, align 8, !tbaa !258
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z10opp_strdupPKc(ptr noundef %0) local_unnamed_addr #2 comdat !prof !263 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !264

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !229
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !265

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31
  %8 = add i64 %7, 1
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #27
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #23
  br label %11

11:                                               ; preds = %1, %3, %6
  %12 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !266 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  br i1 %3, label %12, label %5, !prof !267

5:                                                ; preds = %2
  br i1 %4, label %8, label %6, !prof !268

6:                                                ; preds = %5
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #31
  br label %17

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !229
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %17

12:                                               ; preds = %2
  br i1 %4, label %17, label %13, !prof !269

13:                                               ; preds = %12
  %14 = load i8, ptr %1, align 1, !tbaa !229
  %15 = icmp ne i8 %14, 0
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %13, %6, %8
  %18 = phi i32 [ %7, %6 ], [ %11, %8 ], [ 0, %12 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation12setupNetworkEP11cModuleType(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %3 = alloca %class.cContextTypeSwitcher, align 4
  tail call void @_ZN11cSimulation11checkActiveEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %10, !prof !203

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, i32, ...) @_ZN13cRuntimeErrorC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %6, i32 noundef 27) #25
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %63

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !169
  %12 = getelementptr inbounds ptr, ptr %11, i64 34
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(168) %1) #25
  br i1 %14, label %25, label %15, !prof !206

15:                                               ; preds = %10
  %16 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  %17 = load ptr, ptr %1, align 8, !tbaa !169
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(168) %1) #25
          to label %21 unwind label %23

21:                                               ; preds = %15
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %16, ptr noundef nonnull @.str.35, ptr noundef %20) #25
          to label %22 unwind label %23

22:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
  unreachable

23:                                               ; preds = %21, %15
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %63

25:                                               ; preds = %10
  %26 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 10
  store ptr %1, ptr %26, align 8, !tbaa !194
  %27 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  tail call void @_ZN12cMessageHeap5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %27) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  invoke void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0) #25
          to label %28 unwind label %49

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !194
  %30 = load ptr, ptr %29, align 8, !tbaa !169
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(20) %29) #25
          to label %34 unwind label %51

34:                                               ; preds = %28
  %35 = load ptr, ptr %29, align 8, !tbaa !169
  %36 = getelementptr inbounds ptr, ptr %35, i64 35
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(168) %29, ptr noundef %33, ptr noundef null) #25
          to label %39 unwind label %51

39:                                               ; preds = %34
  %40 = load ptr, ptr %38, align 8, !tbaa !169
  %41 = getelementptr inbounds ptr, ptr %40, i64 33
  %42 = load ptr, ptr %41, align 8
  invoke void %42(ptr noundef nonnull align 8 dereferenceable(176) %38) #25
          to label %43 unwind label %51

43:                                               ; preds = %39
  %44 = load ptr, ptr %38, align 8, !tbaa !169
  %45 = getelementptr inbounds ptr, ptr %44, i64 56
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef i32 %46(ptr noundef nonnull align 8 dereferenceable(176) %38) #25
          to label %48 unwind label %51

48:                                               ; preds = %43
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
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
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #23
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  %55 = extractvalue { ptr, i32 } %54, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  %56 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #26
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = extractvalue { ptr, i32 } %54, 0
  %60 = call ptr @__cxa_begin_catch(ptr %59) #26
  invoke void @__cxa_rethrow() #28
          to label %71 unwind label %61

61:                                               ; preds = %58
  %62 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %66 unwind label %68

63:                                               ; preds = %8, %23
  %64 = phi ptr [ %16, %23 ], [ %6, %8 ]
  %65 = phi { ptr, i32 } [ %24, %23 ], [ %9, %8 ]
  tail call void @__cxa_free_exception(ptr %64) #26
  br label %66

66:                                               ; preds = %63, %61, %53
  %67 = phi { ptr, i32 } [ %54, %53 ], [ %62, %61 ], [ %65, %63 ]
  resume { ptr, i32 } %67

68:                                               ; preds = %61
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #29
  unreachable

71:                                               ; preds = %58
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11cSimulation11checkActiveEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !270 {
  %2 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #25
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %9, label %4, !prof !271

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull %0, i32 noundef 41) #25
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #26
  resume { ptr, i32 } %8

9:                                                ; preds = %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ...) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN12cMessageHeap5clearEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #17

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation8startRunEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %2 = alloca %class.cContextSwitcher, align 8
  %3 = alloca %class.SimTime, align 8
  tail call void @_ZN11cSimulation11checkActiveEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %4 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 12
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSIiEERKS_T_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #25
  %6 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 13
  store i64 0, ptr %6, align 8, !tbaa !272
  tail call void @_ZN8cMessage20resetMessageCountersEv() #25
  %7 = tail call noundef ptr @_ZNK11cSimulation12getSchedulerEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %8 = load ptr, ptr %7, align 8, !tbaa !169
  %9 = getelementptr inbounds ptr, ptr %8, i64 20
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  %11 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !177
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14, !prof !203

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %12) #25
  %15 = load ptr, ptr %11, align 8, !tbaa !177
  invoke void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00) #25
          to label %16 unwind label %26

16:                                               ; preds = %14
  %17 = load ptr, ptr %15, align 8, !tbaa !169
  %18 = getelementptr inbounds ptr, ptr %17, i64 70
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(176) %15, ptr noundef nonnull %3) #25
          to label %20 unwind label %26

20:                                               ; preds = %16
  %21 = load ptr, ptr %11, align 8, !tbaa !177
  %22 = load ptr, ptr %21, align 8, !tbaa !169
  %23 = getelementptr inbounds ptr, ptr %22, i64 38
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(176) %21) #25
          to label %25 unwind label %26

25:                                               ; preds = %20
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  br label %28

26:                                               ; preds = %20, %16, %14
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  resume { ptr, i32 } %27

28:                                               ; preds = %25, %1
  store i64 1, ptr %6, align 8, !tbaa !272
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSIiEERKS_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !273 {
  tail call void @_ZN7SimTime5checkIiEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #25
  %3 = load i64, ptr @_ZN7SimTime6dscaleE, align 8, !tbaa !221
  %4 = sext i32 %1 to i64
  %5 = mul nsw i64 %3, %4
  %6 = sitofp i64 %5 to double
  %7 = tail call noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %6) #25
  store i64 %7, ptr %0, align 8, !tbaa !198
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8cMessage20resetMessageCountersEv() local_unnamed_addr #1 comdat align 2 !prof !187 {
  store i64 0, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !221
  store i64 0, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11cSimulation12getSchedulerEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #1 comdat align 2 !prof !199 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !189
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) unnamed_addr #2 comdat align 2 !prof !274 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #25
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime5checkIiEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !273 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !275
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %7, !prof !276

5:                                                ; preds = %2
  %6 = sitofp i32 %1 to double
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %6) #25
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !277 {
  %3 = tail call double @llvm.fabs.f64(double %1)
  %4 = fcmp ogt double %3, 0x43DFFFFFFFFFEDC8
  br i1 %4, label %5, label %6, !prof !278

5:                                                ; preds = %2
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #25
  br label %6

6:                                                ; preds = %5, %2
  %7 = fptosi double %1 to i64
  ret i64 %7
}

; Function Attrs: optsize
declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: optsize
declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !279 {
  tail call void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #25
  %3 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !280
  %4 = fmul double %3, %1
  %5 = tail call noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %4) #25
  store i64 %5, ptr %0, align 8, !tbaa !198
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !279 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !275
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !282

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #25
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation10callFinishEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !187 {
  tail call void @_ZN11cSimulation11checkActiveEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !203

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !169
  %7 = getelementptr inbounds ptr, ptr %6, i64 40
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(176) %3) #25
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation6endRunEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !187 {
  tail call void @_ZN11cSimulation11checkActiveEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %2 = tail call noundef ptr @_ZNK11cSimulation12getSchedulerEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = getelementptr inbounds ptr, ptr %3, i64 21
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(16) %2) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !283 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !285

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !169
  %7 = getelementptr inbounds ptr, ptr %6, i64 36
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(104) %3) #25
  %10 = load ptr, ptr %2, align 8
  %11 = select i1 %9, ptr %10, ptr null, !prof !286
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ null, %1 ], [ %11, %5 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @_ZN7cModule14clearNamePoolsEv() local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11cSimulation16selectNextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !287 {
  %2 = alloca %class.SimTime, align 8
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !189
  %5 = load ptr, ptr %4, align 8, !tbaa !169
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10, !prof !288

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  br label %12

12:                                               ; preds = %10, %30
  %13 = phi ptr [ %8, %10 ], [ %35, %30 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !193
  %15 = tail call noundef i32 @_ZNK8cMessage18getArrivalModuleIdEv(ptr noundef nonnull align 8 dereferenceable(160) %13) #25
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !185
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !289

20:                                               ; preds = %12
  %21 = tail call noundef zeroext i1 @_ZNK13cSimpleModule12isTerminatedEv(ptr noundef nonnull align 8 dereferenceable(192) %18) #25
  br i1 %21, label %22, label %37, !prof !289

22:                                               ; preds = %20, %12
  %23 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %24 = tail call noundef ptr @_ZN12cMessageHeap11removeFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %23) #25
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !169
  %28 = getelementptr inbounds ptr, ptr %27, i64 4
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(160) %24) #23
  br label %30

30:                                               ; preds = %26, %22
  %31 = load ptr, ptr %3, align 8, !tbaa !189
  %32 = load ptr, ptr %31, align 8, !tbaa !169
  %33 = getelementptr inbounds ptr, ptr %32, i64 23
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(16) %31) #25
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %12, !prof !290

37:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @_ZNK8cMessage14getArrivalTimeEv(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %2, ptr noundef nonnull align 8 dereferenceable(160) %13) #25
  %38 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 12
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  br label %40

40:                                               ; preds = %30, %1, %37
  %41 = phi ptr [ %18, %37 ], [ null, %1 ], [ null, %30 ]
  ret ptr %41
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8cMessage18getArrivalModuleIdEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 !prof !287 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !291
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK13cSimpleModule12isTerminatedEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #1 comdat align 2 !prof !293 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !183
  %4 = and i16 %3, 1024
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN12cMessageHeap11removeFirstEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK8cMessage14getArrivalTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #2 comdat align 2 !prof !294 {
  %3 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 13
  tail call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11cSimulation14guessNextEventEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %3 = tail call noundef ptr @_ZNK12cMessageHeap9peekFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #25
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK12cMessageHeap9peekFirstEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation16guessNextSimtimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #2 align 2 !prof !171 {
  %3 = tail call noundef ptr @_ZN11cSimulation14guessNextEventEv(ptr noundef nonnull align 8 dereferenceable(224) %1) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef -1.000000e+00) #25
  br label %7

6:                                                ; preds = %2
  tail call void @_ZNK8cMessage14getArrivalTimeEv(ptr dead_on_unwind writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %3) #25
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11cSimulation15guessNextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !171 {
  %2 = tail call noundef ptr @_ZN11cSimulation14guessNextEventEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = tail call noundef i32 @_ZNK8cMessage18getArrivalModuleIdEv(ptr noundef nonnull align 8 dereferenceable(160) %2) #25
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !193
  %10 = tail call noundef i32 @_ZNK8cMessage18getArrivalModuleIdEv(ptr noundef nonnull align 8 dereferenceable(160) %2) #25
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !185
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = tail call noundef zeroext i1 @_ZNK13cSimpleModule12isTerminatedEv(ptr noundef nonnull align 8 dereferenceable(192) %13) #25
  %17 = select i1 %16, ptr null, ptr %13
  br label %18

18:                                               ; preds = %15, %7, %4, %1
  %19 = phi ptr [ null, %1 ], [ null, %4 ], [ null, %7 ], [ %17, %15 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation10transferToEP13cSimpleModule(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %class.cDeleteModuleException, align 8
  %5 = alloca %class.cTerminationException, align 8
  %6 = alloca %class.cRuntimeError, align 8
  %7 = alloca %class.cException, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull @.str.37) #25
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #26
  br label %107

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 15
  store ptr null, ptr %15, align 8, !tbaa !295
  %16 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 7
  store ptr %1, ptr %16, align 8, !tbaa !296
  %17 = getelementptr inbounds %class.cSimpleModule, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !297
  tail call void @_ZN10cCoroutine8switchToEPS_(ptr noundef %18) #25
  %19 = load ptr, ptr %1, align 8, !tbaa !169
  %20 = getelementptr inbounds ptr, ptr %19, i64 75
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(192) %1) #25
  br i1 %22, label %23, label %46

23:                                               ; preds = %14
  %24 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  %25 = load ptr, ptr %1, align 8, !tbaa !169
  %26 = getelementptr inbounds ptr, ptr %25, i64 5
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %1) #25
          to label %29 unwind label %38

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %30 = load ptr, ptr %1, align 8, !tbaa !169
  %31 = getelementptr inbounds ptr, ptr %30, i64 8
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1) #25
          to label %33 unwind label %40

33:                                               ; preds = %29
  %34 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef nonnull @.str.38, ptr noundef %28, ptr noundef %34) #25
          to label %37 unwind label %35

35:                                               ; preds = %33
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %44

37:                                               ; preds = %33
  invoke void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
          to label %109 unwind label %42

38:                                               ; preds = %23
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %44

40:                                               ; preds = %29
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %44

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %107

44:                                               ; preds = %35, %40, %38
  %45 = phi { ptr, i32 } [ %39, %38 ], [ %41, %40 ], [ %36, %35 ]
  call void @__cxa_free_exception(ptr %24) #26
  br label %107

46:                                               ; preds = %14
  %47 = load ptr, ptr %15, align 8, !tbaa !295
  %48 = icmp eq ptr %47, null
  br i1 %48, label %106, label %49

49:                                               ; preds = %46
  store ptr null, ptr %15, align 8, !tbaa !295
  %50 = tail call ptr @__dynamic_cast(ptr nonnull %47, ptr nonnull @_ZTI10cException, ptr nonnull @_ZTI22cDeleteModuleException, i64 0) #26
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #26
  call void @_ZN22cDeleteModuleExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 dereferenceable(124) %47) #25
  %53 = load ptr, ptr %47, align 8, !tbaa !169
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = load ptr, ptr %54, align 8
  call void %55(ptr noundef nonnull align 8 dereferenceable(124) %47) #23
  %56 = call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void @_ZN22cDeleteModuleExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %56, ptr noundef nonnull align 8 dereferenceable(124) %4) #25
          to label %57 unwind label %58

57:                                               ; preds = %52
  invoke void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTI22cDeleteModuleException, ptr nonnull @_ZN10cExceptionD2Ev) #28
          to label %109 unwind label %60

58:                                               ; preds = %52
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %56) #26
  br label %62

60:                                               ; preds = %57
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %4) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #26
  br label %107

64:                                               ; preds = %49
  %65 = tail call ptr @__dynamic_cast(ptr nonnull %47, ptr nonnull @_ZTI10cException, ptr nonnull @_ZTI21cTerminationException, i64 0) #26
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #26
  call void @_ZN21cTerminationExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 dereferenceable(124) %47) #25
  %68 = load ptr, ptr %47, align 8, !tbaa !169
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(124) %47) #23
  %71 = call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void @_ZN21cTerminationExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %71, ptr noundef nonnull align 8 dereferenceable(124) %5) #25
          to label %72 unwind label %73

72:                                               ; preds = %67
  invoke void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTI21cTerminationException, ptr nonnull @_ZN10cExceptionD2Ev) #28
          to label %109 unwind label %75

73:                                               ; preds = %67
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %71) #26
  br label %77

75:                                               ; preds = %72
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %74, %73 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %5) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #26
  br label %107

79:                                               ; preds = %64
  %80 = tail call ptr @__dynamic_cast(ptr nonnull %47, ptr nonnull @_ZTI10cException, ptr nonnull @_ZTI13cRuntimeError, i64 0) #26
  %81 = icmp eq ptr %80, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #26
  call void @_ZN13cRuntimeErrorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull align 8 dereferenceable(124) %47) #25
  %83 = load ptr, ptr %47, align 8, !tbaa !169
  %84 = getelementptr inbounds ptr, ptr %83, i64 1
  %85 = load ptr, ptr %84, align 8
  call void %85(ptr noundef nonnull align 8 dereferenceable(124) %47) #23
  %86 = call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void @_ZN13cRuntimeErrorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %86, ptr noundef nonnull align 8 dereferenceable(124) %6) #25
          to label %87 unwind label %88

87:                                               ; preds = %82
  invoke void @__cxa_throw(ptr nonnull %86, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
          to label %109 unwind label %90

88:                                               ; preds = %82
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %86) #26
  br label %92

90:                                               ; preds = %87
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %89, %88 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %6) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #26
  br label %107

94:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #26
  call void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull align 8 dereferenceable(124) %47) #25
  %95 = load ptr, ptr %47, align 8, !tbaa !169
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  %97 = load ptr, ptr %96, align 8
  call void %97(ptr noundef nonnull align 8 dereferenceable(124) %47) #23
  %98 = call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %98, ptr noundef nonnull align 8 dereferenceable(124) %7) #25
          to label %99 unwind label %100

99:                                               ; preds = %94
  invoke void @__cxa_throw(ptr nonnull %98, ptr nonnull @_ZTI10cException, ptr nonnull @_ZN10cExceptionD2Ev) #28
          to label %109 unwind label %102

100:                                              ; preds = %94
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %98) #26
  br label %104

102:                                              ; preds = %99
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %101, %100 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %7) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #26
  br label %107

106:                                              ; preds = %46
  ret void

107:                                              ; preds = %42, %62, %77, %92, %104, %44, %12
  %108 = phi { ptr, i32 } [ %13, %12 ], [ %45, %44 ], [ %43, %42 ], [ %63, %62 ], [ %78, %77 ], [ %93, %92 ], [ %105, %104 ]
  resume { ptr, i32 } %108

109:                                              ; preds = %99, %87, %72, %57, %37
  unreachable
}

; Function Attrs: optsize
declare void @_ZN10cCoroutine8switchToEPS_(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #19

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN22cDeleteModuleExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) #25
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV22cDeleteModuleException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN21cTerminationExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) #25
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV21cTerminationException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !187 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #23
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13cRuntimeErrorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) #25
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV13cRuntimeError, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  ret void
}

; Function Attrs: optsize
declare void @_ZN10cExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22cDeleteModuleExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22cDeleteModuleException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
  invoke void @_ZN22cDeleteModuleExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #25
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN21cTerminationExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK21cTerminationException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
  invoke void @_ZN21cTerminationExceptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #25
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13cRuntimeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cRuntimeError3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
  invoke void @_ZN13cRuntimeErrorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #25
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #24
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation10doOneEventEP13cSimpleModule(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !287 {
  %3 = alloca %class.SimTime, align 8
  %4 = alloca %class.cRuntimeError, align 8
  invoke void @_ZN11cSimulation10setContextEP10cComponent(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) #25
          to label %5 unwind label %15

5:                                                ; preds = %2
  tail call void @_ZN11cSimulation14setContextTypeEi(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef 2) #25
  %6 = tail call noundef ptr @_ZN11cSimulation9getHasherEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !299

8:                                                ; preds = %5
  %9 = tail call noundef ptr @_ZN11cSimulation9getHasherEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  invoke void @_Z7simTimev(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %3) #25
          to label %10 unwind label %17

10:                                               ; preds = %8
  %11 = call noundef i64 @_ZNK7SimTime3rawEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  invoke void @_ZN7cHasher3addEl(ptr noundef nonnull align 4 dereferenceable(4) %9, i64 noundef %11) #25
          to label %12 unwind label %17

12:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  %13 = call noundef ptr @_ZN11cSimulation9getHasherEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %14 = call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #25
  call void @_ZN7cHasher3addEi(ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef %14) #25
  br label %19

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          catch ptr @_ZTI22cDeleteModuleException
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  br label %51

17:                                               ; preds = %10, %8
  %18 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI22cDeleteModuleException
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  br label %51

19:                                               ; preds = %12, %5
  %20 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 17
  %21 = invoke noundef ptr @_ZN12cMessageHeap11removeFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %20) #25
          to label %22 unwind label %39

22:                                               ; preds = %19
  %23 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #25
  %24 = getelementptr inbounds %class.cEnvir, ptr %23, i64 0, i32 2
  %25 = load i8, ptr %24, align 1, !tbaa !300, !range !215, !noundef !216
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32, !prof !299

27:                                               ; preds = %22
  %28 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #25
  %29 = load ptr, ptr %28, align 8, !tbaa !169
  %30 = getelementptr inbounds ptr, ptr %29, i64 6
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(288) %28, ptr noundef %21) #25
          to label %32 unwind label %39

32:                                               ; preds = %27, %22
  %33 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 13
  %34 = load i64, ptr %33, align 8, !tbaa !272
  call void @_ZN8cMessage22setPreviousEventNumberEl(ptr noundef nonnull align 8 dereferenceable(160) %21, i64 noundef %34) #25
  %35 = call noundef zeroext i1 @_ZNK10cComponent11initializedEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #25
  br i1 %35, label %43, label %36, !prof !299

36:                                               ; preds = %32
  %37 = call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %37, ptr noundef nonnull %1, ptr noundef nonnull @.str.39) #25
          to label %38 unwind label %41

38:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
          to label %113 unwind label %39

39:                                               ; preds = %47, %45, %38, %27, %19
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI22cDeleteModuleException
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  br label %51

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI22cDeleteModuleException
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr %37) #26
  br label %51

43:                                               ; preds = %32
  %44 = call noundef zeroext i1 @_ZNK13cSimpleModule12usesActivityEv(ptr noundef nonnull align 8 dereferenceable(192) %1) #25
  br i1 %44, label %45, label %47, !prof !289

45:                                               ; preds = %43
  %46 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 14
  store ptr %21, ptr %46, align 8, !tbaa !303
  invoke void @_ZN11cSimulation10transferToEP13cSimpleModule(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %1) #25
          to label %66 unwind label %39

47:                                               ; preds = %43
  %48 = load ptr, ptr %1, align 8, !tbaa !169
  %49 = getelementptr inbounds ptr, ptr %48, i64 74
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull %21) #25
          to label %66 unwind label %39

51:                                               ; preds = %39, %41, %17, %15
  %52 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ], [ %40, %39 ], [ %42, %41 ]
  %53 = extractvalue { ptr, i32 } %52, 0
  %54 = extractvalue { ptr, i32 } %52, 1
  %55 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI22cDeleteModuleException) #26
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = call ptr @__cxa_begin_catch(ptr %53) #26
  invoke void @_ZN11cSimulation16setGlobalContextEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
          to label %59 unwind label %106

59:                                               ; preds = %57
  %60 = icmp eq ptr %1, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %1, align 8, !tbaa !169
  %63 = getelementptr inbounds ptr, ptr %62, i64 4
  %64 = load ptr, ptr %63, align 8
  call void %64(ptr noundef nonnull align 8 dereferenceable(192) %1) #23
  br label %65

65:                                               ; preds = %61, %59
  call void @__cxa_end_catch()
  br label %66

66:                                               ; preds = %45, %47, %65
  call void @_ZN11cSimulation16setGlobalContextEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
  %67 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 13
  %68 = load i64, ptr %67, align 8, !tbaa !272
  %69 = add nsw i64 %68, 1
  store i64 %69, ptr %67, align 8, !tbaa !272
  ret void

70:                                               ; preds = %51
  %71 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI10cException) #26
  %72 = icmp eq i32 %54, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = call ptr @__cxa_begin_catch(ptr %53) #26
  invoke void @_ZN11cSimulation16setGlobalContextEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
          to label %75 unwind label %104

75:                                               ; preds = %73
  invoke void @__cxa_rethrow() #28
          to label %113 unwind label %104

76:                                               ; preds = %70
  %77 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #26
  %78 = icmp eq i32 %54, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = call ptr @__cxa_begin_catch(ptr %53) #26
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #26
  %81 = load ptr, ptr %80, align 8, !tbaa !169
  %82 = getelementptr inbounds ptr, ptr %81, i64 -1
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %83) #25
          to label %85 unwind label %94

85:                                               ; preds = %79
  %86 = load ptr, ptr %80, align 8, !tbaa !169
  %87 = getelementptr inbounds ptr, ptr %86, i64 2
  %88 = load ptr, ptr %87, align 8
  %89 = call noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(8) %80) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull @.str.40, ptr noundef %84, ptr noundef %89) #25
          to label %90 unwind label %94

90:                                               ; preds = %85
  invoke void @_ZN11cSimulation16setGlobalContextEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #25
          to label %91 unwind label %96

91:                                               ; preds = %90
  %92 = call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void @_ZN13cRuntimeErrorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %92, ptr noundef nonnull align 8 dereferenceable(124) %4) #25
          to label %93 unwind label %98

93:                                               ; preds = %91
  invoke void @__cxa_throw(ptr nonnull %92, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #28
          to label %113 unwind label %96

94:                                               ; preds = %85, %79
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %102

96:                                               ; preds = %93, %90
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %91
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %92) #26
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %97, %96 ], [ %99, %98 ]
  call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %4) #23
  br label %102

102:                                              ; preds = %100, %94
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #26
  invoke void @__cxa_end_catch()
          to label %108 unwind label %110

104:                                              ; preds = %75, %73
  %105 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %108 unwind label %110

106:                                              ; preds = %57
  %107 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %108 unwind label %110

108:                                              ; preds = %106, %104, %102, %76
  %109 = phi { ptr, i32 } [ %52, %76 ], [ %103, %102 ], [ %105, %104 ], [ %107, %106 ]
  resume { ptr, i32 } %109

110:                                              ; preds = %106, %104, %102
  %111 = landingpad { ptr, i32 }
          catch ptr null
  %112 = extractvalue { ptr, i32 } %111, 0
  call void @__clang_call_terminate(ptr %112) #29
  unreachable

113:                                              ; preds = %75, %93, %38
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation10setContextEP10cComponent(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !304 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 8
  store ptr %1, ptr %3, align 8, !tbaa !284
  tail call void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11cSimulation14setContextTypeEi(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !305 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 9
  store i32 %1, ptr %3, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation9getHasherEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #1 comdat align 2 !prof !287 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7cHasher3addEl(ptr noundef nonnull align 4 dereferenceable(4) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !171 {
  tail call void @_ZN7cHasher6merge2Em(ptr noundef nonnull align 4 dereferenceable(4) %0, i64 noundef %1) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK7SimTime3rawEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !306 {
  %2 = load i64, ptr %0, align 8, !tbaa !198
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7cHasher3addEi(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !171 {
  tail call void @_ZN7cHasher5mergeEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8cMessage22setPreviousEventNumberEl(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !307 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 17
  store i64 %1, ptr %3, align 8, !tbaa !308
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cComponent11initializedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !309 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !183
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK13cSimpleModule12usesActivityEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #1 comdat align 2 !prof !310 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !183
  %4 = and i16 %3, 512
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11cSimulation16setGlobalContextEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 comdat align 2 !prof !311 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 8
  store ptr null, ptr %2, align 8, !tbaa !284
  tail call void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef nonnull @defaultList) #25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7cHasher6merge2Em(ptr noundef nonnull align 4 dereferenceable(4) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !171 {
  %3 = trunc i64 %1 to i32
  tail call void @_ZN7cHasher5mergeEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %3) #25
  %4 = lshr i64 %1, 32
  %5 = trunc i64 %4 to i32
  tail call void @_ZN7cHasher5mergeEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %5) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7cHasher5mergeEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !171 {
  %3 = load i32, ptr %0, align 4, !tbaa !312
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 1)
  %5 = xor i32 %4, %1
  store i32 %5, ptr %0, align 4, !tbaa !312
  ret void
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation14transferToMainEv(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !296
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !tbaa !296
  tail call void @_ZN10cCoroutine12switchToMainEv() #25
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN10cCoroutine12switchToMainEv() local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11cSimulation22getContextSimpleModuleEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !314 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !284
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5, !prof !315

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !169
  %7 = getelementptr inbounds ptr, ptr %6, i64 36
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(104) %3) #25
  br i1 %9, label %10, label %18, !prof !316

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !284
  %12 = load ptr, ptr %11, align 8, !tbaa !169
  %13 = getelementptr inbounds ptr, ptr %12, i64 57
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(176) %11) #25
  %16 = load ptr, ptr %2, align 8
  %17 = select i1 %15, ptr %16, ptr null, !prof !316
  br label %18

18:                                               ; preds = %10, %1, %5
  %19 = phi ptr [ null, %5 ], [ null, %1 ], [ %17, %10 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZN11cSimulation15getUniqueNumberEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !171 {
  %2 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #25
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = getelementptr inbounds ptr, ptr %3, i64 55
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i64 %5(ptr noundef nonnull align 8 dereferenceable(288) %2) #25
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11cSimulation9setHasherEP7cHasher(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !187 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !206

6:                                                ; preds = %2
  tail call void @_ZN11noncopyableD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %4) #23
  tail call void @_ZdlPv(ptr noundef nonnull %4) #24
  br label %7

7:                                                ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cSimulation9insertMsgEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull %1) local_unnamed_addr #2 align 2 !prof !317 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 13
  %4 = load i64, ptr %3, align 8, !tbaa !272
  tail call void @_ZN8cMessage22setPreviousEventNumberEl(ptr noundef nonnull align 8 dereferenceable(160) %1, i64 noundef %4) #25
  %5 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #25
  %6 = getelementptr inbounds %class.cSimulation, ptr %5, i64 0, i32 17
  tail call void @_ZN12cMessageHeap6insertEP8cMessage(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %1) #25
  ret void
}

; Function Attrs: optsize
declare void @_ZN12cMessageHeap6insertEP8cMessage(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11cStaticFlag5isSetEv() local_unnamed_addr #1 comdat align 2 !prof !318 {
  %1 = load i8, ptr @_ZN11cStaticFlag10staticflagE, align 1, !tbaa !319, !range !215, !noundef !216
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #20

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.42() unnamed_addr #4 section ".text.startup" {
  tail call void @_ZN9StaticEnvC2Ev(ptr noundef nonnull align 8 dereferenceable(288) @_ZL9staticEnv) #25
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6cEnvirD2Ev, ptr nonnull @_ZL9staticEnv, ptr nonnull @__dso_handle) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9StaticEnvC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #2 comdat align 2 !prof !187 {
  tail call void @_ZN6cEnvirC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) #25
  store ptr getelementptr inbounds ({ [59 x ptr] }, ptr @_ZTV9StaticEnv, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  ret void
}

; Function Attrs: optsize
declare void @_ZN6cEnvirC2Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #0

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK9StaticEnv11unsupportedEv(ptr noundef nonnull align 8 dereferenceable(288) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !171 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 48) #26
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.44) #25
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #28
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #26
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  ret ptr %3
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cComponent9setRNGMapEsPi(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !171 {
  %4 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 2
  store i16 %1, ptr %4, align 8, !tbaa !320
  %5 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 3
  store ptr %2, ptr %5, align 8, !tbaa !321
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_csimulation.cc() #4 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.42()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nosync nounwind memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind memory(read) }
attributes #20 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nounwind optsize }
attributes #24 = { builtin nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind }
attributes #27 = { builtin optsize allocsize(0) }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn optsize }
attributes #31 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!158}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!36 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN23cNoncopyableOwnedObjectC2EPKcb, i64 1}
!37 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN7SimTimeC2Ev, i64 1}
!38 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN12cMessageHeapC1EPKci, i64 1}
!39 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN12cNamedObject7setNameEPKc, i64 1}
!40 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_Znwm, i64 1}
!41 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN20cSequentialSchedulerC2Ev, i64 1}
!42 = !{ptr @_ZN11cSimulationC2EPKcP6cEnvir, ptr @_ZN11cSimulation12setSchedulerEP10cScheduler, i64 1}
!43 = !{ptr @_ZN23cNoncopyableOwnedObjectC2EPKcb, ptr @_ZN12cOwnedObjectC2EPKcb, i64 469428}
!44 = !{ptr @_ZN23cNoncopyableOwnedObjectC2EPKcb, ptr @_ZN11noncopyableC2Ev, i64 469428}
!45 = !{ptr @_ZN11cSimulation12setSchedulerEP10cScheduler, ptr @__cxa_allocate_exception, i64 1}
!46 = !{ptr @_ZN11cSimulation12setSchedulerEP10cScheduler, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!47 = !{ptr @_ZN20cSequentialSchedulerC2Ev, ptr @_ZN10cSchedulerC2Ev, i64 2}
!48 = !{ptr @_ZN11cSimulationD2Ev, ptr @_ZN11cSimulation13deleteNetworkEv, i64 1}
!49 = !{ptr @_ZN11cSimulationD2Ev, ptr @_ZN12cMessageHeapD1Ev, i64 1}
!50 = !{ptr @_ZN11cSimulationD2Ev, ptr @_ZN23cNoncopyableOwnedObjectD2Ev, i64 1}
!51 = !{ptr @_ZN11cSimulation13deleteNetworkEv, ptr @_ZNK11cSimulation16getContextModuleEv, i64 1}
!52 = !{ptr @_ZN11cSimulation13deleteNetworkEv, ptr @_ZN7cModule14clearNamePoolsEv, i64 1}
!53 = !{ptr @_ZN11cSimulation13deleteNetworkEv, ptr @_ZN12cMessageHeap5clearEv, i64 1}
!54 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!55 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!56 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!57 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!58 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!59 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!60 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!61 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!62 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!63 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!64 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!65 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!66 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!67 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!68 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!69 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!70 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!71 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!72 = !{ptr @_Z7simTimev, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 1685490447}
!73 = !{ptr @_Z7simTimev, ptr @_ZNK11cSimulation10getSimTimeEv, i64 1685490447}
!74 = !{ptr @_ZNK11cSimulation10getSimTimeEv, ptr @_ZN7SimTimeC2ERKS_, i64 3302180619}
!75 = !{ptr @_ZN7SimTimeC2ERKS_, ptr @_ZN7SimTimeaSERKS_, i64 57319387120}
!76 = !{ptr @_ZN11cSimulation19loadNedSourceFolderEPKc, ptr @_ZN10cNEDLoader11getInstanceEv, i64 1}
!77 = !{ptr @_ZN11cSimulation19doneLoadingNedFilesEv, ptr @_ZN10cNEDLoader11getInstanceEv, i64 1}
!78 = !{ptr @_ZN11cSimulation22getNedPackageForFolderB5cxx11EPKc, ptr @_ZN10cNEDLoader11getInstanceEv, i64 1}
!79 = !{ptr @_ZN11cSimulation19clearLoadedNedFilesEv, ptr @_ZN10cNEDLoader5clearEv, i64 1}
!80 = !{ptr @_ZN11cSimulation14registerModuleEP7cModule, ptr @_Znam, i64 921}
!81 = !{ptr @_ZN11cSimulation14registerModuleEP7cModule, ptr @_ZdaPv, i64 576}
!82 = !{ptr @_ZN11cSimulation16deregisterModuleEP7cModule, ptr @_ZNK7cModule5getIdEv, i64 29423}
!83 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_Z11opp_isemptyPKc, i64 4920}
!84 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_ZN10opp_stringC2EPKc, i64 4919}
!85 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_ZN10opp_string6bufferEv, i64 4919}
!86 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @strtok, i64 9838}
!87 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_ZNK11cSimulation15getSystemModuleEv, i64 4919}
!88 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_ZNK7cObject6isNameEPKc, i64 4918}
!89 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @strchr, i64 4918}
!90 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_ZN7cModule12getSubmoduleEPKci, i64 4918}
!91 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @strlen, i64 1}
!92 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @atoi, i64 1}
!93 = !{ptr @_ZNK11cSimulation15getModuleByPathEPKc, ptr @_ZN10opp_stringD2Ev, i64 4919}
!94 = !{ptr @_ZN10opp_stringC2EPKc, ptr @_Z10opp_strdupPKc, i64 4934}
!95 = !{ptr @_ZNK7cObject6isNameEPKc, ptr @_Z10opp_strcmpPKcS0_, i64 2470429}
!96 = !{ptr @_ZN10opp_stringD2Ev, ptr @_ZdaPv, i64 277850}
!97 = !{ptr @_Z10opp_strdupPKc, ptr @strlen, i64 188204299}
!98 = !{ptr @_Z10opp_strdupPKc, ptr @_Znam, i64 188204299}
!99 = !{ptr @_Z10opp_strdupPKc, ptr @strcpy, i64 188204299}
!100 = !{ptr @_Z10opp_strcmpPKcS0_, ptr @strcmp, i64 3128955}
!101 = !{ptr @_ZN11cSimulation12setupNetworkEP11cModuleType, ptr @_ZN11cSimulation11checkActiveEv, i64 1}
!102 = !{ptr @_ZN11cSimulation11checkActiveEv, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 4}
!103 = !{ptr @_ZN11cSimulation11checkActiveEv, ptr @__cxa_allocate_exception, i64 1}
!104 = !{ptr @_ZN11cSimulation11checkActiveEv, ptr @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez, i64 1}
!105 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZN11cSimulation11checkActiveEv, i64 1}
!106 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZN7SimTimeaSIiEERKS_T_, i64 1}
!107 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZN8cMessage20resetMessageCountersEv, i64 1}
!108 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZNK11cSimulation12getSchedulerEv, i64 1}
!109 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZN16cContextSwitcherC1EPK10cComponent, i64 1}
!110 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZN7SimTimeC2Ed, i64 1}
!111 = !{ptr @_ZN11cSimulation8startRunEv, ptr @_ZN16cContextSwitcherD1Ev, i64 1}
!112 = !{ptr @_ZN7SimTimeaSIiEERKS_T_, ptr @_ZN7SimTime5checkIiEEvT_, i64 375812855}
!113 = !{ptr @_ZN7SimTimeaSIiEERKS_T_, ptr @_ZN7SimTime7toInt64Ed, i64 375812855}
!114 = !{ptr @_ZN7SimTimeC2Ed, ptr @_ZN7SimTimeaSEd, i64 980188428}
!115 = !{ptr @_ZN7SimTime5checkIiEEvT_, ptr @_ZN7SimTime9initErrorEd, i64 1}
!116 = !{ptr @_ZN7SimTime7toInt64Ed, ptr @_ZN7SimTime10rangeErrorEd, i64 1}
!117 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime5checkIdEEvT_, i64 980215783}
!118 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime7toInt64Ed, i64 980215783}
!119 = !{ptr @_ZN7SimTime5checkIdEEvT_, ptr @_ZN7SimTime9initErrorEd, i64 1}
!120 = !{ptr @_ZN11cSimulation10callFinishEv, ptr @_ZN11cSimulation11checkActiveEv, i64 1}
!121 = !{ptr @_ZN11cSimulation6endRunEv, ptr @_ZN11cSimulation11checkActiveEv, i64 1}
!122 = !{ptr @_ZN11cSimulation6endRunEv, ptr @_ZNK11cSimulation12getSchedulerEv, i64 1}
!123 = !{ptr @_ZN11cSimulation16selectNextModuleEv, ptr @_ZNK8cMessage18getArrivalModuleIdEv, i64 408898529}
!124 = !{ptr @_ZN11cSimulation16selectNextModuleEv, ptr @_ZNK13cSimpleModule12isTerminatedEv, i64 408898528}
!125 = !{ptr @_ZN11cSimulation16selectNextModuleEv, ptr @_ZN12cMessageHeap11removeFirstEv, i64 2}
!126 = !{ptr @_ZN11cSimulation16selectNextModuleEv, ptr @_ZNK8cMessage14getArrivalTimeEv, i64 408898527}
!127 = !{ptr @_ZN11cSimulation16selectNextModuleEv, ptr @_ZN7SimTimeaSERKS_, i64 408898527}
!128 = !{ptr @_ZNK8cMessage14getArrivalTimeEv, ptr @_ZN7SimTimeC2ERKS_, i64 48398671114}
!129 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!130 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!131 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN11cSimulation10setContextEP10cComponent, i64 467312602}
!132 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN11cSimulation14setContextTypeEi, i64 467312156}
!133 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN11cSimulation9getHasherEv, i64 467312158}
!134 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_Z7simTimev, i64 1}
!135 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZNK7SimTime3rawEv, i64 1}
!136 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN7cHasher3addEl, i64 1}
!137 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZNK7cModule5getIdEv, i64 1}
!138 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN7cHasher3addEi, i64 1}
!139 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN12cMessageHeap11removeFirstEv, i64 467312156}
!140 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 934623421}
!141 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN8cMessage22setPreviousEventNumberEl, i64 467311265}
!142 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZNK10cComponent11initializedEv, i64 467311265}
!143 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @__cxa_allocate_exception, i64 1}
!144 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!145 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @__cxa_throw, i64 1}
!146 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @__cxa_free_exception, i64 1}
!147 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZNK13cSimpleModule12usesActivityEv, i64 467311264}
!148 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN11cSimulation10transferToEP13cSimpleModule, i64 1}
!149 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @__cxa_begin_catch, i64 892}
!150 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @_ZN11cSimulation16setGlobalContextEv, i64 467312602}
!151 = !{ptr @_ZN11cSimulation10doOneEventEP13cSimpleModule, ptr @__cxa_end_catch, i64 892}
!152 = !{ptr @_ZN11cSimulation10setContextEP10cComponent, ptr @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList, i64 467694910}
!153 = !{ptr @_ZN11cSimulation16setGlobalContextEv, ptr @_ZN12cOwnedObject15setDefaultOwnerEP12cDefaultList, i64 467351790}
!154 = !{ptr @_ZN11cSimulation9insertMsgEP8cMessage, ptr @_ZN8cMessage22setPreviousEventNumberEl, i64 468305915}
!155 = !{ptr @_ZN11cSimulation9insertMsgEP8cMessage, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 468305915}
!156 = !{ptr @_ZN11cSimulation9insertMsgEP8cMessage, ptr @_ZN12cMessageHeap6insertEP8cMessage, i64 468305915}
!157 = !{ptr @_ZN9StaticEnvC2Ev, ptr @_ZN6cEnvirC2Ev, i64 1}
!158 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!159 = !{!"function_entry_count", i64 192538233}
!160 = !{!161, !163, i64 8}
!161 = !{!"_ZTS12cNamedObject", !162, i64 0, !163, i64 8, !166, i64 16, !166, i64 18}
!162 = !{!"_ZTS7cObject"}
!163 = !{!"any pointer", !164, i64 0}
!164 = !{!"omnipotent char", !165, i64 0}
!165 = !{!"Simple C++ TBAA"}
!166 = !{!"short", !164, i64 0}
!167 = !{!"branch_weights", i32 1, i32 192538234}
!168 = !{!"function_entry_count", i64 235321}
!169 = !{!170, !170, i64 0}
!170 = !{!"vtable pointer", !165, i64 0}
!171 = !{!"function_entry_count", i64 0}
!172 = !{!"function_entry_count", i64 542987320}
!173 = !{!174, !163, i64 24}
!174 = !{!"_ZTS12cOwnedObject", !161, i64 0, !163, i64 24, !175, i64 32}
!175 = !{!"int", !164, i64 0}
!176 = !{!"function_entry_count", i64 147484992}
!177 = !{!178, !163, i64 72}
!178 = !{!"_ZTS11cSimulation", !179, i64 0, !175, i64 36, !175, i64 40, !163, i64 48, !175, i64 56, !163, i64 64, !163, i64 72, !163, i64 80, !163, i64 88, !175, i64 96, !163, i64 104, !163, i64 112, !180, i64 120, !181, i64 128, !163, i64 136, !163, i64 144, !163, i64 152, !182, i64 160}
!179 = !{!"_ZTS23cNoncopyableOwnedObject", !174, i64 0}
!180 = !{!"_ZTS7SimTime", !181, i64 0}
!181 = !{!"long", !164, i64 0}
!182 = !{!"_ZTS12cMessageHeap", !174, i64 0, !163, i64 40, !175, i64 48, !175, i64 52, !181, i64 56}
!183 = !{!161, !166, i64 16}
!184 = !{!178, !163, i64 64}
!185 = !{!163, !163, i64 0}
!186 = !{!"function_entry_count", i64 15544}
!187 = !{!"function_entry_count", i64 1}
!188 = !{!178, !175, i64 96}
!189 = !{!178, !163, i64 112}
!190 = !{!178, !175, i64 40}
!191 = !{!178, !175, i64 36}
!192 = !{!178, !175, i64 56}
!193 = !{!178, !163, i64 48}
!194 = !{!178, !163, i64 104}
!195 = !{!178, !163, i64 152}
!196 = !{!"function_entry_count", i64 469428}
!197 = !{!"function_entry_count", i64 1143690745}
!198 = !{!180, !181, i64 0}
!199 = !{!"function_entry_count", i64 2}
!200 = !{!"branch_weights", i32 3, i32 1}
!201 = !{!"branch_weights", i32 1, i32 3}
!202 = !{!"function_entry_count", i64 582939}
!203 = !{!"branch_weights", i32 1, i32 2}
!204 = !{!"function_entry_count", i64 3}
!205 = !{!"branch_weights", i32 3, i32 2}
!206 = !{!"branch_weights", i32 2, i32 1}
!207 = !{!"function_entry_count", i64 582938}
!208 = !{!209, !175, i64 8}
!209 = !{!"_ZTS10cException", !210, i64 0, !175, i64 8, !211, i64 16, !213, i64 48, !211, i64 56, !211, i64 88, !175, i64 120}
!210 = !{!"_ZTSSt9exception"}
!211 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !212, i64 0, !181, i64 8, !164, i64 16}
!212 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !163, i64 0}
!213 = !{!"bool", !164, i64 0}
!214 = !{!209, !213, i64 48}
!215 = !{i8 0, i8 2}
!216 = !{}
!217 = !{!209, !175, i64 120}
!218 = !{!"function_entry_count", i64 2107073}
!219 = !{!"function_entry_count", i64 1891507}
!220 = !{!"function_entry_count", i64 1889443}
!221 = !{!181, !181, i64 0}
!222 = !{!"branch_weights", i32 1257663, i32 631782}
!223 = !{!224, !163, i64 0}
!224 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !163, i64 0}
!225 = !{!"branch_weights", i32 1889444, i32 1}
!226 = !{!"branch_weights", i32 2, i32 2}
!227 = !{!"function_entry_count", i64 21674314260}
!228 = !{!"csimulation.cc:_ZL8xmlquoteRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!229 = !{!164, !164, i64 0}
!230 = distinct !{!230, !231}
!231 = !{!"llvm.loop.mustprogress"}
!232 = !{!"function_entry_count", i64 1685490447}
!233 = !{!234, !175, i64 16}
!234 = !{!"_ZTS22cSnapshotWriterVisitor", !235, i64 0, !163, i64 8, !175, i64 16}
!235 = !{!"_ZTS8cVisitor"}
!236 = !{!"function_entry_count", i64 5379836753}
!237 = !{!"function_entry_count", i64 3302180619}
!238 = !{!"function_entry_count", i64 57319387120}
!239 = !{!"function_entry_count", i64 61624744013}
!240 = !{!234, !163, i64 8}
!241 = !{!"function_entry_count", i64 29423}
!242 = !{!"branch_weights", i32 28504, i32 921}
!243 = !{!"branch_weights", i32 920, i32 1}
!244 = !{!"branch_weights", i32 2, i32 29423}
!245 = !{!"function_entry_count", i64 936672086}
!246 = !{!247, !175, i64 112}
!247 = !{!"_ZTS7cModule", !248, i64 0, !163, i64 104, !175, i64 112, !163, i64 120, !163, i64 128, !163, i64 136, !163, i64 144, !175, i64 152, !163, i64 160, !175, i64 168, !175, i64 172}
!248 = !{!"_ZTS10cComponent", !249, i64 0, !163, i64 56, !166, i64 64, !163, i64 72, !166, i64 80, !166, i64 82, !163, i64 88, !163, i64 96}
!249 = !{!"_ZTS12cDefaultList", !179, i64 0, !163, i64 40, !175, i64 48, !175, i64 52}
!250 = !{!"function_entry_count", i64 4920}
!251 = !{!"branch_weights", i32 1, i32 4921}
!252 = !{!"branch_weights", i32 1, i32 4920}
!253 = !{!"branch_weights", i32 4921, i32 1}
!254 = distinct !{!254, !231}
!255 = !{!"function_entry_count", i64 728460}
!256 = !{!"branch_weights", i32 393162, i32 335300}
!257 = !{!"function_entry_count", i64 4934}
!258 = !{!259, !163, i64 0}
!259 = !{!"_ZTS10opp_string", !163, i64 0}
!260 = !{!"function_entry_count", i64 4922}
!261 = !{!"function_entry_count", i64 2470429}
!262 = !{!"function_entry_count", i64 444560}
!263 = !{!"function_entry_count", i64 188204319}
!264 = !{!"branch_weights", i32 13, i32 188204308}
!265 = !{!"branch_weights", i32 7, i32 188204302}
!266 = !{!"function_entry_count", i64 3403184}
!267 = !{!"branch_weights", i32 274228, i32 3128958}
!268 = !{!"branch_weights", i32 1, i32 3128958}
!269 = !{!"branch_weights", i32 121684, i32 152545}
!270 = !{!"function_entry_count", i64 4}
!271 = !{!"branch_weights", i32 5, i32 1}
!272 = !{!178, !181, i64 128}
!273 = !{!"function_entry_count", i64 375812855}
!274 = !{!"function_entry_count", i64 980188428}
!275 = !{!175, !175, i64 0}
!276 = !{!"branch_weights", i32 1, i32 375812856}
!277 = !{!"function_entry_count", i64 1656274258}
!278 = !{!"branch_weights", i32 1, i32 1656274259}
!279 = !{!"function_entry_count", i64 980215783}
!280 = !{!281, !281, i64 0}
!281 = !{!"double", !164, i64 0}
!282 = !{!"branch_weights", i32 1, i32 980215784}
!283 = !{!"function_entry_count", i64 424031}
!284 = !{!178, !163, i64 88}
!285 = !{!"branch_weights", i32 4, i32 424029}
!286 = !{!"branch_weights", i32 424029, i32 1}
!287 = !{!"function_entry_count", i64 467312602}
!288 = !{!"branch_weights", i32 1, i32 7}
!289 = !{!"branch_weights", i32 1, i32 467312603}
!290 = !{!"branch_weights", i32 7, i32 -556466479}
!291 = !{!292, !175, i64 80}
!292 = !{!"_ZTS8cMessage", !174, i64 0, !166, i64 36, !166, i64 38, !166, i64 40, !163, i64 48, !163, i64 56, !163, i64 64, !175, i64 72, !175, i64 76, !175, i64 80, !175, i64 84, !180, i64 88, !180, i64 96, !180, i64 104, !180, i64 112, !175, i64 120, !181, i64 128, !181, i64 136, !181, i64 144, !181, i64 152}
!293 = !{!"function_entry_count", i64 669701711}
!294 = !{!"function_entry_count", i64 48398671114}
!295 = !{!178, !163, i64 144}
!296 = !{!178, !163, i64 80}
!297 = !{!298, !163, i64 184}
!298 = !{!"_ZTS13cSimpleModule", !247, i64 0, !163, i64 176, !163, i64 184}
!299 = !{!"branch_weights", i32 467312603, i32 1}
!300 = !{!301, !213, i64 9}
!301 = !{!"_ZTS6cEnvir", !213, i64 8, !213, i64 9, !213, i64 10, !302, i64 16}
!302 = !{!"_ZTSSo"}
!303 = !{!178, !163, i64 136}
!304 = !{!"function_entry_count", i64 467694910}
!305 = !{!"function_entry_count", i64 467665408}
!306 = !{!"function_entry_count", i64 51306}
!307 = !{!"function_entry_count", i64 936606909}
!308 = !{!292, !181, i64 136}
!309 = !{!"function_entry_count", i64 574617348}
!310 = !{!"function_entry_count", i64 467384458}
!311 = !{!"function_entry_count", i64 467351790}
!312 = !{!313, !175, i64 0}
!313 = !{!"_ZTS7cHasher", !175, i64 0}
!314 = !{!"function_entry_count", i64 100587}
!315 = !{!"branch_weights", i32 1, i32 100588}
!316 = !{!"branch_weights", i32 100588, i32 1}
!317 = !{!"function_entry_count", i64 468305915}
!318 = !{!"function_entry_count", i64 1139427}
!319 = !{!213, !213, i64 0}
!320 = !{!248, !166, i64 64}
!321 = !{!248, !163, i64 72}
