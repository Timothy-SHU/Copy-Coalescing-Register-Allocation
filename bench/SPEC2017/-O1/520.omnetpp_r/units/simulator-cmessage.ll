; ModuleID = 'simulator/cmessage.cc'
source_filename = "simulator/cmessage.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.ExecuteOnStartup = type { ptr, ptr }
%class.cGlobalRegistrationList = type { ptr, ptr }
%class.cMessage = type { %class.cOwnedObject.base, i16, i16, i16, ptr, ptr, ptr, i32, i32, i32, i32, %class.SimTime, %class.SimTime, %class.SimTime, %class.SimTime, i32, i64, i64, i64, i64 }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.SimTime = type { i64 }
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%class.cGate = type { %class.cObject, ptr, i32, ptr, ptr, ptr }
%class.cModule = type { %class.cComponent, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cPacket = type <{ %class.cMessage, i64, %class.SimTime, ptr, i16, [6 x i8] }>
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNK7cObject6isNameEPKc = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK8cMessage3dupEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cOwnedObject11isSoftOwnerEv = comdat any

$_ZNK8cMessage8isPacketEv = comdat any

$_ZNK7cPacket3dupEv = comdat any

$_ZNK7cPacket8isPacketEv = comdat any

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

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN12_GLOBAL__N_118__onstartup_obj_46E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_47E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZN8cMessage7next_idE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN8cMessage10total_msgsE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN8cMessage9live_msgsE = dso_local local_unnamed_addr global i64 0, align 8
@_ZTV8cMessage = dso_local unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTI8cMessage, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN8cMessageD2Ev, ptr @_ZN8cMessageD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK8cMessage4infoB5cxx11Ev, ptr @_ZNK8cMessage12detailedInfoB5cxx11Ev, ptr @_ZNK8cMessage3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN8cMessage10parsimPackEP11cCommBuffer, ptr @_ZN8cMessage12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN8cMessage12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv, ptr @_ZNK8cMessage8isPacketEv, ptr @_ZNK8cMessage16getDisplayStringEv] }, align 8
@.str = private unnamed_addr constant [10 x i8] c"(new msg)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"<deleted module>\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"at T=\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c", in dt=\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"starter for \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" (id=\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"timeoutmsg for \00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"selfmsg for \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"src=\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" dest=\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"  control info: (\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"setControlInfo(): pointer is NULL\00", align 1
@.str.19 = private unnamed_addr constant [60 x i8] c"setControlInfo(): message already has control info attached\00", align 1
@_ZTI7cObject = external constant ptr
@_ZTI12cOwnedObject = external constant ptr
@.str.20 = private unnamed_addr constant [31 x i8] c"par(int): has no parameter #%d\00", align 1
@_ZTI7cMsgPar = external constant ptr
@.str.21 = private unnamed_addr constant [51 x i8] c"par(int): parameter #%d is of type %s, not cMsgPar\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"par(const char *): has no parameter called `%s'\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"par(const char *): parameter `%s' is of type %s, not cMsgPar\00", align 1
@_ZTV7cPacket = dso_local unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTI7cPacket, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN7cPacketD2Ev, ptr @_ZN7cPacketD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cPacket4infoB5cxx11Ev, ptr @_ZNK7cPacket12detailedInfoB5cxx11Ev, ptr @_ZNK7cPacket3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cPacket10parsimPackEP11cCommBuffer, ptr @_ZN7cPacket12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN7cPacket12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv, ptr @_ZNK7cPacket8isPacketEv, ptr @_ZNK8cMessage16getDisplayStringEv] }, align 8
@.str.24 = private unnamed_addr constant [104 x i8] c"operator=(): this message is refcounted (shared between several messages), it is forbidden to change it\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"setBitLength(): negative length %ld\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"addBitLength(): length became negative (%l) after adding %ld\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"encapsulate(): another message already encapsulated\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"encapsulate(): not owner of message (%s)%s, owner is (%s)%s\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"decapsulate(): packet length is smaller than encapsulated packet\00", align 1
@_ZTS8cMessage = dso_local constant [10 x i8] c"8cMessage\00", align 1
@_ZTI8cMessage = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8cMessage, ptr @_ZTI12cOwnedObject }, align 8
@_ZTS7cPacket = dso_local constant [9 x i8] c"7cPacket\00", align 1
@_ZTI7cPacket = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS7cPacket, ptr @_ZTI8cMessage }, align 8
@classes = external global %class.cGlobalRegistrationList, align 8
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.30 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cmessage.cc, ptr null }]

@_ZN8cMessageC1ERKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN8cMessageC2ERKS_
@_ZN8cMessageC1EPKcs = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN8cMessageC2EPKcs
@_ZN8cMessageD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8cMessageD2Ev
@_ZN7cPacketC1ERKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN7cPacketC2ERKS_
@_ZN7cPacketC1EPKcsl = dso_local unnamed_addr alias void (ptr, ptr, i16, i64), ptr @_ZN7cPacketC2EPKcsl
@_ZN7cPacketD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7cPacketD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_46Ev() #3 personality ptr @__gxx_personality_v0 !prof !68 !PGOFuncName !69 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes)
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
  %3 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI8cMessage)
          to label %4 unwind label %9, !prof !70

4:                                                ; preds = %0
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef nonnull @_ZL15__uniquename_46v, ptr noundef null)
          to label %5 unwind label %9, !prof !70

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 8, !tbaa !71
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !74
  ret void

9:                                                ; preds = %4, %0
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #27
  resume { ptr, i32 } %10
}

declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_47Ev() #3 personality ptr @__gxx_personality_v0 !prof !68 !PGOFuncName !75 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes)
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
  %3 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI7cPacket)
          to label %4 unwind label %9, !prof !70

4:                                                ; preds = %0
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef nonnull @_ZL15__uniquename_47v, ptr noundef null)
          to label %5 unwind label %9, !prof !70

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 8, !tbaa !71
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2), !prof !74
  ret void

9:                                                ; preds = %4, %0
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #27
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN8cMessageC2ERKS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  tail call void @_ZN12cOwnedObjectC2ERKS_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV8cMessage, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 11
  %4 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i32 -1, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 17
  store i64 -1, ptr %6, align 8, !tbaa !88
  %7 = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN8cMessageaSERKS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %8 unwind label %16

8:                                                ; preds = %2
  %9 = load i64, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !89
  %10 = add nsw i64 %9, 1
  store i64 %10, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !89
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 18
  store i64 %9, ptr %11, align 8, !tbaa !90
  %12 = load i64, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !89
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !89
  %14 = load i64, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  %15 = add nsw i64 %14, 1
  store i64 %15, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  ret void

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #28
  resume { ptr, i32 } %17
}

declare void @_ZN12cOwnedObjectC2ERKS_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(160) ptr @_ZN8cMessageaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #4 align 2 !prof !76 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %60, label %4, !prof !91

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12cOwnedObjectaSERKS_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 4, !tbaa !92
  %8 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 1
  store i16 %7, ptr %8, align 4, !tbaa !92
  %9 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !93
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 2
  store i16 %10, ptr %11, align 2, !tbaa !93
  %12 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 14
  %13 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 14
  %14 = load i64, ptr %12, align 8, !tbaa !94
  store i64 %14, ptr %13, align 8, !tbaa !94
  %15 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !95
  %17 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 3
  store i16 %16, ptr %17, align 8, !tbaa !95
  %18 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 11
  %19 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 11
  %20 = load i64, ptr %18, align 8, !tbaa !94
  store i64 %20, ptr %19, align 8, !tbaa !94
  %21 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  tail call void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %22)
  %23 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26, !prof !97

26:                                               ; preds = %4
  %27 = load ptr, ptr %24, align 8, !tbaa !71
  %28 = getelementptr inbounds ptr, ptr %27, i64 11
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(64) %24)
  store ptr %30, ptr %21, align 8, !tbaa !96
  %31 = load ptr, ptr %0, align 8, !tbaa !71
  %32 = getelementptr inbounds ptr, ptr %31, i64 12
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %30)
  br label %35

34:                                               ; preds = %4
  store ptr null, ptr %21, align 8, !tbaa !96
  br label %35

35:                                               ; preds = %34, %26
  %36 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 6
  store ptr %37, ptr %38, align 8, !tbaa !98
  %39 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !99
  %41 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  store i32 %40, ptr %41, align 8, !tbaa !99
  %42 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 8
  %43 = load i32, ptr %42, align 4, !tbaa !100
  %44 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 8
  store i32 %43, ptr %44, align 4, !tbaa !100
  %45 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !101
  %47 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  store i32 %46, ptr %47, align 8, !tbaa !101
  %48 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 10
  %49 = load i32, ptr %48, align 4, !tbaa !102
  %50 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 10
  store i32 %49, ptr %50, align 4, !tbaa !102
  %51 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 12
  %52 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 12
  %53 = load i64, ptr %51, align 8, !tbaa !94
  store i64 %53, ptr %52, align 8, !tbaa !94
  %54 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 13
  %55 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 13
  %56 = load i64, ptr %54, align 8, !tbaa !94
  store i64 %56, ptr %55, align 8, !tbaa !94
  %57 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 19
  %58 = load i64, ptr %57, align 8, !tbaa !103
  %59 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 19
  store i64 %58, ptr %59, align 8, !tbaa !103
  br label %60

60:                                               ; preds = %2, %35
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN8cMessageC2EPKcs(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false)
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV8cMessage, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %4 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 11
  %5 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store i16 %2, ptr %5, align 4, !tbaa !92
  %6 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 2
  store i16 0, ptr %6, align 2, !tbaa !93
  %7 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i16 -1, ptr %8, align 8, !tbaa !95
  %9 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 -1, i64 16, i1 false)
  %10 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %11 = getelementptr inbounds %class.cSimulation, ptr %10, i64 0, i32 12
  %12 = load i64, ptr %11, align 8, !tbaa !94, !noalias !106
  store i64 %12, ptr %4, align 8, !tbaa !94
  %13 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !109
  %14 = icmp eq i32 %13, 65535
  br i1 %14, label %15, label %17, !prof !110

15:                                               ; preds = %3
  %16 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 14
  invoke void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %16, double noundef 0.000000e+00)
          to label %17 unwind label %29

17:                                               ; preds = %15, %3
  %18 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 12
  %19 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  store i32 -1, ptr %19, align 8, !tbaa !77
  %20 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 17
  store i64 -1, ptr %20, align 8, !tbaa !88
  %21 = load i64, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !89
  %22 = add nsw i64 %21, 1
  store i64 %22, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !89
  %23 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 18
  store i64 %21, ptr %23, align 8, !tbaa !90
  %24 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 19
  store i64 %21, ptr %24, align 8, !tbaa !103
  %25 = load i64, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !89
  %26 = add nsw i64 %25, 1
  store i64 %26, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !89
  %27 = load i64, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  %28 = add nsw i64 %27, 1
  store i64 %28, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  ret void

29:                                               ; preds = %15
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #28
  resume { ptr, i32 } %30
}

declare void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define dso_local void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV8cMessage, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %2 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !105
  %3 = getelementptr inbounds %class.cEnvir, ptr %2, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !111, !range !115, !noundef !116
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10, !prof !117

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !71
  %8 = getelementptr inbounds ptr, ptr %7, i64 15
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull %0)
          to label %10 unwind label %36, !prof !118

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !117

14:                                               ; preds = %10
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %12)
          to label %15 unwind label %36

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19, !prof !120

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !71
  %21 = getelementptr inbounds ptr, ptr %20, i64 17
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %24 unwind label %36, !prof !121

24:                                               ; preds = %19
  %25 = load ptr, ptr %16, align 8, !tbaa !119
  br i1 %23, label %26, label %27, !prof !122

26:                                               ; preds = %24
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %25)
          to label %33 unwind label %36

27:                                               ; preds = %24
  %28 = icmp eq ptr %25, null
  br i1 %28, label %33, label %29, !prof !122

29:                                               ; preds = %27
  %30 = load ptr, ptr %25, align 8, !tbaa !71
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %25) #28, !prof !123
  br label %33

33:                                               ; preds = %26, %29, %27, %15
  %34 = load i64, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  %35 = add nsw i64 %34, -1
  store i64 %35, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #28
  ret void

36:                                               ; preds = %26, %19, %14, %6
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #29
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !76 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #28
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8cMessageD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV8cMessage, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %2 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !105
  %3 = getelementptr inbounds %class.cEnvir, ptr %2, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !111, !range !115, !noundef !116
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10, !prof !117

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !71
  %8 = getelementptr inbounds ptr, ptr %7, i64 15
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull %0)
          to label %10 unwind label %33, !prof !118

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !117

14:                                               ; preds = %10
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %12)
          to label %15 unwind label %33

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !120

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !71
  %21 = getelementptr inbounds ptr, ptr %20, i64 17
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %24 unwind label %33, !prof !121

24:                                               ; preds = %19
  %25 = load ptr, ptr %16, align 8, !tbaa !119
  br i1 %23, label %26, label %27, !prof !122

26:                                               ; preds = %24
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %25)
          to label %36 unwind label %33

27:                                               ; preds = %24
  %28 = icmp eq ptr %25, null
  br i1 %28, label %36, label %29, !prof !122

29:                                               ; preds = %27
  %30 = load ptr, ptr %25, align 8, !tbaa !71
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %25) #28, !prof !124
  br label %36

33:                                               ; preds = %26, %19, %14, %6
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #29
  unreachable

36:                                               ; preds = %15, %26, %27, %29
  %37 = load i64, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  %38 = add nsw i64 %37, -1
  store i64 %38, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #28
  tail call void @_ZdlPv(ptr noundef %0) #27
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK8cMessage4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca ptr, align 8
  %5 = alloca %class.SimTime, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %9 = alloca %class.SimTime, align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !101
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %19, ptr %0, align 8, !tbaa !125
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %19, ptr noundef nonnull align 1 dereferenceable(9) @.str, i64 9, i1 false), !prof !127
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 9, ptr %20, align 8, !tbaa !128
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2, i32 1, i64 1
  store i8 0, ptr %21, align 1, !tbaa !130
  br label %524

22:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %8) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8)
  %23 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 13
  %24 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %25 = getelementptr inbounds %class.cSimulation, ptr %24, i64 0, i32 12
  %26 = load i64, ptr %25, align 8, !tbaa !94, !noalias !131
  %27 = load i64, ptr %23, align 8, !tbaa !94
  %28 = icmp sgt i64 %27, %26
  br i1 %28, label %29, label %87

29:                                               ; preds = %22
  %30 = getelementptr inbounds i8, ptr %8, i64 16
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull @.str.4, i64 noundef 5)
          to label %32 unwind label %83

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #28
  %33 = load i64, ptr %23, align 8, !tbaa !94
  %34 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !109
  %35 = invoke noundef ptr @_ZN7SimTime4ttoaEPcliRS0_(ptr noundef nonnull %6, i64 noundef %33, i32 noundef %34, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %36 unwind label %83

36:                                               ; preds = %32
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %36
  %39 = load ptr, ptr %30, align 8, !tbaa !71
  %40 = getelementptr i8, ptr %39, i64 -24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr %30, i64 %41
  %43 = getelementptr inbounds %"class.std::ios_base", ptr %42, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !134
  %45 = or i32 %44, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %42, i32 noundef %45)
          to label %49 unwind label %83

46:                                               ; preds = %36
  %47 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #28
  %48 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %35, i64 noundef %47)
          to label %49 unwind label %83

49:                                               ; preds = %46, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #28
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull @.str.5, i64 noundef 8)
          to label %51 unwind label %83

51:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #28
  %52 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %53 = getelementptr inbounds %class.cSimulation, ptr %52, i64 0, i32 12
  %54 = load i64, ptr %53, align 8, !tbaa !94, !noalias !140
  store i64 %54, ptr %9, align 8, !tbaa !94, !alias.scope !140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28, !noalias !143
  %55 = load i64, ptr %23, align 8, !tbaa !94, !noalias !143
  %56 = xor i64 %55, %54
  %57 = icmp slt i64 %56, 0
  %58 = sub nsw i64 %55, %54
  store i64 %58, ptr %5, align 8, !tbaa !94, !noalias !143
  %59 = xor i64 %58, %54
  %60 = icmp sgt i64 %59, -1
  %61 = select i1 %57, i1 %60, i1 false
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  invoke void @_ZN7SimTime19overflowSubtractingERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %63 unwind label %85

63:                                               ; preds = %62, %51
  %64 = load i64, ptr %5, align 8, !tbaa !94, !noalias !143
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28, !noalias !143
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %65 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !109
  %66 = invoke noundef ptr @_ZN7SimTime4ttoaEPcliRS0_(ptr noundef nonnull %3, i64 noundef %64, i32 noundef %65, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %67 unwind label %85

67:                                               ; preds = %63
  %68 = icmp eq ptr %66, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %67
  %70 = load ptr, ptr %30, align 8, !tbaa !71
  %71 = getelementptr i8, ptr %70, i64 -24
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds i8, ptr %30, i64 %72
  %74 = getelementptr inbounds %"class.std::ios_base", ptr %73, i64 0, i32 5
  %75 = load i32, ptr %74, align 8, !tbaa !134
  %76 = or i32 %75, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %73, i32 noundef %76)
          to label %80 unwind label %85

77:                                               ; preds = %67
  %78 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %66) #28
  %79 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %66, i64 noundef %78)
          to label %80 unwind label %85

80:                                               ; preds = %77, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #28
  %81 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %82 unwind label %85

82:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #28
  br label %87

83:                                               ; preds = %517, %515, %512, %504, %494, %491, %483, %472, %49, %46, %38, %32, %29, %496, %475
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %521

85:                                               ; preds = %80, %77, %69, %63, %62
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #28
  br label %521

87:                                               ; preds = %82, %22
  %88 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 1
  %89 = load i16, ptr %88, align 4, !tbaa !92
  switch i16 %89, label %244 [
    i16 -1, label %90
    i16 -2, label %167
  ]

90:                                               ; preds = %87
  %91 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %92 = load i32, ptr %15, align 8, !tbaa !101
  %93 = icmp sgt i32 %92, -1
  %94 = getelementptr inbounds %class.cSimulation, ptr %91, i64 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp sgt i32 %95, %92
  %97 = select i1 %93, i1 %96, i1 false
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds %class.cSimulation, ptr %91, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !146
  %101 = zext nneg i32 %92 to i64
  %102 = getelementptr inbounds ptr, ptr %100, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !105
  br label %104

104:                                              ; preds = %90, %98
  %105 = phi ptr [ %103, %98 ], [ null, %90 ]
  %106 = getelementptr inbounds i8, ptr %8, i64 16
  %107 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef nonnull @.str.7, i64 noundef 12)
          to label %108 unwind label %148

108:                                              ; preds = %104
  %109 = icmp eq ptr %105, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #28
  %111 = load ptr, ptr %105, align 8, !tbaa !71
  %112 = getelementptr inbounds ptr, ptr %111, i64 8
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(176) %105)
          to label %114 unwind label %150

114:                                              ; preds = %110
  %115 = load ptr, ptr %10, align 8, !tbaa !150
  br label %116

116:                                              ; preds = %108, %114
  %117 = phi ptr [ %115, %114 ], [ @.str.3, %108 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load ptr, ptr %106, align 8, !tbaa !71
  %121 = getelementptr i8, ptr %120, i64 -24
  %122 = load i64, ptr %121, align 8
  %123 = getelementptr inbounds i8, ptr %106, i64 %122
  %124 = getelementptr inbounds %"class.std::ios_base", ptr %123, i64 0, i32 5
  %125 = load i32, ptr %124, align 8, !tbaa !134
  %126 = or i32 %125, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %123, i32 noundef %126)
          to label %130 unwind label %152

127:                                              ; preds = %116
  %128 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %117) #28
  %129 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef nonnull %117, i64 noundef %128)
          to label %130 unwind label %152

130:                                              ; preds = %127, %119
  %131 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %132 unwind label %152

132:                                              ; preds = %130
  %133 = load i32, ptr %15, align 8, !tbaa !101
  %134 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %106, i32 noundef %133)
          to label %135 unwind label %152

135:                                              ; preds = %132
  %136 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %134, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %137 unwind label %152

137:                                              ; preds = %135
  br i1 %109, label %468, label %138

138:                                              ; preds = %137
  %139 = load ptr, ptr %10, align 8, !tbaa !150
  %140 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %141 = icmp eq ptr %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !128
  %145 = icmp ult i64 %144, 16
  call void @llvm.assume(i1 %145)
  br label %147

146:                                              ; preds = %138
  call void @_ZdlPv(ptr noundef %139) #27
  br label %147

147:                                              ; preds = %142, %146
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #28
  br label %468

148:                                              ; preds = %104
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %521

150:                                              ; preds = %110
  %151 = landingpad { ptr, i32 }
          cleanup
  br label %163

152:                                              ; preds = %135, %130, %127, %119, %132
  %153 = landingpad { ptr, i32 }
          cleanup
  br i1 %109, label %163, label %154

154:                                              ; preds = %152
  %155 = load ptr, ptr %10, align 8, !tbaa !150
  %156 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !128
  %161 = icmp ult i64 %160, 16
  call void @llvm.assume(i1 %161)
  br label %163

162:                                              ; preds = %154
  call void @_ZdlPv(ptr noundef %155) #27
  br label %163

163:                                              ; preds = %152, %162, %158, %150
  %164 = phi i1 [ true, %150 ], [ true, %158 ], [ true, %162 ], [ false, %152 ]
  %165 = phi { ptr, i32 } [ %151, %150 ], [ %153, %158 ], [ %153, %162 ], [ %153, %152 ]
  br i1 %164, label %166, label %521

166:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #28
  br label %521

167:                                              ; preds = %87
  %168 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %169 = load i32, ptr %15, align 8, !tbaa !101
  %170 = icmp sgt i32 %169, -1
  %171 = getelementptr inbounds %class.cSimulation, ptr %168, i64 0, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = icmp sgt i32 %172, %169
  %174 = select i1 %170, i1 %173, i1 false
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = getelementptr inbounds %class.cSimulation, ptr %168, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !146
  %178 = zext nneg i32 %169 to i64
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !105
  br label %181

181:                                              ; preds = %167, %175
  %182 = phi ptr [ %180, %175 ], [ null, %167 ]
  %183 = getelementptr inbounds i8, ptr %8, i64 16
  %184 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef nonnull @.str.10, i64 noundef 15)
          to label %185 unwind label %225

185:                                              ; preds = %181
  %186 = icmp ne ptr %182, null
  br i1 %186, label %187, label %193

187:                                              ; preds = %185
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #28
  %188 = load ptr, ptr %182, align 8, !tbaa !71
  %189 = getelementptr inbounds ptr, ptr %188, i64 8
  %190 = load ptr, ptr %189, align 8
  invoke void %190(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(176) %182)
          to label %191 unwind label %227

191:                                              ; preds = %187
  %192 = load ptr, ptr %11, align 8, !tbaa !150
  br label %193

193:                                              ; preds = %185, %191
  %194 = phi ptr [ %192, %191 ], [ @.str.3, %185 ]
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %204

196:                                              ; preds = %193
  %197 = load ptr, ptr %183, align 8, !tbaa !71
  %198 = getelementptr i8, ptr %197, i64 -24
  %199 = load i64, ptr %198, align 8
  %200 = getelementptr inbounds i8, ptr %183, i64 %199
  %201 = getelementptr inbounds %"class.std::ios_base", ptr %200, i64 0, i32 5
  %202 = load i32, ptr %201, align 8, !tbaa !134
  %203 = or i32 %202, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %200, i32 noundef %203)
          to label %207 unwind label %229

204:                                              ; preds = %193
  %205 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %194) #28
  %206 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef nonnull %194, i64 noundef %205)
          to label %207 unwind label %229

207:                                              ; preds = %204, %196
  %208 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %209 unwind label %229

209:                                              ; preds = %207
  %210 = load i32, ptr %15, align 8, !tbaa !101
  %211 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %183, i32 noundef %210)
          to label %212 unwind label %229

212:                                              ; preds = %209
  %213 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %211, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %214 unwind label %229

214:                                              ; preds = %212
  br i1 %186, label %215, label %468

215:                                              ; preds = %214
  %216 = load ptr, ptr %11, align 8, !tbaa !150
  %217 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %218 = icmp eq ptr %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %221 = load i64, ptr %220, align 8, !tbaa !128
  %222 = icmp ult i64 %221, 16
  call void @llvm.assume(i1 %222)
  br label %224

223:                                              ; preds = %215
  call void @_ZdlPv(ptr noundef %216) #27
  br label %224

224:                                              ; preds = %219, %223
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #28
  br label %468

225:                                              ; preds = %181
  %226 = landingpad { ptr, i32 }
          cleanup
  br label %521

227:                                              ; preds = %187
  %228 = landingpad { ptr, i32 }
          cleanup
  br label %240

229:                                              ; preds = %212, %207, %204, %196, %209
  %230 = landingpad { ptr, i32 }
          cleanup
  br i1 %186, label %231, label %240

231:                                              ; preds = %229
  %232 = load ptr, ptr %11, align 8, !tbaa !150
  %233 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %234 = icmp eq ptr %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %237 = load i64, ptr %236, align 8, !tbaa !128
  %238 = icmp ult i64 %237, 16
  call void @llvm.assume(i1 %238)
  br label %240

239:                                              ; preds = %231
  call void @_ZdlPv(ptr noundef %232) #27
  br label %240

240:                                              ; preds = %239, %235, %229, %227
  %241 = phi i1 [ %186, %229 ], [ true, %227 ], [ true, %235 ], [ true, %239 ]
  %242 = phi { ptr, i32 } [ %230, %229 ], [ %228, %227 ], [ %230, %235 ], [ %230, %239 ]
  br i1 %241, label %243, label %521

243:                                              ; preds = %240
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #28
  br label %521

244:                                              ; preds = %87
  %245 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 7
  %246 = load i32, ptr %245, align 8, !tbaa !99
  %247 = load i32, ptr %15, align 8, !tbaa !101
  %248 = icmp eq i32 %246, %247
  %249 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %250 = getelementptr inbounds %class.cSimulation, ptr %249, i64 0, i32 1
  %251 = load i32, ptr %250, align 4
  br i1 %248, label %252, label %325

252:                                              ; preds = %244
  %253 = icmp sgt i32 %247, -1
  %254 = icmp sgt i32 %251, %247
  %255 = select i1 %253, i1 %254, i1 false
  br i1 %255, label %256, label %262

256:                                              ; preds = %252
  %257 = getelementptr inbounds %class.cSimulation, ptr %249, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !146
  %259 = zext nneg i32 %247 to i64
  %260 = getelementptr inbounds ptr, ptr %258, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !105
  br label %262

262:                                              ; preds = %252, %256
  %263 = phi ptr [ %261, %256 ], [ null, %252 ]
  %264 = getelementptr inbounds i8, ptr %8, i64 16
  %265 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %264, ptr noundef nonnull @.str.11, i64 noundef 12)
          to label %266 unwind label %306

266:                                              ; preds = %262
  %267 = icmp eq ptr %263, null
  br i1 %267, label %274, label %268

268:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #28
  %269 = load ptr, ptr %263, align 8, !tbaa !71
  %270 = getelementptr inbounds ptr, ptr %269, i64 8
  %271 = load ptr, ptr %270, align 8
  invoke void %271(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(176) %263)
          to label %272 unwind label %308

272:                                              ; preds = %268
  %273 = load ptr, ptr %12, align 8, !tbaa !150
  br label %274

274:                                              ; preds = %266, %272
  %275 = phi ptr [ %273, %272 ], [ @.str.3, %266 ]
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = load ptr, ptr %264, align 8, !tbaa !71
  %279 = getelementptr i8, ptr %278, i64 -24
  %280 = load i64, ptr %279, align 8
  %281 = getelementptr inbounds i8, ptr %264, i64 %280
  %282 = getelementptr inbounds %"class.std::ios_base", ptr %281, i64 0, i32 5
  %283 = load i32, ptr %282, align 8, !tbaa !134
  %284 = or i32 %283, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %281, i32 noundef %284)
          to label %288 unwind label %310

285:                                              ; preds = %274
  %286 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %275) #28
  %287 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %264, ptr noundef nonnull %275, i64 noundef %286)
          to label %288 unwind label %310

288:                                              ; preds = %285, %277
  %289 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %264, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %290 unwind label %310

290:                                              ; preds = %288
  %291 = load i32, ptr %15, align 8, !tbaa !101
  %292 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %264, i32 noundef %291)
          to label %293 unwind label %310

293:                                              ; preds = %290
  %294 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %292, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %295 unwind label %310

295:                                              ; preds = %293
  br i1 %267, label %468, label %296

296:                                              ; preds = %295
  %297 = load ptr, ptr %12, align 8, !tbaa !150
  %298 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %299 = icmp eq ptr %297, %298
  br i1 %299, label %300, label %304

300:                                              ; preds = %296
  %301 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %302 = load i64, ptr %301, align 8, !tbaa !128
  %303 = icmp ult i64 %302, 16
  call void @llvm.assume(i1 %303)
  br label %305

304:                                              ; preds = %296
  call void @_ZdlPv(ptr noundef %297) #27
  br label %305

305:                                              ; preds = %300, %304
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #28
  br label %468

306:                                              ; preds = %262
  %307 = landingpad { ptr, i32 }
          cleanup
  br label %521

308:                                              ; preds = %268
  %309 = landingpad { ptr, i32 }
          cleanup
  br label %321

310:                                              ; preds = %293, %288, %285, %277, %290
  %311 = landingpad { ptr, i32 }
          cleanup
  br i1 %267, label %321, label %312

312:                                              ; preds = %310
  %313 = load ptr, ptr %12, align 8, !tbaa !150
  %314 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %315 = icmp eq ptr %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %312
  %317 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %318 = load i64, ptr %317, align 8, !tbaa !128
  %319 = icmp ult i64 %318, 16
  call void @llvm.assume(i1 %319)
  br label %321

320:                                              ; preds = %312
  call void @_ZdlPv(ptr noundef %313) #27
  br label %321

321:                                              ; preds = %310, %320, %316, %308
  %322 = phi i1 [ true, %308 ], [ true, %316 ], [ true, %320 ], [ false, %310 ]
  %323 = phi { ptr, i32 } [ %309, %308 ], [ %311, %316 ], [ %311, %320 ], [ %311, %310 ]
  br i1 %322, label %324, label %521

324:                                              ; preds = %321
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #28
  br label %521

325:                                              ; preds = %244
  %326 = icmp sgt i32 %246, -1
  %327 = icmp sgt i32 %251, %246
  %328 = select i1 %326, i1 %327, i1 false
  br i1 %328, label %329, label %335

329:                                              ; preds = %325
  %330 = getelementptr inbounds %class.cSimulation, ptr %249, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !146
  %332 = zext nneg i32 %246 to i64
  %333 = getelementptr inbounds ptr, ptr %331, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !105
  br label %335

335:                                              ; preds = %325, %329
  %336 = phi ptr [ %334, %329 ], [ null, %325 ]
  %337 = icmp sgt i32 %247, -1
  %338 = icmp sgt i32 %251, %247
  %339 = select i1 %337, i1 %338, i1 false
  br i1 %339, label %340, label %346

340:                                              ; preds = %335
  %341 = getelementptr inbounds %class.cSimulation, ptr %249, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !146
  %343 = zext nneg i32 %247 to i64
  %344 = getelementptr inbounds ptr, ptr %342, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !105
  br label %346

346:                                              ; preds = %335, %340
  %347 = phi ptr [ %345, %340 ], [ null, %335 ]
  %348 = getelementptr inbounds i8, ptr %8, i64 16
  %349 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %348, ptr noundef nonnull @.str.12, i64 noundef 4)
          to label %350 unwind label %432

350:                                              ; preds = %346
  %351 = icmp eq ptr %336, null
  br i1 %351, label %358, label %352

352:                                              ; preds = %350
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #28
  %353 = load ptr, ptr %336, align 8, !tbaa !71
  %354 = getelementptr inbounds ptr, ptr %353, i64 8
  %355 = load ptr, ptr %354, align 8
  invoke void %355(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(176) %336)
          to label %356 unwind label %434

356:                                              ; preds = %352
  %357 = load ptr, ptr %13, align 8, !tbaa !150
  br label %358

358:                                              ; preds = %350, %356
  %359 = phi ptr [ %357, %356 ], [ @.str.3, %350 ]
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %369

361:                                              ; preds = %358
  %362 = load ptr, ptr %348, align 8, !tbaa !71
  %363 = getelementptr i8, ptr %362, i64 -24
  %364 = load i64, ptr %363, align 8
  %365 = getelementptr inbounds i8, ptr %348, i64 %364
  %366 = getelementptr inbounds %"class.std::ios_base", ptr %365, i64 0, i32 5
  %367 = load i32, ptr %366, align 8, !tbaa !134
  %368 = or i32 %367, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %365, i32 noundef %368)
          to label %372 unwind label %436

369:                                              ; preds = %358
  %370 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %359) #28
  %371 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %348, ptr noundef nonnull %359, i64 noundef %370)
          to label %372 unwind label %436

372:                                              ; preds = %369, %361
  %373 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %348, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %374 unwind label %436

374:                                              ; preds = %372
  %375 = load i32, ptr %245, align 8, !tbaa !99
  %376 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %348, i32 noundef %375)
          to label %377 unwind label %436

377:                                              ; preds = %374
  %378 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %376, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %379 unwind label %436

379:                                              ; preds = %377
  br i1 %351, label %390, label %380

380:                                              ; preds = %379
  %381 = load ptr, ptr %13, align 8, !tbaa !150
  %382 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %383 = icmp eq ptr %381, %382
  br i1 %383, label %384, label %388

384:                                              ; preds = %380
  %385 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %386 = load i64, ptr %385, align 8, !tbaa !128
  %387 = icmp ult i64 %386, 16
  call void @llvm.assume(i1 %387)
  br label %389

388:                                              ; preds = %380
  call void @_ZdlPv(ptr noundef %381) #27
  br label %389

389:                                              ; preds = %384, %388
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #28
  br label %390

390:                                              ; preds = %379, %389
  %391 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %348, ptr noundef nonnull @.str.13, i64 noundef 6)
          to label %392 unwind label %432

392:                                              ; preds = %390
  %393 = icmp eq ptr %347, null
  br i1 %393, label %400, label %394

394:                                              ; preds = %392
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #28
  %395 = load ptr, ptr %347, align 8, !tbaa !71
  %396 = getelementptr inbounds ptr, ptr %395, i64 8
  %397 = load ptr, ptr %396, align 8
  invoke void %397(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(176) %347)
          to label %398 unwind label %451

398:                                              ; preds = %394
  %399 = load ptr, ptr %14, align 8, !tbaa !150
  br label %400

400:                                              ; preds = %392, %398
  %401 = phi ptr [ %399, %398 ], [ @.str.3, %392 ]
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %411

403:                                              ; preds = %400
  %404 = load ptr, ptr %348, align 8, !tbaa !71
  %405 = getelementptr i8, ptr %404, i64 -24
  %406 = load i64, ptr %405, align 8
  %407 = getelementptr inbounds i8, ptr %348, i64 %406
  %408 = getelementptr inbounds %"class.std::ios_base", ptr %407, i64 0, i32 5
  %409 = load i32, ptr %408, align 8, !tbaa !134
  %410 = or i32 %409, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %407, i32 noundef %410)
          to label %414 unwind label %453

411:                                              ; preds = %400
  %412 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %401) #28
  %413 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %348, ptr noundef nonnull %401, i64 noundef %412)
          to label %414 unwind label %453

414:                                              ; preds = %411, %403
  %415 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %348, ptr noundef nonnull @.str.8, i64 noundef 5)
          to label %416 unwind label %453

416:                                              ; preds = %414
  %417 = load i32, ptr %15, align 8, !tbaa !101
  %418 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %348, i32 noundef %417)
          to label %419 unwind label %453

419:                                              ; preds = %416
  %420 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %418, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %421 unwind label %453

421:                                              ; preds = %419
  br i1 %393, label %468, label %422

422:                                              ; preds = %421
  %423 = load ptr, ptr %14, align 8, !tbaa !150
  %424 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %425 = icmp eq ptr %423, %424
  br i1 %425, label %426, label %430

426:                                              ; preds = %422
  %427 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %428 = load i64, ptr %427, align 8, !tbaa !128
  %429 = icmp ult i64 %428, 16
  call void @llvm.assume(i1 %429)
  br label %431

430:                                              ; preds = %422
  call void @_ZdlPv(ptr noundef %423) #27
  br label %431

431:                                              ; preds = %426, %430
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #28
  br label %468

432:                                              ; preds = %390, %346
  %433 = landingpad { ptr, i32 }
          cleanup
  br label %521

434:                                              ; preds = %352
  %435 = landingpad { ptr, i32 }
          cleanup
  br label %447

436:                                              ; preds = %377, %372, %369, %361, %374
  %437 = landingpad { ptr, i32 }
          cleanup
  br i1 %351, label %447, label %438

438:                                              ; preds = %436
  %439 = load ptr, ptr %13, align 8, !tbaa !150
  %440 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %441 = icmp eq ptr %439, %440
  br i1 %441, label %442, label %446

442:                                              ; preds = %438
  %443 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %444 = load i64, ptr %443, align 8, !tbaa !128
  %445 = icmp ult i64 %444, 16
  call void @llvm.assume(i1 %445)
  br label %447

446:                                              ; preds = %438
  call void @_ZdlPv(ptr noundef %439) #27
  br label %447

447:                                              ; preds = %436, %446, %442, %434
  %448 = phi { ptr, i32 } [ %435, %434 ], [ %437, %442 ], [ %437, %446 ], [ %437, %436 ]
  %449 = phi i1 [ true, %434 ], [ true, %442 ], [ true, %446 ], [ false, %436 ]
  br i1 %449, label %450, label %521

450:                                              ; preds = %447
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #28
  br label %521

451:                                              ; preds = %394
  %452 = landingpad { ptr, i32 }
          cleanup
  br label %464

453:                                              ; preds = %419, %414, %411, %403, %416
  %454 = landingpad { ptr, i32 }
          cleanup
  br i1 %393, label %464, label %455

455:                                              ; preds = %453
  %456 = load ptr, ptr %14, align 8, !tbaa !150
  %457 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %458 = icmp eq ptr %456, %457
  br i1 %458, label %459, label %463

459:                                              ; preds = %455
  %460 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %461 = load i64, ptr %460, align 8, !tbaa !128
  %462 = icmp ult i64 %461, 16
  call void @llvm.assume(i1 %462)
  br label %464

463:                                              ; preds = %455
  call void @_ZdlPv(ptr noundef %456) #27
  br label %464

464:                                              ; preds = %453, %463, %459, %451
  %465 = phi { ptr, i32 } [ %452, %451 ], [ %454, %459 ], [ %454, %463 ], [ %454, %453 ]
  %466 = phi i1 [ true, %451 ], [ true, %459 ], [ true, %463 ], [ false, %453 ]
  br i1 %466, label %467, label %521

467:                                              ; preds = %464
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #28
  br label %521

468:                                              ; preds = %431, %421, %305, %295, %224, %214, %147, %137
  %469 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 5
  %470 = load ptr, ptr %469, align 8, !tbaa !119
  %471 = icmp eq ptr %470, null
  br i1 %471, label %517, label %472

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %8, i64 16
  %474 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %473, ptr noundef nonnull @.str.14, i64 noundef 17)
          to label %475 unwind label %83

475:                                              ; preds = %472
  %476 = load ptr, ptr %469, align 8, !tbaa !119
  %477 = load ptr, ptr %476, align 8, !tbaa !71
  %478 = getelementptr inbounds ptr, ptr %477, i64 5
  %479 = load ptr, ptr %478, align 8
  %480 = invoke noundef ptr %479(ptr noundef nonnull align 8 dereferenceable(8) %476)
          to label %481 unwind label %83

481:                                              ; preds = %475
  %482 = icmp eq ptr %480, null
  br i1 %482, label %483, label %491

483:                                              ; preds = %481
  %484 = load ptr, ptr %473, align 8, !tbaa !71
  %485 = getelementptr i8, ptr %484, i64 -24
  %486 = load i64, ptr %485, align 8
  %487 = getelementptr inbounds i8, ptr %473, i64 %486
  %488 = getelementptr inbounds %"class.std::ios_base", ptr %487, i64 0, i32 5
  %489 = load i32, ptr %488, align 8, !tbaa !134
  %490 = or i32 %489, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %487, i32 noundef %490)
          to label %494 unwind label %83

491:                                              ; preds = %481
  %492 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %480) #28
  %493 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %473, ptr noundef nonnull %480, i64 noundef %492)
          to label %494 unwind label %83

494:                                              ; preds = %491, %483
  %495 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %473, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %496 unwind label %83

496:                                              ; preds = %494
  %497 = load ptr, ptr %469, align 8, !tbaa !119
  %498 = load ptr, ptr %497, align 8, !tbaa !71
  %499 = getelementptr inbounds ptr, ptr %498, i64 7
  %500 = load ptr, ptr %499, align 8
  %501 = invoke noundef ptr %500(ptr noundef nonnull align 8 dereferenceable(8) %497)
          to label %502 unwind label %83

502:                                              ; preds = %496
  %503 = icmp eq ptr %501, null
  br i1 %503, label %504, label %512

504:                                              ; preds = %502
  %505 = load ptr, ptr %473, align 8, !tbaa !71
  %506 = getelementptr i8, ptr %505, i64 -24
  %507 = load i64, ptr %506, align 8
  %508 = getelementptr inbounds i8, ptr %473, i64 %507
  %509 = getelementptr inbounds %"class.std::ios_base", ptr %508, i64 0, i32 5
  %510 = load i32, ptr %509, align 8, !tbaa !134
  %511 = or i32 %510, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %508, i32 noundef %511)
          to label %515 unwind label %83

512:                                              ; preds = %502
  %513 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %501) #28
  %514 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %473, ptr noundef nonnull %501, i64 noundef %513)
          to label %515 unwind label %83

515:                                              ; preds = %512, %504
  %516 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %473, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %517 unwind label %83

517:                                              ; preds = %515, %468
  %518 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %8, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %518)
          to label %519 unwind label %83

519:                                              ; preds = %517
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #28
  %520 = getelementptr inbounds i8, ptr %8, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %520) #28
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %8) #28
  br label %524

521:                                              ; preds = %432, %450, %447, %467, %464, %306, %324, %321, %225, %243, %240, %148, %166, %163, %85, %83
  %522 = phi { ptr, i32 } [ %84, %83 ], [ %86, %85 ], [ %165, %166 ], [ %165, %163 ], [ %149, %148 ], [ %242, %243 ], [ %242, %240 ], [ %226, %225 ], [ %323, %324 ], [ %323, %321 ], [ %307, %306 ], [ %465, %467 ], [ %465, %464 ], [ %433, %432 ], [ %448, %450 ], [ %448, %447 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #28
  %523 = getelementptr inbounds i8, ptr %8, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %523) #28
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %8) #28
  resume { ptr, i32 } %522

524:                                              ; preds = %18, %519
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !125
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  store i64 %9, ptr %4, align 8, !tbaa !89
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !151

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !150
  %13 = load i64, ptr %4, align 8, !tbaa !89
  store i64 %13, ptr %5, align 8, !tbaa !130
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !150
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !152

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !130
  store i8 %17, ptr %15, align 1, !tbaa !130
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !127
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !89
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !128
  %22 = load ptr, ptr %0, align 8, !tbaa !150
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  ret void
}

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN8cMessage12forEachChildEP8cVisitor(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !76 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !71
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK8cMessage12detailedInfoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %3, ptr %0, align 8, !tbaa !125
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !128
  store i8 0, ptr %3, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN8cMessage10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture readnone %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #28
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN8cMessage12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture readnone %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #28
  resume { ptr, i32 } %6
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN12cOwnedObjectaSERKS_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN8cMessage14_createparlistEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
  invoke void @_ZN6cArrayC1EPKcii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull @.str.17, i32 noundef 5, i32 noundef 5)
          to label %3 unwind label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  store ptr %2, ptr %4, align 8, !tbaa !96
  %5 = load ptr, ptr %0, align 8, !tbaa !71
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2)
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #27
  resume { ptr, i32 } %9
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @_ZN6cArrayC1EPKcii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8cMessage14setControlInfoEP7cObject(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !153 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %9, !prof !154

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull %0, ptr noundef nonnull @.str.18)
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %26

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !155

13:                                               ; preds = %9
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull %0, ptr noundef nonnull @.str.19)
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %26

18:                                               ; preds = %9
  %19 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI12cOwnedObject, i64 0) #28
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !155

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !71
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %25

25:                                               ; preds = %21, %18
  store ptr %1, ptr %10, align 8, !tbaa !119
  ret void

26:                                               ; preds = %16, %7
  %27 = phi ptr [ %14, %16 ], [ %5, %7 ]
  %28 = phi { ptr, i32 } [ %17, %16 ], [ %8, %7 ]
  tail call void @__cxa_free_exception(ptr %27) #28
  resume { ptr, i32 } %28
}

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN8cMessage17removeControlInfoEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #10 align 2 !prof !156 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  store ptr null, ptr %2, align 8, !tbaa !119
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !157

5:                                                ; preds = %1
  %6 = tail call ptr @__dynamic_cast(ptr nonnull %3, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI12cOwnedObject, i64 0) #28
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !158

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !71
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3)
  br label %12

12:                                               ; preds = %1, %8, %5
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN8cMessage3parEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN8cMessage14_createparlistEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %3, align 8, !tbaa !96
  %9 = tail call noundef ptr @_ZN6cArray3getEi(ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i32 noundef %1)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %30

16:                                               ; preds = %7
  %17 = tail call ptr @__dynamic_cast(ptr nonnull %9, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI7cMsgPar, i64 0) #28
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  %21 = load ptr, ptr %9, align 8, !tbaa !71
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %25 unwind label %27

25:                                               ; preds = %19
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i32 noundef %1, ptr noundef %24)
          to label %26 unwind label %27

26:                                               ; preds = %25
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

27:                                               ; preds = %25, %19
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %30

29:                                               ; preds = %16
  ret ptr %9

30:                                               ; preds = %27, %14
  %31 = phi ptr [ %20, %27 ], [ %12, %14 ]
  %32 = phi { ptr, i32 } [ %28, %27 ], [ %15, %14 ]
  tail call void @__cxa_free_exception(ptr %31) #28
  resume { ptr, i32 } %32
}

declare noundef ptr @_ZN6cArray3getEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN8cMessage3parEPKc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN8cMessage14_createparlistEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %3, align 8, !tbaa !96
  %9 = tail call noundef ptr @_ZN6cArray3getEPKc(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef %1)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %30

16:                                               ; preds = %7
  %17 = tail call ptr @__dynamic_cast(ptr nonnull %9, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI7cMsgPar, i64 0) #28
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  %21 = load ptr, ptr %9, align 8, !tbaa !71
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %25 unwind label %27

25:                                               ; preds = %19
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef %24)
          to label %26 unwind label %27

26:                                               ; preds = %25
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

27:                                               ; preds = %25, %19
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %30

29:                                               ; preds = %16
  ret ptr %9

30:                                               ; preds = %27, %14
  %31 = phi ptr [ %20, %27 ], [ %12, %14 ]
  %32 = phi { ptr, i32 } [ %28, %27 ], [ %15, %14 ]
  tail call void @__cxa_free_exception(ptr %31) #28
  resume { ptr, i32 } %32
}

declare noundef ptr @_ZN6cArray3getEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK8cMessage7findParEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !76 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZNK6cArray4findEPKc(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %1)
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ -1, %2 ]
  ret i32 %9
}

declare noundef i32 @_ZNK6cArray4findEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK8cMessage13getSenderGateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !99
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !100
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %11 = getelementptr inbounds %class.cSimulation, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %3
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr inbounds %class.cSimulation, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  %17 = zext nneg i32 %3 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !105
  br label %20

20:                                               ; preds = %9, %14
  %21 = phi ptr [ %19, %14 ], [ null, %9 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !71
  %25 = getelementptr inbounds ptr, ptr %24, i64 63
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(176) %21, i32 noundef %7)
  br label %28

28:                                               ; preds = %23, %20, %1, %5
  %29 = phi ptr [ null, %5 ], [ null, %1 ], [ %27, %23 ], [ null, %20 ]
  ret ptr %29
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZNK8cMessage14getArrivalGateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !159 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !101
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %28, label %5, !prof !160

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !102
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %28, label %9, !prof !160

9:                                                ; preds = %5
  %10 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %11 = getelementptr inbounds %class.cSimulation, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, %3
  br i1 %13, label %14, label %20, !prof !161

14:                                               ; preds = %9
  %15 = getelementptr inbounds %class.cSimulation, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  %17 = zext nneg i32 %3 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !105
  br label %20

20:                                               ; preds = %9, %14
  %21 = phi ptr [ %19, %14 ], [ null, %9 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !160

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !71
  %25 = getelementptr inbounds ptr, ptr %24, i64 63
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(176) %21, i32 noundef %7), !prof !162
  br label %28

28:                                               ; preds = %23, %20, %1, %5
  %29 = phi ptr [ null, %5 ], [ null, %1 ], [ %27, %23 ], [ null, %20 ]
  ret ptr %29
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8cMessage9arrivedOnEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef readonly %1) local_unnamed_addr #10 align 2 !prof !163 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !101
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %29, label %6, !prof !164

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 10
  %8 = load i32, ptr %7, align 4, !tbaa !102
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %29, label %10, !prof !164

10:                                               ; preds = %6
  %11 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %12 = getelementptr inbounds %class.cSimulation, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %4
  br i1 %14, label %15, label %21, !prof !165

15:                                               ; preds = %10
  %16 = getelementptr inbounds %class.cSimulation, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !146
  %18 = zext nneg i32 %4 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi ptr [ %20, %15 ], [ null, %10 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24, !prof !164

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !71
  %26 = getelementptr inbounds ptr, ptr %25, i64 63
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(176) %22, i32 noundef %8), !prof !166
  br label %29

29:                                               ; preds = %2, %6, %21, %24
  %30 = phi ptr [ null, %6 ], [ null, %2 ], [ %28, %24 ], [ null, %21 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32, !prof !164

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa !71
  %34 = getelementptr inbounds ptr, ptr %33, i64 6
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %30), !prof !167
  %37 = icmp eq ptr %36, null
  %38 = icmp eq ptr %1, null
  br i1 %37, label %46, label %39, !prof !168

39:                                               ; preds = %32
  br i1 %38, label %42, label %40, !prof !168

40:                                               ; preds = %39
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) %1) #31
  br label %51

42:                                               ; preds = %39
  %43 = load i8, ptr %36, align 1, !tbaa !130
  %44 = icmp ne i8 %43, 0
  %45 = zext i1 %44 to i32
  br label %51

46:                                               ; preds = %32
  br i1 %38, label %51, label %47

47:                                               ; preds = %46
  %48 = load i8, ptr %1, align 1, !tbaa !130
  %49 = icmp ne i8 %48, 0
  %50 = sext i1 %49 to i32
  br label %51

51:                                               ; preds = %40, %42, %46, %47
  %52 = phi i32 [ %41, %40 ], [ %45, %42 ], [ 0, %46 ], [ %50, %47 ]
  %53 = icmp eq i32 %52, 0
  br label %54

54:                                               ; preds = %51, %29
  %55 = phi i1 [ false, %29 ], [ %53, %51 ]
  ret i1 %55
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 !prof !169 {
  %3 = load ptr, ptr %0, align 8, !tbaa !71
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !170
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %1, null
  br i1 %7, label %16, label %9, !prof !168

9:                                                ; preds = %2
  br i1 %8, label %12, label %10, !prof !168

10:                                               ; preds = %9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #31
  br label %21

12:                                               ; preds = %9
  %13 = load i8, ptr %6, align 1, !tbaa !130
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i32
  br label %21

16:                                               ; preds = %2
  br i1 %8, label %21, label %17

17:                                               ; preds = %16
  %18 = load i8, ptr %1, align 1, !tbaa !130
  %19 = icmp ne i8 %18, 0
  %20 = sext i1 %19 to i32
  br label %21

21:                                               ; preds = %10, %12, %16, %17
  %22 = phi i32 [ %11, %10 ], [ %15, %12 ], [ 0, %16 ], [ %20, %17 ]
  %23 = icmp eq i32 %22, 0
  ret i1 %23
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8cMessage9arrivedOnEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !76 {
  %4 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !101
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !102
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %13 = getelementptr inbounds %class.cSimulation, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, %5
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cSimulation, ptr %12, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  %19 = zext nneg i32 %5 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  br label %22

22:                                               ; preds = %16, %11
  %23 = phi ptr [ %21, %16 ], [ null, %11 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !71
  %27 = getelementptr inbounds ptr, ptr %26, i64 63
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(176) %23, i32 noundef %9)
  br label %30

30:                                               ; preds = %3, %7, %22, %25
  %31 = phi ptr [ null, %7 ], [ null, %3 ], [ %29, %25 ], [ null, %22 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = tail call noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1)
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = getelementptr inbounds %class.cGate, ptr %31, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !171
  %38 = ashr i32 %37, 2
  %39 = icmp eq i32 %38, -1
  %40 = select i1 %39, i32 0, i32 %38
  %41 = icmp eq i32 %40, %2
  br label %42

42:                                               ; preds = %35, %33, %30
  %43 = phi i1 [ false, %33 ], [ false, %30 ], [ %41, %35 ]
  ret i1 %43
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK8cMessage16getDisplayStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #15 align 2 !prof !76 {
  ret ptr @.str.16
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8cMessage11setSentFromEP7cModulei7SimTime(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(160) %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 align 2 !prof !173 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !174

6:                                                ; preds = %4
  %7 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !175
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi i32 [ %8, %6 ], [ -1, %4 ]
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  store i32 %10, ptr %11, align 8, !tbaa !99
  %12 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 8
  store i32 %2, ptr %12, align 4, !tbaa !100
  %13 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 12
  %14 = load i64, ptr %3, align 8, !tbaa !94
  store i64 %14, ptr %13, align 8, !tbaa !94
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8cMessage10setArrivalEP7cModulei7SimTime(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(160) %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 align 2 !prof !179 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !180

6:                                                ; preds = %4
  %7 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !175
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi i32 [ %8, %6 ], [ -1, %4 ]
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  store i32 %10, ptr %11, align 8, !tbaa !101
  %12 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 10
  store i32 %2, ptr %12, align 4, !tbaa !102
  %13 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 13
  %14 = load i64, ptr %3, align 8, !tbaa !94
  store i64 %14, ptr %13, align 8, !tbaa !94
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8cMessage10setArrivalEP7cModulei(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(160) %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #16 align 2 !prof !181 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5, !prof !182

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !175
  br label %8

8:                                                ; preds = %3, %5
  %9 = phi i32 [ %7, %5 ], [ -1, %3 ]
  %10 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  store i32 %9, ptr %10, align 8, !tbaa !101
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 10
  store i32 %2, ptr %11, align 4, !tbaa !102
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8cMessage14setArrivalTimeE7SimTime(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(160) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #16 align 2 !prof !181 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 13
  %4 = load i64, ptr %1, align 8, !tbaa !94
  store i64 %4, ptr %3, align 8, !tbaa !94
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7cPacketC2ERKS_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull align 8 dereferenceable(186) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  tail call void @_ZN8cMessageC2ERKS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1)
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV7cPacket, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %3, i8 0, i64 18, i1 false)
  %4 = invoke noundef nonnull align 8 dereferenceable(186) ptr @_ZN7cPacketaSERKS_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull align 8 dereferenceable(186) %1)
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #28
  resume { ptr, i32 } %7
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(186) ptr @_ZN7cPacketaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(186) %0, ptr noundef nonnull align 8 dereferenceable(186) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !183 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %110, label %4, !prof !91

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12cOwnedObjectaSERKS_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 4, !tbaa !92
  %8 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 1
  store i16 %7, ptr %8, align 4, !tbaa !92
  %9 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !93
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 2
  store i16 %10, ptr %11, align 2, !tbaa !93
  %12 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 14
  %13 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 14
  %14 = load i64, ptr %12, align 8, !tbaa !94
  store i64 %14, ptr %13, align 8, !tbaa !94
  %15 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !95
  %17 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 3
  store i16 %16, ptr %17, align 8, !tbaa !95
  %18 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 11
  %19 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 11
  %20 = load i64, ptr %18, align 8, !tbaa !94
  store i64 %20, ptr %19, align 8, !tbaa !94
  %21 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  tail call void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %22)
  %23 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26, !prof !97

26:                                               ; preds = %4
  %27 = load ptr, ptr %24, align 8, !tbaa !71
  %28 = getelementptr inbounds ptr, ptr %27, i64 11
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(64) %24)
  store ptr %30, ptr %21, align 8, !tbaa !96
  %31 = load ptr, ptr %0, align 8, !tbaa !71
  %32 = getelementptr inbounds ptr, ptr %31, i64 12
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %30)
  br label %35

34:                                               ; preds = %4
  store ptr null, ptr %21, align 8, !tbaa !96
  br label %35

35:                                               ; preds = %34, %26
  %36 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 6
  store ptr %37, ptr %38, align 8, !tbaa !98
  %39 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !99
  %41 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  store i32 %40, ptr %41, align 8, !tbaa !99
  %42 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 8
  %43 = load i32, ptr %42, align 4, !tbaa !100
  %44 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 8
  store i32 %43, ptr %44, align 4, !tbaa !100
  %45 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 9
  %46 = load i32, ptr %45, align 8, !tbaa !101
  %47 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  store i32 %46, ptr %47, align 8, !tbaa !101
  %48 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 10
  %49 = load i32, ptr %48, align 4, !tbaa !102
  %50 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 10
  store i32 %49, ptr %50, align 4, !tbaa !102
  %51 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 12
  %52 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 12
  %53 = load i64, ptr %51, align 8, !tbaa !94
  store i64 %53, ptr %52, align 8, !tbaa !94
  %54 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 13
  %55 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 13
  %56 = load i64, ptr %54, align 8, !tbaa !94
  store i64 %56, ptr %55, align 8, !tbaa !94
  %57 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 19
  %58 = load i64, ptr %57, align 8, !tbaa !103
  %59 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 19
  store i64 %58, ptr %59, align 8, !tbaa !103
  %60 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 4
  %61 = load i16, ptr %60, align 8, !tbaa !184
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %68, label %63, !prof !97

63:                                               ; preds = %35
  %64 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %64, ptr noundef nonnull %0, ptr noundef nonnull @.str.24)
          to label %65 unwind label %66

65:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %64, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

66:                                               ; preds = %63
  %67 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %64) #28
  resume { ptr, i32 } %67

68:                                               ; preds = %35
  %69 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !186
  %71 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  store i64 %70, ptr %71, align 8, !tbaa !186
  %72 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 2
  %73 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 2
  %74 = load i64, ptr %72, align 8, !tbaa !94
  store i64 %74, ptr %73, align 8, !tbaa !94
  %75 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !187
  %77 = icmp eq ptr %76, null
  br i1 %77, label %93, label %78, !prof !97

78:                                               ; preds = %68
  %79 = getelementptr inbounds %class.cPacket, ptr %76, i64 0, i32 4
  %80 = load i16, ptr %79, align 8, !tbaa !184
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = add i16 %80, -1
  store i16 %83, ptr %79, align 8, !tbaa !184
  %84 = getelementptr inbounds %class.cOwnedObject, ptr %76, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !188
  %86 = icmp eq ptr %85, %0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  store ptr null, ptr %84, align 8, !tbaa !188
  br label %93

88:                                               ; preds = %78
  %89 = getelementptr inbounds %class.cOwnedObject, ptr %76, i64 0, i32 2
  store ptr null, ptr %89, align 8, !tbaa !188
  %90 = load ptr, ptr %76, align 8, !tbaa !71
  %91 = getelementptr inbounds ptr, ptr %90, i64 4
  %92 = load ptr, ptr %91, align 8
  tail call void %92(ptr noundef nonnull align 8 dereferenceable(186) %76) #28
  br label %93

93:                                               ; preds = %88, %87, %82, %68
  %94 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !187
  store ptr %95, ptr %75, align 8, !tbaa !187
  %96 = icmp eq ptr %95, null
  br i1 %96, label %110, label %97, !prof !189

97:                                               ; preds = %93
  %98 = getelementptr inbounds %class.cPacket, ptr %95, i64 0, i32 4
  %99 = load i16, ptr %98, align 8, !tbaa !184
  %100 = add i16 %99, 1
  store i16 %100, ptr %98, align 8, !tbaa !184
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %110, !prof !190

102:                                              ; preds = %97
  store i16 %99, ptr %98, align 8, !tbaa !184
  %103 = load ptr, ptr %95, align 8, !tbaa !71
  %104 = getelementptr inbounds ptr, ptr %103, i64 11
  %105 = load ptr, ptr %104, align 8
  %106 = tail call noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(186) %95)
  store ptr %106, ptr %75, align 8, !tbaa !187
  %107 = load ptr, ptr %0, align 8, !tbaa !71
  %108 = getelementptr inbounds ptr, ptr %107, i64 12
  %109 = load ptr, ptr %108, align 8
  tail call void %109(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %106)
  br label %110

110:                                              ; preds = %93, %97, %102, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN7cPacketC2EPKcsl(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, i16 noundef signext %2, i64 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false)
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV8cMessage, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %5 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 11
  %6 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store i16 %2, ptr %6, align 4, !tbaa !92
  %7 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 2
  store i16 0, ptr %7, align 2, !tbaa !93
  %8 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i16 -1, ptr %9, align 8, !tbaa !95
  %10 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 -1, i64 16, i1 false)
  %11 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %12 = getelementptr inbounds %class.cSimulation, ptr %11, i64 0, i32 12
  %13 = load i64, ptr %12, align 8, !tbaa !94, !noalias !192
  store i64 %13, ptr %5, align 8, !tbaa !94
  %14 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !109
  %15 = icmp eq i32 %14, 65535
  br i1 %15, label %16, label %22, !prof !110

16:                                               ; preds = %4
  %17 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 14
  invoke void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %17, double noundef 0.000000e+00)
          to label %22 unwind label %20

18:                                               ; preds = %42, %20
  %19 = phi { ptr, i32 } [ %21, %20 ], [ %43, %42 ]
  resume { ptr, i32 } %19

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #28
  br label %18

22:                                               ; preds = %4, %16
  %23 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 12
  %24 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  store i32 -1, ptr %24, align 8, !tbaa !77
  %25 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 17
  store i64 -1, ptr %25, align 8, !tbaa !88
  %26 = load i64, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !89
  %27 = add nsw i64 %26, 1
  store i64 %27, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !89
  %28 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 18
  store i64 %26, ptr %28, align 8, !tbaa !90
  %29 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 19
  store i64 %26, ptr %29, align 8, !tbaa !103
  %30 = load i64, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !89
  %31 = add nsw i64 %30, 1
  store i64 %31, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !89
  %32 = load i64, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  %33 = add nsw i64 %32, 1
  store i64 %33, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV7cPacket, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %34 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 2
  store i64 0, ptr %34, align 8, !tbaa !94
  %35 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  store i64 %3, ptr %35, align 8, !tbaa !186
  %36 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  store ptr null, ptr %36, align 8, !tbaa !187
  %37 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !109
  %38 = icmp eq i32 %37, 65535
  br i1 %38, label %39, label %40, !prof !195

39:                                               ; preds = %22
  invoke void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %34, double noundef 0.000000e+00)
          to label %40 unwind label %42

40:                                               ; preds = %39, %22
  store i64 0, ptr %34, align 8, !tbaa !94
  %41 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 4
  store i16 0, ptr %41, align 8, !tbaa !184
  ret void

42:                                               ; preds = %39
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #28
  br label %18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define dso_local void @_ZN7cPacketD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV7cPacket, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5, !prof !196

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !184
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %15, label %9, !prof !197

9:                                                ; preds = %5
  %10 = add i16 %7, -1
  store i16 %10, ptr %6, align 8, !tbaa !184
  %11 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !188
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %20, !prof !198

14:                                               ; preds = %9
  store ptr null, ptr %11, align 8, !tbaa !188
  br label %20

15:                                               ; preds = %5
  %16 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  store ptr null, ptr %16, align 8, !tbaa !188
  %17 = load ptr, ptr %3, align 8, !tbaa !71
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(186) %3) #28, !prof !199
  br label %20

20:                                               ; preds = %15, %14, %9, %1
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV8cMessage, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %21 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !105
  %22 = getelementptr inbounds %class.cEnvir, ptr %21, i64 0, i32 2
  %23 = load i8, ptr %22, align 1, !tbaa !111, !range !115, !noundef !116
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29, !prof !117

25:                                               ; preds = %20
  %26 = load ptr, ptr %21, align 8, !tbaa !71
  %27 = getelementptr inbounds ptr, ptr %26, i64 15
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(288) %21, ptr noundef nonnull %0)
          to label %29 unwind label %52, !prof !118

29:                                               ; preds = %25, %20
  %30 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !96
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !117

33:                                               ; preds = %29
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %31)
          to label %34 unwind label %52

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !119
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38, !prof !120

38:                                               ; preds = %34
  %39 = load ptr, ptr %36, align 8, !tbaa !71
  %40 = getelementptr inbounds ptr, ptr %39, i64 17
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %43 unwind label %52, !prof !121

43:                                               ; preds = %38
  %44 = load ptr, ptr %35, align 8, !tbaa !119
  br i1 %42, label %45, label %46, !prof !122

45:                                               ; preds = %43
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %44)
          to label %55 unwind label %52

46:                                               ; preds = %43
  %47 = icmp eq ptr %44, null
  br i1 %47, label %55, label %48, !prof !122

48:                                               ; preds = %46
  %49 = load ptr, ptr %44, align 8, !tbaa !71
  %50 = getelementptr inbounds ptr, ptr %49, i64 4
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %44) #28, !prof !200
  br label %55

52:                                               ; preds = %45, %38, %33, %25
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  tail call void @__clang_call_terminate(ptr %54) #29
  unreachable

55:                                               ; preds = %34, %45, %46, %48
  %56 = load i64, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  %57 = add nsw i64 %56, -1
  store i64 %57, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !89
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #28
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN7cPacket15_deleteEncapMsgEv(ptr noundef nonnull readonly align 8 dereferenceable(186) %0) local_unnamed_addr #17 align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !184
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = add i16 %5, -1
  store i16 %8, ptr %4, align 8, !tbaa !184
  %9 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !188
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  store ptr null, ptr %9, align 8, !tbaa !188
  br label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !188
  %15 = icmp eq ptr %3, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 8, !tbaa !71
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(186) %3) #28
  br label %20

20:                                               ; preds = %13, %16, %7, %12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN7cPacketD0Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #17 align 2 !prof !76 {
  tail call void @_ZN7cPacketD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) #28
  tail call void @_ZdlPv(ptr noundef %0) #27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK7cPacket4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %3, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %5 unwind label %7

5:                                                ; preds = %2
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #28
  %6 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %6) #28
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #28
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #28
  %9 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %9) #28
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #28
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7cPacket12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !76 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !71
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4)
  br label %10

10:                                               ; preds = %2, %6
  %11 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !187
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  tail call void @_ZN7cPacket15_detachEncapMsgEv(ptr noundef nonnull align 8 dereferenceable(186) %0)
  %15 = load ptr, ptr %11, align 8, !tbaa !187
  %16 = load ptr, ptr %1, align 8, !tbaa !71
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %15)
  br label %19

19:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7cPacket15_detachEncapMsgEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #3 align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !184
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = add i16 %5, -1
  store i16 %8, ptr %4, align 8, !tbaa !184
  %9 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !188
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store ptr null, ptr %9, align 8, !tbaa !188
  br label %13

13:                                               ; preds = %12, %7
  %14 = load ptr, ptr %3, align 8, !tbaa !71
  %15 = getelementptr inbounds ptr, ptr %14, i64 11
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(186) %3)
  store ptr %17, ptr %2, align 8, !tbaa !187
  %18 = load ptr, ptr %0, align 8, !tbaa !71
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %17)
  br label %23

21:                                               ; preds = %1
  %22 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  store ptr %0, ptr %22, align 8, !tbaa !188
  br label %23

23:                                               ; preds = %21, %13
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK7cPacket12detailedInfoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %3, ptr %0, align 8, !tbaa !125
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !128
  store i8 0, ptr %3, align 8, !tbaa !130
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN7cPacket10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr nocapture readnone %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #28
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN7cPacket12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr nocapture readnone %1) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #28
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cPacket12setBitLengthEl(ptr noundef nonnull align 8 dereferenceable(186) %0, i64 noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %4, label %9, !prof !202

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull %0, ptr noundef nonnull @.str.25, i64 noundef %1)
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #28
  resume { ptr, i32 } %8

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  store i64 %1, ptr %10, align 8, !tbaa !186
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN7cPacket12addBitLengthEl(ptr noundef nonnull align 8 dereferenceable(186) %0, i64 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !203 {
  %3 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !186
  %5 = add nsw i64 %4, %1
  store i64 %5, ptr %3, align 8, !tbaa !186
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %13, !prof !204

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  %9 = load i64, ptr %3, align 8, !tbaa !186
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.26, i64 noundef %9, i64 noundef %1)
          to label %10 unwind label %11

10:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #28
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cPacket11encapsulateEPS_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !205 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !187
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !206

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.27)
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %87

12:                                               ; preds = %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %86, label %14, !prof !207

14:                                               ; preds = %12
  %15 = load ptr, ptr %1, align 8, !tbaa !71
  %16 = getelementptr inbounds ptr, ptr %15, i64 16
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(36) %1), !prof !208
  %19 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !105
  %20 = tail call noundef ptr @_ZNK11cSimulation22getContextSimpleModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %19)
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %76, label %22, !prof !206

22:                                               ; preds = %14
  %23 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  %24 = load ptr, ptr %1, align 8, !tbaa !71
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %28 unwind label %55

28:                                               ; preds = %22
  %29 = load ptr, ptr %1, align 8, !tbaa !71
  %30 = getelementptr inbounds ptr, ptr %29, i64 7
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %33 unwind label %55

33:                                               ; preds = %28
  %34 = load ptr, ptr %1, align 8, !tbaa !71
  %35 = getelementptr inbounds ptr, ptr %34, i64 16
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %38 unwind label %55

38:                                               ; preds = %33
  %39 = load ptr, ptr %37, align 8, !tbaa !71
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %43 unwind label %55

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #28
  %44 = load ptr, ptr %1, align 8, !tbaa !71
  %45 = getelementptr inbounds ptr, ptr %44, i64 16
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %48 unwind label %57

48:                                               ; preds = %43
  %49 = load ptr, ptr %47, align 8, !tbaa !71
  %50 = getelementptr inbounds ptr, ptr %49, i64 8
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %52 unwind label %57

52:                                               ; preds = %48
  %53 = load ptr, ptr %3, align 8, !tbaa !150
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %23, ptr noundef nonnull %0, ptr noundef nonnull @.str.28, ptr noundef %27, ptr noundef %32, ptr noundef %42, ptr noundef %53)
          to label %54 unwind label %59

54:                                               ; preds = %52
  invoke void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
          to label %92 unwind label %59

55:                                               ; preds = %38, %33, %28, %22
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %73

57:                                               ; preds = %48, %43
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %70

59:                                               ; preds = %54, %52
  %60 = phi i1 [ false, %54 ], [ true, %52 ]
  %61 = landingpad { ptr, i32 }
          cleanup
  %62 = load ptr, ptr %3, align 8, !tbaa !150
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !128
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %70

69:                                               ; preds = %59
  call void @_ZdlPv(ptr noundef %62) #27
  br label %70

70:                                               ; preds = %69, %65, %57
  %71 = phi { ptr, i32 } [ %58, %57 ], [ %61, %65 ], [ %61, %69 ]
  %72 = phi i1 [ true, %57 ], [ %60, %65 ], [ %60, %69 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  br label %73

73:                                               ; preds = %70, %55
  %74 = phi { ptr, i32 } [ %71, %70 ], [ %56, %55 ]
  %75 = phi i1 [ %72, %70 ], [ true, %55 ]
  br i1 %75, label %87, label %90

76:                                               ; preds = %14
  store ptr %1, ptr %4, align 8, !tbaa !187
  %77 = load ptr, ptr %0, align 8, !tbaa !71
  %78 = getelementptr inbounds ptr, ptr %77, i64 12
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1), !prof !209
  %80 = load ptr, ptr %4, align 8, !tbaa !187
  %81 = getelementptr inbounds %class.cPacket, ptr %80, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !186
  %83 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !186
  %85 = add nsw i64 %84, %82
  store i64 %85, ptr %83, align 8, !tbaa !186
  br label %86

86:                                               ; preds = %76, %12
  ret void

87:                                               ; preds = %73, %10
  %88 = phi ptr [ %8, %10 ], [ %23, %73 ]
  %89 = phi { ptr, i32 } [ %11, %10 ], [ %74, %73 ]
  call void @__cxa_free_exception(ptr %88) #28
  br label %90

90:                                               ; preds = %87, %73
  %91 = phi { ptr, i32 } [ %74, %73 ], [ %89, %87 ]
  resume { ptr, i32 } %91

92:                                               ; preds = %54
  unreachable
}

declare noundef ptr @_ZNK11cSimulation22getContextSimpleModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7cPacket11decapsulateEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5, !prof !211

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !186
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %13, !prof !212

9:                                                ; preds = %5
  %10 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !186
  %12 = sub nsw i64 %7, %11
  store i64 %12, ptr %6, align 8, !tbaa !186
  br label %13

13:                                               ; preds = %9, %5
  %14 = load i64, ptr %6, align 8, !tbaa !186
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21, !prof !211

16:                                               ; preds = %13
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #28
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull %0, ptr noundef nonnull @.str.29)
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #30
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %17) #28
  resume { ptr, i32 } %20

21:                                               ; preds = %13
  %22 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !184
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %36, label %25, !prof !213

25:                                               ; preds = %21
  %26 = add i16 %23, -1
  store i16 %26, ptr %22, align 8, !tbaa !184
  %27 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !188
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %31, !prof !214

30:                                               ; preds = %25
  store ptr null, ptr %27, align 8, !tbaa !188
  br label %31

31:                                               ; preds = %30, %25
  %32 = load ptr, ptr %3, align 8, !tbaa !71
  %33 = getelementptr inbounds ptr, ptr %32, i64 11
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(186) %3), !prof !215
  store ptr null, ptr %2, align 8, !tbaa !187
  br label %41

36:                                               ; preds = %21
  %37 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  store ptr %0, ptr %37, align 8, !tbaa !188
  store ptr null, ptr %2, align 8, !tbaa !187
  %38 = load ptr, ptr %0, align 8, !tbaa !71
  %39 = getelementptr inbounds ptr, ptr %38, i64 13
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3), !prof !216
  br label %41

41:                                               ; preds = %36, %1, %31
  %42 = phi ptr [ %35, %31 ], [ null, %1 ], [ %3, %36 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK7cPacket18getEncapsulatedMsgEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #3 align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN7cPacket15_detachEncapMsgEv(ptr noundef nonnull align 8 dereferenceable(186) %0)
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %2, align 8, !tbaa !187
  ret ptr %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK7cPacket18getEncapsulationIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(186) %0) local_unnamed_addr #18 align 2 !prof !76 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !187
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !217

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.cMessage, ptr %3, i64 0, i32 18
  %9 = load i64, ptr %8, align 8, !tbaa !90
  ret i64 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK7cPacket22getEncapsulationTreeIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(186) %0) local_unnamed_addr #18 align 2 !prof !76 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !187
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !220

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.cMessage, ptr %3, i64 0, i32 19
  %9 = load i64, ptr %8, align 8, !tbaa !103
  ret i64 %9
}

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #6 comdat align 2 !prof !221 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.16, ptr %3, !prof !223
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 !prof !224 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !225
  ret ptr %5
}

declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8cMessage3dupEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26
  invoke void @_ZN8cMessageC2ERKS_(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #27
  resume { ptr, i32 } %5
}

declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 !prof !226 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 !prof !227 {
  ret i1 true
}

declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #17 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !228
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #17 comdat align 2 !prof !76 {
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cMessage8isPacketEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #8 comdat align 2 !prof !229 {
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cPacket3dupEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #26
  invoke void @_ZN7cPacketC2ERKS_(ptr noundef nonnull align 8 dereferenceable(186) %2, ptr noundef nonnull align 8 dereferenceable(186) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #27
  resume { ptr, i32 } %5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cPacket8isPacketEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #6 comdat align 2 !prof !230 {
  ret i1 true
}

declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define internal noundef nonnull ptr @_ZL15__uniquename_46v() #3 personality ptr @__gxx_personality_v0 !prof !76 {
  %1 = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26
  invoke void @_ZN8cMessageC2EPKcs(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef null, i16 noundef signext 0)
          to label %2 unwind label %3

2:                                                ; preds = %0
  ret ptr %1

3:                                                ; preds = %0
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %1) #27
  resume { ptr, i32 } %4
}

declare void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define internal noundef nonnull ptr @_ZL15__uniquename_47v() #3 personality ptr @__gxx_personality_v0 !prof !76 {
  %1 = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #26
  invoke void @_ZN7cPacketC2EPKcsl(ptr noundef nonnull align 8 dereferenceable(186) %1, ptr noundef null, i16 noundef signext 0, i64 noundef 0)
          to label %2 unwind label %3

2:                                                ; preds = %0
  ret ptr %1

3:                                                ; preds = %0
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %1) #27
  resume { ptr, i32 } %4
}

declare noundef ptr @_ZN7SimTime4ttoaEPcliRS0_(ptr noundef, i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN7SimTime19overflowSubtractingERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !71
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !70

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !128
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #27
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !150
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !70

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !128
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #27
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !231

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !128
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #27
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !76 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #28
  tail call void @_ZdlPv(ptr noundef %0) #27
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #27
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !232
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !76 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !128
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.30)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !125, !alias.scope !235
  %10 = load ptr, ptr %7, align 8, !tbaa !150
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !128
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !150, !alias.scope !235
  %19 = load i64, ptr %11, align 8, !tbaa !130
  store i64 %19, ptr %9, align 8, !tbaa !130, !alias.scope !235
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !128
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !128, !alias.scope !235
  store ptr %11, ptr %7, align 8, !tbaa !150
  store i64 0, ptr %21, align 8, !tbaa !128
  store i8 0, ptr %11, align 8, !tbaa !130
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !128, !noalias !238
  %27 = load i64, ptr %23, align 8, !tbaa !128, !noalias !238
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #30
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !150, !noalias !238
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !125, !alias.scope !238
  %37 = load ptr, ptr %34, align 8, !tbaa !150
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !128
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !150, !alias.scope !238
  %46 = load i64, ptr %38, align 8, !tbaa !130
  store i64 %46, ptr %36, align 8, !tbaa !130, !alias.scope !238
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !128
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !128, !alias.scope !238
  store ptr %38, ptr %34, align 8, !tbaa !150
  store i64 0, ptr %48, align 8, !tbaa !128
  store i8 0, ptr %38, align 8, !tbaa !130
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  %52 = load ptr, ptr %3, align 8, !tbaa !150
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !128
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #27
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !150
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !128
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #27
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !150
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !128
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #27
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !150
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !128
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #27
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !150
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !128
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #27
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !241, !range !115, !noundef !116
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !242
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #17 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #10 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #17 align 2

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3 align 2

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cmessage.cc() #22 section ".text.startup" !prof !68 !PGOFuncName !243 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #28
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_46Ev)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr nonnull @__dso_handle) #28
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_47E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_47Ev)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_47E, ptr nonnull @__dso_handle) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(read) }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!67}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_Z12opp_typenameRKSt9type_info, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_, i64 1}
!39 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_47Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!40 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_47Ev, ptr @_Znwm, i64 1}
!41 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_47Ev, ptr @_Z12opp_typenameRKSt9type_info, i64 1}
!42 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_47Ev, ptr @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_, i64 1}
!43 = !{ptr @_ZN8cMessageC2EPKcs, ptr @_ZN12cOwnedObjectC2EPKcb, i64 74870}
!44 = !{ptr @_ZN8cMessageD0Ev, ptr @_ZN12cOwnedObjectD2Ev, i64 74870}
!45 = !{ptr @_ZN8cMessageD0Ev, ptr @_ZdlPv, i64 74870}
!46 = !{ptr @_ZN8cMessage14setControlInfoEP7cObject, ptr @__dynamic_cast, i64 158255}
!47 = !{ptr @_ZN8cMessage17removeControlInfoEv, ptr @__dynamic_cast, i64 131857}
!48 = !{ptr @_ZNK8cMessage9arrivedOnEPKc, ptr @_ZNK12cNamedObject7getNameEv, i64 89739}
!49 = !{ptr @_ZNK8cMessage9arrivedOnEPKc, ptr @strcmp, i64 158254}
!50 = !{ptr @_ZNK7cObject6isNameEPKc, ptr @_ZNK12cNamedObject7getNameEv, i64 1311143}
!51 = !{ptr @_ZNK7cObject6isNameEPKc, ptr @strcmp, i64 2312175}
!52 = !{ptr @_ZN7cPacketaSERKS_, ptr @_ZN12cOwnedObjectaSERKS_, i64 187455883}
!53 = !{ptr @_ZN7cPacketaSERKS_, ptr @_ZN7cObject13dropAndDeleteEP12cOwnedObject, i64 187455883}
!54 = !{ptr @_ZN7cPacketC2EPKcsl, ptr @_ZN12cOwnedObjectC2EPKcb, i64 187798485}
!55 = !{ptr @_ZN7cPacketD2Ev, ptr @__clang_call_terminate, i64 179}
!56 = !{ptr @_ZN7cPacketD2Ev, ptr @_ZN12cOwnedObjectD2Ev, i64 187798306}
!57 = !{ptr @_ZN7cPacket11encapsulateEPS_, ptr @_ZNK12cOwnedObject8getOwnerEv, i64 100587}
!58 = !{ptr @_ZN7cPacket11encapsulateEPS_, ptr @_ZNK11cSimulation22getContextSimpleModuleEv, i64 100587}
!59 = !{ptr @_ZN7cPacket11encapsulateEPS_, ptr @_ZN7cObject4takeEP12cOwnedObject, i64 100587}
!60 = !{ptr @_ZN7cPacket11decapsulateEv, ptr @_ZN7cObject4dropEP12cOwnedObject, i64 23742}
!61 = !{ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK12cNamedObject7getNameEv, i64 97893}
!62 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!63 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!64 = !{ptr @_GLOBAL__sub_I_cmessage.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!65 = !{ptr @_GLOBAL__sub_I_cmessage.cc, ptr @__cxa_atexit, i64 3}
!66 = !{ptr @_GLOBAL__sub_I_cmessage.cc, ptr @_ZN16ExecuteOnStartupC1EPFvvE, i64 2}
!67 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!68 = !{!"function_entry_count", i64 1}
!69 = !{!"simulator/cmessage.cc;_ZN12_GLOBAL__N_119__onstartup_func_46Ev"}
!70 = !{!"branch_weights", i32 1, i32 0}
!71 = !{!72, !72, i64 0}
!72 = !{!"vtable pointer", !73, i64 0}
!73 = !{!"Simple C++ TBAA"}
!74 = !{!"VP", i32 0, i64 1, i64 3823829244639105016, i64 1}
!75 = !{!"simulator/cmessage.cc;_ZN12_GLOBAL__N_119__onstartup_func_47Ev"}
!76 = !{!"function_entry_count", i64 0}
!77 = !{!78, !85, i64 120}
!78 = !{!"_ZTS8cMessage", !79, i64 0, !84, i64 36, !84, i64 38, !84, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !85, i64 72, !85, i64 76, !85, i64 80, !85, i64 84, !86, i64 88, !86, i64 96, !86, i64 104, !86, i64 112, !85, i64 120, !87, i64 128, !87, i64 136, !87, i64 144, !87, i64 152}
!79 = !{!"_ZTS12cOwnedObject", !80, i64 0, !82, i64 24, !85, i64 32}
!80 = !{!"_ZTS12cNamedObject", !81, i64 0, !82, i64 8, !84, i64 16, !84, i64 18}
!81 = !{!"_ZTS7cObject"}
!82 = !{!"any pointer", !83, i64 0}
!83 = !{!"omnipotent char", !73, i64 0}
!84 = !{!"short", !83, i64 0}
!85 = !{!"int", !83, i64 0}
!86 = !{!"_ZTS7SimTime", !87, i64 0}
!87 = !{!"long", !83, i64 0}
!88 = !{!78, !87, i64 136}
!89 = !{!87, !87, i64 0}
!90 = !{!78, !87, i64 144}
!91 = !{!"branch_weights", i32 0, i32 187455883}
!92 = !{!78, !84, i64 36}
!93 = !{!78, !84, i64 38}
!94 = !{!86, !87, i64 0}
!95 = !{!78, !84, i64 40}
!96 = !{!78, !82, i64 48}
!97 = !{!"branch_weights", i32 187455883, i32 0}
!98 = !{!78, !82, i64 64}
!99 = !{!78, !85, i64 72}
!100 = !{!78, !85, i64 76}
!101 = !{!78, !85, i64 80}
!102 = !{!78, !85, i64 84}
!103 = !{!78, !87, i64 152}
!104 = !{!"function_entry_count", i64 74870}
!105 = !{!82, !82, i64 0}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!108 = distinct !{!108, !"_ZNK11cSimulation10getSimTimeEv"}
!109 = !{!85, !85, i64 0}
!110 = !{!"branch_weights", i32 0, i32 187873355}
!111 = !{!112, !113, i64 9}
!112 = !{!"_ZTS6cEnvir", !113, i64 8, !113, i64 9, !113, i64 10, !114, i64 16}
!113 = !{!"bool", !83, i64 0}
!114 = !{!"_ZTSSo"}
!115 = !{i8 0, i8 2}
!116 = !{}
!117 = !{!"branch_weights", i32 187873355, i32 0}
!118 = !{!"VP", i32 0, i64 187873355, i64 -411060129269755707, i64 187873355}
!119 = !{!78, !82, i64 56}
!120 = !{!"branch_weights", i32 187846957, i32 26398}
!121 = !{!"VP", i32 0, i64 26398, i64 1829127175431269583, i64 26398}
!122 = !{!"branch_weights", i32 0, i32 26398}
!123 = !{!"VP", i32 0, i64 0, i64 2507531025487321326, i64 0}
!124 = !{!"VP", i32 0, i64 10, i64 2507531025487321326, i64 10}
!125 = !{!126, !82, i64 0}
!126 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !82, i64 0}
!127 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!128 = !{!129, !87, i64 8}
!129 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !126, i64 0, !87, i64 8, !83, i64 16}
!130 = !{!83, !83, i64 0}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!133 = distinct !{!133, !"_ZNK11cSimulation10getSimTimeEv"}
!134 = !{!135, !137, i64 32}
!135 = !{!"_ZTSSt8ios_base", !87, i64 8, !87, i64 16, !136, i64 24, !137, i64 28, !137, i64 32, !82, i64 40, !138, i64 48, !83, i64 64, !85, i64 192, !82, i64 200, !139, i64 208}
!136 = !{!"_ZTSSt13_Ios_Fmtflags", !83, i64 0}
!137 = !{!"_ZTSSt12_Ios_Iostate", !83, i64 0}
!138 = !{!"_ZTSNSt8ios_base6_WordsE", !82, i64 0, !87, i64 8}
!139 = !{!"_ZTSSt6locale", !82, i64 0}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!142 = distinct !{!142, !"_ZNK11cSimulation10getSimTimeEv"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZmiRK7SimTimeS1_: argument 0"}
!145 = distinct !{!145, !"_ZmiRK7SimTimeS1_"}
!146 = !{!147, !82, i64 48}
!147 = !{!"_ZTS11cSimulation", !148, i64 0, !85, i64 36, !85, i64 40, !82, i64 48, !85, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !85, i64 96, !82, i64 104, !82, i64 112, !86, i64 120, !87, i64 128, !82, i64 136, !82, i64 144, !82, i64 152, !149, i64 160}
!148 = !{!"_ZTS23cNoncopyableOwnedObject", !79, i64 0}
!149 = !{!"_ZTS12cMessageHeap", !79, i64 0, !82, i64 40, !85, i64 48, !85, i64 52, !87, i64 56}
!150 = !{!129, !82, i64 0}
!151 = !{!"branch_weights", i32 1257662, i32 631781}
!152 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!153 = !{!"function_entry_count", i64 158255}
!154 = !{!"branch_weights", i32 0, i32 158255}
!155 = !{!"branch_weights", i32 158255, i32 0}
!156 = !{!"function_entry_count", i64 131857}
!157 = !{!"branch_weights", i32 0, i32 131857}
!158 = !{!"branch_weights", i32 131857, i32 0}
!159 = !{!"function_entry_count", i64 202192862}
!160 = !{!"branch_weights", i32 0, i32 202192862}
!161 = !{!"branch_weights", i32 202192862, i32 0}
!162 = !{!"VP", i32 0, i64 202192862, i64 2387244025354718738, i64 202192862}
!163 = !{!"function_entry_count", i64 158254}
!164 = !{!"branch_weights", i32 0, i32 158254}
!165 = !{!"branch_weights", i32 158254, i32 0}
!166 = !{!"VP", i32 0, i64 158254, i64 2387244025354718738, i64 158254}
!167 = !{!"VP", i32 0, i64 158254, i64 -1846066915438621208, i64 89739, i64 8390818187414654894, i64 58376, i64 -3513973037635291526, i64 10137}
!168 = !{!"branch_weights", i32 0, i32 2470429}
!169 = !{!"function_entry_count", i64 2312175}
!170 = !{!"VP", i32 0, i64 2312175, i64 -1846066915438621208, i64 1311143, i64 8390818187414654894, i64 852915, i64 -3513973037635291526, i64 148116}
!171 = !{!172, !85, i64 16}
!172 = !{!"_ZTS5cGate", !81, i64 0, !82, i64 8, !85, i64 16, !82, i64 24, !82, i64 32, !82, i64 40}
!173 = !{!"function_entry_count", i64 468305915}
!174 = !{!"branch_weights", i32 0, i32 468305915}
!175 = !{!176, !85, i64 112}
!176 = !{!"_ZTS7cModule", !177, i64 0, !82, i64 104, !85, i64 112, !82, i64 120, !82, i64 128, !82, i64 136, !82, i64 144, !85, i64 152, !82, i64 160, !85, i64 168, !85, i64 172}
!177 = !{!"_ZTS10cComponent", !178, i64 0, !82, i64 56, !84, i64 64, !82, i64 72, !84, i64 80, !84, i64 82, !82, i64 88, !82, i64 96}
!178 = !{!"_ZTS12cDefaultList", !148, i64 0, !82, i64 40, !85, i64 48, !85, i64 52}
!179 = !{!"function_entry_count", i64 265916806}
!180 = !{!"branch_weights", i32 0, i32 265916806}
!181 = !{!"function_entry_count", i64 202389109}
!182 = !{!"branch_weights", i32 0, i32 202389109}
!183 = !{!"function_entry_count", i64 187455883}
!184 = !{!185, !84, i64 184}
!185 = !{!"_ZTS7cPacket", !78, i64 0, !87, i64 160, !86, i64 168, !82, i64 176, !84, i64 184}
!186 = !{!185, !87, i64 160}
!187 = !{!185, !82, i64 176}
!188 = !{!79, !82, i64 24}
!189 = !{!"branch_weights", i32 1052287, i32 186403596}
!190 = !{!"branch_weights", i32 0, i32 186403596}
!191 = !{!"function_entry_count", i64 187798485}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZNK11cSimulation10getSimTimeEv: argument 0"}
!194 = distinct !{!194, !"_ZNK11cSimulation10getSimTimeEv"}
!195 = !{!"branch_weights", i32 0, i32 187798485}
!196 = !{!"branch_weights", i32 1342125, i32 186456360}
!197 = !{!"branch_weights", i32 76845, i32 186379515}
!198 = !{!"branch_weights", i32 97351, i32 186282164}
!199 = !{!"VP", i32 0, i64 76845, i64 -3965635052739051292, i64 71150, i64 -4734994690124813769, i64 5695}
!200 = !{!"VP", i32 0, i64 26387, i64 2507531025487321326, i64 26387}
!201 = !{!"function_entry_count", i64 340945}
!202 = !{!"branch_weights", i32 0, i32 340945}
!203 = !{!"function_entry_count", i64 185277510}
!204 = !{!"branch_weights", i32 0, i32 185277510}
!205 = !{!"function_entry_count", i64 100587}
!206 = !{!"branch_weights", i32 100587, i32 0}
!207 = !{!"branch_weights", i32 0, i32 100587}
!208 = !{!"VP", i32 0, i64 100587, i64 4823069506739400254, i64 100587}
!209 = !{!"VP", i32 0, i64 100587, i64 4492280530626840185, i64 100587}
!210 = !{!"function_entry_count", i64 47823}
!211 = !{!"branch_weights", i32 0, i32 47823}
!212 = !{!"branch_weights", i32 47823, i32 0}
!213 = !{!"branch_weights", i32 23742, i32 24081}
!214 = !{!"branch_weights", i32 0, i32 24081}
!215 = !{!"VP", i32 0, i64 24081, i64 -6892541660627434584, i64 22321, i64 5850416761443356030, i64 1760}
!216 = !{!"VP", i32 0, i64 23742, i64 -1820763669184359675, i64 23742}
!217 = distinct !{!217, !218, !219}
!218 = !{!"llvm.loop.mustprogress"}
!219 = !{!"llvm.loop.unroll.disable"}
!220 = distinct !{!220, !218, !219}
!221 = !{!"function_entry_count", i64 192538233}
!222 = !{!80, !82, i64 8}
!223 = !{!"branch_weights", i32 0, i32 192538233}
!224 = !{!"function_entry_count", i64 235321}
!225 = !{!"VP", i32 0, i64 235321, i64 8390818187414654894, i64 137428, i64 -1846066915438621208, i64 97893}
!226 = !{!"function_entry_count", i64 542987320}
!227 = !{!"function_entry_count", i64 147484992}
!228 = !{!80, !84, i64 16}
!229 = !{!"function_entry_count", i64 19688}
!230 = !{!"function_entry_count", i64 404758530}
!231 = !{!"branch_weights", i32 0, i32 1}
!232 = !{!233, !85, i64 8}
!233 = !{!"_ZTS10cException", !234, i64 0, !85, i64 8, !129, i64 16, !113, i64 48, !129, i64 56, !129, i64 88, !85, i64 120}
!234 = !{!"_ZTSSt9exception"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!237 = distinct !{!237, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!240 = distinct !{!240, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!241 = !{!233, !113, i64 48}
!242 = !{!233, !85, i64 120}
!243 = !{!"simulator/cmessage.cc;_GLOBAL__sub_I_cmessage.cc"}
