; ModuleID = 'simulator/cdataratechannel.cc'
source_filename = "simulator/cdataratechannel.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.ExecuteOnStartup = type { ptr, ptr }
%class.cGlobalRegistrationList = type { ptr, ptr }
%class.cDatarateChannel = type { %class.cChannel.base, %class.SimTime, double, double, double, %class.SimTime }
%class.cChannel.base = type <{ %class.cComponent, ptr, i32 }>
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.SimTime = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.cPacket = type <{ %class.cMessage, i64, %class.SimTime, ptr, i16, [6 x i8] }>
%class.cMessage = type { %class.cOwnedObject.base, i16, i16, i16, ptr, ptr, ptr, i32, i32, i32, i32, %class.SimTime, %class.SimTime, %class.SimTime, %class.SimTime, i32, i64, i64, i64, i64 }
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.cChannel = type <{ %class.cComponent, ptr, i32, [4 x i8] }>
%class.cGate = type { %class.cObject, ptr, i32, ptr, ptr, ptr }
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }
%struct._Guard = type { ptr }
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }

$_ZN7SimTimeC2Ev = comdat any

$_ZN7SimTimeaSIiEERKS_T_ = comdat any

$_ZNK4cParcvdEv = comdat any

$_ZNK7SimTimeltERKS_ = comdat any

$_ZN7SimTimeC2Ed = comdat any

$_ZN12cNamedObject7setFlagEib = comdat any

$_ZNK4cParcvbEv = comdat any

$_ZNK7SimTimeneERKS_ = comdat any

$_ZNK7cPacket12getBitLengthEv = comdat any

$_ZNK7SimTimegtERKS_ = comdat any

$_ZNK8cChannel13getSourceGateEv = comdat any

$_ZNK5cGate11getNextGateEv = comdat any

$_ZNK7cPacket11getDurationEv = comdat any

$_ZN7SimTimeaSEd = comdat any

$_ZN7cPacket11setDurationE7SimTime = comdat any

$_ZN7SimTimeC2ERKS_ = comdat any

$_ZplRK7SimTimeS1_ = comdat any

$_ZN7SimTimeaSERKS_ = comdat any

$_ZN7SimTimepLERKS_ = comdat any

$_Z7dblrandv = comdat any

$_ZN7cPacket11setBitErrorEb = comdat any

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cDefaultList11isSoftOwnerEv = comdat any

$_ZN12cDefaultList17setPerformFinalGCEb = comdat any

$_ZN10cComponent10initializeEi = comdat any

$_ZNK10cComponent13numInitStagesEv = comdat any

$_ZNK10cComponent8isModuleEv = comdat any

$_ZNK10cComponent12getNumParamsEv = comdat any

$_ZNK16cDatarateChannel21isTransmissionChannelEv = comdat any

$_ZNK16cDatarateChannel25getTransmissionFinishTimeEv = comdat any

$_ZNK16cDatarateChannel6isBusyEv = comdat any

$_ZNK16cDatarateChannel8getDelayEv = comdat any

$_ZNK16cDatarateChannel11getDatarateEv = comdat any

$_ZNK16cDatarateChannel15getBitErrorRateEv = comdat any

$_ZNK16cDatarateChannel18getPacketErrorRateEv = comdat any

$_ZNK16cDatarateChannel10isDisabledEv = comdat any

$_ZN10cExceptionD2Ev = comdat any

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

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN7SimTime5checkIdEEvT_ = comdat any

$_ZN7SimTime7toInt64Ed = comdat any

$_ZN7SimTime10checkedAddERKS_ = comdat any

$_ZN7SimTime12haveSameSignEll = comdat any

$_Z18__contextModuleRNGi = comdat any

$_ZN11cSimulation19getActiveSimulationEv = comdat any

$_ZNK10cComponent6getRNGEi = comdat any

$_Z7simTimev = comdat any

$_ZNK11cSimulation10getSimTimeEv = comdat any

$_ZNK16cDatarateChannel10checkStateEv = comdat any

$_ZNK10cComponent19parametersFinalizedEv = comdat any

$_ZN7SimTime5checkIiEEvT_ = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN12_GLOBAL__N_118__onstartup_obj_36E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZTV16cDatarateChannel = dso_local unnamed_addr constant { [63 x ptr] } { [63 x ptr] [ptr null, ptr @_ZTI16cDatarateChannel, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN12cDefaultList18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN12cDefaultList14yieldOwnershipEP12cOwnedObjectP7cObject, ptr @_ZN16cDatarateChannelD2Ev, ptr @_ZN16cDatarateChannelD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK16cDatarateChannel4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK23cNoncopyableOwnedObject3dupEv, ptr @_ZN12cDefaultList4takeEP12cOwnedObject, ptr @_ZN12cDefaultList4dropEP12cOwnedObject, ptr @_ZN8cChannel10parsimPackEP11cCommBuffer, ptr @_ZN8cChannel12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN8cChannel12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cDefaultList11isSoftOwnerEv, ptr @_ZN12cDefaultList17setPerformFinalGCEb, ptr @_ZN10cComponent16setComponentTypeEP14cComponentType, ptr @_ZN10cComponent6addParEP8cParImpl, ptr @_ZN10cComponent25recordParametersAsScalarsEv, ptr @_ZN10cComponent10initializeEi, ptr @_ZNK10cComponent13numInitStagesEv, ptr @_ZN10cComponent10initializeEv, ptr @_ZN10cComponent6finishEv, ptr @_ZN16cDatarateChannel21handleParameterChangeEPKc, ptr @_ZN16cDatarateChannel18finalizeParametersEv, ptr @_ZNK8cChannel13getPropertiesEv, ptr @_ZNK10cComponent14getNedTypeNameEv, ptr @_ZNK10cComponent8isModuleEv, ptr @_ZNK8cChannel15getParentModuleEv, ptr @_ZN8cChannel14callInitializeEv, ptr @_ZN8cChannel14callInitializeEi, ptr @_ZN8cChannel10callFinishEv, ptr @_ZNK10cComponent12getNumParamsEv, ptr @_ZN10cComponent3parEi, ptr @_ZN10cComponent3parEPKc, ptr @_ZNK10cComponent7findParEPKc, ptr @_ZN8cChannel17initializeChannelEi, ptr @_ZNK16cDatarateChannel21isTransmissionChannelEv, ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @_ZNK16cDatarateChannel17calculateDurationEP8cMessage, ptr @_ZNK16cDatarateChannel25getTransmissionFinishTimeEv, ptr @_ZNK16cDatarateChannel6isBusyEv, ptr @_ZN16cDatarateChannel8setDelayEd, ptr @_ZN16cDatarateChannel11setDatarateEd, ptr @_ZN16cDatarateChannel15setBitErrorRateEd, ptr @_ZN16cDatarateChannel18setPacketErrorRateEd, ptr @_ZN16cDatarateChannel11setDisabledEb, ptr @_ZNK16cDatarateChannel8getDelayEv, ptr @_ZNK16cDatarateChannel11getDatarateEv, ptr @_ZNK16cDatarateChannel15getBitErrorRateEv, ptr @_ZNK16cDatarateChannel18getPacketErrorRateEv, ptr @_ZNK16cDatarateChannel10isDisabledEv] }, align 8
@_ZTI8cChannel = external constant ptr
@.str = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"datarate\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ber\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"negative delay %s\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"negative datarate %g\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"wrong bit error rate %g\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"wrong packet error rate %g\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.10 = private unnamed_addr constant [327 x i8] c"Error sending message (%s)%s on gate %s: gate is currently busy with an ongoing transmission -- please rewrite the sender simple module to only send when the previous transmission has already finished, using cGate::getTransmissionFinishTime(), scheduleAt(), and possibly a cQueue for storing messages waiting to be transmitted\00", align 1
@.str.11 = private unnamed_addr constant [188 x i8] c"Packet (%s)%s already has a duration set; there may be more than one channel with data rate in the connection path, or it was sent with a sendDirect() call that specified duration as well\00", align 1
@_ZTS16cDatarateChannel = dso_local constant [19 x i8] c"16cDatarateChannel\00", align 1
@_ZTI16cDatarateChannel = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16cDatarateChannel, ptr @_ZTI8cChannel }, align 8
@classes = external global %class.cGlobalRegistrationList, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN7SimTime6dscaleE = external local_unnamed_addr global i64, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cdataratechannel.cc, ptr null }]

@_ZN16cDatarateChannelC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16cDatarateChannelC2EPKc
@_ZN16cDatarateChannelD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16cDatarateChannelD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #16
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_36E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_36Ev) #16
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_36E, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_36Ev() #4 personality ptr @__gxx_personality_v0 !prof !116 !PGOFuncName !117 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes) #16
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #18
  %3 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI16cDatarateChannel) #16
          to label %4 unwind label %9

4:                                                ; preds = %0
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef nonnull @_ZL15__uniquename_36v, ptr noundef null) #16
          to label %5 unwind label %9

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 8, !tbaa !118
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #16
  ret void

9:                                                ; preds = %4, %0
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #19
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16cDatarateChannelC2EPKc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  tail call void @_ZN8cChannelC2EPKc(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef %1) #16
  store ptr getelementptr inbounds ({ [63 x ptr] }, ptr @_ZTV16cDatarateChannel, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !118
  %3 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 1
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 5
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSIiEERKS_T_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #16
          to label %6 unwind label %10

6:                                                ; preds = %2
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSIiEERKS_T_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #16
          to label %8 unwind label %10

8:                                                ; preds = %6
  %9 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  ret void

10:                                               ; preds = %6, %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8cChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #20
  resume { ptr, i32 } %11
}

; Function Attrs: optsize
declare void @_ZN8cChannelC2EPKc(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !122 {
  store i64 0, ptr %0, align 8, !tbaa !123
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSIiEERKS_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !127 {
  tail call void @_ZN7SimTime5checkIiEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #16
  %3 = load i64, ptr @_ZN7SimTime6dscaleE, align 8, !tbaa !128
  %4 = sext i32 %1 to i64
  %5 = mul nsw i64 %3, %4
  %6 = sitofp i64 %5 to double
  %7 = tail call noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %6) #16
  store i64 %7, ptr %0, align 8, !tbaa !123
  ret ptr %0
}

; Function Attrs: nounwind optsize
declare void @_ZN8cChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN16cDatarateChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #5 align 2 !prof !121 {
  tail call void @_ZN8cChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN16cDatarateChannelD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN16cDatarateChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN16cDatarateChannel6createEPKc(ptr noundef %0) local_unnamed_addr #4 align 2 !prof !129 {
  %2 = tail call noundef ptr @_ZN12cChannelType22getDatarateChannelTypeEv() #16
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = getelementptr inbounds ptr, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @__dynamic_cast(ptr nonnull %6, ptr nonnull @_ZTI8cChannel, ptr nonnull @_ZTI16cDatarateChannel, i64 0) #17
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi ptr [ %9, %8 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN12cChannelType22getDatarateChannelTypeEv() local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK16cDatarateChannel4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #4 align 2 !prof !129 {
  tail call void @_ZNK8cChannel4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %1) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZNK8cChannel4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16cDatarateChannel18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 align 2 !prof !121 {
  tail call void @_ZN8cChannel18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(116) %0) #16
  tail call void @_ZN16cDatarateChannel10rereadParsEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN8cChannel18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16cDatarateChannel10rereadParsEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %2 = alloca %class.SimTime, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %class.SimTime, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !118
  %6 = getelementptr inbounds ptr, ptr %5, i64 43
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(24) ptr %7(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str) #16
  %9 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 1
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERK4cPar(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  %11 = load ptr, ptr %0, align 8, !tbaa !118
  %12 = getelementptr inbounds ptr, ptr %11, i64 43
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(24) ptr %13(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.2) #16
  %15 = tail call noundef double @_ZNK4cParcvdEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #16
  %16 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 2
  store double %15, ptr %16, align 8, !tbaa !130
  %17 = load ptr, ptr %0, align 8, !tbaa !118
  %18 = getelementptr inbounds ptr, ptr %17, i64 43
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(24) ptr %19(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.3) #16
  %21 = tail call noundef double @_ZNK4cParcvdEv(ptr noundef nonnull align 8 dereferenceable(24) %20) #16
  %22 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 3
  store double %21, ptr %22, align 8, !tbaa !143
  %23 = load ptr, ptr %0, align 8, !tbaa !118
  %24 = getelementptr inbounds ptr, ptr %23, i64 43
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef nonnull align 8 dereferenceable(24) ptr %25(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.4) #16
  %27 = tail call noundef double @_ZNK4cParcvdEv(ptr noundef nonnull align 8 dereferenceable(24) %26) #16
  %28 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 4
  store double %27, ptr %28, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef 0.000000e+00) #16
  %29 = call noundef zeroext i1 @_ZNK7SimTimeltERKS_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br i1 %29, label %30, label %43, !prof !145

30:                                               ; preds = %1
  %31 = call ptr @__cxa_allocate_exception(i64 128) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  invoke void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %9) #16
          to label %32 unwind label %37

32:                                               ; preds = %30
  %33 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %33) #16
          to label %36 unwind label %34

34:                                               ; preds = %32
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %41

36:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
          to label %89 unwind label %39

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %41

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %87

41:                                               ; preds = %34, %37
  %42 = phi { ptr, i32 } [ %38, %37 ], [ %35, %34 ]
  call void @__cxa_free_exception(ptr %31) #17
  br label %87

43:                                               ; preds = %1
  %44 = load double, ptr %16, align 8, !tbaa !130
  %45 = fcmp olt double %44, 0.000000e+00
  br i1 %45, label %46, label %52, !prof !145

46:                                               ; preds = %43
  %47 = call ptr @__cxa_allocate_exception(i64 128) #17
  %48 = load double, ptr %16, align 8, !tbaa !130
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %47, ptr noundef nonnull %0, ptr noundef nonnull @.str.6, double noundef %48) #16
          to label %49 unwind label %50

49:                                               ; preds = %46
  call void @__cxa_throw(ptr nonnull %47, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

50:                                               ; preds = %46
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %47) #17
  br label %87

52:                                               ; preds = %43
  %53 = load double, ptr %22, align 8, !tbaa !143
  %54 = fcmp olt double %53, 0.000000e+00
  %55 = fcmp ogt double %53, 1.000000e+00
  %56 = or i1 %54, %55
  br i1 %56, label %57, label %63, !prof !146

57:                                               ; preds = %52
  %58 = call ptr @__cxa_allocate_exception(i64 128) #17
  %59 = load double, ptr %22, align 8, !tbaa !143
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %58, ptr noundef nonnull %0, ptr noundef nonnull @.str.7, double noundef %59) #16
          to label %60 unwind label %61

60:                                               ; preds = %57
  call void @__cxa_throw(ptr nonnull %58, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

61:                                               ; preds = %57
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %58) #17
  br label %87

63:                                               ; preds = %52
  %64 = load double, ptr %28, align 8, !tbaa !144
  %65 = fcmp olt double %64, 0.000000e+00
  %66 = fcmp ogt double %64, 1.000000e+00
  %67 = or i1 %65, %66
  br i1 %67, label %68, label %74, !prof !146

68:                                               ; preds = %63
  %69 = call ptr @__cxa_allocate_exception(i64 128) #17
  %70 = load double, ptr %28, align 8, !tbaa !144
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %69, ptr noundef nonnull %0, ptr noundef nonnull @.str.8, double noundef %70) #16
          to label %71 unwind label %72

71:                                               ; preds = %68
  call void @__cxa_throw(ptr nonnull %69, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

72:                                               ; preds = %68
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %69) #17
  br label %87

74:                                               ; preds = %63
  %75 = load ptr, ptr %0, align 8, !tbaa !118
  %76 = getelementptr inbounds ptr, ptr %75, i64 43
  %77 = load ptr, ptr %76, align 8
  %78 = call noundef nonnull align 8 dereferenceable(24) ptr %77(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.9) #16
  %79 = call noundef zeroext i1 @_ZNK4cParcvbEv(ptr noundef nonnull align 8 dereferenceable(24) %78) #16
  call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 128, i1 noundef zeroext %79) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef 0.000000e+00) #16
  %80 = call noundef zeroext i1 @_ZNK7SimTimeneERKS_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 256, i1 noundef zeroext %80) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %81 = load double, ptr %16, align 8, !tbaa !130
  %82 = fcmp une double %81, 0.000000e+00
  call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 512, i1 noundef zeroext %82) #16
  %83 = load double, ptr %22, align 8, !tbaa !143
  %84 = fcmp une double %83, 0.000000e+00
  call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 1024, i1 noundef zeroext %84) #16
  %85 = load double, ptr %28, align 8, !tbaa !144
  %86 = fcmp une double %85, 0.000000e+00
  call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 2048, i1 noundef zeroext %86) #16
  ret void

87:                                               ; preds = %39, %41, %72, %61, %50
  %88 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ], [ %51, %50 ], [ %62, %61 ], [ %73, %72 ]
  resume { ptr, i32 } %88

89:                                               ; preds = %36
  unreachable
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERK4cPar(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK4cParcvdEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !147 {
  %2 = tail call noundef double @_ZNK4cPar11doubleValueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret double %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7SimTimeltERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !148 {
  %3 = load i64, ptr %0, align 8, !tbaa !123
  %4 = load i64, ptr %1, align 8, !tbaa !123
  %5 = icmp slt i64 %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) unnamed_addr #4 comdat align 2 !prof !149 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 !prof !150 {
  %4 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !151
  %6 = trunc i32 %1 to i16
  br i1 %2, label %7, label %9, !prof !152

7:                                                ; preds = %3
  %8 = or i16 %5, %6
  br label %12

9:                                                ; preds = %3
  %10 = xor i16 %6, -1
  %11 = and i16 %5, %10
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i16 [ %11, %9 ], [ %8, %7 ]
  store i16 %13, ptr %4, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4cParcvbEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !153 {
  %2 = tail call noundef zeroext i1 @_ZNK4cPar9boolValueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7SimTimeneERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !154 {
  %3 = load i64, ptr %0, align 8, !tbaa !123
  %4 = load i64, ptr %1, align 8, !tbaa !123
  %5 = icmp ne i64 %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16cDatarateChannel21handleParameterChangeEPKc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 !prof !129 {
  tail call void @_ZN16cDatarateChannel10rereadParsEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16cDatarateChannel8setDelayEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef %1) unnamed_addr #4 align 2 !prof !129 {
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16cDatarateChannel11setDatarateEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef %1) unnamed_addr #4 align 2 !prof !129 {
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.2) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16cDatarateChannel15setBitErrorRateEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef %1) unnamed_addr #4 align 2 !prof !129 {
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.3) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16cDatarateChannel18setPacketErrorRateEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef %1) unnamed_addr #4 align 2 !prof !129 {
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.4) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN16cDatarateChannel11setDisabledEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext %1) unnamed_addr #4 align 2 !prof !129 {
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.9) #16
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar12setBoolValueEb(ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %1) #16
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar12setBoolValueEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK16cDatarateChannel17calculateDurationEP8cMessage(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !129 {
  %4 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !151
  %6 = and i16 %5, 512
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !118
  %10 = getelementptr inbounds ptr, ptr %9, i64 24
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(160) %2) #16
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = tail call noundef i64 @_ZNK7cPacket12getBitLengthEv(ptr noundef nonnull align 8 dereferenceable(186) %2) #16
  %15 = sitofp i64 %14 to double
  %16 = getelementptr inbounds %class.cDatarateChannel, ptr %1, i64 0, i32 2
  %17 = load double, ptr %16, align 8, !tbaa !130
  %18 = fdiv double %15, %17
  tail call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %18) #16
  br label %20

19:                                               ; preds = %8, %3
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  br label %20

20:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK7cPacket12getBitLengthEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #5 comdat align 2 !prof !155 {
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !156
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %class.SimTime, align 8
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = alloca %class.SimTime, align 8
  %9 = alloca %class.SimTime, align 8
  %10 = alloca %class.SimTime, align 8
  %11 = alloca %class.SimTime, align 8
  %12 = alloca %class.SimTime, align 8
  %13 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !151
  %15 = and i16 %14, 128
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %148, !prof !160

17:                                               ; preds = %3
  %18 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 5
  %19 = tail call noundef zeroext i1 @_ZNK7SimTimegtERKS_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  br i1 %19, label %20, label %49, !prof !161

20:                                               ; preds = %17
  %21 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  %22 = load ptr, ptr %1, align 8, !tbaa !118
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
          to label %26 unwind label %41

26:                                               ; preds = %20
  %27 = load ptr, ptr %1, align 8, !tbaa !118
  %28 = getelementptr inbounds ptr, ptr %27, i64 7
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
          to label %31 unwind label %41

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %32 = tail call noundef ptr @_ZNK8cChannel13getSourceGateEv(ptr noundef nonnull align 8 dereferenceable(116) %0) #16
  %33 = load ptr, ptr %32, align 8, !tbaa !118
  %34 = getelementptr inbounds ptr, ptr %33, i64 8
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %32) #16
          to label %36 unwind label %43

36:                                               ; preds = %31
  %37 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %21, ptr noundef nonnull @.str.10, ptr noundef %25, ptr noundef %30, ptr noundef %37) #16
          to label %40 unwind label %38

38:                                               ; preds = %36
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br label %47

40:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
          to label %152 unwind label %45

41:                                               ; preds = %20, %26
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %47

43:                                               ; preds = %31
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br label %47

45:                                               ; preds = %40
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br label %150

47:                                               ; preds = %38, %43, %41
  %48 = phi { ptr, i32 } [ %42, %41 ], [ %44, %43 ], [ %39, %38 ]
  call void @__cxa_free_exception(ptr %21) #17
  br label %150

49:                                               ; preds = %17
  %50 = tail call noundef ptr @_ZNK8cChannel13getSourceGateEv(ptr noundef nonnull align 8 dereferenceable(116) %0) #16
  %51 = tail call noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %50) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef 0.000000e+00) #16
  %52 = load i16, ptr %13, align 8, !tbaa !151
  %53 = and i16 %52, 512
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %87, label %55, !prof !160

55:                                               ; preds = %49
  %56 = load ptr, ptr %1, align 8, !tbaa !118
  %57 = getelementptr inbounds ptr, ptr %56, i64 24
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef zeroext i1 %58(ptr noundef nonnull align 8 dereferenceable(160) %1) #16
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @_ZNK7cPacket11getDurationEv(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %6, ptr noundef nonnull align 8 dereferenceable(186) %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  %61 = call noundef zeroext i1 @_ZNK7SimTimeneERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br i1 %61, label %62, label %77

62:                                               ; preds = %60
  %63 = call ptr @__cxa_allocate_exception(i64 128) #17
  %64 = load ptr, ptr %1, align 8, !tbaa !118
  %65 = getelementptr inbounds ptr, ptr %64, i64 5
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
          to label %68 unwind label %75

68:                                               ; preds = %62
  %69 = load ptr, ptr %1, align 8, !tbaa !118
  %70 = getelementptr inbounds ptr, ptr %69, i64 6
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(20) %1) #16
          to label %73 unwind label %75

73:                                               ; preds = %68
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %63, ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef %67, ptr noundef %72) #16
          to label %74 unwind label %75

74:                                               ; preds = %73
  call void @__cxa_throw(ptr nonnull %63, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

75:                                               ; preds = %73, %68, %62
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %63) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %150

77:                                               ; preds = %60
  %78 = call noundef i64 @_ZNK7cPacket12getBitLengthEv(ptr noundef nonnull align 8 dereferenceable(186) %1) #16
  %79 = sitofp i64 %78 to double
  %80 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 2
  %81 = load double, ptr %80, align 8, !tbaa !130
  %82 = fdiv double %79, %81
  %83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %82) #16
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @_ZN7cPacket11setDurationE7SimTime(ptr noundef nonnull align 8 dereferenceable(186) %1, ptr noundef nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @_ZplRK7SimTimeS1_(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  br label %89

85:                                               ; preds = %55
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  br label %89

87:                                               ; preds = %49
  %88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  br label %89

89:                                               ; preds = %77, %85, %87
  %90 = load i16, ptr %13, align 8, !tbaa !151
  %91 = and i16 %90, 256
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %97, label %93, !prof !160

93:                                               ; preds = %89
  %94 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 1
  %95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimepLERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %94) #16
  %96 = load i16, ptr %13, align 8, !tbaa !151
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i16 [ %96, %93 ], [ %90, %89 ]
  %99 = and i16 %98, 3072
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %131, label %101, !prof !160

101:                                              ; preds = %97
  %102 = load ptr, ptr %1, align 8, !tbaa !118
  %103 = getelementptr inbounds ptr, ptr %102, i64 24
  %104 = load ptr, ptr %103, align 8
  %105 = call noundef zeroext i1 %104(ptr noundef nonnull align 8 dereferenceable(160) %1) #16
  br i1 %105, label %106, label %131

106:                                              ; preds = %101
  %107 = load i16, ptr %13, align 8, !tbaa !151
  %108 = and i16 %107, 1024
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %106
  %111 = call noundef double @_Z7dblrandv() #16
  %112 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 3
  %113 = load double, ptr %112, align 8, !tbaa !143
  %114 = fsub double 1.000000e+00, %113
  %115 = call noundef i64 @_ZNK7cPacket12getBitLengthEv(ptr noundef nonnull align 8 dereferenceable(186) %1) #16
  %116 = sitofp i64 %115 to double
  %117 = call double @pow(double noundef %114, double noundef %116) #20
  %118 = fsub double 1.000000e+00, %117
  %119 = fcmp olt double %111, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  call void @_ZN7cPacket11setBitErrorEb(ptr noundef nonnull align 8 dereferenceable(186) %1, i1 noundef zeroext true) #16
  br label %121

121:                                              ; preds = %110, %120, %106
  %122 = load i16, ptr %13, align 8, !tbaa !151
  %123 = and i16 %122, 2048
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = call noundef double @_Z7dblrandv() #16
  %127 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 4
  %128 = load double, ptr %127, align 8, !tbaa !144
  %129 = fcmp olt double %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  call void @_ZN7cPacket11setBitErrorEb(ptr noundef nonnull align 8 dereferenceable(186) %1, i1 noundef zeroext true) #16
  br label %131

131:                                              ; preds = %121, %130, %125, %101, %97
  %132 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #16
  %133 = getelementptr inbounds %class.cEnvir, ptr %132, i64 0, i32 2
  %134 = load i8, ptr %133, align 1, !tbaa !162, !range !166, !noundef !167
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %143, !prof !160

136:                                              ; preds = %131
  %137 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #16
  %138 = call noundef ptr @_ZNK8cChannel13getSourceGateEv(ptr noundef nonnull align 8 dereferenceable(116) %0) #16
  %139 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 1
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %139) #16
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %140 = load ptr, ptr %137, align 8, !tbaa !118
  %141 = getelementptr inbounds ptr, ptr %140, i64 13
  %142 = load ptr, ptr %141, align 8
  call void %142(ptr noundef nonnull align 8 dereferenceable(288) %137, ptr noundef %1, ptr noundef %138, ptr noundef nonnull %10, ptr noundef nonnull %11) #16
  br label %143

143:                                              ; preds = %131, %136
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %144 = load ptr, ptr %51, align 8, !tbaa !118
  %145 = getelementptr inbounds ptr, ptr %144, i64 19
  %146 = load ptr, ptr %145, align 8
  %147 = call noundef zeroext i1 %146(ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef %1, ptr noundef nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br label %148

148:                                              ; preds = %3, %143
  %149 = phi i1 [ %147, %143 ], [ false, %3 ]
  ret i1 %149

150:                                              ; preds = %45, %47, %75
  %151 = phi { ptr, i32 } [ %48, %47 ], [ %46, %45 ], [ %76, %75 ]
  resume { ptr, i32 } %151

152:                                              ; preds = %40
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7SimTimegtERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !168 {
  %3 = load i64, ptr %0, align 8, !tbaa !123
  %4 = load i64, ptr %1, align 8, !tbaa !123
  %5 = icmp sgt i64 %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8cChannel13getSourceGateEv(ptr noundef nonnull align 8 dereferenceable(116) %0) local_unnamed_addr #5 comdat align 2 !prof !169 {
  %2 = getelementptr inbounds %class.cChannel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !171 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK7cPacket11getDurationEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(186) %1) local_unnamed_addr #4 comdat align 2 !prof !174 {
  %3 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 2
  tail call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !175 {
  tail call void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #16
  %3 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !176
  %4 = fmul double %3, %1
  %5 = tail call noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %4) #16
  store i64 %5, ptr %0, align 8, !tbaa !123
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7cPacket11setDurationE7SimTime(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !174 {
  %3 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !177 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZplRK7SimTimeS1_(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat !prof !178 {
  %4 = alloca %class.SimTime, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimepLERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !179 {
  %3 = load i64, ptr %1, align 8, !tbaa !123
  store i64 %3, ptr %0, align 8, !tbaa !123
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimepLERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !180 {
  tail call void @_ZN7SimTime10checkedAddERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_Z7dblrandv() local_unnamed_addr #4 comdat !prof !129 {
  %1 = tail call noundef ptr @_Z18__contextModuleRNGi(i32 noundef 0) #16
  %2 = load ptr, ptr %1, align 8, !tbaa !118
  %3 = getelementptr inbounds ptr, ptr %2, i64 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef double %4(ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  ret double %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7cPacket11setBitErrorEb(ptr noundef nonnull align 8 dereferenceable(186) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !129 {
  tail call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 8, i1 noundef zeroext %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #5 comdat align 2 !prof !181 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !182
  ret ptr %1
}

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cDefaultList18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cDefaultList14yieldOwnershipEP12cOwnedObjectP7cObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #5 comdat align 2 !prof !183 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.16, ptr %3, !prof !185
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !186 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK23cNoncopyableOwnedObject3dupEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cDefaultList4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cDefaultList4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN8cChannel10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN8cChannel12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 !prof !187 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 !prof !189 {
  ret i1 true
}

; Function Attrs: optsize
declare void @_ZN8cChannel12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #5 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !151
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cDefaultList11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 !prof !129 {
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12cDefaultList17setPerformFinalGCEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) unnamed_addr #5 comdat align 2 !prof !129 {
  tail call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 2, i1 noundef zeroext %1) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN10cComponent16setComponentTypeEP14cComponentType(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10cComponent6addParEP8cParImpl(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10cComponent25recordParametersAsScalarsEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cComponent10initializeEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 !prof !190 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8, !prof !191

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !118
  %6 = getelementptr inbounds ptr, ptr %5, i64 30
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(104) %0) #16
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cComponent13numInitStagesEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !192 {
  ret i32 1
}

; Function Attrs: optsize
declare void @_ZN10cComponent10initializeEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10cComponent6finishEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK8cChannel13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10cComponent14getNedTypeNameEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cComponent8isModuleEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !129 {
  ret i1 false
}

; Function Attrs: optsize
declare noundef ptr @_ZNK8cChannel15getParentModuleEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN8cChannel14callInitializeEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN8cChannel14callInitializeEi(ptr noundef nonnull align 8 dereferenceable(116), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN8cChannel10callFinishEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cComponent12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !193 {
  %2 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !194
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN10cComponent3parEi(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN10cComponent3parEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK10cComponent7findParEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN8cChannel17initializeChannelEi(ptr noundef nonnull align 8 dereferenceable(116), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16cDatarateChannel21isTransmissionChannelEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #5 comdat align 2 !prof !195 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK16cDatarateChannel25getTransmissionFinishTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #4 comdat align 2 !prof !129 {
  %3 = getelementptr inbounds %class.cDatarateChannel, ptr %1, i64 0, i32 5
  tail call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16cDatarateChannel6isBusyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 !prof !129 {
  %2 = alloca %class.SimTime, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @_Z7simTimev(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %2) #16
  %3 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 5
  %4 = call noundef zeroext i1 @_ZNK7SimTimeltERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK16cDatarateChannel8getDelayEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #4 comdat align 2 !prof !129 {
  tail call void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #16
  %3 = getelementptr inbounds %class.cDatarateChannel, ptr %1, i64 0, i32 1
  tail call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK16cDatarateChannel11getDatarateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 !prof !129 {
  tail call void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #16
  %2 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 2
  %3 = load double, ptr %2, align 8, !tbaa !130
  ret double %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK16cDatarateChannel15getBitErrorRateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 !prof !129 {
  tail call void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #16
  %2 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 3
  %3 = load double, ptr %2, align 8, !tbaa !143
  ret double %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK16cDatarateChannel18getPacketErrorRateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 !prof !129 {
  tail call void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #16
  %2 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 4
  %3 = load double, ptr %2, align 8, !tbaa !144
  ret double %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16cDatarateChannel10isDisabledEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 !prof !129 {
  tail call void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #16
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !151
  %4 = and i16 %3, 128
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef nonnull ptr @_ZL15__uniquename_36v() #4 personality ptr @__gxx_personality_v0 !prof !121 !PGOFuncName !196 {
  %1 = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #18
  invoke void @_ZN16cDatarateChannelC2EPKc(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef null) #16
          to label %2 unwind label %3

2:                                                ; preds = %0
  ret ptr %1

3:                                                ; preds = %0
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %1) #19
  resume { ptr, i32 } %4
}

; Function Attrs: optsize
declare void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef double @_ZNK4cPar11doubleValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !116 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !118
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !116 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #18
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #16
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #19
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !197
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !129 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #16
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13) #16
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #16
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !116 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !202, !range !166, !noundef !167
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !203
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !204 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !205 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #16
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #16
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !206 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !207 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #16
  store i64 %6, ptr %4, align 8, !tbaa !128
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !208

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #16
  %10 = load i64, ptr %4, align 8, !tbaa !128
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #16
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #20
  store ptr null, ptr %5, align 8, !tbaa !209
  %15 = load i64, ptr %4, align 8, !tbaa !128
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #16
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !207 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !182
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #16
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !207 {
  store ptr %1, ptr %0, align 8, !tbaa !209
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !207 {
  %2 = load ptr, ptr %0, align 8, !tbaa !209
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !211

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #23
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !207 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !207 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK4cPar9boolValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !175 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !212
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !213

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #16
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !214 {
  %3 = tail call double @llvm.fabs.f64(double %1)
  %4 = fcmp ogt double %3, 0x43DFFFFFFFFFEDC8
  br i1 %4, label %5, label %6, !prof !215

5:                                                ; preds = %2
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #16
  br label %6

6:                                                ; preds = %5, %2
  %7 = fptosi double %1 to i64
  ret i64 %7
}

; Function Attrs: optsize
declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: optsize
declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime10checkedAddERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !180 {
  %3 = load i64, ptr %0, align 8, !tbaa !123
  %4 = load i64, ptr %1, align 8, !tbaa !123
  %5 = tail call noundef zeroext i1 @_ZN7SimTime12haveSameSignEll(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %3, i64 noundef %4) #16
  %6 = load i64, ptr %1, align 8, !tbaa !123
  %7 = load i64, ptr %0, align 8, !tbaa !123
  %8 = add nsw i64 %7, %6
  store i64 %8, ptr %0, align 8, !tbaa !123
  br i1 %5, label %9, label %13, !prof !216

9:                                                ; preds = %2
  %10 = load i64, ptr %1, align 8, !tbaa !123
  %11 = tail call noundef zeroext i1 @_ZN7SimTime12haveSameSignEll(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %8, i64 noundef %10) #16
  br i1 %11, label %13, label %12, !prof !216

12:                                               ; preds = %9
  tail call void @_ZN7SimTime14overflowAddingERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  br label %13

13:                                               ; preds = %12, %9, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7SimTime12haveSameSignEll(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !217 {
  %4 = xor i64 %2, %1
  %5 = icmp sgt i64 %4, -1
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN7SimTime14overflowAddingERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z18__contextModuleRNGi(i32 noundef %0) local_unnamed_addr #4 comdat !prof !218 {
  %2 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #16
  %3 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !219

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #16
  %7 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %6) #16
  %8 = tail call noundef ptr @_ZNK10cComponent6getRNGEi(ptr noundef nonnull align 8 dereferenceable(104) %7, i32 noundef %0) #16
  br label %15

9:                                                ; preds = %1
  %10 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #16
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  %12 = getelementptr inbounds ptr, ptr %11, i64 41
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(288) %10, i32 noundef %0) #16
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi ptr [ %8, %5 ], [ %14, %9 ]
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation19getActiveSimulationEv() local_unnamed_addr #5 comdat align 2 !prof !220 {
  %1 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !182
  ret ptr %1
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cComponent6getRNGEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !218 {
  %3 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #16
  %4 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !221
  %6 = sext i16 %5 to i32
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %14, !prof !219

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !222
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !212
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i32 [ %13, %8 ], [ %1, %2 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !118
  %17 = getelementptr inbounds ptr, ptr %16, i64 41
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(288) %3, i32 noundef %15) #16
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_Z7simTimev(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0) local_unnamed_addr #4 comdat !prof !223 {
  %2 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #16
  tail call void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #4 comdat align 2 !prof !224 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %1, i64 0, i32 12
  tail call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = tail call noundef zeroext i1 @_ZNK10cComponent19parametersFinalizedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #16
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull %0, i32 noundef 34) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #17
  resume { ptr, i32 } %7

8:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cComponent19parametersFinalizedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !225 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !151
  %4 = and i16 %3, 4
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime5checkIiEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !127 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !212
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %7, !prof !226

5:                                                ; preds = %2
  %6 = sitofp i32 %1 to double
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %6) #16
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cdataratechannel.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { builtin optsize allocsize(0) }
attributes #19 = { builtin nounwind optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { noreturn }
attributes #22 = { noreturn optsize }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!115}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_36Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_36Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_36Ev, ptr @_Z12opp_typenameRKSt9type_info, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_36Ev, ptr @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_, i64 1}
!39 = !{ptr @_ZN16cDatarateChannelC2EPKc, ptr @_ZN8cChannelC2EPKc, i64 9762}
!40 = !{ptr @_ZN16cDatarateChannelC2EPKc, ptr @_ZN7SimTimeC2Ev, i64 19524}
!41 = !{ptr @_ZN16cDatarateChannelC2EPKc, ptr @_ZN7SimTimeaSIiEERKS_T_, i64 19524}
!42 = !{ptr @_ZN7SimTimeaSIiEERKS_T_, ptr @_ZN7SimTime5checkIiEEvT_, i64 375812855}
!43 = !{ptr @_ZN7SimTimeaSIiEERKS_T_, ptr @_ZN7SimTime7toInt64Ed, i64 375812855}
!44 = !{ptr @_ZN16cDatarateChannelD2Ev, ptr @_ZN8cChannelD2Ev, i64 9762}
!45 = !{ptr @_ZN16cDatarateChannel18finalizeParametersEv, ptr @_ZN8cChannel18finalizeParametersEv, i64 9762}
!46 = !{ptr @_ZN16cDatarateChannel18finalizeParametersEv, ptr @_ZN16cDatarateChannel10rereadParsEv, i64 9762}
!47 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZN7SimTimeaSERK4cPar, i64 9762}
!48 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZNK4cParcvdEv, i64 29286}
!49 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZN7SimTimeC2Ed, i64 19518}
!50 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZNK7SimTimeltERKS_, i64 9762}
!51 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @__cxa_allocate_exception, i64 6}
!52 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZNK7SimTime3strB5cxx11Ev, i64 1}
!53 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @__cxa_free_exception, i64 3}
!54 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 5}
!55 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @__cxa_throw, i64 2}
!56 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZNK4cParcvbEv, i64 9756}
!57 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZN12cNamedObject7setFlagEib, i64 48780}
!58 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZNK7SimTimeneERKS_, i64 9756}
!59 = !{ptr @_ZNK4cParcvdEv, ptr @_ZNK4cPar11doubleValueEv, i64 39294}
!60 = !{ptr @_ZN7SimTimeC2Ed, ptr @_ZN7SimTimeaSEd, i64 980188428}
!61 = !{ptr @_ZNK4cParcvbEv, ptr @_ZNK4cPar9boolValueEv, i64 45256}
!62 = !{ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @_ZNK7SimTimegtERKS_, i64 107255798}
!63 = !{ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @__cxa_allocate_exception, i64 1}
!64 = !{ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @__cxa_free_exception, i64 1}
!65 = !{ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @_ZNK8cChannel13getSourceGateEv, i64 214511593}
!66 = !{ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @_ZNK5cGate11getNextGateEv, i64 107255797}
!67 = !{ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @_ZN7SimTimeC2Ed, i64 107255797}
!68 = !{ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @_ZN7SimTimeaSERKS_, i64 107255796}
!69 = !{ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @_ZN7SimTimepLERKS_, i64 1}
!70 = !{ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 214511593}
!71 = !{ptr @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime, ptr @_ZN7SimTimeC2ERKS_, i64 321767389}
!72 = !{ptr @_ZNK7cPacket11getDurationEv, ptr @_ZN7SimTimeC2ERKS_, i64 202379265}
!73 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime5checkIdEEvT_, i64 980215783}
!74 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime7toInt64Ed, i64 980215783}
!75 = !{ptr @_ZN7cPacket11setDurationE7SimTime, ptr @_ZN7SimTimeaSERKS_, i64 202379265}
!76 = !{ptr @_ZN7SimTimeC2ERKS_, ptr @_ZN7SimTimeaSERKS_, i64 57319387120}
!77 = !{ptr @_ZplRK7SimTimeS1_, ptr @_ZN7SimTimeC2ERKS_, i64 1723674912}
!78 = !{ptr @_ZplRK7SimTimeS1_, ptr @_ZN7SimTimepLERKS_, i64 861837456}
!79 = !{ptr @_ZN7SimTimepLERKS_, ptr @_ZN7SimTime10checkedAddERKS_, i64 980888442}
!80 = !{ptr @_ZL15__uniquename_36v, ptr @_Znwm, i64 9762}
!81 = !{ptr @_ZL15__uniquename_36v, ptr @_ZN16cDatarateChannelC2EPKc, i64 9762}
!82 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!83 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!84 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!85 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!86 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!87 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!88 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!89 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!90 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!91 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!92 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!93 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!94 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!95 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!96 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!97 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!98 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!99 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!100 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!101 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!102 = !{ptr @_ZN7SimTime5checkIdEEvT_, ptr @_ZN7SimTime9initErrorEd, i64 1}
!103 = !{ptr @_ZN7SimTime7toInt64Ed, ptr @_ZN7SimTime10rangeErrorEd, i64 1}
!104 = !{ptr @_ZN7SimTime10checkedAddERKS_, ptr @_ZN7SimTime12haveSameSignEll, i64 1961776883}
!105 = !{ptr @_ZN7SimTime10checkedAddERKS_, ptr @_ZN7SimTime14overflowAddingERKS_, i64 1}
!106 = !{ptr @_Z18__contextModuleRNGi, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 424027}
!107 = !{ptr @_Z18__contextModuleRNGi, ptr @_ZNK11cSimulation16getContextModuleEv, i64 424027}
!108 = !{ptr @_Z18__contextModuleRNGi, ptr @_ZNK10cComponent6getRNGEi, i64 212013}
!109 = !{ptr @_Z18__contextModuleRNGi, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 1}
!110 = !{ptr @_ZNK10cComponent6getRNGEi, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 212014}
!111 = !{ptr @_Z7simTimev, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 1685490447}
!112 = !{ptr @_Z7simTimev, ptr @_ZNK11cSimulation10getSimTimeEv, i64 1685490447}
!113 = !{ptr @_ZNK11cSimulation10getSimTimeEv, ptr @_ZN7SimTimeC2ERKS_, i64 3302180619}
!114 = !{ptr @_ZN7SimTime5checkIiEEvT_, ptr @_ZN7SimTime9initErrorEd, i64 1}
!115 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!116 = !{!"function_entry_count", i64 1}
!117 = !{!"cdataratechannel.cc:_ZN12_GLOBAL__N_119__onstartup_func_36Ev"}
!118 = !{!119, !119, i64 0}
!119 = !{!"vtable pointer", !120, i64 0}
!120 = !{!"Simple C++ TBAA"}
!121 = !{!"function_entry_count", i64 9762}
!122 = !{!"function_entry_count", i64 1143690745}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTS7SimTime", !125, i64 0}
!125 = !{!"long", !126, i64 0}
!126 = !{!"omnipotent char", !120, i64 0}
!127 = !{!"function_entry_count", i64 375812855}
!128 = !{!125, !125, i64 0}
!129 = !{!"function_entry_count", i64 0}
!130 = !{!131, !142, i64 128}
!131 = !{!"_ZTS16cDatarateChannel", !132, i64 0, !124, i64 120, !142, i64 128, !142, i64 136, !142, i64 144, !124, i64 152}
!132 = !{!"_ZTS8cChannel", !133, i64 0, !139, i64 104, !141, i64 112}
!133 = !{!"_ZTS10cComponent", !134, i64 0, !139, i64 56, !140, i64 64, !139, i64 72, !140, i64 80, !140, i64 82, !139, i64 88, !139, i64 96}
!134 = !{!"_ZTS12cDefaultList", !135, i64 0, !139, i64 40, !141, i64 48, !141, i64 52}
!135 = !{!"_ZTS23cNoncopyableOwnedObject", !136, i64 0}
!136 = !{!"_ZTS12cOwnedObject", !137, i64 0, !139, i64 24, !141, i64 32}
!137 = !{!"_ZTS12cNamedObject", !138, i64 0, !139, i64 8, !140, i64 16, !140, i64 18}
!138 = !{!"_ZTS7cObject"}
!139 = !{!"any pointer", !126, i64 0}
!140 = !{!"short", !126, i64 0}
!141 = !{!"int", !126, i64 0}
!142 = !{!"double", !126, i64 0}
!143 = !{!131, !142, i64 136}
!144 = !{!131, !142, i64 144}
!145 = !{!"branch_weights", i32 1, i32 9763}
!146 = !{!"branch_weights", i32 19527, i32 95316169}
!147 = !{!"function_entry_count", i64 39294}
!148 = !{!"function_entry_count", i64 14452750896}
!149 = !{!"function_entry_count", i64 980188428}
!150 = !{!"function_entry_count", i64 202993470}
!151 = !{!137, !140, i64 16}
!152 = !{!"branch_weights", i32 380268, i32 202613204}
!153 = !{!"function_entry_count", i64 45256}
!154 = !{!"function_entry_count", i64 467322366}
!155 = !{!"function_entry_count", i64 300053514}
!156 = !{!157, !125, i64 160}
!157 = !{!"_ZTS7cPacket", !158, i64 0, !125, i64 160, !124, i64 168, !139, i64 176, !140, i64 184}
!158 = !{!"_ZTS8cMessage", !136, i64 0, !140, i64 36, !140, i64 38, !140, i64 40, !139, i64 48, !139, i64 56, !139, i64 64, !141, i64 72, !141, i64 76, !141, i64 80, !141, i64 84, !124, i64 88, !124, i64 96, !124, i64 104, !124, i64 112, !141, i64 120, !125, i64 128, !125, i64 136, !125, i64 144, !125, i64 152}
!159 = !{!"function_entry_count", i64 107255799}
!160 = !{!"branch_weights", i32 107255800, i32 1}
!161 = !{!"branch_weights", i32 1, i32 107255800}
!162 = !{!163, !164, i64 9}
!163 = !{!"_ZTS6cEnvir", !164, i64 8, !164, i64 9, !164, i64 10, !165, i64 16}
!164 = !{!"bool", !126, i64 0}
!165 = !{!"_ZTSSo"}
!166 = !{i8 0, i8 2}
!167 = !{}
!168 = !{!"function_entry_count", i64 10862418302}
!169 = !{!"function_entry_count", i64 214511598}
!170 = !{!132, !139, i64 104}
!171 = !{!"function_entry_count", i64 309856362}
!172 = !{!173, !139, i64 40}
!173 = !{!"_ZTS5cGate", !138, i64 0, !139, i64 8, !141, i64 16, !139, i64 24, !139, i64 32, !139, i64 40}
!174 = !{!"function_entry_count", i64 202379265}
!175 = !{!"function_entry_count", i64 980215783}
!176 = !{!142, !142, i64 0}
!177 = !{!"function_entry_count", i64 57319387120}
!178 = !{!"function_entry_count", i64 861837456}
!179 = !{!"function_entry_count", i64 61624744013}
!180 = !{!"function_entry_count", i64 980888442}
!181 = !{!"function_entry_count", i64 21674314260}
!182 = !{!139, !139, i64 0}
!183 = !{!"function_entry_count", i64 192538233}
!184 = !{!137, !139, i64 8}
!185 = !{!"branch_weights", i32 1, i32 192538234}
!186 = !{!"function_entry_count", i64 235321}
!187 = !{!"function_entry_count", i64 542987320}
!188 = !{!136, !139, i64 24}
!189 = !{!"function_entry_count", i64 147484992}
!190 = !{!"function_entry_count", i64 34261}
!191 = !{!"branch_weights", i32 34262, i32 1}
!192 = !{!"function_entry_count", i64 58760}
!193 = !{!"function_entry_count", i64 420856}
!194 = !{!133, !140, i64 82}
!195 = !{!"function_entry_count", i64 26286}
!196 = !{!"cdataratechannel.cc:_ZL15__uniquename_36v"}
!197 = !{!198, !141, i64 8}
!198 = !{!"_ZTS10cException", !199, i64 0, !141, i64 8, !200, i64 16, !164, i64 48, !200, i64 56, !200, i64 88, !141, i64 120}
!199 = !{!"_ZTSSt9exception"}
!200 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !201, i64 0, !125, i64 8, !126, i64 16}
!201 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !139, i64 0}
!202 = !{!198, !164, i64 48}
!203 = !{!198, !141, i64 120}
!204 = !{!"function_entry_count", i64 2}
!205 = !{!"function_entry_count", i64 2107073}
!206 = !{!"function_entry_count", i64 1891507}
!207 = !{!"function_entry_count", i64 1889443}
!208 = !{!"branch_weights", i32 1257663, i32 631782}
!209 = !{!210, !139, i64 0}
!210 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !139, i64 0}
!211 = !{!"branch_weights", i32 1889444, i32 1}
!212 = !{!141, !141, i64 0}
!213 = !{!"branch_weights", i32 1, i32 980215784}
!214 = !{!"function_entry_count", i64 1656274258}
!215 = !{!"branch_weights", i32 1, i32 1656274259}
!216 = !{!"branch_weights", i32 980888443, i32 1}
!217 = !{!"function_entry_count", i64 2128947779}
!218 = !{!"function_entry_count", i64 212014}
!219 = !{!"branch_weights", i32 1, i32 212015}
!220 = !{!"function_entry_count", i64 5379836753}
!221 = !{!133, !140, i64 64}
!222 = !{!133, !139, i64 72}
!223 = !{!"function_entry_count", i64 1685490447}
!224 = !{!"function_entry_count", i64 3302180619}
!225 = !{!"function_entry_count", i64 215798}
!226 = !{!"branch_weights", i32 1, i32 375812856}
