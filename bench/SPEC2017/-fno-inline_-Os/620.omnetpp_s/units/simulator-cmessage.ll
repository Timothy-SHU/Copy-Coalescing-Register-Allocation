; ModuleID = 'simulator/cmessage.cc'
source_filename = "simulator/cmessage.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.ExecuteOnStartup = type { ptr, ptr }
%class.cGlobalRegistrationList = type { ptr, ptr }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.cObject = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.SimTime = type { i64 }
%class.cMessage = type { %class.cOwnedObject.base, i16, i16, i16, ptr, ptr, ptr, i32, i32, i32, i32, %class.SimTime, %class.SimTime, %class.SimTime, %class.SimTime, i32, i64, i64, i64, i64 }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%class.cPacket = type <{ %class.cMessage, i64, %class.SimTime, ptr, i16, [6 x i8] }>
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%struct._Guard = type { ptr }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%class.cGate = type { %class.cObject, ptr, i32, ptr, ptr, ptr }
%class.cModule = type { %class.cComponent, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }

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

$_ZN7SimTimeC2Ev = comdat any

$_ZN11cSimulation19getActiveSimulationEv = comdat any

$_ZNK11cSimulation10getSimTimeEv = comdat any

$_ZN7SimTimeaSERKS_ = comdat any

$_ZN7SimTimeaSIiEERKS_T_ = comdat any

$_ZN7SimTimeC2ERKS_ = comdat any

$_ZN7SimTime5checkIiEEvT_ = comdat any

$_ZN7SimTime7toInt64Ed = comdat any

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNK7SimTimegtERKS_ = comdat any

$_ZlsRSoRK7SimTime = comdat any

$_ZmiRK7SimTimeS1_ = comdat any

$_ZNK8cMessage7getKindEv = comdat any

$_ZNK11cSimulation9getModuleEi = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNK7SimTime3rawEv = comdat any

$_ZN7SimTime11getScaleExpEv = comdat any

$_ZN7SimTimemIERKS_ = comdat any

$_ZN7SimTime10checkedSubERKS_ = comdat any

$_ZN7SimTime12haveSameSignEll = comdat any

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

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZN8cMessage10getParListEv = comdat any

$_ZNK7cObject6isNameEPKc = comdat any

$_Z10opp_strcmpPKcS0_ = comdat any

$_ZNK5cGate8getIndexEv = comdat any

$_ZNK5cGate4Desc7indexOfEPKS_ = comdat any

$_ZNK7cModule5getIdEv = comdat any

$_ZNK8cMessage5getIdEv = comdat any

$_ZNK8cMessage9getTreeIdEv = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZTV8cMessage = dso_local unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTI8cMessage, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN8cMessageD2Ev, ptr @_ZN8cMessageD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK8cMessage4infoB5cxx11Ev, ptr @_ZNK8cMessage12detailedInfoB5cxx11Ev, ptr @_ZNK8cMessage3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN8cMessage10parsimPackEP11cCommBuffer, ptr @_ZN8cMessage12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN8cMessage12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv, ptr @_ZNK8cMessage8isPacketEv, ptr @_ZNK8cMessage16getDisplayStringEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS8cMessage = dso_local constant [10 x i8] c"8cMessage\00", align 1
@_ZTI12cOwnedObject = external constant ptr
@_ZTI8cMessage = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8cMessage, ptr @_ZTI12cOwnedObject }, align 8
@_ZTV7cPacket = dso_local unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTI7cPacket, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN7cPacketD2Ev, ptr @_ZN7cPacketD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cPacket4infoB5cxx11Ev, ptr @_ZNK7cPacket12detailedInfoB5cxx11Ev, ptr @_ZNK7cPacket3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cPacket10parsimPackEP11cCommBuffer, ptr @_ZN7cPacket12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN7cPacket12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv, ptr @_ZNK7cPacket8isPacketEv, ptr @_ZNK8cMessage16getDisplayStringEv] }, align 8
@_ZTS7cPacket = dso_local constant [9 x i8] c"7cPacket\00", align 1
@_ZTI7cPacket = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS7cPacket, ptr @_ZTI8cMessage }, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN12_GLOBAL__N_118__onstartup_obj_46E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@classes = external global %class.cGlobalRegistrationList, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_47E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZN8cMessage7next_idE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN8cMessage10total_msgsE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN8cMessage9live_msgsE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@_ZN7SimTime6dscaleE = external local_unnamed_addr global i64, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
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
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"setControlInfo(): pointer is NULL\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"setControlInfo(): message already has control info attached\00", align 1
@_ZTI7cObject = external constant ptr
@.str.25 = private unnamed_addr constant [31 x i8] c"par(int): has no parameter #%d\00", align 1
@_ZTI7cMsgPar = external constant ptr
@.str.26 = private unnamed_addr constant [51 x i8] c"par(int): parameter #%d is of type %s, not cMsgPar\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"par(const char *): has no parameter called `%s'\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"par(const char *): parameter `%s' is of type %s, not cMsgPar\00", align 1
@.str.29 = private unnamed_addr constant [104 x i8] c"operator=(): this message is refcounted (shared between several messages), it is forbidden to change it\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"setBitLength(): negative length %ld\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"addBitLength(): length became negative (%l) after adding %ld\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"encapsulate(): another message already encapsulated\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"encapsulate(): not owner of message (%s)%s, owner is (%s)%s\00", align 1
@.str.34 = private unnamed_addr constant [65 x i8] c"decapsulate(): packet length is smaller than encapsulated packet\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cmessage.cc, ptr null }]

@_ZN8cMessageC1ERKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN8cMessageC2ERKS_
@_ZN8cMessageC1EPKcs = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN8cMessageC2EPKcs
@_ZN8cMessageD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8cMessageD2Ev
@_ZN7cPacketC1ERKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN7cPacketC2ERKS_
@_ZN7cPacketC1EPKcsl = dso_local unnamed_addr alias void (ptr, ptr, i16, i64), ptr @_ZN7cPacketC2EPKcsl
@_ZN7cPacketD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7cPacketD2Ev

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN8cMessageD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.19, ptr %3, !prof !147
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !148 {
  %2 = load ptr, ptr %0, align 8, !tbaa !149
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK8cMessage4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %5 = alloca %class.SimTime, align 8
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !152
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
          to label %17 unwind label %18

17:                                               ; preds = %16
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br label %259

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br label %260

20:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #19
  %21 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %22 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  invoke void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %5, ptr noundef nonnull align 8 dereferenceable(224) %22) #19
          to label %23 unwind label %40

23:                                               ; preds = %20
  %24 = call noundef zeroext i1 @_ZNK7SimTimegtERKS_(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br i1 %24, label %25, label %46

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %4, i64 16
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull @.str.4) #19
          to label %28 unwind label %42

28:                                               ; preds = %25
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK7SimTime(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %21) #19
          to label %30 unwind label %42

30:                                               ; preds = %28
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.5) #19
          to label %32 unwind label %42

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %33 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  invoke void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %7, ptr noundef nonnull align 8 dereferenceable(224) %33) #19
          to label %34 unwind label %44

34:                                               ; preds = %32
  invoke void @_ZmiRK7SimTimeS1_(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
          to label %35 unwind label %44

35:                                               ; preds = %34
  %36 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK7SimTime(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %6) #19
          to label %37 unwind label %44

37:                                               ; preds = %35
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull @.str.6) #19
          to label %39 unwind label %44

39:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  br label %46

40:                                               ; preds = %20
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br label %257

42:                                               ; preds = %255, %253, %251, %245, %243, %241, %235, %232, %30, %28, %25
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %257

44:                                               ; preds = %37, %35, %34, %32
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  br label %257

46:                                               ; preds = %39, %23
  %47 = call noundef signext i16 @_ZNK8cMessage7getKindEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %48 = icmp eq i16 %47, -1
  br i1 %48, label %49, label %84

49:                                               ; preds = %46
  %50 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %51 = load i32, ptr %13, align 8, !tbaa !152
  %52 = call noundef ptr @_ZNK11cSimulation9getModuleEi(ptr noundef nonnull align 8 dereferenceable(224) %50, i32 noundef %51) #19
  %53 = getelementptr inbounds i8, ptr %4, i64 16
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull @.str.7) #19
          to label %55 unwind label %75

55:                                               ; preds = %49
  %56 = icmp eq ptr %52, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #20
  %58 = load ptr, ptr %52, align 8, !tbaa !149
  %59 = getelementptr inbounds ptr, ptr %58, i64 8
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(176) %52) #19
          to label %61 unwind label %77

61:                                               ; preds = %57
  %62 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  br label %63

63:                                               ; preds = %55, %61
  %64 = phi ptr [ %62, %61 ], [ @.str.3, %55 ]
  %65 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %64) #19
          to label %66 unwind label %79

66:                                               ; preds = %63
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull @.str.8) #19
          to label %68 unwind label %79

68:                                               ; preds = %66
  %69 = load i32, ptr %13, align 8, !tbaa !152
  %70 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %67, i32 noundef %69) #19
          to label %71 unwind label %79

71:                                               ; preds = %68
  %72 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull @.str.9) #19
          to label %73 unwind label %79

73:                                               ; preds = %71
  br i1 %56, label %228, label %74

74:                                               ; preds = %73
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #20
  br label %228

75:                                               ; preds = %49
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %257

77:                                               ; preds = %57
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %82

79:                                               ; preds = %71, %68, %66, %63
  %80 = landingpad { ptr, i32 }
          cleanup
  br i1 %56, label %257, label %81

81:                                               ; preds = %79
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi { ptr, i32 } [ %78, %77 ], [ %80, %81 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #20
  br label %257

84:                                               ; preds = %46
  %85 = call noundef signext i16 @_ZNK8cMessage7getKindEv(ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %86 = icmp eq i16 %85, -2
  br i1 %86, label %87, label %122

87:                                               ; preds = %84
  %88 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %89 = load i32, ptr %13, align 8, !tbaa !152
  %90 = call noundef ptr @_ZNK11cSimulation9getModuleEi(ptr noundef nonnull align 8 dereferenceable(224) %88, i32 noundef %89) #19
  %91 = getelementptr inbounds i8, ptr %4, i64 16
  %92 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef nonnull @.str.10) #19
          to label %93 unwind label %113

93:                                               ; preds = %87
  %94 = icmp eq ptr %90, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #20
  %96 = load ptr, ptr %90, align 8, !tbaa !149
  %97 = getelementptr inbounds ptr, ptr %96, i64 8
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(176) %90) #19
          to label %99 unwind label %115

99:                                               ; preds = %95
  %100 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  br label %101

101:                                              ; preds = %93, %99
  %102 = phi ptr [ %100, %99 ], [ @.str.3, %93 ]
  %103 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef %102) #19
          to label %104 unwind label %117

104:                                              ; preds = %101
  %105 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef nonnull @.str.8) #19
          to label %106 unwind label %117

106:                                              ; preds = %104
  %107 = load i32, ptr %13, align 8, !tbaa !152
  %108 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %105, i32 noundef %107) #19
          to label %109 unwind label %117

109:                                              ; preds = %106
  %110 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull @.str.9) #19
          to label %111 unwind label %117

111:                                              ; preds = %109
  br i1 %94, label %228, label %112

112:                                              ; preds = %111
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #20
  br label %228

113:                                              ; preds = %87
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %257

115:                                              ; preds = %95
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %120

117:                                              ; preds = %109, %106, %104, %101
  %118 = landingpad { ptr, i32 }
          cleanup
  br i1 %94, label %257, label %119

119:                                              ; preds = %117
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  br label %120

120:                                              ; preds = %119, %115
  %121 = phi { ptr, i32 } [ %116, %115 ], [ %118, %119 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #20
  br label %257

122:                                              ; preds = %84
  %123 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 7
  %124 = load i32, ptr %123, align 8, !tbaa !158
  %125 = load i32, ptr %13, align 8, !tbaa !152
  %126 = icmp eq i32 %124, %125
  %127 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  br i1 %126, label %128, label %162

128:                                              ; preds = %122
  %129 = load i32, ptr %13, align 8, !tbaa !152
  %130 = call noundef ptr @_ZNK11cSimulation9getModuleEi(ptr noundef nonnull align 8 dereferenceable(224) %127, i32 noundef %129) #19
  %131 = getelementptr inbounds i8, ptr %4, i64 16
  %132 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef nonnull @.str.11) #19
          to label %133 unwind label %153

133:                                              ; preds = %128
  %134 = icmp eq ptr %130, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #20
  %136 = load ptr, ptr %130, align 8, !tbaa !149
  %137 = getelementptr inbounds ptr, ptr %136, i64 8
  %138 = load ptr, ptr %137, align 8
  invoke void %138(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(176) %130) #19
          to label %139 unwind label %155

139:                                              ; preds = %135
  %140 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  br label %141

141:                                              ; preds = %133, %139
  %142 = phi ptr [ %140, %139 ], [ @.str.3, %133 ]
  %143 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef %142) #19
          to label %144 unwind label %157

144:                                              ; preds = %141
  %145 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %143, ptr noundef nonnull @.str.8) #19
          to label %146 unwind label %157

146:                                              ; preds = %144
  %147 = load i32, ptr %13, align 8, !tbaa !152
  %148 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %145, i32 noundef %147) #19
          to label %149 unwind label %157

149:                                              ; preds = %146
  %150 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %148, ptr noundef nonnull @.str.9) #19
          to label %151 unwind label %157

151:                                              ; preds = %149
  br i1 %134, label %228, label %152

152:                                              ; preds = %151
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #20
  br label %228

153:                                              ; preds = %128
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %257

155:                                              ; preds = %135
  %156 = landingpad { ptr, i32 }
          cleanup
  br label %160

157:                                              ; preds = %149, %146, %144, %141
  %158 = landingpad { ptr, i32 }
          cleanup
  br i1 %134, label %257, label %159

159:                                              ; preds = %157
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  br label %160

160:                                              ; preds = %159, %155
  %161 = phi { ptr, i32 } [ %156, %155 ], [ %158, %159 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #20
  br label %257

162:                                              ; preds = %122
  %163 = load i32, ptr %123, align 8, !tbaa !158
  %164 = call noundef ptr @_ZNK11cSimulation9getModuleEi(ptr noundef nonnull align 8 dereferenceable(224) %127, i32 noundef %163) #19
  %165 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %166 = load i32, ptr %13, align 8, !tbaa !152
  %167 = call noundef ptr @_ZNK11cSimulation9getModuleEi(ptr noundef nonnull align 8 dereferenceable(224) %165, i32 noundef %166) #19
  %168 = getelementptr inbounds i8, ptr %4, i64 16
  %169 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %168, ptr noundef nonnull @.str.12) #19
          to label %170 unwind label %212

170:                                              ; preds = %162
  %171 = icmp eq ptr %164, null
  br i1 %171, label %178, label %172

172:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #20
  %173 = load ptr, ptr %164, align 8, !tbaa !149
  %174 = getelementptr inbounds ptr, ptr %173, i64 8
  %175 = load ptr, ptr %174, align 8
  invoke void %175(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(176) %164) #19
          to label %176 unwind label %214

176:                                              ; preds = %172
  %177 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  br label %178

178:                                              ; preds = %170, %176
  %179 = phi ptr [ %177, %176 ], [ @.str.3, %170 ]
  %180 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %169, ptr noundef %179) #19
          to label %181 unwind label %216

181:                                              ; preds = %178
  %182 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %180, ptr noundef nonnull @.str.8) #19
          to label %183 unwind label %216

183:                                              ; preds = %181
  %184 = load i32, ptr %123, align 8, !tbaa !158
  %185 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %182, i32 noundef %184) #19
          to label %186 unwind label %216

186:                                              ; preds = %183
  %187 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %185, ptr noundef nonnull @.str.9) #19
          to label %188 unwind label %216

188:                                              ; preds = %186
  br i1 %171, label %190, label %189

189:                                              ; preds = %188
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #20
  br label %190

190:                                              ; preds = %188, %189
  %191 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %168, ptr noundef nonnull @.str.13) #19
          to label %192 unwind label %212

192:                                              ; preds = %190
  %193 = icmp eq ptr %167, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #20
  %195 = load ptr, ptr %167, align 8, !tbaa !149
  %196 = getelementptr inbounds ptr, ptr %195, i64 8
  %197 = load ptr, ptr %196, align 8
  invoke void %197(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(176) %167) #19
          to label %198 unwind label %221

198:                                              ; preds = %194
  %199 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  br label %200

200:                                              ; preds = %192, %198
  %201 = phi ptr [ %199, %198 ], [ @.str.3, %192 ]
  %202 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %191, ptr noundef %201) #19
          to label %203 unwind label %223

203:                                              ; preds = %200
  %204 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %202, ptr noundef nonnull @.str.8) #19
          to label %205 unwind label %223

205:                                              ; preds = %203
  %206 = load i32, ptr %13, align 8, !tbaa !152
  %207 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %204, i32 noundef %206) #19
          to label %208 unwind label %223

208:                                              ; preds = %205
  %209 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %207, ptr noundef nonnull @.str.9) #19
          to label %210 unwind label %223

210:                                              ; preds = %208
  br i1 %193, label %228, label %211

211:                                              ; preds = %210
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #20
  br label %228

212:                                              ; preds = %190, %162
  %213 = landingpad { ptr, i32 }
          cleanup
  br label %257

214:                                              ; preds = %172
  %215 = landingpad { ptr, i32 }
          cleanup
  br label %219

216:                                              ; preds = %186, %183, %181, %178
  %217 = landingpad { ptr, i32 }
          cleanup
  br i1 %171, label %257, label %218

218:                                              ; preds = %216
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  br label %219

219:                                              ; preds = %218, %214
  %220 = phi { ptr, i32 } [ %215, %214 ], [ %217, %218 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #20
  br label %257

221:                                              ; preds = %194
  %222 = landingpad { ptr, i32 }
          cleanup
  br label %226

223:                                              ; preds = %208, %205, %203, %200
  %224 = landingpad { ptr, i32 }
          cleanup
  br i1 %193, label %257, label %225

225:                                              ; preds = %223
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  br label %226

226:                                              ; preds = %225, %221
  %227 = phi { ptr, i32 } [ %222, %221 ], [ %224, %225 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #20
  br label %257

228:                                              ; preds = %211, %210, %152, %151, %112, %111, %74, %73
  %229 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 5
  %230 = load ptr, ptr %229, align 8, !tbaa !159
  %231 = icmp eq ptr %230, null
  br i1 %231, label %255, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds i8, ptr %4, i64 16
  %234 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %233, ptr noundef nonnull @.str.14) #19
          to label %235 unwind label %42

235:                                              ; preds = %232
  %236 = load ptr, ptr %229, align 8, !tbaa !159
  %237 = load ptr, ptr %236, align 8, !tbaa !149
  %238 = getelementptr inbounds ptr, ptr %237, i64 5
  %239 = load ptr, ptr %238, align 8
  %240 = invoke noundef ptr %239(ptr noundef nonnull align 8 dereferenceable(8) %236) #19
          to label %241 unwind label %42

241:                                              ; preds = %235
  %242 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %234, ptr noundef %240) #19
          to label %243 unwind label %42

243:                                              ; preds = %241
  %244 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %242, ptr noundef nonnull @.str.9) #19
          to label %245 unwind label %42

245:                                              ; preds = %243
  %246 = load ptr, ptr %229, align 8, !tbaa !159
  %247 = load ptr, ptr %246, align 8, !tbaa !149
  %248 = getelementptr inbounds ptr, ptr %247, i64 7
  %249 = load ptr, ptr %248, align 8
  %250 = invoke noundef ptr %249(ptr noundef nonnull align 8 dereferenceable(8) %246) #19
          to label %251 unwind label %42

251:                                              ; preds = %245
  %252 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %244, ptr noundef %250) #19
          to label %253 unwind label %42

253:                                              ; preds = %251
  %254 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %252, ptr noundef nonnull @.str.15) #19
          to label %255 unwind label %42

255:                                              ; preds = %253, %228
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %4) #19
          to label %256 unwind label %42

256:                                              ; preds = %255
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #20
  br label %259

257:                                              ; preds = %223, %216, %157, %117, %79, %212, %219, %226, %153, %160, %113, %120, %75, %82, %44, %42, %40
  %258 = phi { ptr, i32 } [ %43, %42 ], [ %45, %44 ], [ %41, %40 ], [ %83, %82 ], [ %76, %75 ], [ %121, %120 ], [ %114, %113 ], [ %161, %160 ], [ %154, %153 ], [ %227, %226 ], [ %213, %212 ], [ %220, %219 ], [ %80, %79 ], [ %118, %117 ], [ %158, %157 ], [ %217, %216 ], [ %224, %223 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #20
  br label %260

259:                                              ; preds = %256, %17
  ret void

260:                                              ; preds = %257, %18
  %261 = phi { ptr, i32 } [ %19, %18 ], [ %258, %257 ]
  resume { ptr, i32 } %261
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK8cMessage12detailedInfoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8cMessage3dupEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #21
  invoke void @_ZN8cMessageC2ERKS_(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %0) #19
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN8cMessage10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29) #19
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN8cMessage12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29) #19
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !160 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !161
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !162 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN8cMessage12forEachChildEP8cVisitor(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !151 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !149
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4) #19
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !164
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cMessage8isPacketEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 comdat align 2 !prof !165 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK8cMessage16getDisplayStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !151 {
  ret ptr @.str.19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN7cPacketD0Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN7cPacketD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK7cPacket4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #19
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %3) #19
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #20
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK7cPacket12detailedInfoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cPacket3dupEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #21
  invoke void @_ZN7cPacketC2ERKS_(ptr noundef nonnull align 8 dereferenceable(186) %2, ptr noundef nonnull align 8 dereferenceable(186) %0) #19
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN7cPacket10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29) #19
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN7cPacket12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 29) #19
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cPacket12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !151 {
  tail call void @_ZN8cMessage12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) #19
  %3 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !166
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  tail call void @_ZN7cPacket15_detachEncapMsgEv(ptr noundef nonnull align 8 dereferenceable(186) %0) #19
  %7 = load ptr, ptr %3, align 8, !tbaa !166
  %8 = load ptr, ptr %1, align 8, !tbaa !149
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7) #19
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cPacket8isPacketEv(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #1 comdat align 2 !prof !168 {
  ret i1 true
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #5 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_46Ev) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_46E, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_46Ev() #2 personality ptr @__gxx_personality_v0 !prof !169 !PGOFuncName !170 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes) #19
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #21
  %3 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI8cMessage) #19
          to label %4 unwind label %9

4:                                                ; preds = %0
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef nonnull @_ZL15__uniquename_46v, ptr noundef null) #19
          to label %5 unwind label %9

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 8, !tbaa !149
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #19
  ret void

9:                                                ; preds = %4, %0
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef nonnull ptr @_ZL15__uniquename_46v() #2 personality ptr @__gxx_personality_v0 !prof !151 !PGOFuncName !171 {
  %1 = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #21
  invoke void @_ZN8cMessageC2EPKcs(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef null, i16 noundef signext 0) #19
          to label %2 unwind label %3

2:                                                ; preds = %0
  ret ptr %1

3:                                                ; preds = %0
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %1) #18
  resume { ptr, i32 } %4
}

; Function Attrs: optsize
declare void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #5 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_47E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_47Ev) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_47E, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_47Ev() #2 personality ptr @__gxx_personality_v0 !prof !169 !PGOFuncName !172 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes) #19
  %2 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #21
  %3 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI7cPacket) #19
          to label %4 unwind label %9

4:                                                ; preds = %0
  invoke void @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef nonnull @_ZL15__uniquename_47v, ptr noundef null) #19
          to label %5 unwind label %9

5:                                                ; preds = %4
  %6 = load ptr, ptr %1, align 8, !tbaa !149
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #19
  ret void

9:                                                ; preds = %4, %0
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef nonnull ptr @_ZL15__uniquename_47v() #2 personality ptr @__gxx_personality_v0 !prof !151 !PGOFuncName !173 {
  %1 = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #21
  invoke void @_ZN7cPacketC2EPKcsl(ptr noundef nonnull align 8 dereferenceable(186) %1, ptr noundef null, i16 noundef signext 0, i64 noundef 0) #19
          to label %2 unwind label %3

2:                                                ; preds = %0
  ret ptr %1

3:                                                ; preds = %0
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %1) #18
  resume { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN8cMessageC2ERKS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN12cOwnedObjectC2ERKS_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV8cMessage, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !149
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 11
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 12
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %5 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 13
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %6 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 14
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %7 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i32 -1, ptr %8, align 8, !tbaa !174
  %9 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 17
  store i64 -1, ptr %9, align 8, !tbaa !175
  %10 = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN8cMessageaSERKS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) #19
          to label %11 unwind label %19

11:                                               ; preds = %2
  %12 = load i64, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !176
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !176
  %14 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 18
  store i64 %12, ptr %14, align 8, !tbaa !177
  %15 = load i64, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !176
  %16 = add nsw i64 %15, 1
  store i64 %16, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !176
  %17 = load i64, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !176
  %18 = add nsw i64 %17, 1
  store i64 %18, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !176
  ret void

19:                                               ; preds = %2
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  resume { ptr, i32 } %20
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObjectC2ERKS_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !178 {
  store i64 0, ptr %0, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(160) ptr @_ZN8cMessageaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #2 align 2 !prof !180 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %48, label %4, !prof !181

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN12cOwnedObjectaSERKS_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  %6 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 1
  %7 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 1
  %8 = load <2 x i16>, ptr %6, align 4, !tbaa !182
  store <2 x i16> %8, ptr %7, align 4, !tbaa !182
  %9 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 14
  %10 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 14
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9) #19
  %12 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !183
  %14 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 3
  store i16 %13, ptr %14, align 8, !tbaa !183
  %15 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 11
  %16 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 11
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15) #19
  %18 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !163
  tail call void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19) #19
  %20 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !163
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23, !prof !184

23:                                               ; preds = %4
  %24 = load ptr, ptr %21, align 8, !tbaa !149
  %25 = getelementptr inbounds ptr, ptr %24, i64 11
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(64) %21) #19
  store ptr %27, ptr %18, align 8, !tbaa !163
  %28 = load ptr, ptr %0, align 8, !tbaa !149
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %27) #19
  br label %32

31:                                               ; preds = %4
  store ptr null, ptr %18, align 8, !tbaa !163
  br label %32

32:                                               ; preds = %31, %23
  %33 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !185
  %35 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !185
  %36 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 7
  %37 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  %38 = load <4 x i32>, ptr %36, align 8, !tbaa !186
  store <4 x i32> %38, ptr %37, align 8, !tbaa !186
  %39 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 12
  %40 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 12
  %41 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39) #19
  %42 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 13
  %43 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 13
  %44 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %42) #19
  %45 = getelementptr inbounds %class.cMessage, ptr %1, i64 0, i32 19
  %46 = load i64, ptr %45, align 8, !tbaa !187
  %47 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 19
  store i64 %46, ptr %47, align 8, !tbaa !187
  br label %48

48:                                               ; preds = %2, %32
  ret ptr %0
}

; Function Attrs: nounwind optsize
declare void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN8cMessageC2EPKcs(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !188 {
  %4 = alloca %class.SimTime, align 8
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false) #19
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV8cMessage, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !149
  %5 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 11
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %6 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 12
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %7 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 13
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  %8 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 14
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #19
  %9 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 1
  store i16 %2, ptr %9, align 4, !tbaa !189
  %10 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 2
  store i16 0, ptr %10, align 2, !tbaa !190
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store i16 -1, ptr %12, align 8, !tbaa !183
  %13 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 -1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %14 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  invoke void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %4, ptr noundef nonnull align 8 dereferenceable(224) %14) #19
          to label %15 unwind label %33

15:                                               ; preds = %3
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSIiEERKS_T_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 0) #19
          to label %18 unwind label %31

18:                                               ; preds = %15
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %17) #19
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %19) #19
  %21 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 15
  store i32 -1, ptr %21, align 8, !tbaa !174
  %22 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 17
  store i64 -1, ptr %22, align 8, !tbaa !175
  %23 = load i64, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !176
  %24 = add nsw i64 %23, 1
  store i64 %24, ptr @_ZN8cMessage7next_idE, align 8, !tbaa !176
  %25 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 18
  store i64 %23, ptr %25, align 8, !tbaa !177
  %26 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 19
  store i64 %23, ptr %26, align 8, !tbaa !187
  %27 = load i64, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !176
  %28 = add nsw i64 %27, 1
  store i64 %28, ptr @_ZN8cMessage10total_msgsE, align 8, !tbaa !176
  %29 = load i64, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !176
  %30 = add nsw i64 %29, 1
  store i64 %30, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !176
  ret void

31:                                               ; preds = %15
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %3
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %32, %31 ], [ %34, %33 ]
  call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  resume { ptr, i32 } %36
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation19getActiveSimulationEv() local_unnamed_addr #1 comdat align 2 !prof !191 {
  %1 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !192
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #2 comdat align 2 !prof !193 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %1, i64 0, i32 12
  tail call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !194 {
  %3 = load i64, ptr %1, align 8, !tbaa !179
  store i64 %3, ptr %0, align 8, !tbaa !179
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSIiEERKS_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !195 {
  tail call void @_ZN7SimTime5checkIiEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #19
  %3 = load i64, ptr @_ZN7SimTime6dscaleE, align 8, !tbaa !176
  %4 = sext i32 %1 to i64
  %5 = mul nsw i64 %3, %4
  %6 = sitofp i64 %5 to double
  %7 = tail call noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %6) #19
  store i64 %7, ptr %0, align 8, !tbaa !179
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !196 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime5checkIiEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !195 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !186
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %7, !prof !197

5:                                                ; preds = %2
  %6 = sitofp i32 %1 to double
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %6) #19
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !198 {
  %3 = tail call double @llvm.fabs.f64(double %1)
  %4 = fcmp ogt double %3, 0x43DFFFFFFFFFEDC8
  br i1 %4, label %5, label %6, !prof !199

5:                                                ; preds = %2
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #19
  br label %6

6:                                                ; preds = %5, %2
  %7 = fptosi double %1 to i64
  ret i64 %7
}

; Function Attrs: optsize
declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: optsize
declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !188 {
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV8cMessage, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !149
  %2 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #19
  %3 = getelementptr inbounds %class.cEnvir, ptr %2, i64 0, i32 2
  %4 = load i8, ptr %3, align 1, !tbaa !200, !range !204, !noundef !205
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11, !prof !206

6:                                                ; preds = %1
  %7 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #19
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = getelementptr inbounds ptr, ptr %8, i64 15
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(288) %7, ptr noundef nonnull %0) #19
          to label %11 unwind label %37

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !163
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !206

15:                                               ; preds = %11
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %13) #19
          to label %16 unwind label %37

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !159
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20, !prof !207

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !149
  %22 = getelementptr inbounds ptr, ptr %21, i64 17
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #19
          to label %25 unwind label %37

25:                                               ; preds = %20
  %26 = load ptr, ptr %17, align 8, !tbaa !159
  br i1 %24, label %27, label %28, !prof !208

27:                                               ; preds = %25
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %26) #19
          to label %34 unwind label %37

28:                                               ; preds = %25
  %29 = icmp eq ptr %26, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %26, align 8, !tbaa !149
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %26) #17
  br label %34

34:                                               ; preds = %27, %30, %28, %16
  %35 = load i64, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !176
  %36 = add nsw i64 %35, -1
  store i64 %36, ptr @_ZN8cMessage9live_msgsE, align 8, !tbaa !176
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret void

37:                                               ; preds = %27, %20, %15, %6
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #23
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #1 comdat align 2 !prof !209 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !192
  ret ptr %1
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #24
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #19
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #19
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !210 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7SimTimegtERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !211 {
  %3 = load i64, ptr %0, align 8, !tbaa !179
  %4 = load i64, ptr %1, align 8, !tbaa !179
  %5 = icmp sgt i64 %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK7SimTime(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !212 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = tail call noundef i64 @_ZNK7SimTime3rawEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = tail call noundef i32 @_ZN7SimTime11getScaleExpEv() #19
  %7 = call noundef ptr @_ZN7SimTime4ttoaEPcliRS0_(ptr noundef nonnull %3, i64 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZmiRK7SimTimeS1_(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat !prof !213 {
  %4 = alloca %class.SimTime, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimemIERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK8cMessage7getKindEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 !prof !214 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 4, !tbaa !189
  ret i16 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11cSimulation9getModuleEi(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !215 {
  %3 = icmp sgt i32 %1, -1
  %4 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %8, label %14, !prof !216

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !217
  %11 = zext nneg i32 %1 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !192
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi ptr [ %13, %8 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #19
  store i64 %6, ptr %4, align 8, !tbaa !176
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !222

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #19
  %10 = load i64, ptr %4, align 8, !tbaa !176
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #19
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #19
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #17
  store ptr null, ptr %5, align 8, !tbaa !223
  %15 = load i64, ptr %4, align 8, !tbaa !176
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #19
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !221 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !192
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #19
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !221 {
  store ptr %1, ptr %0, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %2 = load ptr, ptr %0, align 8, !tbaa !223
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !225

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
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
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !221 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !221 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: optsize
declare noundef ptr @_ZN7SimTime4ttoaEPcliRS0_(ptr noundef, i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK7SimTime3rawEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !226 {
  %2 = load i64, ptr %0, align 8, !tbaa !179
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN7SimTime11getScaleExpEv() local_unnamed_addr #1 comdat align 2 !prof !212 {
  %1 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !186
  ret i32 %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimemIERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !213 {
  tail call void @_ZN7SimTime10checkedSubERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime10checkedSubERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !213 {
  %3 = load i64, ptr %0, align 8, !tbaa !179
  %4 = load i64, ptr %1, align 8, !tbaa !179
  %5 = tail call noundef zeroext i1 @_ZN7SimTime12haveSameSignEll(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %3, i64 noundef %4) #19
  %6 = load i64, ptr %1, align 8, !tbaa !179
  %7 = load i64, ptr %0, align 8, !tbaa !179
  %8 = sub nsw i64 %7, %6
  store i64 %8, ptr %0, align 8, !tbaa !179
  br i1 %5, label %13, label %9, !prof !227

9:                                                ; preds = %2
  %10 = load i64, ptr %1, align 8, !tbaa !179
  %11 = tail call noundef zeroext i1 @_ZN7SimTime12haveSameSignEll(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %8, i64 noundef %10) #19
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @_ZN7SimTime19overflowSubtractingERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  br label %13

13:                                               ; preds = %12, %9, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7SimTime12haveSameSignEll(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !228 {
  %4 = xor i64 %2, %1
  %5 = icmp sgt i64 %4, -1
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN7SimTime19overflowSubtractingERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !169 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !149
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !169 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #21
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #19
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !229
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !151 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #19
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.20) #19
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #19
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !169 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !234, !range !204, !noundef !205
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !235
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat !prof !212 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !236 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN12cOwnedObjectaSERKS_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN8cMessage14_createparlistEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
  invoke void @_ZN6cArrayC1EPKcii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull @.str.22, i32 noundef 5, i32 noundef 5) #19
          to label %3 unwind label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  store ptr %2, ptr %4, align 8, !tbaa !163
  %5 = load ptr, ptr %0, align 8, !tbaa !149
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2) #19
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN6cArrayC1EPKcii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN8cMessage14setControlInfoEP7cObject(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %9, !prof !238

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #19
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %26

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !239

13:                                               ; preds = %9
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #19
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %26

18:                                               ; preds = %9
  %19 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI12cOwnedObject, i64 0) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !239

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !149
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #19
  br label %25

25:                                               ; preds = %21, %18
  store ptr %1, ptr %10, align 8, !tbaa !159
  ret void

26:                                               ; preds = %16, %7
  %27 = phi ptr [ %14, %16 ], [ %5, %7 ]
  %28 = phi { ptr, i32 } [ %17, %16 ], [ %8, %7 ]
  tail call void @__cxa_free_exception(ptr %27) #20
  resume { ptr, i32 } %28
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #15

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN8cMessage17removeControlInfoEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #2 align 2 !prof !240 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  store ptr null, ptr %2, align 8, !tbaa !159
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__dynamic_cast(ptr nonnull %3, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI12cOwnedObject, i64 0) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !241

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !149
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #19
  br label %12

12:                                               ; preds = %1, %8, %5
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN8cMessage3parEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN8cMessage10getParListEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  %4 = tail call noundef ptr @_ZN6cArray3getEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull %0, ptr noundef nonnull @.str.25, i32 noundef %1) #19
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %25

11:                                               ; preds = %2
  %12 = tail call ptr @__dynamic_cast(ptr nonnull %4, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI7cMsgPar, i64 0) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  %16 = load ptr, ptr %4, align 8, !tbaa !149
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
          to label %20 unwind label %22

20:                                               ; preds = %14
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull %0, ptr noundef nonnull @.str.26, i32 noundef %1, ptr noundef %19) #19
          to label %21 unwind label %22

21:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

22:                                               ; preds = %20, %14
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %25

24:                                               ; preds = %11
  ret ptr %4

25:                                               ; preds = %22, %9
  %26 = phi ptr [ %15, %22 ], [ %7, %9 ]
  %27 = phi { ptr, i32 } [ %23, %22 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %26) #20
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN8cMessage10getParListEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #2 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @_ZN8cMessage14_createparlistEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  %6 = load ptr, ptr %2, align 8, !tbaa !163
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN6cArray3getEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN8cMessage3parEPKc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN8cMessage10getParListEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  %4 = tail call noundef ptr @_ZN6cArray3getEPKc(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef %1) #19
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %25

11:                                               ; preds = %2
  %12 = tail call ptr @__dynamic_cast(ptr nonnull %4, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI7cMsgPar, i64 0) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  %16 = load ptr, ptr %4, align 8, !tbaa !149
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
          to label %20 unwind label %22

20:                                               ; preds = %14
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull %0, ptr noundef nonnull @.str.28, ptr noundef %1, ptr noundef %19) #19
          to label %21 unwind label %22

21:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

22:                                               ; preds = %20, %14
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %25

24:                                               ; preds = %11
  ret ptr %4

25:                                               ; preds = %22, %9
  %26 = phi ptr [ %15, %22 ], [ %7, %9 ]
  %27 = phi { ptr, i32 } [ %23, %22 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %26) #20
  resume { ptr, i32 } %27
}

; Function Attrs: optsize
declare noundef ptr @_ZN6cArray3getEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK8cMessage7findParEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !151 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZNK6cArray4findEPKc(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %1) #19
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ -1, %2 ]
  ret i32 %9
}

; Function Attrs: optsize
declare noundef i32 @_ZNK6cArray4findEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK8cMessage13getSenderGateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #2 align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !158
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !242
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %11 = load i32, ptr %2, align 8, !tbaa !158
  %12 = tail call noundef ptr @_ZNK11cSimulation9getModuleEi(ptr noundef nonnull align 8 dereferenceable(224) %10, i32 noundef %11) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %6, align 4, !tbaa !242
  %16 = load ptr, ptr %12, align 8, !tbaa !149
  %17 = getelementptr inbounds ptr, ptr %16, i64 63
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(176) %12, i32 noundef %15) #19
  br label %20

20:                                               ; preds = %14, %9, %1, %5
  %21 = phi ptr [ null, %5 ], [ null, %1 ], [ %19, %14 ], [ null, %9 ]
  ret ptr %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK8cMessage14getArrivalGateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #2 align 2 !prof !215 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !152
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %20, label %5, !prof !243

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !244
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %20, label %9, !prof !243

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %11 = load i32, ptr %2, align 8, !tbaa !152
  %12 = tail call noundef ptr @_ZNK11cSimulation9getModuleEi(ptr noundef nonnull align 8 dereferenceable(224) %10, i32 noundef %11) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !243

14:                                               ; preds = %9
  %15 = load i32, ptr %6, align 4, !tbaa !244
  %16 = load ptr, ptr %12, align 8, !tbaa !149
  %17 = getelementptr inbounds ptr, ptr %16, i64 63
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(176) %12, i32 noundef %15) #19
  br label %20

20:                                               ; preds = %14, %9, %1, %5
  %21 = phi ptr [ null, %5 ], [ null, %1 ], [ %19, %14 ], [ null, %9 ]
  ret ptr %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK8cMessage9arrivedOnEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !245 {
  %3 = tail call noundef ptr @_ZNK8cMessage14getArrivalGateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !246

5:                                                ; preds = %2
  %6 = tail call noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #19
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i1 [ false, %2 ], [ %6, %5 ]
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !247 {
  %3 = load ptr, ptr %0, align 8, !tbaa !149
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %7 = tail call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %6, ptr noundef %1) #19
  %8 = icmp eq i32 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !248 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  br i1 %3, label %12, label %5, !prof !249

5:                                                ; preds = %2
  br i1 %4, label %8, label %6, !prof !250

6:                                                ; preds = %5
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #25
  br label %17

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !251
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %17

12:                                               ; preds = %2
  br i1 %4, label %17, label %13, !prof !252

13:                                               ; preds = %12
  %14 = load i8, ptr %1, align 1, !tbaa !251
  %15 = icmp ne i8 %14, 0
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %13, %6, %8
  %18 = phi i32 [ %7, %6 ], [ %11, %8 ], [ 0, %12 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK8cMessage9arrivedOnEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !151 {
  %4 = tail call noundef ptr @_ZNK8cMessage14getArrivalGateEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #19
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = tail call noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #19
  %10 = icmp eq i32 %9, %2
  br label %11

11:                                               ; preds = %8, %6, %3
  %12 = phi i1 [ false, %6 ], [ false, %3 ], [ %10, %8 ]
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !253 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !254
  %4 = tail call noundef i32 @_ZNK5cGate4Desc7indexOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %0) #19
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate4Desc7indexOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !253 {
  %3 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !256
  %5 = ashr i32 %4, 2
  %6 = icmp eq i32 %5, -1
  %7 = select i1 %6, i32 0, i32 %5, !prof !257
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN8cMessage11setSentFromEP7cModulei7SimTime(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 !prof !258 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6, !prof !259

6:                                                ; preds = %4
  %7 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i32 [ %7, %6 ], [ -1, %4 ]
  %10 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 7
  store i32 %9, ptr %10, align 8, !tbaa !158
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 8
  store i32 %2, ptr %11, align 4, !tbaa !242
  %12 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 12
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #1 comdat align 2 !prof !260 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !261
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN8cMessage10setArrivalEP7cModulei7SimTime(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 !prof !265 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6, !prof !266

6:                                                ; preds = %4
  %7 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i32 [ %7, %6 ], [ -1, %4 ]
  %10 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  store i32 %9, ptr %10, align 8, !tbaa !152
  %11 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 10
  store i32 %2, ptr %11, align 4, !tbaa !244
  %12 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 13
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN8cMessage10setArrivalEP7cModulei(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !267 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5, !prof !268

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #19
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi i32 [ %6, %5 ], [ -1, %3 ]
  %9 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 9
  store i32 %8, ptr %9, align 8, !tbaa !152
  %10 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 10
  store i32 %2, ptr %10, align 4, !tbaa !244
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN8cMessage14setArrivalTimeE7SimTime(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %1) local_unnamed_addr #1 align 2 !prof !267 {
  %3 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 13
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cPacketC2ERKS_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull align 8 dereferenceable(186) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN8cMessageC2ERKS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV7cPacket, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !149
  %3 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 2
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !166
  %5 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 4
  store i16 0, ptr %5, align 8, !tbaa !269
  %6 = invoke noundef nonnull align 8 dereferenceable(186) ptr @_ZN7cPacketaSERKS_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef nonnull align 8 dereferenceable(186) %1) #19
          to label %7 unwind label %8

7:                                                ; preds = %2
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(186) ptr @_ZN7cPacketaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(186) %0, ptr noundef nonnull align 8 dereferenceable(186) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %42, label %4, !prof !181

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZN8cMessageaSERKS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) #19
  %6 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !269
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9, !prof !184

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #19
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #20
  resume { ptr, i32 } %13

14:                                               ; preds = %4
  %15 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !270
  %17 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !270
  %18 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 2
  %19 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 2
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18) #19
  %21 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !166
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !184

24:                                               ; preds = %14
  tail call void @_ZN7cPacket15_deleteEncapMsgEv(ptr noundef nonnull align 8 dereferenceable(186) %0) #19
  br label %25

25:                                               ; preds = %24, %14
  %26 = getelementptr inbounds %class.cPacket, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !166
  store ptr %27, ptr %21, align 8, !tbaa !166
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29, !prof !271

29:                                               ; preds = %25
  %30 = getelementptr inbounds %class.cPacket, ptr %27, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !269
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 8, !tbaa !269
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %42, !prof !272

34:                                               ; preds = %29
  store i16 %31, ptr %30, align 8, !tbaa !269
  %35 = load ptr, ptr %27, align 8, !tbaa !149
  %36 = getelementptr inbounds ptr, ptr %35, i64 11
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(186) %27) #19
  store ptr %38, ptr %21, align 8, !tbaa !166
  %39 = load ptr, ptr %0, align 8, !tbaa !149
  %40 = getelementptr inbounds ptr, ptr %39, i64 12
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %38) #19
  br label %42

42:                                               ; preds = %25, %29, %34, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cPacketC2EPKcsl(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, i16 noundef signext %2, i64 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !273 {
  tail call void @_ZN8cMessageC2EPKcs(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i16 noundef signext %2) #19
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV7cPacket, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !149
  %5 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 2
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %6 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !270
  %7 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !166
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSIiEERKS_T_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #19
          to label %9 unwind label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 4
  store i16 0, ptr %10, align 8, !tbaa !269
  ret void

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN7cPacketD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !273 {
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTV7cPacket, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !149
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !274

5:                                                ; preds = %1
  tail call void @_ZN7cPacket15_deleteEncapMsgEv(ptr noundef nonnull align 8 dereferenceable(186) %0) #19
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN8cMessageD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN7cPacket15_deleteEncapMsgEv(ptr noundef nonnull readonly align 8 dereferenceable(186) %0) local_unnamed_addr #1 align 2 !prof !275 {
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !269
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %13, label %7, !prof !276

7:                                                ; preds = %1
  %8 = add i16 %5, -1
  store i16 %8, ptr %4, align 8, !tbaa !269
  %9 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %18, !prof !277

12:                                               ; preds = %7
  store ptr null, ptr %9, align 8, !tbaa !161
  br label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !161
  %15 = load ptr, ptr %3, align 8, !tbaa !149
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(186) %3) #17
  br label %18

18:                                               ; preds = %13, %7, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cPacket15_detachEncapMsgEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #2 align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !269
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = add i16 %5, -1
  store i16 %8, ptr %4, align 8, !tbaa !269
  %9 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store ptr null, ptr %9, align 8, !tbaa !161
  br label %13

13:                                               ; preds = %12, %7
  %14 = load ptr, ptr %3, align 8, !tbaa !149
  %15 = getelementptr inbounds ptr, ptr %14, i64 11
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(186) %3) #19
  store ptr %17, ptr %2, align 8, !tbaa !166
  %18 = load ptr, ptr %0, align 8, !tbaa !149
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %17) #19
  br label %23

21:                                               ; preds = %1
  %22 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  store ptr %0, ptr %22, align 8, !tbaa !161
  br label %23

23:                                               ; preds = %21, %13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cPacket12setBitLengthEl(ptr noundef nonnull align 8 dereferenceable(186) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !278 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %4, label %9, !prof !279

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i64 noundef %1) #19
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #20
  resume { ptr, i32 } %8

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  store i64 %1, ptr %10, align 8, !tbaa !270
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cPacket12addBitLengthEl(ptr noundef nonnull align 8 dereferenceable(186) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !280 {
  %3 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !270
  %5 = add nsw i64 %4, %1
  store i64 %5, ptr %3, align 8, !tbaa !270
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %13, !prof !281

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  %9 = load i64, ptr %3, align 8, !tbaa !270
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.31, i64 noundef %9, i64 noundef %1) #19
          to label %10 unwind label %11

10:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

11:                                               ; preds = %7
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #20
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cPacket11encapsulateEPS_(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !282 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !283

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #19
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #20
  br label %76

12:                                               ; preds = %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %75, label %14, !prof !284

14:                                               ; preds = %12
  %15 = load ptr, ptr %1, align 8, !tbaa !149
  %16 = getelementptr inbounds ptr, ptr %15, i64 16
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  %19 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #19
  %20 = tail call noundef ptr @_ZNK11cSimulation22getContextSimpleModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %19) #19
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %65, label %22, !prof !283

22:                                               ; preds = %14
  %23 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  %24 = load ptr, ptr %1, align 8, !tbaa !149
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
          to label %28 unwind label %57

28:                                               ; preds = %22
  %29 = load ptr, ptr %1, align 8, !tbaa !149
  %30 = getelementptr inbounds ptr, ptr %29, i64 7
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
          to label %33 unwind label %57

33:                                               ; preds = %28
  %34 = load ptr, ptr %1, align 8, !tbaa !149
  %35 = getelementptr inbounds ptr, ptr %34, i64 16
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(36) %1) #19
          to label %38 unwind label %57

38:                                               ; preds = %33
  %39 = load ptr, ptr %37, align 8, !tbaa !149
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %37) #19
          to label %43 unwind label %57

43:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %44 = load ptr, ptr %1, align 8, !tbaa !149
  %45 = getelementptr inbounds ptr, ptr %44, i64 16
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(36) %1) #19
          to label %48 unwind label %59

48:                                               ; preds = %43
  %49 = load ptr, ptr %47, align 8, !tbaa !149
  %50 = getelementptr inbounds ptr, ptr %49, i64 8
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %47) #19
          to label %52 unwind label %59

52:                                               ; preds = %48
  %53 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %23, ptr noundef nonnull %0, ptr noundef nonnull @.str.33, ptr noundef %27, ptr noundef %32, ptr noundef %42, ptr noundef %53) #19
          to label %56 unwind label %54

54:                                               ; preds = %52
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %63

56:                                               ; preds = %52
  invoke void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
          to label %78 unwind label %61

57:                                               ; preds = %22, %28, %33, %38
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %63

59:                                               ; preds = %43, %48
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %63

61:                                               ; preds = %56
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %76

63:                                               ; preds = %54, %59, %57
  %64 = phi { ptr, i32 } [ %58, %57 ], [ %60, %59 ], [ %55, %54 ]
  call void @__cxa_free_exception(ptr %23) #20
  br label %76

65:                                               ; preds = %14
  store ptr %1, ptr %4, align 8, !tbaa !166
  %66 = load ptr, ptr %0, align 8, !tbaa !149
  %67 = getelementptr inbounds ptr, ptr %66, i64 12
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #19
  %69 = load ptr, ptr %4, align 8, !tbaa !166
  %70 = getelementptr inbounds %class.cPacket, ptr %69, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !270
  %72 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !270
  %74 = add nsw i64 %73, %71
  store i64 %74, ptr %72, align 8, !tbaa !270
  br label %75

75:                                               ; preds = %65, %12
  ret void

76:                                               ; preds = %61, %63, %10
  %77 = phi { ptr, i32 } [ %11, %10 ], [ %64, %63 ], [ %62, %61 ]
  resume { ptr, i32 } %77

78:                                               ; preds = %56
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11cSimulation22getContextSimpleModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN7cPacket11decapsulateEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5, !prof !286

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !270
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %13, !prof !287

9:                                                ; preds = %5
  %10 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !270
  %12 = sub nsw i64 %7, %11
  store i64 %12, ptr %6, align 8, !tbaa !270
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i64 [ %12, %9 ], [ %7, %5 ]
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21, !prof !286

16:                                               ; preds = %13
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #19
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %17) #20
  resume { ptr, i32 } %20

21:                                               ; preds = %13
  %22 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !269
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %36, label %25, !prof !288

25:                                               ; preds = %21
  %26 = add i16 %23, -1
  store i16 %26, ptr %22, align 8, !tbaa !269
  %27 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !161
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %31, !prof !289

30:                                               ; preds = %25
  store ptr null, ptr %27, align 8, !tbaa !161
  br label %31

31:                                               ; preds = %30, %25
  %32 = load ptr, ptr %3, align 8, !tbaa !149
  %33 = getelementptr inbounds ptr, ptr %32, i64 11
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(186) %3) #19
  store ptr null, ptr %2, align 8, !tbaa !166
  br label %41

36:                                               ; preds = %21
  %37 = getelementptr inbounds %class.cOwnedObject, ptr %3, i64 0, i32 2
  store ptr %0, ptr %37, align 8, !tbaa !161
  store ptr null, ptr %2, align 8, !tbaa !166
  %38 = load ptr, ptr %0, align 8, !tbaa !149
  %39 = getelementptr inbounds ptr, ptr %38, i64 13
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #19
  br label %41

41:                                               ; preds = %36, %1, %31
  %42 = phi ptr [ %35, %31 ], [ null, %1 ], [ %3, %36 ]
  ret ptr %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK7cPacket18getEncapsulatedMsgEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #2 align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cPacket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @_ZN7cPacket15_detachEncapMsgEv(ptr noundef nonnull align 8 dereferenceable(186) %0) #19
  %6 = load ptr, ptr %2, align 8, !tbaa !166
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK7cPacket18getEncapsulationIdEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #1 align 2 !prof !151 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !290

7:                                                ; preds = %2
  %8 = tail call noundef i64 @_ZNK8cMessage5getIdEv(ptr noundef nonnull align 8 dereferenceable(160) %3) #19
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK8cMessage5getIdEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 18
  %3 = load i64, ptr %2, align 8, !tbaa !177
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK7cPacket22getEncapsulationTreeIdEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #1 align 2 !prof !151 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %class.cPacket, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !292

7:                                                ; preds = %2
  %8 = tail call noundef i64 @_ZNK8cMessage9getTreeIdEv(ptr noundef nonnull align 8 dereferenceable(160) %3) #19
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK8cMessage9getTreeIdEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #1 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %class.cMessage, ptr %0, i64 0, i32 19
  %3 = load i64, ptr %2, align 8, !tbaa !187
  ret i64 %3
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cmessage.cc() #5 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(read) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind optsize }
attributes #18 = { builtin nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { builtin optsize allocsize(0) }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!138}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_Znwm, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_Z12opp_typenameRKSt9type_info, i64 1}
!39 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_46Ev, ptr @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_, i64 1}
!40 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_47Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!41 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_47Ev, ptr @_Znwm, i64 1}
!42 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_47Ev, ptr @_Z12opp_typenameRKSt9type_info, i64 1}
!43 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_47Ev, ptr @_ZN13cClassFactoryC1EPKcPFP7cObjectvES1_, i64 1}
!44 = !{ptr @_ZN8cMessageaSERKS_, ptr @_ZN12cOwnedObjectaSERKS_, i64 187455882}
!45 = !{ptr @_ZN8cMessageaSERKS_, ptr @_ZN7SimTimeaSERKS_, i64 749823528}
!46 = !{ptr @_ZN8cMessageaSERKS_, ptr @_ZN7cObject13dropAndDeleteEP12cOwnedObject, i64 187455882}
!47 = !{ptr @_ZN8cMessageC2EPKcs, ptr @_ZN12cOwnedObjectC2EPKcb, i64 187873355}
!48 = !{ptr @_ZN8cMessageC2EPKcs, ptr @_ZN7SimTimeC2Ev, i64 751493420}
!49 = !{ptr @_ZN8cMessageC2EPKcs, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 187873355}
!50 = !{ptr @_ZN8cMessageC2EPKcs, ptr @_ZNK11cSimulation10getSimTimeEv, i64 187873355}
!51 = !{ptr @_ZN8cMessageC2EPKcs, ptr @_ZN7SimTimeaSERKS_, i64 563619170}
!52 = !{ptr @_ZN8cMessageC2EPKcs, ptr @_ZN7SimTimeaSIiEERKS_T_, i64 187873176}
!53 = !{ptr @_ZN8cMessageC2EPKcs, ptr @_ZN12cOwnedObjectD2Ev, i64 358}
!54 = !{ptr @_ZNK11cSimulation10getSimTimeEv, ptr @_ZN7SimTimeC2ERKS_, i64 3302180619}
!55 = !{ptr @_ZN7SimTimeaSIiEERKS_T_, ptr @_ZN7SimTime5checkIiEEvT_, i64 375812855}
!56 = !{ptr @_ZN7SimTimeaSIiEERKS_T_, ptr @_ZN7SimTime7toInt64Ed, i64 375812855}
!57 = !{ptr @_ZN7SimTimeC2ERKS_, ptr @_ZN7SimTimeaSERKS_, i64 57319387120}
!58 = !{ptr @_ZN7SimTime5checkIiEEvT_, ptr @_ZN7SimTime9initErrorEd, i64 1}
!59 = !{ptr @_ZN7SimTime7toInt64Ed, ptr @_ZN7SimTime10rangeErrorEd, i64 1}
!60 = !{ptr @_ZN8cMessageD2Ev, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 375746709}
!61 = !{ptr @_ZN8cMessageD2Ev, ptr @_ZN7cObject13dropAndDeleteEP12cOwnedObject, i64 2}
!62 = !{ptr @_ZN8cMessageD2Ev, ptr @_ZN12cOwnedObjectD2Ev, i64 187873176}
!63 = !{ptr @_ZN8cMessageD2Ev, ptr @__clang_call_terminate, i64 179}
!64 = !{ptr @_ZlsRSoRK7SimTime, ptr @_ZNK7SimTime3rawEv, i64 2}
!65 = !{ptr @_ZlsRSoRK7SimTime, ptr @_ZN7SimTime11getScaleExpEv, i64 2}
!66 = !{ptr @_ZlsRSoRK7SimTime, ptr @_ZN7SimTime4ttoaEPcliRS0_, i64 2}
!67 = !{ptr @_ZlsRSoRK7SimTime, ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc, i64 2}
!68 = !{ptr @_ZmiRK7SimTimeS1_, ptr @_ZN7SimTimeC2ERKS_, i64 334341790}
!69 = !{ptr @_ZmiRK7SimTimeS1_, ptr @_ZN7SimTimemIERKS_, i64 167170895}
!70 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!71 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!72 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!73 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!74 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!75 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!76 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!77 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!78 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!79 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!80 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!81 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!82 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!83 = !{ptr @_ZN7SimTimemIERKS_, ptr @_ZN7SimTime10checkedSubERKS_, i64 167170895}
!84 = !{ptr @_ZN7SimTime10checkedSubERKS_, ptr @_ZN7SimTime12haveSameSignEll, i64 167170896}
!85 = !{ptr @_ZN7SimTime10checkedSubERKS_, ptr @_ZN7SimTime19overflowSubtractingERKS_, i64 1}
!86 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!87 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!88 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!89 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!90 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!91 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!92 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!93 = !{ptr @_ZN8cMessage14setControlInfoEP7cObject, ptr @__cxa_allocate_exception, i64 2}
!94 = !{ptr @_ZN8cMessage14setControlInfoEP7cObject, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 2}
!95 = !{ptr @_ZN8cMessage14setControlInfoEP7cObject, ptr @__cxa_throw, i64 2}
!96 = !{ptr @_ZN8cMessage14setControlInfoEP7cObject, ptr @__dynamic_cast, i64 158253}
!97 = !{ptr @_ZN8cMessage14setControlInfoEP7cObject, ptr @__cxa_free_exception, i64 1}
!98 = !{ptr @_ZN8cMessage17removeControlInfoEv, ptr @__dynamic_cast, i64 82411}
!99 = !{ptr @_ZNK8cMessage14getArrivalGateEv, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 202351114}
!100 = !{ptr @_ZNK8cMessage14getArrivalGateEv, ptr @_ZNK11cSimulation9getModuleEi, i64 202351114}
!101 = !{ptr @_ZNK8cMessage9arrivedOnEPKc, ptr @_ZNK8cMessage14getArrivalGateEv, i64 158254}
!102 = !{ptr @_ZNK8cMessage9arrivedOnEPKc, ptr @_ZNK7cObject6isNameEPKc, i64 158253}
!103 = !{ptr @_ZNK7cObject6isNameEPKc, ptr @_Z10opp_strcmpPKcS0_, i64 2470429}
!104 = !{ptr @_Z10opp_strcmpPKcS0_, ptr @strcmp, i64 3128955}
!105 = !{ptr @_ZNK5cGate8getIndexEv, ptr @_ZNK5cGate4Desc7indexOfEPKS_, i64 14375669}
!106 = !{ptr @_ZN8cMessage11setSentFromEP7cModulei7SimTime, ptr @_ZNK7cModule5getIdEv, i64 468305914}
!107 = !{ptr @_ZN8cMessage11setSentFromEP7cModulei7SimTime, ptr @_ZN7SimTimeaSERKS_, i64 468305915}
!108 = !{ptr @_ZN8cMessage10setArrivalEP7cModulei7SimTime, ptr @_ZNK7cModule5getIdEv, i64 265916805}
!109 = !{ptr @_ZN8cMessage10setArrivalEP7cModulei7SimTime, ptr @_ZN7SimTimeaSERKS_, i64 265916806}
!110 = !{ptr @_ZN8cMessage10setArrivalEP7cModulei, ptr @_ZNK7cModule5getIdEv, i64 202389108}
!111 = !{ptr @_ZN8cMessage14setArrivalTimeE7SimTime, ptr @_ZN7SimTimeaSERKS_, i64 202389109}
!112 = !{ptr @_ZN7cPacketaSERKS_, ptr @_ZN8cMessageaSERKS_, i64 187455882}
!113 = !{ptr @_ZN7cPacketaSERKS_, ptr @__cxa_allocate_exception, i64 1}
!114 = !{ptr @_ZN7cPacketaSERKS_, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!115 = !{ptr @_ZN7cPacketaSERKS_, ptr @_ZN7SimTimeaSERKS_, i64 187455881}
!116 = !{ptr @_ZN7cPacketaSERKS_, ptr @_ZN7cPacket15_deleteEncapMsgEv, i64 1}
!117 = !{ptr @_ZN7cPacketC2EPKcsl, ptr @_ZN8cMessageC2EPKcs, i64 187798485}
!118 = !{ptr @_ZN7cPacketC2EPKcsl, ptr @_ZN7SimTimeC2Ev, i64 187798485}
!119 = !{ptr @_ZN7cPacketC2EPKcsl, ptr @_ZN7SimTimeaSIiEERKS_T_, i64 187798485}
!120 = !{ptr @_ZN7cPacketC2EPKcsl, ptr @_ZN8cMessageD2Ev, i64 179}
!121 = !{ptr @_ZN7cPacketD2Ev, ptr @_ZN7cPacket15_deleteEncapMsgEv, i64 186456359}
!122 = !{ptr @_ZN7cPacketD2Ev, ptr @_ZN8cMessageD2Ev, i64 187798485}
!123 = !{ptr @_ZN7cPacket12setBitLengthEl, ptr @__cxa_allocate_exception, i64 1}
!124 = !{ptr @_ZN7cPacket12setBitLengthEl, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!125 = !{ptr @_ZN7cPacket12setBitLengthEl, ptr @__cxa_throw, i64 1}
!126 = !{ptr @_ZN7cPacket12setBitLengthEl, ptr @__cxa_free_exception, i64 1}
!127 = !{ptr @_ZN7cPacket12addBitLengthEl, ptr @__cxa_allocate_exception, i64 1}
!128 = !{ptr @_ZN7cPacket12addBitLengthEl, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!129 = !{ptr @_ZN7cPacket12addBitLengthEl, ptr @__cxa_throw, i64 1}
!130 = !{ptr @_ZN7cPacket12addBitLengthEl, ptr @__cxa_free_exception, i64 1}
!131 = !{ptr @_ZN7cPacket11encapsulateEPS_, ptr @__cxa_allocate_exception, i64 2}
!132 = !{ptr @_ZN7cPacket11encapsulateEPS_, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!133 = !{ptr @_ZN7cPacket11encapsulateEPS_, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 100585}
!134 = !{ptr @_ZN7cPacket11encapsulateEPS_, ptr @_ZNK11cSimulation22getContextSimpleModuleEv, i64 100585}
!135 = !{ptr @_ZN7cPacket11encapsulateEPS_, ptr @__cxa_free_exception, i64 1}
!136 = !{ptr @_ZN7cPacket11decapsulateEv, ptr @__cxa_allocate_exception, i64 1}
!137 = !{ptr @_ZN7cPacket11decapsulateEv, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!138 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!139 = !{!"function_entry_count", i64 192538233}
!140 = !{!141, !143, i64 8}
!141 = !{!"_ZTS12cNamedObject", !142, i64 0, !143, i64 8, !146, i64 16, !146, i64 18}
!142 = !{!"_ZTS7cObject"}
!143 = !{!"any pointer", !144, i64 0}
!144 = !{!"omnipotent char", !145, i64 0}
!145 = !{!"Simple C++ TBAA"}
!146 = !{!"short", !144, i64 0}
!147 = !{!"branch_weights", i32 1, i32 192538234}
!148 = !{!"function_entry_count", i64 235321}
!149 = !{!150, !150, i64 0}
!150 = !{!"vtable pointer", !145, i64 0}
!151 = !{!"function_entry_count", i64 0}
!152 = !{!153, !155, i64 80}
!153 = !{!"_ZTS8cMessage", !154, i64 0, !146, i64 36, !146, i64 38, !146, i64 40, !143, i64 48, !143, i64 56, !143, i64 64, !155, i64 72, !155, i64 76, !155, i64 80, !155, i64 84, !156, i64 88, !156, i64 96, !156, i64 104, !156, i64 112, !155, i64 120, !157, i64 128, !157, i64 136, !157, i64 144, !157, i64 152}
!154 = !{!"_ZTS12cOwnedObject", !141, i64 0, !143, i64 24, !155, i64 32}
!155 = !{!"int", !144, i64 0}
!156 = !{!"_ZTS7SimTime", !157, i64 0}
!157 = !{!"long", !144, i64 0}
!158 = !{!153, !155, i64 72}
!159 = !{!153, !143, i64 56}
!160 = !{!"function_entry_count", i64 542987320}
!161 = !{!154, !143, i64 24}
!162 = !{!"function_entry_count", i64 147484992}
!163 = !{!153, !143, i64 48}
!164 = !{!141, !146, i64 16}
!165 = !{!"function_entry_count", i64 19688}
!166 = !{!167, !143, i64 176}
!167 = !{!"_ZTS7cPacket", !153, i64 0, !157, i64 160, !156, i64 168, !143, i64 176, !146, i64 184}
!168 = !{!"function_entry_count", i64 404758530}
!169 = !{!"function_entry_count", i64 1}
!170 = !{!"cmessage.cc:_ZN12_GLOBAL__N_119__onstartup_func_46Ev"}
!171 = !{!"cmessage.cc:_ZL15__uniquename_46v"}
!172 = !{!"cmessage.cc:_ZN12_GLOBAL__N_119__onstartup_func_47Ev"}
!173 = !{!"cmessage.cc:_ZL15__uniquename_47v"}
!174 = !{!153, !155, i64 120}
!175 = !{!153, !157, i64 136}
!176 = !{!157, !157, i64 0}
!177 = !{!153, !157, i64 144}
!178 = !{!"function_entry_count", i64 1143690745}
!179 = !{!156, !157, i64 0}
!180 = !{!"function_entry_count", i64 187455883}
!181 = !{!"branch_weights", i32 1, i32 187455884}
!182 = !{!146, !146, i64 0}
!183 = !{!153, !146, i64 40}
!184 = !{!"branch_weights", i32 187455884, i32 1}
!185 = !{!153, !143, i64 64}
!186 = !{!155, !155, i64 0}
!187 = !{!153, !157, i64 152}
!188 = !{!"function_entry_count", i64 187873355}
!189 = !{!153, !146, i64 36}
!190 = !{!153, !146, i64 38}
!191 = !{!"function_entry_count", i64 5379836753}
!192 = !{!143, !143, i64 0}
!193 = !{!"function_entry_count", i64 3302180619}
!194 = !{!"function_entry_count", i64 61624744013}
!195 = !{!"function_entry_count", i64 375812855}
!196 = !{!"function_entry_count", i64 57319387120}
!197 = !{!"branch_weights", i32 1, i32 375812856}
!198 = !{!"function_entry_count", i64 1656274258}
!199 = !{!"branch_weights", i32 1, i32 1656274259}
!200 = !{!201, !202, i64 9}
!201 = !{!"_ZTS6cEnvir", !202, i64 8, !202, i64 9, !202, i64 10, !203, i64 16}
!202 = !{!"bool", !144, i64 0}
!203 = !{!"_ZTSSo"}
!204 = !{i8 0, i8 2}
!205 = !{}
!206 = !{!"branch_weights", i32 187873356, i32 1}
!207 = !{!"branch_weights", i32 187846958, i32 26399}
!208 = !{!"branch_weights", i32 1, i32 26399}
!209 = !{!"function_entry_count", i64 21674314260}
!210 = !{!"function_entry_count", i64 1891507}
!211 = !{!"function_entry_count", i64 10862418302}
!212 = !{!"function_entry_count", i64 2}
!213 = !{!"function_entry_count", i64 167170895}
!214 = !{!"function_entry_count", i64 265000013}
!215 = !{!"function_entry_count", i64 202351116}
!216 = !{!"branch_weights", i32 -1854397028, i32 24}
!217 = !{!218, !143, i64 48}
!218 = !{!"_ZTS11cSimulation", !219, i64 0, !155, i64 36, !155, i64 40, !143, i64 48, !155, i64 56, !143, i64 64, !143, i64 72, !143, i64 80, !143, i64 88, !155, i64 96, !143, i64 104, !143, i64 112, !156, i64 120, !157, i64 128, !143, i64 136, !143, i64 144, !143, i64 152, !220, i64 160}
!219 = !{!"_ZTS23cNoncopyableOwnedObject", !154, i64 0}
!220 = !{!"_ZTS12cMessageHeap", !154, i64 0, !143, i64 40, !155, i64 48, !155, i64 52, !157, i64 56}
!221 = !{!"function_entry_count", i64 1889443}
!222 = !{!"branch_weights", i32 1257663, i32 631782}
!223 = !{!224, !143, i64 0}
!224 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !143, i64 0}
!225 = !{!"branch_weights", i32 1889444, i32 1}
!226 = !{!"function_entry_count", i64 51306}
!227 = !{!"branch_weights", i32 167170896, i32 1}
!228 = !{!"function_entry_count", i64 2128947779}
!229 = !{!230, !155, i64 8}
!230 = !{!"_ZTS10cException", !231, i64 0, !155, i64 8, !232, i64 16, !202, i64 48, !232, i64 56, !232, i64 88, !155, i64 120}
!231 = !{!"_ZTSSt9exception"}
!232 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !233, i64 0, !157, i64 8, !144, i64 16}
!233 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !143, i64 0}
!234 = !{!230, !202, i64 48}
!235 = !{!230, !155, i64 120}
!236 = !{!"function_entry_count", i64 2107073}
!237 = !{!"function_entry_count", i64 158255}
!238 = !{!"branch_weights", i32 1, i32 158256}
!239 = !{!"branch_weights", i32 158256, i32 1}
!240 = !{!"function_entry_count", i64 131857}
!241 = !{!"branch_weights", i32 131858, i32 1}
!242 = !{!153, !155, i64 76}
!243 = !{!"branch_weights", i32 1, i32 202351117}
!244 = !{!153, !155, i64 84}
!245 = !{!"function_entry_count", i64 158254}
!246 = !{!"branch_weights", i32 1, i32 158255}
!247 = !{!"function_entry_count", i64 2470429}
!248 = !{!"function_entry_count", i64 3403184}
!249 = !{!"branch_weights", i32 274228, i32 3128958}
!250 = !{!"branch_weights", i32 1, i32 3128958}
!251 = !{!144, !144, i64 0}
!252 = !{!"branch_weights", i32 121684, i32 152545}
!253 = !{!"function_entry_count", i64 14375669}
!254 = !{!255, !143, i64 8}
!255 = !{!"_ZTS5cGate", !142, i64 0, !143, i64 8, !155, i64 16, !143, i64 24, !143, i64 32, !143, i64 40}
!256 = !{!255, !155, i64 16}
!257 = !{!"branch_weights", i32 1, i32 14375670}
!258 = !{!"function_entry_count", i64 468305915}
!259 = !{!"branch_weights", i32 1, i32 468305916}
!260 = !{!"function_entry_count", i64 936672086}
!261 = !{!262, !155, i64 112}
!262 = !{!"_ZTS7cModule", !263, i64 0, !143, i64 104, !155, i64 112, !143, i64 120, !143, i64 128, !143, i64 136, !143, i64 144, !155, i64 152, !143, i64 160, !155, i64 168, !155, i64 172}
!263 = !{!"_ZTS10cComponent", !264, i64 0, !143, i64 56, !146, i64 64, !143, i64 72, !146, i64 80, !146, i64 82, !143, i64 88, !143, i64 96}
!264 = !{!"_ZTS12cDefaultList", !219, i64 0, !143, i64 40, !155, i64 48, !155, i64 52}
!265 = !{!"function_entry_count", i64 265916806}
!266 = !{!"branch_weights", i32 1, i32 265916807}
!267 = !{!"function_entry_count", i64 202389109}
!268 = !{!"branch_weights", i32 1, i32 202389110}
!269 = !{!167, !146, i64 184}
!270 = !{!167, !157, i64 160}
!271 = !{!"branch_weights", i32 1052288, i32 186403597}
!272 = !{!"branch_weights", i32 1, i32 186403597}
!273 = !{!"function_entry_count", i64 187798485}
!274 = !{!"branch_weights", i32 1342126, i32 186456361}
!275 = !{!"function_entry_count", i64 186456360}
!276 = !{!"branch_weights", i32 76846, i32 186379516}
!277 = !{!"branch_weights", i32 97352, i32 186282165}
!278 = !{!"function_entry_count", i64 340945}
!279 = !{!"branch_weights", i32 1, i32 340946}
!280 = !{!"function_entry_count", i64 185277510}
!281 = !{!"branch_weights", i32 1, i32 185277511}
!282 = !{!"function_entry_count", i64 100587}
!283 = !{!"branch_weights", i32 100588, i32 1}
!284 = !{!"branch_weights", i32 1, i32 100588}
!285 = !{!"function_entry_count", i64 47823}
!286 = !{!"branch_weights", i32 1, i32 47824}
!287 = !{!"branch_weights", i32 47824, i32 1}
!288 = !{!"branch_weights", i32 23743, i32 24082}
!289 = !{!"branch_weights", i32 1, i32 24082}
!290 = distinct !{!290, !291}
!291 = !{!"llvm.loop.mustprogress"}
!292 = distinct !{!292, !291}
