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
%class.cChannel = type <{ %class.cComponent, ptr, i32, [4 x i8] }>
%class.cGate = type { %class.cObject, ptr, i32, ptr, ptr, ptr }
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }

$_ZN7SimTimeaSEd = comdat any

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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNK16cDatarateChannel10checkStateEv = comdat any

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
@.str.14 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cdataratechannel.cc, ptr null }]

@_ZN16cDatarateChannelC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16cDatarateChannelC2EPKc
@_ZN16cDatarateChannelD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16cDatarateChannelD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_36Ev() #3 personality ptr @__gxx_personality_v0 !prof !57 !PGOFuncName !58 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes)
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #22
  %3 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI16cDatarateChannel)
          to label %4 unwind label %9, !prof !59

4:                                                ; preds = %0
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef nonnull @_ZL15__uniquename_36v, ptr noundef null)
          to label %5 unwind label %9, !prof !59

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 8, !tbaa !60
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !63
  ret void

9:                                                ; preds = %4, %0
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #23
  resume { ptr, i32 } %10
}

declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16cDatarateChannelC2EPKc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN8cChannelC2EPKc(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [63 x ptr] }, ptr @_ZTV16cDatarateChannel, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 1
  store i64 0, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 5
  store i64 0, ptr %4, align 8, !tbaa !65
  %5 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !69
  %6 = icmp eq i32 %5, 65535
  br i1 %6, label %7, label %8, !prof !71

7:                                                ; preds = %2
  invoke void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef 0.000000e+00)
          to label %8 unwind label %13

8:                                                ; preds = %7, %2
  store i64 0, ptr %4, align 8, !tbaa !65
  %9 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !69
  %10 = icmp eq i32 %9, 65535
  br i1 %10, label %11, label %12, !prof !71

11:                                               ; preds = %8
  invoke void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
          to label %12 unwind label %13

12:                                               ; preds = %11, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  ret void

13:                                               ; preds = %11, %7
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8cChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #24
  resume { ptr, i32 } %14
}

declare void @_ZN8cChannelC2EPKc(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN8cChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN16cDatarateChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #5 align 2 !prof !64 {
  tail call void @_ZN8cChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN16cDatarateChannelD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 align 2 !prof !72 {
  tail call void @_ZN8cChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN16cDatarateChannel6createEPKc(ptr noundef %0) local_unnamed_addr #3 align 2 !prof !64 {
  %2 = tail call noundef ptr @_ZN12cChannelType22getDatarateChannelTypeEv()
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 32
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @__dynamic_cast(ptr nonnull %6, ptr nonnull @_ZTI8cChannel, ptr nonnull @_ZTI16cDatarateChannel, i64 0) #24
  br label %10

10:                                               ; preds = %1, %8
  %11 = phi ptr [ %9, %8 ], [ null, %1 ]
  ret ptr %11
}

declare noundef ptr @_ZN12cChannelType22getDatarateChannelTypeEv() local_unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK16cDatarateChannel4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #3 align 2 !prof !64 {
  tail call void @_ZNK8cChannel4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %1)
  ret void
}

declare void @_ZNK8cChannel4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16cDatarateChannel18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 align 2 !prof !72 {
  tail call void @_ZN8cChannel18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(116) %0)
  tail call void @_ZN16cDatarateChannel10rereadParsEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  ret void
}

declare void @_ZN8cChannel18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16cDatarateChannel10rereadParsEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = alloca %class.SimTime, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %class.SimTime, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds ptr, ptr %5, i64 43
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(24) ptr %7(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str), !prof !73
  %9 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 1
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERK4cPar(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %8)
  %11 = load ptr, ptr %0, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 43
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(24) ptr %13(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.2), !prof !73
  %15 = tail call noundef double @_ZNK4cPar11doubleValueEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
  %16 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 2
  store double %15, ptr %16, align 8, !tbaa !74
  %17 = load ptr, ptr %0, align 8, !tbaa !60
  %18 = getelementptr inbounds ptr, ptr %17, i64 43
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(24) ptr %19(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.3), !prof !73
  %21 = tail call noundef double @_ZNK4cPar11doubleValueEv(ptr noundef nonnull align 8 dereferenceable(24) %20)
  %22 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 3
  store double %21, ptr %22, align 8, !tbaa !86
  %23 = load ptr, ptr %0, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 43
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef nonnull align 8 dereferenceable(24) ptr %25(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.4), !prof !73
  %27 = tail call noundef double @_ZNK4cPar11doubleValueEv(ptr noundef nonnull align 8 dereferenceable(24) %26)
  %28 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 4
  store double %27, ptr %28, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %29 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !69
  %30 = icmp eq i32 %29, 65535
  br i1 %30, label %31, label %32, !prof !88

31:                                               ; preds = %1
  call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef 0.000000e+00)
  br label %32

32:                                               ; preds = %31, %1
  %33 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !89
  %34 = fmul double %33, 0.000000e+00
  %35 = call double @llvm.fabs.f64(double %34)
  %36 = fcmp ogt double %35, 0x43DFFFFFFFFFEDC8
  br i1 %36, label %37, label %38, !prof !88

37:                                               ; preds = %32
  call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %34)
  br label %38

38:                                               ; preds = %32, %37
  %39 = fptosi double %34 to i64
  store i64 %39, ptr %2, align 8, !tbaa !65
  %40 = load i64, ptr %9, align 8, !tbaa !65
  %41 = icmp slt i64 %40, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  br i1 %41, label %42, label %63, !prof !71

42:                                               ; preds = %38
  %43 = call ptr @__cxa_allocate_exception(i64 128) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  invoke void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %44 unwind label %47

44:                                               ; preds = %42
  %45 = load ptr, ptr %3, align 8, !tbaa !90
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %43, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %45)
          to label %46 unwind label %49

46:                                               ; preds = %44
  invoke void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
          to label %161 unwind label %49

47:                                               ; preds = %42
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %60

49:                                               ; preds = %46, %44
  %50 = phi i1 [ false, %46 ], [ true, %44 ]
  %51 = landingpad { ptr, i32 }
          cleanup
  %52 = load ptr, ptr %3, align 8, !tbaa !90
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !93
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  br label %60

59:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %52) #23
  br label %60

60:                                               ; preds = %59, %55, %47
  %61 = phi { ptr, i32 } [ %48, %47 ], [ %51, %55 ], [ %51, %59 ]
  %62 = phi i1 [ true, %47 ], [ %50, %55 ], [ %50, %59 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  br i1 %62, label %156, label %159

63:                                               ; preds = %38
  %64 = load double, ptr %16, align 8, !tbaa !74
  %65 = fcmp olt double %64, 0.000000e+00
  br i1 %65, label %66, label %72, !prof !71

66:                                               ; preds = %63
  %67 = call ptr @__cxa_allocate_exception(i64 128) #24
  %68 = load double, ptr %16, align 8, !tbaa !74
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %67, ptr noundef nonnull %0, ptr noundef nonnull @.str.6, double noundef %68)
          to label %69 unwind label %70

69:                                               ; preds = %66
  call void @__cxa_throw(ptr nonnull %67, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

70:                                               ; preds = %66
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %156

72:                                               ; preds = %63
  %73 = load double, ptr %22, align 8, !tbaa !86
  %74 = fcmp olt double %73, 0.000000e+00
  %75 = fcmp ogt double %73, 1.000000e+00
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %83, !prof !71

77:                                               ; preds = %72
  %78 = call ptr @__cxa_allocate_exception(i64 128) #24
  %79 = load double, ptr %22, align 8, !tbaa !86
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %78, ptr noundef nonnull %0, ptr noundef nonnull @.str.7, double noundef %79)
          to label %80 unwind label %81

80:                                               ; preds = %77
  call void @__cxa_throw(ptr nonnull %78, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

81:                                               ; preds = %77
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %156

83:                                               ; preds = %72
  %84 = load double, ptr %28, align 8, !tbaa !87
  %85 = fcmp olt double %84, 0.000000e+00
  %86 = fcmp ogt double %84, 1.000000e+00
  %87 = or i1 %85, %86
  br i1 %87, label %88, label %94, !prof !71

88:                                               ; preds = %83
  %89 = call ptr @__cxa_allocate_exception(i64 128) #24
  %90 = load double, ptr %28, align 8, !tbaa !87
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %89, ptr noundef nonnull %0, ptr noundef nonnull @.str.8, double noundef %90)
          to label %91 unwind label %92

91:                                               ; preds = %88
  call void @__cxa_throw(ptr nonnull %89, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

92:                                               ; preds = %88
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %156

94:                                               ; preds = %83
  %95 = load ptr, ptr %0, align 8, !tbaa !60
  %96 = getelementptr inbounds ptr, ptr %95, i64 43
  %97 = load ptr, ptr %96, align 8
  %98 = call noundef nonnull align 8 dereferenceable(24) ptr %97(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.9), !prof !73
  %99 = call noundef zeroext i1 @_ZNK4cPar9boolValueEv(ptr noundef nonnull align 8 dereferenceable(24) %98)
  %100 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %101 = load i16, ptr %100, align 8, !tbaa !94
  br i1 %99, label %102, label %104, !prof !71

102:                                              ; preds = %94
  %103 = or i16 %101, 128
  br label %106

104:                                              ; preds = %94
  %105 = and i16 %101, -129
  br label %106

106:                                              ; preds = %102, %104
  %107 = phi i16 [ %103, %102 ], [ %105, %104 ]
  store i16 %107, ptr %100, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %108 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !69
  %109 = icmp eq i32 %108, 65535
  br i1 %109, label %110, label %111, !prof !88

110:                                              ; preds = %106
  call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef 0.000000e+00)
  br label %111

111:                                              ; preds = %110, %106
  %112 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !89
  %113 = fmul double %112, 0.000000e+00
  %114 = call double @llvm.fabs.f64(double %113)
  %115 = fcmp ogt double %114, 0x43DFFFFFFFFFEDC8
  br i1 %115, label %116, label %117, !prof !88

116:                                              ; preds = %111
  call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %113)
  br label %117

117:                                              ; preds = %111, %116
  %118 = fptosi double %113 to i64
  store i64 %118, ptr %4, align 8, !tbaa !65
  %119 = load i64, ptr %9, align 8, !tbaa !65
  %120 = icmp eq i64 %119, %118
  %121 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %122 = load i16, ptr %121, align 8, !tbaa !94
  br i1 %120, label %125, label %123, !prof !95

123:                                              ; preds = %117
  %124 = or i16 %122, 256
  br label %127

125:                                              ; preds = %117
  %126 = and i16 %122, -257
  br label %127

127:                                              ; preds = %123, %125
  %128 = phi i16 [ %124, %123 ], [ %126, %125 ]
  store i16 %128, ptr %121, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %129 = load double, ptr %16, align 8, !tbaa !74
  %130 = fcmp une double %129, 0.000000e+00
  %131 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  br i1 %130, label %132, label %134, !prof !71

132:                                              ; preds = %127
  %133 = or i16 %128, 512
  br label %136

134:                                              ; preds = %127
  %135 = and i16 %128, -513
  br label %136

136:                                              ; preds = %132, %134
  %137 = phi i16 [ %133, %132 ], [ %135, %134 ]
  store i16 %137, ptr %131, align 8, !tbaa !94
  %138 = load double, ptr %22, align 8, !tbaa !86
  %139 = fcmp une double %138, 0.000000e+00
  %140 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  br i1 %139, label %141, label %143, !prof !71

141:                                              ; preds = %136
  %142 = or i16 %137, 1024
  br label %145

143:                                              ; preds = %136
  %144 = and i16 %137, -1025
  br label %145

145:                                              ; preds = %141, %143
  %146 = phi i16 [ %142, %141 ], [ %144, %143 ]
  store i16 %146, ptr %140, align 8, !tbaa !94
  %147 = load double, ptr %28, align 8, !tbaa !87
  %148 = fcmp une double %147, 0.000000e+00
  br i1 %148, label %149, label %151, !prof !71

149:                                              ; preds = %145
  %150 = or i16 %146, 2048
  br label %153

151:                                              ; preds = %145
  %152 = and i16 %146, -2049
  br label %153

153:                                              ; preds = %149, %151
  %154 = phi i16 [ %150, %149 ], [ %152, %151 ]
  %155 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  store i16 %154, ptr %155, align 8, !tbaa !94
  ret void

156:                                              ; preds = %60, %70, %81, %92
  %157 = phi ptr [ %89, %92 ], [ %78, %81 ], [ %67, %70 ], [ %43, %60 ]
  %158 = phi { ptr, i32 } [ %93, %92 ], [ %82, %81 ], [ %71, %70 ], [ %61, %60 ]
  call void @__cxa_free_exception(ptr %157) #24
  br label %159

159:                                              ; preds = %156, %60
  %160 = phi { ptr, i32 } [ %61, %60 ], [ %158, %156 ]
  resume { ptr, i32 } %160

161:                                              ; preds = %46
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERK4cPar(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNK7SimTime3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cDatarateChannel21handleParameterChangeEPKc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 !prof !64 {
  tail call void @_ZN16cDatarateChannel10rereadParsEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cDatarateChannel8setDelayEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef %1) unnamed_addr #3 align 2 !prof !64 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str)
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %1)
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cDatarateChannel11setDatarateEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef %1) unnamed_addr #3 align 2 !prof !64 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.2)
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cDatarateChannel15setBitErrorRateEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef %1) unnamed_addr #3 align 2 !prof !64 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.3)
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cDatarateChannel18setPacketErrorRateEd(ptr noundef nonnull align 8 dereferenceable(160) %0, double noundef %1) unnamed_addr #3 align 2 !prof !64 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.4)
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(24) %6, double noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cDatarateChannel11setDisabledEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 !prof !64 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 43
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull @.str.9)
  %7 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar12setBoolValueEb(ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %1)
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cPar12setBoolValueEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK16cDatarateChannel17calculateDurationEP8cMessage(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !64 {
  %4 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !94
  %6 = and i16 %5, 512
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 24
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(160) %2)
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %class.cPacket, ptr %2, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !96
  %16 = sitofp i64 %15 to double
  %17 = getelementptr inbounds %class.cDatarateChannel, ptr %1, i64 0, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !74
  %19 = fdiv double %16, %18
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %19)
  br label %22

21:                                               ; preds = %8, %3
  store i64 0, ptr %0, align 8, !tbaa !65
  br label %22

22:                                               ; preds = %21, %13
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN16cDatarateChannel7deliverEP8cMessage7SimTime(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %4 = alloca %class.SimTime, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = alloca %class.SimTime, align 8
  %9 = alloca %class.SimTime, align 8
  %10 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !94
  %12 = and i16 %11, 128
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %266, !prof !100

14:                                               ; preds = %3
  %15 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 5
  %16 = load i64, ptr %15, align 8, !tbaa !65
  %17 = load i64, ptr %2, align 8, !tbaa !65
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %61, !prof !101

19:                                               ; preds = %14
  %20 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  %21 = load ptr, ptr %1, align 8, !tbaa !60
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %25 unwind label %39

25:                                               ; preds = %19
  %26 = load ptr, ptr %1, align 8, !tbaa !60
  %27 = getelementptr inbounds ptr, ptr %26, i64 7
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %30 unwind label %39

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %31 = getelementptr inbounds %class.cChannel, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !102
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds ptr, ptr %33, i64 8
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %36 unwind label %41

36:                                               ; preds = %30
  %37 = load ptr, ptr %5, align 8, !tbaa !90
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull @.str.10, ptr noundef %24, ptr noundef %29, ptr noundef %37)
          to label %38 unwind label %43

38:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
          to label %270 unwind label %43

39:                                               ; preds = %25, %19
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %57

41:                                               ; preds = %30
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %54

43:                                               ; preds = %38, %36
  %44 = phi i1 [ false, %38 ], [ true, %36 ]
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load ptr, ptr %5, align 8, !tbaa !90
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !93
  %52 = icmp ult i64 %51, 16
  call void @llvm.assume(i1 %52)
  br label %54

53:                                               ; preds = %43
  call void @_ZdlPv(ptr noundef %46) #23
  br label %54

54:                                               ; preds = %53, %49, %41
  %55 = phi i1 [ true, %41 ], [ %44, %49 ], [ %44, %53 ]
  %56 = phi { ptr, i32 } [ %42, %41 ], [ %45, %49 ], [ %45, %53 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  br label %57

57:                                               ; preds = %54, %39
  %58 = phi i1 [ %55, %54 ], [ true, %39 ]
  %59 = phi { ptr, i32 } [ %56, %54 ], [ %40, %39 ]
  br i1 %58, label %60, label %268

60:                                               ; preds = %57
  call void @__cxa_free_exception(ptr %20) #24
  br label %268

61:                                               ; preds = %14
  %62 = getelementptr inbounds %class.cChannel, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !102
  %64 = getelementptr inbounds %class.cGate, ptr %63, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  %66 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !69
  %67 = icmp eq i32 %66, 65535
  br i1 %67, label %68, label %69, !prof !88

68:                                               ; preds = %61
  call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef 0.000000e+00)
  br label %69

69:                                               ; preds = %68, %61
  %70 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !89
  %71 = fmul double %70, 0.000000e+00
  %72 = call double @llvm.fabs.f64(double %71)
  %73 = fcmp ogt double %72, 0x43DFFFFFFFFFEDC8
  br i1 %73, label %74, label %75, !prof !88

74:                                               ; preds = %69
  call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef %71)
  br label %75

75:                                               ; preds = %69, %74
  %76 = fptosi double %71 to i64
  store i64 %76, ptr %6, align 8, !tbaa !65
  %77 = load i16, ptr %10, align 8, !tbaa !94
  %78 = and i16 %77, 512
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %125, label %80, !prof !100

80:                                               ; preds = %75
  %81 = load ptr, ptr %1, align 8, !tbaa !60
  %82 = getelementptr inbounds ptr, ptr %81, i64 24
  %83 = load ptr, ptr %82, align 8
  %84 = call noundef zeroext i1 %83(ptr noundef nonnull align 8 dereferenceable(160) %1)
  br i1 %84, label %85, label %123

85:                                               ; preds = %80
  %86 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !65, !noalias !105
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %85
  %90 = call ptr @__cxa_allocate_exception(i64 128) #24
  %91 = load ptr, ptr %1, align 8, !tbaa !60
  %92 = getelementptr inbounds ptr, ptr %91, i64 5
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %95 unwind label %102

95:                                               ; preds = %89
  %96 = load ptr, ptr %1, align 8, !tbaa !60
  %97 = getelementptr inbounds ptr, ptr %96, i64 6
  %98 = load ptr, ptr %97, align 8
  %99 = invoke noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %100 unwind label %102

100:                                              ; preds = %95
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %90, ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef %94, ptr noundef %99)
          to label %101 unwind label %102

101:                                              ; preds = %100
  call void @__cxa_throw(ptr nonnull %90, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

102:                                              ; preds = %100, %95, %89
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %90) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  br label %268

104:                                              ; preds = %85
  %105 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !96
  %107 = sitofp i64 %106 to double
  %108 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 2
  %109 = load double, ptr %108, align 8, !tbaa !74
  %110 = fdiv double %107, %109
  %111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %6, double noundef %110)
  %112 = load i64, ptr %6, align 8, !tbaa !65
  store i64 %112, ptr %86, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24, !noalias !108
  %113 = load i64, ptr %2, align 8, !tbaa !65, !noalias !108
  %114 = xor i64 %113, %112
  %115 = icmp slt i64 %114, 0
  %116 = add nsw i64 %113, %112
  store i64 %116, ptr %4, align 8, !tbaa !65, !noalias !108
  %117 = xor i64 %116, %112
  %118 = icmp sgt i64 %117, -1
  %119 = select i1 %115, i1 true, i1 %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %104
  call void @_ZN7SimTime14overflowAddingERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6), !noalias !108
  br label %121

121:                                              ; preds = %104, %120
  %122 = load i64, ptr %4, align 8, !tbaa !65, !noalias !108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24, !noalias !108
  br label %127

123:                                              ; preds = %80
  %124 = load i64, ptr %2, align 8, !tbaa !65
  br label %127

125:                                              ; preds = %75
  %126 = load i64, ptr %2, align 8, !tbaa !65
  br label %127

127:                                              ; preds = %121, %123, %125
  %128 = phi i64 [ %122, %121 ], [ %124, %123 ], [ %126, %125 ]
  store i64 %128, ptr %15, align 8, !tbaa !65
  %129 = load i16, ptr %10, align 8, !tbaa !94
  %130 = and i16 %129, 256
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %144, label %132, !prof !100

132:                                              ; preds = %127
  %133 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 1
  %134 = load i64, ptr %2, align 8, !tbaa !65
  %135 = load i64, ptr %133, align 8, !tbaa !65
  %136 = xor i64 %135, %134
  %137 = icmp sgt i64 %136, -1
  %138 = add nsw i64 %135, %134
  store i64 %138, ptr %2, align 8, !tbaa !65
  br i1 %137, label %139, label %144

139:                                              ; preds = %132
  %140 = load i64, ptr %133, align 8, !tbaa !65
  %141 = xor i64 %140, %138
  %142 = icmp sgt i64 %141, -1
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  call void @_ZN7SimTime14overflowAddingERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %133)
  br label %144

144:                                              ; preds = %143, %139, %132, %127
  %145 = load i16, ptr %10, align 8, !tbaa !94
  %146 = and i16 %145, 3072
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %247, label %148, !prof !100

148:                                              ; preds = %144
  %149 = load ptr, ptr %1, align 8, !tbaa !60
  %150 = getelementptr inbounds ptr, ptr %149, i64 24
  %151 = load ptr, ptr %150, align 8
  %152 = call noundef zeroext i1 %151(ptr noundef nonnull align 8 dereferenceable(160) %1)
  br i1 %152, label %153, label %247

153:                                              ; preds = %148
  %154 = load i16, ptr %10, align 8, !tbaa !94
  %155 = and i16 %154, 1024
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %203, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !111
  %159 = call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %158)
  %160 = icmp eq ptr %159, null
  br i1 %160, label %178, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !111
  %163 = call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %162)
  %164 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !111
  %165 = getelementptr inbounds %class.cComponent, ptr %163, i64 0, i32 2
  %166 = load i16, ptr %165, align 8, !tbaa !112
  %167 = icmp sgt i16 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = getelementptr inbounds %class.cComponent, ptr %163, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !113
  %171 = load i32, ptr %170, align 4, !tbaa !69
  br label %172

172:                                              ; preds = %168, %161
  %173 = phi i32 [ %171, %168 ], [ 0, %161 ]
  %174 = load ptr, ptr %164, align 8, !tbaa !60
  %175 = getelementptr inbounds ptr, ptr %174, i64 41
  %176 = load ptr, ptr %175, align 8
  %177 = call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(288) %164, i32 noundef %173)
  br label %184

178:                                              ; preds = %157
  %179 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !111
  %180 = load ptr, ptr %179, align 8, !tbaa !60
  %181 = getelementptr inbounds ptr, ptr %180, i64 41
  %182 = load ptr, ptr %181, align 8
  %183 = call noundef ptr %182(ptr noundef nonnull align 8 dereferenceable(288) %179, i32 noundef 0)
  br label %184

184:                                              ; preds = %172, %178
  %185 = phi ptr [ %177, %172 ], [ %183, %178 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !60
  %187 = getelementptr inbounds ptr, ptr %186, i64 25
  %188 = load ptr, ptr %187, align 8
  %189 = call noundef double %188(ptr noundef nonnull align 8 dereferenceable(16) %185)
  %190 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 3
  %191 = load double, ptr %190, align 8, !tbaa !86
  %192 = fsub double 1.000000e+00, %191
  %193 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 1
  %194 = load i64, ptr %193, align 8, !tbaa !96
  %195 = sitofp i64 %194 to double
  %196 = call double @pow(double noundef %192, double noundef %195) #24
  %197 = fsub double 1.000000e+00, %196
  %198 = fcmp olt double %189, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %184
  %200 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %201 = load i16, ptr %200, align 8, !tbaa !94
  %202 = or i16 %201, 8
  store i16 %202, ptr %200, align 8, !tbaa !94
  br label %203

203:                                              ; preds = %184, %199, %153
  %204 = load i16, ptr %10, align 8, !tbaa !94
  %205 = and i16 %204, 2048
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %247, label %207

207:                                              ; preds = %203
  %208 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !111
  %209 = call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %208)
  %210 = icmp eq ptr %209, null
  br i1 %210, label %228, label %211

211:                                              ; preds = %207
  %212 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !111
  %213 = call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %212)
  %214 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !111
  %215 = getelementptr inbounds %class.cComponent, ptr %213, i64 0, i32 2
  %216 = load i16, ptr %215, align 8, !tbaa !112
  %217 = icmp sgt i16 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %211
  %219 = getelementptr inbounds %class.cComponent, ptr %213, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !113
  %221 = load i32, ptr %220, align 4, !tbaa !69
  br label %222

222:                                              ; preds = %218, %211
  %223 = phi i32 [ %221, %218 ], [ 0, %211 ]
  %224 = load ptr, ptr %214, align 8, !tbaa !60
  %225 = getelementptr inbounds ptr, ptr %224, i64 41
  %226 = load ptr, ptr %225, align 8
  %227 = call noundef ptr %226(ptr noundef nonnull align 8 dereferenceable(288) %214, i32 noundef %223)
  br label %234

228:                                              ; preds = %207
  %229 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !111
  %230 = load ptr, ptr %229, align 8, !tbaa !60
  %231 = getelementptr inbounds ptr, ptr %230, i64 41
  %232 = load ptr, ptr %231, align 8
  %233 = call noundef ptr %232(ptr noundef nonnull align 8 dereferenceable(288) %229, i32 noundef 0)
  br label %234

234:                                              ; preds = %222, %228
  %235 = phi ptr [ %227, %222 ], [ %233, %228 ]
  %236 = load ptr, ptr %235, align 8, !tbaa !60
  %237 = getelementptr inbounds ptr, ptr %236, i64 25
  %238 = load ptr, ptr %237, align 8
  %239 = call noundef double %238(ptr noundef nonnull align 8 dereferenceable(16) %235)
  %240 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 4
  %241 = load double, ptr %240, align 8, !tbaa !87
  %242 = fcmp olt double %239, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %234
  %244 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %245 = load i16, ptr %244, align 8, !tbaa !94
  %246 = or i16 %245, 8
  store i16 %246, ptr %244, align 8, !tbaa !94
  br label %247

247:                                              ; preds = %203, %243, %234, %148, %144
  %248 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !111
  %249 = getelementptr inbounds %class.cEnvir, ptr %248, i64 0, i32 2
  %250 = load i8, ptr %249, align 1, !tbaa !114, !range !118, !noundef !119
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %260, !prof !100

252:                                              ; preds = %247
  %253 = load ptr, ptr %62, align 8, !tbaa !102
  %254 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 1
  %255 = load i64, ptr %254, align 8, !tbaa !65
  store i64 %255, ptr %7, align 8, !tbaa !65
  %256 = load i64, ptr %6, align 8, !tbaa !65
  store i64 %256, ptr %8, align 8, !tbaa !65
  %257 = load ptr, ptr %248, align 8, !tbaa !60
  %258 = getelementptr inbounds ptr, ptr %257, i64 13
  %259 = load ptr, ptr %258, align 8
  call void %259(ptr noundef nonnull align 8 dereferenceable(288) %248, ptr noundef %1, ptr noundef %253, ptr noundef nonnull %7, ptr noundef nonnull %8), !prof !120
  br label %260

260:                                              ; preds = %247, %252
  %261 = load i64, ptr %2, align 8, !tbaa !65
  store i64 %261, ptr %9, align 8, !tbaa !65
  %262 = load ptr, ptr %65, align 8, !tbaa !60
  %263 = getelementptr inbounds ptr, ptr %262, i64 19
  %264 = load ptr, ptr %263, align 8
  %265 = call noundef zeroext i1 %264(ptr noundef nonnull align 8 dereferenceable(48) %65, ptr noundef %1, ptr noundef nonnull %9), !prof !121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  br label %266

266:                                              ; preds = %3, %260
  %267 = phi i1 [ %265, %260 ], [ false, %3 ]
  ret i1 %267

268:                                              ; preds = %57, %60, %102
  %269 = phi { ptr, i32 } [ %59, %60 ], [ %59, %57 ], [ %103, %102 ]
  resume { ptr, i32 } %269

270:                                              ; preds = %38
  unreachable
}

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #10 comdat align 2 !prof !122 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !69
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !88

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1)
  br label %6

6:                                                ; preds = %2, %5
  %7 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !89
  %8 = fmul double %7, %1
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43DFFFFFFFFFEDC8
  br i1 %10, label %11, label %12, !prof !88

11:                                               ; preds = %6
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %8)
  br label %12

12:                                               ; preds = %6, %11
  %13 = fptosi double %8 to i64
  store i64 %13, ptr %0, align 8, !tbaa !65
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN12cDefaultList18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #0

declare void @_ZN12cDefaultList14yieldOwnershipEP12cOwnedObjectP7cObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #12 comdat align 2 !prof !123 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.16, ptr %3, !prof !125
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !126 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !127
  ret ptr %5
}

declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef ptr @_ZNK23cNoncopyableOwnedObject3dupEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare void @_ZN12cDefaultList4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #0

declare void @_ZN12cDefaultList4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #0

declare void @_ZN8cChannel10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef) unnamed_addr #0

declare void @_ZN8cChannel12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #12 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #12 comdat align 2 !prof !130 {
  ret i1 true
}

declare void @_ZN8cChannel12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !94
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cDefaultList11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  ret i1 true
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12cDefaultList17setPerformFinalGCEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) unnamed_addr #5 comdat align 2 !prof !64 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !94
  %5 = and i16 %4, -3
  %6 = select i1 %1, i16 2, i16 0
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !94
  ret void
}

declare void @_ZN10cComponent16setComponentTypeEP14cComponentType(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

declare void @_ZN10cComponent6addParEP8cParImpl(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

declare void @_ZN10cComponent25recordParametersAsScalarsEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cComponent10initializeEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 !prof !131 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8, !prof !132

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !60
  %6 = getelementptr inbounds ptr, ptr %5, i64 30
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(104) %0), !prof !133
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cComponent13numInitStagesEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 !prof !134 {
  ret i32 1
}

declare void @_ZN10cComponent10initializeEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

declare void @_ZN10cComponent6finishEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

declare noundef ptr @_ZNK8cChannel13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #0

declare noundef ptr @_ZNK10cComponent14getNedTypeNameEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cComponent8isModuleEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  ret i1 false
}

declare noundef ptr @_ZNK8cChannel15getParentModuleEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #0

declare void @_ZN8cChannel14callInitializeEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #0

declare noundef zeroext i1 @_ZN8cChannel14callInitializeEi(ptr noundef nonnull align 8 dereferenceable(116), i32 noundef) unnamed_addr #0

declare void @_ZN8cChannel10callFinishEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cComponent12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 !prof !135 {
  %2 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !136
  %4 = sext i16 %3 to i32
  ret i32 %4
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN10cComponent3parEi(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN10cComponent3parEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

declare noundef i32 @_ZNK10cComponent7findParEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

declare noundef zeroext i1 @_ZN8cChannel17initializeChannelEi(ptr noundef nonnull align 8 dereferenceable(116), i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16cDatarateChannel21isTransmissionChannelEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 comdat align 2 !prof !137 {
  ret i1 true
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNK16cDatarateChannel25getTransmissionFinishTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #3 comdat align 2 !prof !64 {
  %3 = getelementptr inbounds %class.cDatarateChannel, ptr %1, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !65
  store i64 %4, ptr %0, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16cDatarateChannel6isBusyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 !prof !64 {
  %2 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !111, !noalias !138
  %3 = getelementptr inbounds %class.cSimulation, ptr %2, i64 0, i32 12
  %4 = load i64, ptr %3, align 8, !tbaa !65, !noalias !141
  %5 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !65
  %7 = icmp slt i64 %4, %6
  ret i1 %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNK16cDatarateChannel8getDelayEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #3 comdat align 2 !prof !64 {
  tail call void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %1)
  %3 = getelementptr inbounds %class.cDatarateChannel, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !65
  store i64 %4, ptr %0, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK16cDatarateChannel11getDatarateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 !prof !64 {
  tail call void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %2 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 2
  %3 = load double, ptr %2, align 8, !tbaa !74
  ret double %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK16cDatarateChannel15getBitErrorRateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 !prof !64 {
  tail call void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %2 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 3
  %3 = load double, ptr %2, align 8, !tbaa !86
  ret double %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK16cDatarateChannel18getPacketErrorRateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 !prof !64 {
  tail call void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %2 = getelementptr inbounds %class.cDatarateChannel, ptr %0, i64 0, i32 4
  %3 = load double, ptr %2, align 8, !tbaa !87
  ret double %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16cDatarateChannel10isDisabledEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 !prof !64 {
  tail call void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !94
  %4 = and i16 %3, 128
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZL15__uniquename_36v() #4 personality ptr @__gxx_personality_v0 !prof !72 !PGOFuncName !144 {
  %1 = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #22
  invoke void @_ZN8cChannelC2EPKc(ptr noundef nonnull align 8 dereferenceable(116) %1, ptr noundef null)
          to label %2 unwind label %15

2:                                                ; preds = %0
  store ptr getelementptr inbounds ({ [63 x ptr] }, ptr @_ZTV16cDatarateChannel, i64 0, inrange i32 0, i64 2), ptr %1, align 8, !tbaa !60
  %3 = getelementptr inbounds %class.cDatarateChannel, ptr %1, i64 0, i32 1
  store i64 0, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %class.cDatarateChannel, ptr %1, i64 0, i32 5
  store i64 0, ptr %4, align 8, !tbaa !65
  %5 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !69
  %6 = icmp eq i32 %5, 65535
  br i1 %6, label %7, label %8, !prof !71

7:                                                ; preds = %2
  invoke void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef 0.000000e+00)
          to label %8 unwind label %12

8:                                                ; preds = %7, %2
  store i64 0, ptr %4, align 8, !tbaa !65
  %9 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !69
  %10 = icmp eq i32 %9, 65535
  br i1 %10, label %11, label %14, !prof !71

11:                                               ; preds = %8
  invoke void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef 0.000000e+00)
          to label %14 unwind label %12

12:                                               ; preds = %11, %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8cChannelD2Ev(ptr noundef nonnull align 8 dereferenceable(116) %1) #24
  br label %17

14:                                               ; preds = %8, %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  ret ptr %1

15:                                               ; preds = %0
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %17

17:                                               ; preds = %12, %15
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %13, %12 ]
  tail call void @_ZdlPv(ptr noundef %1) #23
  resume { ptr, i32 } %18
}

declare void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

declare noundef double @_ZNK4cPar11doubleValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !59

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !93
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #23
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !59

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !93
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #23
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !145

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !93
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #23
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #22
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #23
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !146
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !64 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !93
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !149, !alias.scope !150
  %10 = load ptr, ptr %7, align 8, !tbaa !90
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !93
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !90, !alias.scope !150
  %19 = load i64, ptr %11, align 8, !tbaa !153
  store i64 %19, ptr %9, align 8, !tbaa !153, !alias.scope !150
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !93
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !93, !alias.scope !150
  store ptr %11, ptr %7, align 8, !tbaa !90
  store i64 0, ptr %21, align 8, !tbaa !93
  store i8 0, ptr %11, align 8, !tbaa !153
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !93, !noalias !154
  %27 = load i64, ptr %23, align 8, !tbaa !93, !noalias !154
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #25
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !90, !noalias !154
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !149, !alias.scope !154
  %37 = load ptr, ptr %34, align 8, !tbaa !90
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !93
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !90, !alias.scope !154
  %46 = load i64, ptr %38, align 8, !tbaa !153
  store i64 %46, ptr %36, align 8, !tbaa !153, !alias.scope !154
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !93
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !93, !alias.scope !154
  store ptr %38, ptr %34, align 8, !tbaa !90
  store i64 0, ptr %48, align 8, !tbaa !93
  store i8 0, ptr %38, align 8, !tbaa !153
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  %52 = load ptr, ptr %3, align 8, !tbaa !90
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !93
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #23
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !90
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !93
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #23
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !90
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !93
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #23
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !90
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !93
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #23
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !90
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !93
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #23
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !157, !range !118, !noundef !119
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !158
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !149
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store i64 %9, ptr %4, align 8, !tbaa !159
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !160

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !90
  %13 = load i64, ptr %4, align 8, !tbaa !159
  store i64 %13, ptr %5, align 8, !tbaa !153
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !90
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !161

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !153
  store i8 %17, ptr %15, align 1, !tbaa !153
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !162
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !159
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !93
  %22 = load ptr, ptr %0, align 8, !tbaa !90
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK4cPar9boolValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

declare void @_ZN7SimTime14overflowAddingERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNK16cDatarateChannel10checkStateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !94
  %4 = and i16 %3, 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull %0, i32 noundef 34)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #25
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #24
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  ret void
}

declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cdataratechannel.cc() #18 section ".text.startup" !prof !57 !PGOFuncName !163 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #24
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_36E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_36Ev)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_36E, ptr nonnull @__dso_handle) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!56}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_36Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_36Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_36Ev, ptr @_Z12opp_typenameRKSt9type_info, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_36Ev, ptr @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_, i64 1}
!39 = !{ptr @_ZN16cDatarateChannelD0Ev, ptr @_ZN8cChannelD2Ev, i64 9762}
!40 = !{ptr @_ZN16cDatarateChannelD0Ev, ptr @_ZdlPv, i64 9762}
!41 = !{ptr @_ZN16cDatarateChannel18finalizeParametersEv, ptr @_ZN8cChannel18finalizeParametersEv, i64 9762}
!42 = !{ptr @_ZN16cDatarateChannel18finalizeParametersEv, ptr @_ZN16cDatarateChannel10rereadParsEv, i64 9762}
!43 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZN10cComponent3parEPKc, i64 48810}
!44 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZN7SimTimeaSERK4cPar, i64 9762}
!45 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZNK4cPar11doubleValueEv, i64 29286}
!46 = !{ptr @_ZN16cDatarateChannel10rereadParsEv, ptr @_ZNK4cPar9boolValueEv, i64 9762}
!47 = !{ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK12cNamedObject7getNameEv, i64 97893}
!48 = !{ptr @_ZN10cComponent10initializeEi, ptr @_ZN10cComponent10initializeEv, i64 15233}
!49 = !{ptr @_ZL15__uniquename_36v, ptr @_Znwm, i64 9762}
!50 = !{ptr @_ZL15__uniquename_36v, ptr @_ZN8cChannelC2EPKc, i64 9762}
!51 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!52 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!53 = !{ptr @_GLOBAL__sub_I_cdataratechannel.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!54 = !{ptr @_GLOBAL__sub_I_cdataratechannel.cc, ptr @__cxa_atexit, i64 2}
!55 = !{ptr @_GLOBAL__sub_I_cdataratechannel.cc, ptr @_ZN16ExecuteOnStartupC1EPFvvE, i64 1}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!"simulator/cdataratechannel.cc;_ZN12_GLOBAL__N_119__onstartup_func_36Ev"}
!59 = !{!"branch_weights", i32 1, i32 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!"VP", i32 0, i64 1, i64 3823829244639105016, i64 1}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !67, i64 0}
!66 = !{!"_ZTS7SimTime", !67, i64 0}
!67 = !{!"long", !68, i64 0}
!68 = !{!"omnipotent char", !62, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"int", !68, i64 0}
!71 = !{!"branch_weights", i32 0, i32 9762}
!72 = !{!"function_entry_count", i64 9762}
!73 = !{!"VP", i32 0, i64 9762, i64 -4839500040655519302, i64 9762}
!74 = !{!75, !85, i64 128}
!75 = !{!"_ZTS16cDatarateChannel", !76, i64 0, !66, i64 120, !85, i64 128, !85, i64 136, !85, i64 144, !66, i64 152}
!76 = !{!"_ZTS8cChannel", !77, i64 0, !83, i64 104, !70, i64 112}
!77 = !{!"_ZTS10cComponent", !78, i64 0, !83, i64 56, !84, i64 64, !83, i64 72, !84, i64 80, !84, i64 82, !83, i64 88, !83, i64 96}
!78 = !{!"_ZTS12cDefaultList", !79, i64 0, !83, i64 40, !70, i64 48, !70, i64 52}
!79 = !{!"_ZTS23cNoncopyableOwnedObject", !80, i64 0}
!80 = !{!"_ZTS12cOwnedObject", !81, i64 0, !83, i64 24, !70, i64 32}
!81 = !{!"_ZTS12cNamedObject", !82, i64 0, !83, i64 8, !84, i64 16, !84, i64 18}
!82 = !{!"_ZTS7cObject"}
!83 = !{!"any pointer", !68, i64 0}
!84 = !{!"short", !68, i64 0}
!85 = !{!"double", !68, i64 0}
!86 = !{!75, !85, i64 136}
!87 = !{!75, !85, i64 144}
!88 = !{!"branch_weights", i32 0, i32 980215783}
!89 = !{!85, !85, i64 0}
!90 = !{!91, !83, i64 0}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !92, i64 0, !67, i64 8, !68, i64 16}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !83, i64 0}
!93 = !{!91, !67, i64 8}
!94 = !{!81, !84, i64 16}
!95 = !{!"branch_weights", i32 9762, i32 0}
!96 = !{!97, !67, i64 160}
!97 = !{!"_ZTS7cPacket", !98, i64 0, !67, i64 160, !66, i64 168, !83, i64 176, !84, i64 184}
!98 = !{!"_ZTS8cMessage", !80, i64 0, !84, i64 36, !84, i64 38, !84, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !70, i64 72, !70, i64 76, !70, i64 80, !70, i64 84, !66, i64 88, !66, i64 96, !66, i64 104, !66, i64 112, !70, i64 120, !67, i64 128, !67, i64 136, !67, i64 144, !67, i64 152}
!99 = !{!"function_entry_count", i64 107255799}
!100 = !{!"branch_weights", i32 107255799, i32 0}
!101 = !{!"branch_weights", i32 0, i32 107255799}
!102 = !{!76, !83, i64 104}
!103 = !{!104, !83, i64 40}
!104 = !{!"_ZTS5cGate", !82, i64 0, !83, i64 8, !70, i64 16, !83, i64 24, !83, i64 32, !83, i64 40}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNK7cPacket11getDurationEv: argument 0"}
!107 = distinct !{!107, !"_ZNK7cPacket11getDurationEv"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZplRK7SimTimeS1_: argument 0"}
!110 = distinct !{!110, !"_ZplRK7SimTimeS1_"}
!111 = !{!83, !83, i64 0}
!112 = !{!77, !84, i64 64}
!113 = !{!77, !83, i64 72}
!114 = !{!115, !116, i64 9}
!115 = !{!"_ZTS6cEnvir", !116, i64 8, !116, i64 9, !116, i64 10, !117, i64 16}
!116 = !{!"bool", !68, i64 0}
!117 = !{!"_ZTSSo"}
!118 = !{i8 0, i8 2}
!119 = !{}
!120 = !{!"VP", i32 0, i64 107255799, i64 -5086181438222690284, i64 107255799}
!121 = !{!"VP", i32 0, i64 107255799, i64 -3782577225365958766, i64 107255799}
!122 = !{!"function_entry_count", i64 872940460}
!123 = !{!"function_entry_count", i64 192538233}
!124 = !{!81, !83, i64 8}
!125 = !{!"branch_weights", i32 0, i32 192538233}
!126 = !{!"function_entry_count", i64 235321}
!127 = !{!"VP", i32 0, i64 235321, i64 8390818187414654894, i64 137428, i64 -1846066915438621208, i64 97893}
!128 = !{!"function_entry_count", i64 542987320}
!129 = !{!80, !83, i64 24}
!130 = !{!"function_entry_count", i64 147484992}
!131 = !{!"function_entry_count", i64 34261}
!132 = !{!"branch_weights", i32 34261, i32 0}
!133 = !{!"VP", i32 0, i64 34261, i64 -5034543447025417462, i64 15233, i64 1541411220275178054, i64 8550, i64 6640289822870487726, i64 4924}
!134 = !{!"function_entry_count", i64 58760}
!135 = !{!"function_entry_count", i64 420856}
!136 = !{!77, !84, i64 82}
!137 = !{!"function_entry_count", i64 26286}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_Z7simTimev: argument 0"}
!140 = distinct !{!140, !"_Z7simTimev"}
!141 = !{!142, !139}
!142 = distinct !{!142, !143, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!143 = distinct !{!143, !"_ZNK11cSimulation10getSimTimeEv"}
!144 = !{!"simulator/cdataratechannel.cc;_ZL15__uniquename_36v"}
!145 = !{!"branch_weights", i32 0, i32 1}
!146 = !{!147, !70, i64 8}
!147 = !{!"_ZTS10cException", !148, i64 0, !70, i64 8, !91, i64 16, !116, i64 48, !91, i64 56, !91, i64 88, !70, i64 120}
!148 = !{!"_ZTSSt9exception"}
!149 = !{!92, !83, i64 0}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!152 = distinct !{!152, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!153 = !{!68, !68, i64 0}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!156 = distinct !{!156, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!157 = !{!147, !116, i64 48}
!158 = !{!147, !70, i64 120}
!159 = !{!67, !67, i64 0}
!160 = !{!"branch_weights", i32 1257662, i32 631781}
!161 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!162 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!163 = !{!"simulator/cdataratechannel.cc;_GLOBAL__sub_I_cdataratechannel.cc"}
