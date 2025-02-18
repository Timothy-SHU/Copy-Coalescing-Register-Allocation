; ModuleID = 'simulator/cgate.cc'
source_filename = "simulator/cgate.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.CommonStringPool = type { %"class.std::set" }
%"class.std::set" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<char *, char *, std::_Identity<char *>, CommonStringPool::strless>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<char *, char *, std::_Identity<char *>, CommonStringPool::strless>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.CommonStringPool::strless" }
%"struct.CommonStringPool::strless" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.cGate::Name" = type <{ %class.opp_string, %class.opp_string, %class.opp_string, i32, [4 x i8] }>
%class.opp_string = type { ptr }
%class.cGate = type { %class.cObject, ptr, i32, ptr, ptr, ptr }
%class.cObject = type { ptr }
%"struct.cGate::Desc" = type { ptr, ptr, i32, %union.anon, %union.anon.0 }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.4 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.4 = type { i64, [8 x i8] }
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
%class.cModule = type { %class.cComponent, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cChannel = type <{ %class.cComponent, ptr, i32, [4 x i8] }>
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.SimTime = type { i64 }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator.1" = type { i8 }

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_Z14check_and_castIP10cComponentET_P7cObject = comdat any

$_ZNK7cObject13isOwnedObjectEv = comdat any

$_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E = comdat any

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

$_ZTS11noncopyable = comdat any

$_ZTI11noncopyable = comdat any

$_ZTV10cException = comdat any

$_ZTSP10cComponent = comdat any

$_ZTIP10cComponent = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZL16gateFullnamePool = internal global %class.CommonStringPool zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"$i\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"$o\00", align 1
@_ZTV5cGate = dso_local unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTI5cGate, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN5cGateD2Ev, ptr @_ZN5cGateD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK5cGate7getNameEv, ptr @_ZNK5cGate11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK5cGate4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK7cObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK5cGate8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN5cGate12forEachChildEP8cVisitor, ptr @_ZN5cGate7deliverEP8cMessage7SimTime] }, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"getFullName(): gate name too long, should be under 100 characters\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZZNK5cGate11getFullNameEvE3tmp = internal global [128 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"--> \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"<-- \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"not connected\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"<parent>\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"inout\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"(unknown type)\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"connectTo(): gate already connected\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"connectTo(): destination gate cannot be NULL pointer\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"connectTo(): destination gate already connected\00", align 1
@.str.18 = private unnamed_addr constant [90 x i8] c"More than one channel with data rate found in the connection path between gates %s and %s\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"reconnectWith(): gate must be already connected\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c"setDeliverOnReceptionStart() may only be invoked on a simple module gate\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"setDeliverOnReceptionStart() may only be invoked on an input gate\00", align 1
@.str.22 = private unnamed_addr constant [161 x i8] c"Channel not initialized (did you forget to invoke callInitialize() for a dynamically created channel or a dynamically created compound module that contains it?)\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"No datarate channel found in the connection path between gates %s and %s\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"No datarate channel found: gate %s is not connected\00", align 1
@.str.25 = private unnamed_addr constant [145 x i8] c"getTransmissionChannel(): cannot be invoked on a simple module input gate (or a compound module input gate which is not connected on the inside)\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS5cGate = dso_local constant [7 x i8] c"5cGate\00", align 1
@_ZTI7cObject = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS11noncopyable = linkonce_odr dso_local constant [14 x i8] c"11noncopyable\00", comdat, align 1
@_ZTI11noncopyable = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11noncopyable }, comdat, align 8
@_ZTI5cGate = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS5cGate, i32 0, i32 2, ptr @_ZTI7cObject, i64 2, ptr @_ZTI11noncopyable, i64 0 }, align 8
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.28 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"%d]\00", align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@.str.34 = private unnamed_addr constant [56 x i8] c"check_and_cast(): cannot cast NULL pointer to type '%s'\00", align 1
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSP10cComponent = linkonce_odr dso_local constant [14 x i8] c"P10cComponent\00", comdat, align 1
@_ZTI10cComponent = external constant ptr
@_ZTIP10cComponent = linkonce_odr dso_local constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSP10cComponent, i32 0, ptr @_ZTI10cComponent }, comdat, align 8
@.str.35 = private unnamed_addr constant [52 x i8] c"check_and_cast(): cannot cast (%s *)%s to type '%s'\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cgate.cc, ptr null }]

@_ZN5cGate4NameC1EPKcNS_4TypeE = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN5cGate4NameC2EPKcNS_4TypeE
@_ZN5cGateC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN5cGateC2Ev
@_ZN5cGateD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN5cGateD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN16CommonStringPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN16CommonStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5cGate4NameC2EPKcNS_4TypeE(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !61 {
  %4 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 2
  %6 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %6, label %16, label %7, !prof !62

7:                                                ; preds = %3
  %8 = load i8, ptr %1, align 1, !tbaa !63
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10, !prof !66

10:                                               ; preds = %7
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %12 = add i64 %11, 1
  %13 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %12) #30
          to label %14 unwind label %57

14:                                               ; preds = %10
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1) #31
  br label %16

16:                                               ; preds = %3, %7, %14
  %17 = phi ptr [ %13, %14 ], [ null, %7 ], [ null, %3 ]
  store ptr %17, ptr %0, align 8, !tbaa !67
  %18 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 3
  store i32 %2, ptr %18, align 8, !tbaa !70
  %19 = icmp eq i32 %2, 66
  br i1 %19, label %20, label %71, !prof !73

20:                                               ; preds = %16
  %21 = invoke noundef ptr @_Z10opp_concatPKcS0_S0_S0_(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null)
          to label %22 unwind label %57, !prof !74

22:                                               ; preds = %20
  %23 = load ptr, ptr %4, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !75

25:                                               ; preds = %22
  tail call void @_ZdaPv(ptr noundef %23) #32
  br label %26

26:                                               ; preds = %25, %22
  %27 = icmp eq ptr %21, null
  br i1 %27, label %37, label %28, !prof !62

28:                                               ; preds = %26
  %29 = load i8, ptr %21, align 1, !tbaa !63
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %37, label %31, !prof !66

31:                                               ; preds = %28
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #29
  %33 = add i64 %32, 1
  %34 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %33) #30
          to label %35 unwind label %57

35:                                               ; preds = %31
  %36 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %21) #31
  br label %37

37:                                               ; preds = %26, %28, %35
  %38 = phi ptr [ %34, %35 ], [ null, %28 ], [ null, %26 ]
  store ptr %38, ptr %4, align 8, !tbaa !67
  %39 = invoke noundef ptr @_Z10opp_concatPKcS0_S0_S0_(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null)
          to label %40 unwind label %57, !prof !74

40:                                               ; preds = %37
  %41 = load ptr, ptr %5, align 8, !tbaa !67
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !75

43:                                               ; preds = %40
  tail call void @_ZdaPv(ptr noundef %41) #32
  br label %44

44:                                               ; preds = %43, %40
  %45 = icmp eq ptr %39, null
  br i1 %45, label %55, label %46, !prof !62

46:                                               ; preds = %44
  %47 = load i8, ptr %39, align 1, !tbaa !63
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49, !prof !66

49:                                               ; preds = %46
  %50 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #29
  %51 = add i64 %50, 1
  %52 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %51) #30
          to label %53 unwind label %57

53:                                               ; preds = %49
  %54 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) %39) #31
  br label %55

55:                                               ; preds = %44, %46, %53
  %56 = phi ptr [ %52, %53 ], [ null, %46 ], [ null, %44 ]
  store ptr %56, ptr %5, align 8, !tbaa !67
  br label %71

57:                                               ; preds = %49, %31, %10, %37, %20
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = load ptr, ptr %5, align 8, !tbaa !67
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @_ZdaPv(ptr noundef %59) #32
  br label %62

62:                                               ; preds = %57, %61
  %63 = load ptr, ptr %4, align 8, !tbaa !67
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call void @_ZdaPv(ptr noundef %63) #32
  br label %66

66:                                               ; preds = %62, %65
  %67 = load ptr, ptr %0, align 8, !tbaa !67
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void @_ZdaPv(ptr noundef %67) #32
  br label %70

70:                                               ; preds = %66, %69
  resume { ptr, i32 } %58

71:                                               ; preds = %55, %16
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_Z10opp_concatPKcS0_S0_S0_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate4NameltERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %1) local_unnamed_addr #4 align 2 !prof !76 {
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.27, ptr %3, !prof !77
  %6 = load ptr, ptr %1, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.27, ptr %6, !prof !77
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %8) #29
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %19, label %11, !prof !78

11:                                               ; preds = %2
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %13, label %19, !prof !79

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds %"struct.cGate::Name", ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !70
  %18 = icmp slt i32 %15, %17
  br label %19

19:                                               ; preds = %11, %2, %13
  %20 = phi i1 [ %18, %13 ], [ true, %2 ], [ false, %11 ]
  ret i1 %20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN5cGateC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTV5cGate, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !83
  %3 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5cGateD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTV5cGate, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3)
          to label %4 unwind label %5, !prof !90

4:                                                ; preds = %1
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #33
  unreachable
}

declare void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !88 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #31
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5cGateD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTV5cGate, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3)
          to label %7 unwind label %4, !prof !90

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #33
  unreachable

7:                                                ; preds = %1
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  tail call void @_ZdlPv(ptr noundef %0) #32
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN5cGate17clearFullnamePoolEv() local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %1 = load ptr, ptr getelementptr inbounds (%class.CommonStringPool, ptr @_ZL16gateFullnamePool, i64 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1), align 8, !tbaa !92
  invoke void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) @_ZL16gateFullnamePool, ptr noundef %1)
          to label %5 unwind label %2, !prof !97

2:                                                ; preds = %0
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @__clang_call_terminate(ptr %4) #33
  unreachable

5:                                                ; preds = %0
  store ptr null, ptr getelementptr inbounds (%class.CommonStringPool, ptr @_ZL16gateFullnamePool, i64 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1), align 8, !tbaa !92
  store ptr getelementptr inbounds (%class.CommonStringPool, ptr @_ZL16gateFullnamePool, i64 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr getelementptr inbounds (%class.CommonStringPool, ptr @_ZL16gateFullnamePool, i64 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 2), align 8, !tbaa !98
  store ptr getelementptr inbounds (%class.CommonStringPool, ptr @_ZL16gateFullnamePool, i64 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr getelementptr inbounds (%class.CommonStringPool, ptr @_ZL16gateFullnamePool, i64 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 3), align 8, !tbaa !99
  store i64 0, ptr getelementptr inbounds (%class.CommonStringPool, ptr @_ZL16gateFullnamePool, i64 0, i32 0, i32 0, i32 0, i32 1, i32 1), align 8, !tbaa !100
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN5cGate12forEachChildEP8cVisitor(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #11 align 2 !prof !88 {
  %3 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !81
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4)
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK5cGate11getBaseNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #12 align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.27, ptr %6
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK5cGate7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #13 align 2 !prof !103 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %18, !prof !104

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !105

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 1
  br label %18

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 2
  br label %18

18:                                               ; preds = %1, %14, %16
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ], [ %5, %1 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str.27, ptr %20
  ret ptr %22
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK5cGate11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !107
  %6 = icmp sgt i32 %5, -1
  %7 = load ptr, ptr %0, align 8, !tbaa !81
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %6, label %11, label %62, !prof !108

11:                                               ; preds = %1
  %12 = icmp eq ptr %10, null
  br i1 %12, label %22, label %13, !prof !109

13:                                               ; preds = %11
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #29
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, 100
  br i1 %16, label %17, label %22, !prof !109

17:                                               ; preds = %13
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull %0, ptr noundef nonnull @.str.3)
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #31
  resume { ptr, i32 } %21

22:                                               ; preds = %11, %13
  %23 = load ptr, ptr %0, align 8, !tbaa !81
  %24 = getelementptr inbounds ptr, ptr %23, i64 6
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(48) %0), !prof !110
  %27 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @_ZZNK5cGate11getFullNameEvE3tmp, ptr noundef nonnull dereferenceable(1) %26) #31
  %28 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !87
  %30 = ashr i32 %29, 2
  %31 = icmp eq i32 %30, -1
  br label %32

32:                                               ; preds = %32, %22
  %33 = phi ptr [ @_ZZNK5cGate11getFullNameEvE3tmp, %22 ], [ %36, %32 ]
  %34 = load i8, ptr %33, align 1, !tbaa !63
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  br i1 %35, label %37, label %32, !prof !111, !llvm.loop !112

37:                                               ; preds = %32
  %38 = select i1 %31, i32 0, i32 %30, !prof !109
  %39 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 91, ptr %33, align 1, !tbaa !63
  %40 = icmp ult i32 %38, 10
  br i1 %40, label %41, label %46, !prof !115

41:                                               ; preds = %37
  %42 = trunc i32 %38 to i8
  %43 = or disjoint i8 %42, 48
  %44 = getelementptr inbounds i8, ptr %33, i64 2
  store i8 %43, ptr %39, align 1, !tbaa !63
  %45 = getelementptr inbounds i8, ptr %33, i64 3
  store i8 93, ptr %44, align 1, !tbaa !63
  store i8 0, ptr %45, align 1, !tbaa !63
  br label %60

46:                                               ; preds = %37
  %47 = icmp ult i32 %38, 100
  br i1 %47, label %48, label %58, !prof !116

48:                                               ; preds = %46
  %49 = udiv i32 %38, 10
  %50 = trunc i32 %49 to i8
  %51 = or disjoint i8 %50, 48
  %52 = getelementptr inbounds i8, ptr %33, i64 2
  store i8 %51, ptr %39, align 1, !tbaa !63
  %53 = urem i32 %38, 10
  %54 = trunc i32 %53 to i8
  %55 = or disjoint i8 %54, 48
  %56 = getelementptr inbounds i8, ptr %33, i64 3
  store i8 %55, ptr %52, align 1, !tbaa !63
  %57 = getelementptr inbounds i8, ptr %33, i64 4
  store i8 93, ptr %56, align 1, !tbaa !63
  store i8 0, ptr %57, align 1, !tbaa !63
  br label %60

58:                                               ; preds = %46
  %59 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %38) #31
  br label %60

60:                                               ; preds = %41, %48, %58
  %61 = tail call noundef ptr @_ZN16CommonStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(48) @_ZL16gateFullnamePool, ptr noundef nonnull @_ZZNK5cGate11getFullNameEvE3tmp)
  br label %62

62:                                               ; preds = %1, %60
  %63 = phi ptr [ %61, %60 ], [ %10, %1 ]
  ret ptr %63
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

declare noundef ptr @_ZN16CommonStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK5cGate4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !87
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %9
  %17 = phi ptr [ %1, %9 ], [ %14, %12 ]
  %18 = phi ptr [ @.str.4, %9 ], [ @.str.5, %12 ]
  %19 = phi ptr [ %11, %9 ], [ %14, %12 ]
  %20 = getelementptr inbounds %class.cGate, ptr %17, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !89
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi ptr [ @.str.5, %12 ], [ %18, %16 ]
  %24 = phi ptr [ %14, %12 ], [ %19, %16 ]
  %25 = phi ptr [ null, %12 ], [ %21, %16 ]
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %28, ptr %0, align 8, !tbaa !119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %28, ptr noundef nonnull align 1 dereferenceable(13) @.str.6, i64 13, i1 false), !prof !121
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 13, ptr %29, align 8, !tbaa !122
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2, i32 1, i64 5
  store i8 0, ptr %30, align 1, !tbaa !63
  br label %154

31:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #31
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %32 = getelementptr inbounds i8, ptr %3, i64 16
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %23, i64 noundef 4)
          to label %34 unwind label %132

34:                                               ; preds = %31
  %35 = getelementptr inbounds %class.cGate, ptr %24, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !83
  %37 = load ptr, ptr %36, align 8, !tbaa !124
  %38 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !83
  %40 = load ptr, ptr %39, align 8, !tbaa !124
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = getelementptr inbounds ptr, ptr %41, i64 37
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(176) %40)
          to label %45 unwind label %132

45:                                               ; preds = %34
  %46 = icmp eq ptr %37, %44
  br i1 %46, label %54, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %35, align 8, !tbaa !83
  %49 = load ptr, ptr %48, align 8, !tbaa !124
  %50 = load ptr, ptr %49, align 8, !tbaa !81
  %51 = getelementptr inbounds ptr, ptr %50, i64 7
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(176) %49)
          to label %54 unwind label %132

54:                                               ; preds = %47, %45
  %55 = phi ptr [ @.str.7, %45 ], [ %53, %47 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load ptr, ptr %32, align 8, !tbaa !81
  %59 = getelementptr i8, ptr %58, i64 -24
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds i8, ptr %32, i64 %60
  %62 = getelementptr inbounds %"class.std::ios_base", ptr %61, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !125
  %64 = or i32 %63, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %61, i32 noundef %64)
          to label %68 unwind label %132

65:                                               ; preds = %54
  %66 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %55) #31
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %55, i64 noundef %66)
          to label %68 unwind label %132

68:                                               ; preds = %65, %57
  %69 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %70 unwind label %132

70:                                               ; preds = %68
  %71 = load ptr, ptr %24, align 8, !tbaa !81
  %72 = getelementptr inbounds ptr, ptr %71, i64 7
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(48) %24)
          to label %75 unwind label %132

75:                                               ; preds = %70
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %75
  %78 = load ptr, ptr %32, align 8, !tbaa !81
  %79 = getelementptr i8, ptr %78, i64 -24
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds i8, ptr %32, i64 %80
  %82 = getelementptr inbounds %"class.std::ios_base", ptr %81, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !125
  %84 = or i32 %83, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %81, i32 noundef %84)
          to label %88 unwind label %132

85:                                               ; preds = %75
  %86 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %74) #31
  %87 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %74, i64 noundef %86)
          to label %88 unwind label %132

88:                                               ; preds = %77, %85
  %89 = icmp eq ptr %25, null
  br i1 %89, label %147, label %90

90:                                               ; preds = %88
  %91 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %92 unwind label %132

92:                                               ; preds = %90
  %93 = invoke noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %25)
          to label %94 unwind label %132

94:                                               ; preds = %92
  %95 = load ptr, ptr %93, align 8, !tbaa !81
  %96 = getelementptr inbounds ptr, ptr %95, i64 7
  %97 = load ptr, ptr %96, align 8
  %98 = invoke noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(168) %93)
          to label %99 unwind label %132

99:                                               ; preds = %94
  %100 = icmp eq ptr %98, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %99
  %102 = load ptr, ptr %32, align 8, !tbaa !81
  %103 = getelementptr i8, ptr %102, i64 -24
  %104 = load i64, ptr %103, align 8
  %105 = getelementptr inbounds i8, ptr %32, i64 %104
  %106 = getelementptr inbounds %"class.std::ios_base", ptr %105, i64 0, i32 5
  %107 = load i32, ptr %106, align 8, !tbaa !125
  %108 = or i32 %107, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %105, i32 noundef %108)
          to label %112 unwind label %132

109:                                              ; preds = %99
  %110 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %98) #31
  %111 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %98, i64 noundef %110)
          to label %112 unwind label %132

112:                                              ; preds = %109, %101
  %113 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %114 unwind label %132

114:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #31
  %115 = load ptr, ptr %25, align 8, !tbaa !81
  %116 = getelementptr inbounds ptr, ptr %115, i64 9
  %117 = load ptr, ptr %116, align 8
  invoke void %117(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(116) %25)
          to label %118 unwind label %134

118:                                              ; preds = %114
  %119 = load ptr, ptr %4, align 8, !tbaa !131
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !122
  %122 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %119, i64 noundef %121)
          to label %123 unwind label %136

123:                                              ; preds = %118
  %124 = load ptr, ptr %4, align 8, !tbaa !131
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, ptr %120, align 8, !tbaa !122
  %129 = icmp ult i64 %128, 16
  call void @llvm.assume(i1 %129)
  br label %131

130:                                              ; preds = %123
  call void @_ZdlPv(ptr noundef %124) #32
  br label %131

131:                                              ; preds = %127, %130
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  br label %147

132:                                              ; preds = %147, %112, %109, %101, %90, %85, %77, %68, %65, %57, %31, %94, %92, %70, %47, %34
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %151

134:                                              ; preds = %114
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %145

136:                                              ; preds = %118
  %137 = landingpad { ptr, i32 }
          cleanup
  %138 = load ptr, ptr %4, align 8, !tbaa !131
  %139 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i64, ptr %120, align 8, !tbaa !122
  %143 = icmp ult i64 %142, 16
  call void @llvm.assume(i1 %143)
  br label %145

144:                                              ; preds = %136
  call void @_ZdlPv(ptr noundef %138) #32
  br label %145

145:                                              ; preds = %144, %141, %134
  %146 = phi { ptr, i32 } [ %135, %134 ], [ %137, %141 ], [ %137, %144 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  br label %151

147:                                              ; preds = %88, %131
  %148 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %3, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %148)
          to label %149 unwind label %132

149:                                              ; preds = %147
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #31
  %150 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %150) #31
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #31
  br label %154

151:                                              ; preds = %145, %132
  %152 = phi { ptr, i32 } [ %133, %132 ], [ %146, %145 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #31
  %153 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %153) #31
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #31
  resume { ptr, i32 } %152

154:                                              ; preds = %27, %149
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !119
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #34
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  store i64 %9, ptr %4, align 8, !tbaa !132
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !133

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !131
  %13 = load i64, ptr %4, align 8, !tbaa !132
  store i64 %13, ptr %5, align 8, !tbaa !63
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !131
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !134

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !63
  store i8 %17, ptr %15, align 1, !tbaa !63
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !121
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !132
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !122
  %22 = load ptr, ptr %0, align 8, !tbaa !131
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret void
}

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #11 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #13 align 2 !prof !135 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  ret ptr %4
}

declare noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK5cGate8getOwnerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #13 align 2 !prof !136 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  ret ptr %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK5cGate5getIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #15 align 2 !prof !137 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %class.cModule, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = ptrtoint ptr %3 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 40
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %"struct.cGate::Desc", ptr %3, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !107
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %21, label %15, !prof !146

15:                                               ; preds = %1
  %16 = shl i32 %11, 1
  %17 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !87
  %19 = and i32 %18, 1
  %20 = or disjoint i32 %19, %16
  br label %31

21:                                               ; preds = %1
  %22 = shl i32 %11, 20
  %23 = add i32 %22, 1048576
  %24 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !87
  %26 = shl i32 %25, 19
  %27 = and i32 %26, 524288
  %28 = or disjoint i32 %27, %23
  %29 = ashr i32 %25, 2
  %30 = or i32 %28, %29
  br label %31

31:                                               ; preds = %21, %15
  %32 = phi i32 [ %30, %21 ], [ %20, %15 ]
  ret i32 %32
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN5cGate11getTypeNameENS_4TypeE(i32 noundef %0) local_unnamed_addr #16 align 2 !prof !88 {
  switch i32 %0, label %4 [
    i32 73, label %5
    i32 79, label %2
    i32 66, label %3
  ]

2:                                                ; preds = %1
  br label %5

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %4, %3, %2
  %6 = phi ptr [ @.str.14, %4 ], [ @.str.13, %3 ], [ @.str.12, %2 ], [ @.str.11, %1 ]
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK5cGate13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #11 align 2 !prof !88 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = getelementptr inbounds ptr, ptr %2, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %6 = tail call noundef ptr @_Z14check_and_castIP10cComponentET_P7cObject(ptr noundef %5)
  %7 = tail call noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %6)
  %8 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str.27, ptr %12
  %15 = load ptr, ptr %7, align 8, !tbaa !81
  %16 = getelementptr inbounds ptr, ptr %15, i64 26
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull %14)
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_Z14check_and_castIP10cComponentET_P7cObject(ptr noundef %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 !prof !147 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %11, !prof !148

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  %6 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIP10cComponent)
          to label %7 unwind label %9

7:                                                ; preds = %4
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull @.str.34, ptr noundef %6)
          to label %8 unwind label %9

8:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

9:                                                ; preds = %7, %4
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %51

11:                                               ; preds = %1
  %12 = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI10cComponent, i64 0) #31
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %50, !prof !148

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  %16 = load ptr, ptr %0, align 8, !tbaa !81
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %20 unwind label %29

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #31
  %21 = load ptr, ptr %0, align 8, !tbaa !81
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %24 unwind label %31

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 8, !tbaa !131
  %26 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIP10cComponent)
          to label %27 unwind label %33

27:                                               ; preds = %24
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull @.str.35, ptr noundef %19, ptr noundef %25, ptr noundef %26)
          to label %28 unwind label %33

28:                                               ; preds = %27
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %56 unwind label %33

29:                                               ; preds = %14
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %47

31:                                               ; preds = %20
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %44

33:                                               ; preds = %28, %27, %24
  %34 = phi i1 [ false, %28 ], [ true, %27 ], [ true, %24 ]
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = load ptr, ptr %2, align 8, !tbaa !131
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !122
  %42 = icmp ult i64 %41, 16
  call void @llvm.assume(i1 %42)
  br label %44

43:                                               ; preds = %33
  call void @_ZdlPv(ptr noundef %36) #32
  br label %44

44:                                               ; preds = %43, %39, %31
  %45 = phi { ptr, i32 } [ %32, %31 ], [ %35, %39 ], [ %35, %43 ]
  %46 = phi i1 [ true, %31 ], [ %34, %39 ], [ %34, %43 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #31
  br label %47

47:                                               ; preds = %44, %29
  %48 = phi { ptr, i32 } [ %45, %44 ], [ %30, %29 ]
  %49 = phi i1 [ %46, %44 ], [ true, %29 ]
  br i1 %49, label %51, label %54

50:                                               ; preds = %11
  ret ptr %12

51:                                               ; preds = %47, %9
  %52 = phi ptr [ %5, %9 ], [ %15, %47 ]
  %53 = phi { ptr, i32 } [ %10, %9 ], [ %48, %47 ]
  call void @__cxa_free_exception(ptr %52) #31
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi { ptr, i32 } [ %48, %47 ], [ %53, %51 ]
  resume { ptr, i32 } %55

56:                                               ; preds = %28
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN5cGate9connectToEPS_P8cChannelb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef returned %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %5 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !150

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull %0, ptr noundef nonnull @.str.15)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %68

13:                                               ; preds = %4
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %20, !prof !151

15:                                               ; preds = %13
  %16 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %16, ptr noundef nonnull %0, ptr noundef nonnull @.str.16)
          to label %17 unwind label %18

17:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %68

20:                                               ; preds = %13
  %21 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !118
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24, !prof !150

24:                                               ; preds = %20
  %25 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull %0, ptr noundef nonnull @.str.17)
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %68

29:                                               ; preds = %20
  store ptr %1, ptr %5, align 8, !tbaa !117
  store ptr %0, ptr %21, align 8, !tbaa !118
  %30 = icmp eq ptr %2, null
  br i1 %30, label %37, label %31, !prof !152

31:                                               ; preds = %29
  %32 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  store ptr %2, ptr %32, align 8, !tbaa !89
  %33 = getelementptr inbounds %class.cChannel, ptr %2, i64 0, i32 1
  store ptr %0, ptr %33, align 8, !tbaa !153
  %34 = load ptr, ptr %0, align 8, !tbaa !81
  %35 = getelementptr inbounds ptr, ptr %34, i64 12
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2), !prof !155
  br label %37

37:                                               ; preds = %31, %29
  tail call void @_ZNK5cGate13checkChannelsEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %38 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !156
  %39 = getelementptr inbounds %class.cEnvir, ptr %38, i64 0, i32 2
  %40 = load i8, ptr %39, align 1, !tbaa !157, !range !161, !noundef !162
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46, !prof !150

42:                                               ; preds = %37
  %43 = load ptr, ptr %38, align 8, !tbaa !81
  %44 = getelementptr inbounds ptr, ptr %43, i64 23
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(288) %38, ptr noundef nonnull %0), !prof !163
  br label %46

46:                                               ; preds = %37, %42
  %47 = or i1 %30, %3
  br i1 %47, label %67, label %48, !prof !152

48:                                               ; preds = %46
  %49 = load ptr, ptr %2, align 8, !tbaa !81
  %50 = getelementptr inbounds ptr, ptr %49, i64 37
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(116) %2), !prof !164
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54, !prof !165

54:                                               ; preds = %48
  %55 = load ptr, ptr %2, align 8, !tbaa !81
  %56 = getelementptr inbounds ptr, ptr %55, i64 37
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(116) %2), !prof !164
  %59 = getelementptr inbounds %class.cNamedObject, ptr %58, i64 0, i32 2
  %60 = load i16, ptr %59, align 8, !tbaa !166
  %61 = and i16 %60, 8
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %67, label %63, !prof !167

63:                                               ; preds = %54, %48
  %64 = load ptr, ptr %2, align 8, !tbaa !81
  %65 = getelementptr inbounds ptr, ptr %64, i64 38
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(116) %2)
  br label %67

67:                                               ; preds = %46, %63, %54
  ret ptr %2

68:                                               ; preds = %27, %18, %11
  %69 = phi ptr [ %25, %27 ], [ %16, %18 ], [ %9, %11 ]
  %70 = phi { ptr, i32 } [ %28, %27 ], [ %19, %18 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %69) #31
  resume { ptr, i32 } %70
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN5cGate14installChannelEP8cChannel(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #11 align 2 !prof !88 {
  %3 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !89
  %4 = getelementptr inbounds %class.cChannel, ptr %1, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !153
  %5 = load ptr, ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5cGate13checkChannelsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %6 = getelementptr inbounds %class.cGate, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !168, !llvm.loop !169

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.cGate, ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = icmp eq ptr %11, null
  br i1 %12, label %91, label %15, !prof !170

13:                                               ; preds = %29
  %14 = icmp sgt i32 %30, 1
  br i1 %14, label %35, label %91, !prof !151

15:                                               ; preds = %9, %29
  %16 = phi ptr [ %32, %29 ], [ %10, %9 ]
  %17 = phi ptr [ %31, %29 ], [ %5, %9 ]
  %18 = phi i32 [ %30, %29 ], [ 0, %9 ]
  %19 = getelementptr inbounds %class.cGate, ptr %17, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22, !prof !171

22:                                               ; preds = %15
  %23 = load ptr, ptr %20, align 8, !tbaa !81
  %24 = getelementptr inbounds ptr, ptr %23, i64 46
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(116) %20), !prof !172
  %27 = zext i1 %26 to i32
  %28 = add nsw i32 %18, %27
  br label %29

29:                                               ; preds = %22, %15
  %30 = phi i32 [ %18, %15 ], [ %28, %22 ]
  %31 = load ptr, ptr %16, align 8, !tbaa !117
  %32 = getelementptr inbounds %class.cGate, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !117
  %34 = icmp eq ptr %33, null
  br i1 %34, label %13, label %15, !prof !173, !llvm.loop !174

35:                                               ; preds = %13
  %36 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #31
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi ptr [ %0, %35 ], [ %40, %37 ]
  %39 = getelementptr inbounds %class.cGate, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %37, !llvm.loop !169

42:                                               ; preds = %37
  %43 = load ptr, ptr %38, align 8, !tbaa !81
  %44 = getelementptr inbounds ptr, ptr %43, i64 8
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %46 unwind label %60

46:                                               ; preds = %42
  %47 = load ptr, ptr %2, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi ptr [ %0, %46 ], [ %51, %48 ]
  %50 = getelementptr inbounds %class.cGate, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !117
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %48, !llvm.loop !175

53:                                               ; preds = %48
  %54 = load ptr, ptr %49, align 8, !tbaa !81
  %55 = getelementptr inbounds ptr, ptr %54, i64 8
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %49)
          to label %57 unwind label %62

57:                                               ; preds = %53
  %58 = load ptr, ptr %3, align 8, !tbaa !131
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull @.str.18, ptr noundef %47, ptr noundef %58)
          to label %59 unwind label %64

59:                                               ; preds = %57
  invoke void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %92 unwind label %64

60:                                               ; preds = %42
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %86

62:                                               ; preds = %53
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %75

64:                                               ; preds = %59, %57
  %65 = phi i1 [ false, %59 ], [ true, %57 ]
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %3, align 8, !tbaa !131
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !122
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %75

74:                                               ; preds = %64
  call void @_ZdlPv(ptr noundef %67) #32
  br label %75

75:                                               ; preds = %74, %70, %62
  %76 = phi { ptr, i32 } [ %63, %62 ], [ %66, %70 ], [ %66, %74 ]
  %77 = phi i1 [ true, %62 ], [ %65, %70 ], [ %65, %74 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  %78 = load ptr, ptr %2, align 8, !tbaa !131
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !122
  %84 = icmp ult i64 %83, 16
  call void @llvm.assume(i1 %84)
  br label %86

85:                                               ; preds = %75
  call void @_ZdlPv(ptr noundef %78) #32
  br label %86

86:                                               ; preds = %85, %81, %60
  %87 = phi { ptr, i32 } [ %61, %60 ], [ %76, %81 ], [ %76, %85 ]
  %88 = phi i1 [ true, %60 ], [ %77, %81 ], [ %77, %85 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #31
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call void @__cxa_free_exception(ptr %36) #31
  br label %90

90:                                               ; preds = %89, %86
  resume { ptr, i32 } %87

91:                                               ; preds = %9, %13
  ret void

92:                                               ; preds = %59
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5cGate10disconnectEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 align 2 !prof !149 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5, !prof !151

5:                                                ; preds = %1
  %6 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !156
  %7 = getelementptr inbounds %class.cEnvir, ptr %6, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !157, !range !161, !noundef !162
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !150

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !81
  %12 = getelementptr inbounds ptr, ptr %11, i64 24
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(288) %6, ptr noundef nonnull %0), !prof !176
  br label %14

14:                                               ; preds = %5, %10
  %15 = load ptr, ptr %2, align 8, !tbaa !117
  %16 = getelementptr inbounds %class.cGate, ptr %15, i64 0, i32 4
  store ptr null, ptr %16, align 8, !tbaa !118
  store ptr null, ptr %2, align 8, !tbaa !117
  %17 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  tail call void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %18)
  store ptr null, ptr %17, align 8, !tbaa !89
  br label %19

19:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK5cGate16getPathStartGateEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #12 align 2 !prof !88 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %class.cGate, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !169

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK5cGate14getPathEndGateEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #13 align 2 !prof !177 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %class.cGate, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !prof !178, !llvm.loop !175

7:                                                ; preds = %2
  ret ptr %3
}

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN5cGate13reconnectWithEP8cChannelb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef returned %1, i1 noundef zeroext %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %4 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.19)
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #31
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  tail call void @_ZN5cGate10disconnectEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %13 = tail call noundef ptr @_ZN5cGate9connectToEPS_P8cChannelb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5, ptr noundef %1, i1 noundef zeroext %2)
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN5cGate26setDeliverOnReceptionStartEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = getelementptr inbounds ptr, ptr %6, i64 57
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(176) %5)
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef nonnull %0, ptr noundef nonnull @.str.20)
          to label %12 unwind label %13

12:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %29

15:                                               ; preds = %2
  %16 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !87
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %21, ptr noundef nonnull %0, ptr noundef nonnull @.str.21)
          to label %22 unwind label %23

22:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %29

25:                                               ; preds = %15
  %26 = and i32 %17, -4
  %27 = or i32 %17, 2
  %28 = select i1 %1, i32 %27, i32 %26
  store i32 %28, ptr %16, align 8, !tbaa !87
  ret void

29:                                               ; preds = %23, %13
  %30 = phi ptr [ %21, %23 ], [ %11, %13 ]
  %31 = phi { ptr, i32 } [ %24, %23 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %30) #31
  resume { ptr, i32 } %31
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5cGate7deliverEP8cMessage7SimTime(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 !prof !179 {
  %4 = alloca %class.SimTime, align 8
  %5 = alloca %class.SimTime, align 8
  %6 = alloca %class.SimTime, align 8
  %7 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18, !prof !180

10:                                               ; preds = %3
  %11 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = load ptr, ptr %12, align 8, !tbaa !124
  %14 = load i64, ptr %2, align 8, !tbaa !181
  store i64 %14, ptr %4, align 8, !tbaa !181
  %15 = load ptr, ptr %13, align 8, !tbaa !81
  %16 = getelementptr inbounds ptr, ptr %15, i64 47
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr noundef nonnull align 8 dereferenceable(176) %13, ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %4), !prof !183
  br label %59

18:                                               ; preds = %3
  %19 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22, !prof !184

22:                                               ; preds = %18
  %23 = getelementptr inbounds %class.cNamedObject, ptr %20, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !166
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %33, !prof !185

27:                                               ; preds = %22
  %28 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  %29 = load ptr, ptr %19, align 8, !tbaa !89
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %28, ptr noundef %29, ptr noundef nonnull @.str.22)
          to label %30 unwind label %31

30:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %28) #31
  resume { ptr, i32 } %32

33:                                               ; preds = %22
  %34 = load i64, ptr %2, align 8, !tbaa !181
  store i64 %34, ptr %5, align 8, !tbaa !181
  %35 = load ptr, ptr %20, align 8, !tbaa !81
  %36 = getelementptr inbounds ptr, ptr %35, i64 47
  %37 = load ptr, ptr %36, align 8
  %38 = call noundef zeroext i1 %37(ptr noundef nonnull align 8 dereferenceable(116) %20, ptr noundef %1, ptr noundef nonnull %5), !prof !186
  br label %59

39:                                               ; preds = %18
  %40 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !156
  %41 = getelementptr inbounds %class.cEnvir, ptr %40, i64 0, i32 2
  %42 = load i8, ptr %41, align 1, !tbaa !157, !range !161, !noundef !162
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48, !prof !187

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 8, !tbaa !81
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(288) %40, ptr noundef %1, ptr noundef nonnull %0), !prof !188
  br label %48

48:                                               ; preds = %39, %44
  %49 = load ptr, ptr %7, align 8, !tbaa !117
  %50 = load i64, ptr %2, align 8, !tbaa !181
  store i64 %50, ptr %6, align 8, !tbaa !181
  %51 = load ptr, ptr %49, align 8, !tbaa !81
  %52 = getelementptr inbounds ptr, ptr %51, i64 19
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, @_ZN5cGate7deliverEP8cMessage7SimTime
  br i1 %54, label %55, label %57, !prof !187

55:                                               ; preds = %48
  %56 = call noundef zeroext i1 @_ZN5cGate7deliverEP8cMessage7SimTime(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef %1, ptr noundef nonnull %6)
  br label %59

57:                                               ; preds = %48
  %58 = call noundef zeroext i1 %53(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef %1, ptr noundef nonnull %6)
  br label %59

59:                                               ; preds = %55, %57, %33, %10
  %60 = phi i1 [ true, %10 ], [ %38, %33 ], [ %58, %57 ], [ %56, %55 ]
  ret i1 %60
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK5cGate22getTransmissionChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %1, %23
  %9 = phi i1 [ %27, %23 ], [ %7, %1 ]
  %10 = phi ptr [ %25, %23 ], [ %5, %1 ]
  %11 = phi ptr [ %24, %23 ], [ %0, %1 ]
  %12 = getelementptr inbounds %class.cGate, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %13, align 8, !tbaa !81
  %17 = getelementptr inbounds ptr, ptr %16, i64 46
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(116) %13)
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %class.cGate, ptr %11, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !89
  br label %28

23:                                               ; preds = %8, %15
  %24 = load ptr, ptr %10, align 8, !tbaa !117
  %25 = getelementptr inbounds %class.cGate, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !117
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %8, !llvm.loop !189

28:                                               ; preds = %23, %1, %20
  %29 = phi i1 [ %9, %20 ], [ %7, %1 ], [ %27, %23 ]
  %30 = phi ptr [ %22, %20 ], [ undef, %1 ], [ undef, %23 ]
  br i1 %29, label %31, label %117

31:                                               ; preds = %28
  %32 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !117
  %34 = icmp eq ptr %33, null
  br i1 %34, label %83, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #31
  %37 = load ptr, ptr %0, align 8, !tbaa !81
  %38 = getelementptr inbounds ptr, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %40 unwind label %54

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi ptr [ %0, %40 ], [ %45, %42 ]
  %44 = getelementptr inbounds %class.cGate, ptr %43, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !117
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %42, !llvm.loop !175

47:                                               ; preds = %42
  %48 = load ptr, ptr %43, align 8, !tbaa !81
  %49 = getelementptr inbounds ptr, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %51 unwind label %56

51:                                               ; preds = %47
  %52 = load ptr, ptr %3, align 8, !tbaa !131
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull @.str.23, ptr noundef %41, ptr noundef %52)
          to label %53 unwind label %58

53:                                               ; preds = %51
  invoke void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %123 unwind label %58

54:                                               ; preds = %35
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %80

56:                                               ; preds = %47
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %69

58:                                               ; preds = %53, %51
  %59 = phi i1 [ false, %53 ], [ true, %51 ]
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = load ptr, ptr %3, align 8, !tbaa !131
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !122
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  br label %69

68:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %61) #32
  br label %69

69:                                               ; preds = %68, %64, %56
  %70 = phi { ptr, i32 } [ %57, %56 ], [ %60, %64 ], [ %60, %68 ]
  %71 = phi i1 [ true, %56 ], [ %59, %64 ], [ %59, %68 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  %72 = load ptr, ptr %2, align 8, !tbaa !131
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !122
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  br label %80

79:                                               ; preds = %69
  call void @_ZdlPv(ptr noundef %72) #32
  br label %80

80:                                               ; preds = %79, %75, %54
  %81 = phi { ptr, i32 } [ %55, %54 ], [ %70, %75 ], [ %70, %79 ]
  %82 = phi i1 [ true, %54 ], [ %71, %75 ], [ %71, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #31
  br i1 %82, label %118, label %121

83:                                               ; preds = %31
  %84 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !87
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  %88 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  br i1 %87, label %113, label %89

89:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #31
  %90 = load ptr, ptr %0, align 8, !tbaa !81
  %91 = getelementptr inbounds ptr, ptr %90, i64 8
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %93 unwind label %97

93:                                               ; preds = %89
  %94 = load ptr, ptr %4, align 8, !tbaa !131
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %88, ptr noundef nonnull @.str.24, ptr noundef %94)
          to label %95 unwind label %99

95:                                               ; preds = %93
  invoke void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %96 unwind label %99

96:                                               ; preds = %95
  unreachable

97:                                               ; preds = %89
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %110

99:                                               ; preds = %95, %93
  %100 = phi i1 [ false, %95 ], [ true, %93 ]
  %101 = landingpad { ptr, i32 }
          cleanup
  %102 = load ptr, ptr %4, align 8, !tbaa !131
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !122
  %108 = icmp ult i64 %107, 16
  call void @llvm.assume(i1 %108)
  br label %110

109:                                              ; preds = %99
  call void @_ZdlPv(ptr noundef %102) #32
  br label %110

110:                                              ; preds = %109, %105, %97
  %111 = phi { ptr, i32 } [ %98, %97 ], [ %101, %105 ], [ %101, %109 ]
  %112 = phi i1 [ true, %97 ], [ %100, %105 ], [ %100, %109 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  br i1 %112, label %118, label %121

113:                                              ; preds = %83
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %88, ptr noundef nonnull %0, ptr noundef nonnull @.str.25)
          to label %114 unwind label %115

114:                                              ; preds = %113
  tail call void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

115:                                              ; preds = %113
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %118

117:                                              ; preds = %28
  ret ptr %30

118:                                              ; preds = %110, %80, %115
  %119 = phi ptr [ %88, %115 ], [ %36, %80 ], [ %88, %110 ]
  %120 = phi { ptr, i32 } [ %116, %115 ], [ %81, %80 ], [ %111, %110 ]
  call void @__cxa_free_exception(ptr %119) #31
  br label %121

121:                                              ; preds = %118, %110, %80
  %122 = phi { ptr, i32 } [ %81, %80 ], [ %111, %110 ], [ %120, %118 ]
  resume { ptr, i32 } %122

123:                                              ; preds = %53
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate6isBusyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #11 align 2 !prof !88 {
  %2 = tail call noundef ptr @_ZNK5cGate22getTransmissionChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds ptr, ptr %3, i64 50
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(116) %2)
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK5cGate25getTransmissionFinishTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #11 align 2 !prof !88 {
  %3 = tail call noundef ptr @_ZNK5cGate22getTransmissionChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds ptr, ptr %4, i64 49
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr dead_on_unwind writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5cGate12pathContainsEP7cModulei(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #12 align 2 !prof !88 {
  %4 = icmp eq i32 %2, -1
  br label %11

5:                                                ; preds = %48
  %6 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = icmp eq ptr %7, null
  br i1 %8, label %93, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, -1
  br label %52

11:                                               ; preds = %3, %48
  %12 = phi ptr [ %0, %3 ], [ %50, %48 ]
  %13 = getelementptr inbounds %class.cGate, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  br i1 %4, label %93, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %class.cModule, ptr %15, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  %21 = ptrtoint ptr %14 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 40
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %"struct.cGate::Desc", ptr %14, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !107
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = shl i32 %25, 1
  %31 = getelementptr inbounds %class.cGate, ptr %12, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !87
  %33 = and i32 %32, 1
  %34 = or disjoint i32 %33, %30
  br label %45

35:                                               ; preds = %18
  %36 = shl i32 %25, 20
  %37 = add i32 %36, 1048576
  %38 = getelementptr inbounds %class.cGate, ptr %12, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !87
  %40 = shl i32 %39, 19
  %41 = and i32 %40, 524288
  %42 = or disjoint i32 %41, %37
  %43 = ashr i32 %39, 2
  %44 = or i32 %42, %43
  br label %45

45:                                               ; preds = %29, %35
  %46 = phi i32 [ %44, %35 ], [ %34, %29 ]
  %47 = icmp eq i32 %46, %2
  br i1 %47, label %93, label %48

48:                                               ; preds = %11, %45
  %49 = getelementptr inbounds %class.cGate, ptr %12, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !118
  %51 = icmp eq ptr %50, null
  br i1 %51, label %5, label %11, !llvm.loop !190

52:                                               ; preds = %9, %89
  %53 = phi ptr [ %7, %9 ], [ %91, %89 ]
  %54 = getelementptr inbounds %class.cGate, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !83
  %56 = load ptr, ptr %55, align 8, !tbaa !124
  %57 = icmp eq ptr %56, %1
  br i1 %57, label %58, label %89

58:                                               ; preds = %52
  br i1 %10, label %93, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %class.cModule, ptr %56, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !138
  %62 = ptrtoint ptr %55 to i64
  %63 = ptrtoint ptr %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 40
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %"struct.cGate::Desc", ptr %55, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !107
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %76, label %70

70:                                               ; preds = %59
  %71 = shl i32 %66, 1
  %72 = getelementptr inbounds %class.cGate, ptr %53, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !87
  %74 = and i32 %73, 1
  %75 = or disjoint i32 %74, %71
  br label %86

76:                                               ; preds = %59
  %77 = shl i32 %66, 20
  %78 = add i32 %77, 1048576
  %79 = getelementptr inbounds %class.cGate, ptr %53, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !87
  %81 = shl i32 %80, 19
  %82 = and i32 %81, 524288
  %83 = or disjoint i32 %82, %78
  %84 = ashr i32 %80, 2
  %85 = or i32 %83, %84
  br label %86

86:                                               ; preds = %70, %76
  %87 = phi i32 [ %85, %76 ], [ %75, %70 ]
  %88 = icmp eq i32 %87, %2
  br i1 %88, label %93, label %89

89:                                               ; preds = %52, %86
  %90 = getelementptr inbounds %class.cGate, ptr %53, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !117
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %52, !llvm.loop !191

93:                                               ; preds = %17, %45, %86, %58, %89, %5
  %94 = phi i1 [ false, %5 ], [ false, %89 ], [ true, %58 ], [ true, %86 ], [ true, %45 ], [ true, %17 ]
  ret i1 %94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #18 align 2 !prof !192 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !87
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = select i1 %5, ptr %8, ptr %9, !prof !193
  %11 = icmp ne ptr %10, null
  ret i1 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #18 align 2 !prof !194 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !87
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = select i1 %5, ptr %8, ptr %9, !prof !195
  %11 = icmp ne ptr %10, null
  ret i1 %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate11isConnectedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #3 align 2 !prof !177 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds ptr, ptr %5, i64 57
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(176) %4), !prof !196
  br i1 %8, label %17, label %9, !prof !197

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  %12 = icmp ne ptr %11, null
  %13 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %12, i1 %15, i1 false
  br label %28

17:                                               ; preds = %1
  %18 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !87
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 4
  %23 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %22, align 8
  %25 = load ptr, ptr %23, align 8
  %26 = select i1 %21, ptr %24, ptr %25, !prof !197
  %27 = icmp ne ptr %26, null
  br label %28

28:                                               ; preds = %17, %9
  %29 = phi i1 [ %27, %17 ], [ %16, %9 ]
  ret i1 %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate8isPathOKEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #11 align 2 !prof !88 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %class.cGate, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !169

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.cGate, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = getelementptr inbounds ptr, ptr %11, i64 57
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(176) %10)
  br i1 %14, label %15, label %28

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %18, %15 ], [ %0, %7 ]
  %17 = getelementptr inbounds %class.cGate, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !117
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !175

20:                                               ; preds = %15
  %21 = getelementptr inbounds %class.cGate, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = load ptr, ptr %22, align 8, !tbaa !124
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  %25 = getelementptr inbounds ptr, ptr %24, i64 57
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(176) %23)
  br label %28

28:                                               ; preds = %20, %7
  %29 = phi i1 [ false, %7 ], [ %27, %20 ]
  ret i1 %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN5cGate16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #11 align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN13cIdealChannel6createEPKc(ptr noundef nonnull @.str.26)
  store ptr %6, ptr %2, align 8, !tbaa !89
  %7 = getelementptr inbounds %class.cChannel, ptr %6, i64 0, i32 1
  store ptr %0, ptr %7, align 8, !tbaa !153
  %8 = load ptr, ptr %0, align 8, !tbaa !81
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6)
  %11 = load ptr, ptr %2, align 8, !tbaa !89
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  %13 = getelementptr inbounds ptr, ptr %12, i64 38
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(116) %11)
  br label %15

15:                                               ; preds = %5, %1
  %16 = load ptr, ptr %2, align 8, !tbaa !89
  %17 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN10cComponent16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(104) %16)
  ret ptr %17
}

declare noundef ptr @_ZN13cIdealChannel6createEPKc(ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN10cComponent16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN5cGate16setDisplayStringEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #11 align 2 !prof !88 {
  %3 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5cGate16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  tail call void @_ZN14cDisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %1)
  ret void
}

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef ptr @_ZNK7cObject3dupEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !198 {
  ret i1 false
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4, !prof !199

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !200
  tail call void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !201
  tail call void @_ZdlPv(ptr noundef %5) #32
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !prof !202, !llvm.loop !203

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !97

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !122
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #32
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !97

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !122
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #32
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !131
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !204

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !122
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #32
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #10 comdat align 2 !prof !88 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #31
  tail call void @_ZdlPv(ptr noundef %0) #32
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #10 comdat align 2 !prof !91 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #30
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #32
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #10 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !205
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !88 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !122
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator.1", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.28)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !119, !alias.scope !208
  %10 = load ptr, ptr %7, align 8, !tbaa !131
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !122
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !131, !alias.scope !208
  %19 = load i64, ptr %11, align 8, !tbaa !63
  store i64 %19, ptr %9, align 8, !tbaa !63, !alias.scope !208
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !122
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !122, !alias.scope !208
  store ptr %11, ptr %7, align 8, !tbaa !131
  store i64 0, ptr %21, align 8, !tbaa !122
  store i8 0, ptr %11, align 8, !tbaa !63
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !122, !noalias !211
  %27 = load i64, ptr %23, align 8, !tbaa !122, !noalias !211
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #34
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !131, !noalias !211
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !119, !alias.scope !211
  %37 = load ptr, ptr %34, align 8, !tbaa !131
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !122
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !131, !alias.scope !211
  %46 = load i64, ptr %38, align 8, !tbaa !63
  store i64 %46, ptr %36, align 8, !tbaa !63, !alias.scope !211
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !122
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !122, !alias.scope !211
  store ptr %38, ptr %34, align 8, !tbaa !131
  store i64 0, ptr %48, align 8, !tbaa !122
  store i8 0, ptr %38, align 8, !tbaa !63
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #31
  %52 = load ptr, ptr %3, align 8, !tbaa !131
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !122
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #32
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !131
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !122
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #32
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !131
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !122
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #32
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
  %79 = load ptr, ptr %4, align 8, !tbaa !131
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !122
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #32
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !131
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !122
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #32
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #10 comdat align 2 !prof !91 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !214, !range !161, !noundef !162
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #10 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #10 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #10 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !215
  ret i32 %3
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #20

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #23

declare void @_ZN14cDisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #21

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #11 align 2

declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #24

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cgate.cc() #25 section ".text.startup" !prof !91 !PGOFuncName !216 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #31
  tail call void @_ZN16CommonStringPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZL16gateFullnamePool)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16CommonStringPoolD1Ev, ptr nonnull @_ZL16gateFullnamePool, ptr nonnull @__dso_handle) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind memory(read) }
attributes #25 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!60}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @_ZN5cGate4NameC2EPKcNS_4TypeE, ptr @strlen, i64 100195}
!36 = !{ptr @_ZN5cGate4NameC2EPKcNS_4TypeE, ptr @_Znam, i64 100195}
!37 = !{ptr @_ZN5cGate4NameC2EPKcNS_4TypeE, ptr @strcpy, i64 100195}
!38 = !{ptr @_ZN5cGate4NameC2EPKcNS_4TypeE, ptr @_Z10opp_concatPKcS0_S0_S0_, i64 28808}
!39 = !{ptr @_ZNK5cGate4NameltERKS0_, ptr @strcmp, i64 316433}
!40 = !{ptr @_ZN5cGateD0Ev, ptr @_ZN7cObject13dropAndDeleteEP12cOwnedObject, i64 113504}
!41 = !{ptr @_ZN5cGateD0Ev, ptr @_ZN7cObjectD2Ev, i64 113504}
!42 = !{ptr @_ZN5cGateD0Ev, ptr @_ZdlPv, i64 113504}
!43 = !{ptr @_ZN5cGate17clearFullnamePoolEv, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E, i64 1}
!44 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @strlen, i64 46134}
!45 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @_ZNK5cGate7getNameEv, i64 46134}
!46 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @strcpy, i64 46134}
!47 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @_ZN16CommonStringPool3getEPKc, i64 46134}
!48 = !{ptr @_Z14check_and_castIP10cComponentET_P7cObject, ptr @__dynamic_cast, i64 49}
!49 = !{ptr @_ZN5cGate9connectToEPS_P8cChannelb, ptr @_ZN7cObject4takeEP12cOwnedObject, i64 9762}
!50 = !{ptr @_ZN5cGate9connectToEPS_P8cChannelb, ptr @_ZNK5cGate13checkChannelsEv, i64 65602}
!51 = !{ptr @_ZN5cGate10disconnectEv, ptr @_ZN7cObject13dropAndDeleteEP12cOwnedObject, i64 65602}
!52 = !{ptr @_ZN5cGate7deliverEP8cMessage7SimTime, ptr @_ZN5cGate7deliverEP8cMessage7SimTime, i64 289503849}
!53 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E, i64 47}
!54 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E, ptr @_ZdlPv, i64 47}
!55 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!56 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!57 = !{ptr @_GLOBAL__sub_I_cgate.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!58 = !{ptr @_GLOBAL__sub_I_cgate.cc, ptr @__cxa_atexit, i64 2}
!59 = !{ptr @_GLOBAL__sub_I_cgate.cc, ptr @_ZN16CommonStringPoolC1Ev, i64 1}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 71388}
!62 = !{!"branch_weights", i32 0, i32 325620}
!63 = !{!64, !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C++ TBAA"}
!66 = !{!"branch_weights", i32 6, i32 325614}
!67 = !{!68, !69, i64 0}
!68 = !{!"_ZTS10opp_string", !69, i64 0}
!69 = !{!"any pointer", !64, i64 0}
!70 = !{!71, !72, i64 24}
!71 = !{!"_ZTSN5cGate4NameE", !68, i64 0, !68, i64 8, !68, i64 16, !72, i64 24}
!72 = !{!"_ZTSN5cGate4TypeE", !64, i64 0}
!73 = !{!"branch_weights", i32 14404, i32 56984}
!74 = !{!"branch_weights", i32 14404, i32 0}
!75 = !{!"branch_weights", i32 325616, i32 4}
!76 = !{!"function_entry_count", i64 316433}
!77 = !{!"branch_weights", i32 0, i32 316433}
!78 = !{!"branch_weights", i32 129534, i32 186899}
!79 = !{!"branch_weights", i32 142760, i32 44139}
!80 = !{!"function_entry_count", i64 113504}
!81 = !{!82, !82, i64 0}
!82 = !{!"vtable pointer", !65, i64 0}
!83 = !{!84, !69, i64 8}
!84 = !{!"_ZTS5cGate", !85, i64 0, !69, i64 8, !86, i64 16, !69, i64 24, !69, i64 32, !69, i64 40}
!85 = !{!"_ZTS7cObject"}
!86 = !{!"int", !64, i64 0}
!87 = !{!84, !86, i64 16}
!88 = !{!"function_entry_count", i64 0}
!89 = !{!84, !69, i64 24}
!90 = !{!"branch_weights", i32 113504, i32 0}
!91 = !{!"function_entry_count", i64 1}
!92 = !{!93, !69, i64 8}
!93 = !{!"_ZTSSt15_Rb_tree_header", !94, i64 0, !96, i64 32}
!94 = !{!"_ZTSSt18_Rb_tree_node_base", !95, i64 0, !69, i64 8, !69, i64 16, !69, i64 24}
!95 = !{!"_ZTSSt14_Rb_tree_color", !64, i64 0}
!96 = !{!"long", !64, i64 0}
!97 = !{!"branch_weights", i32 1, i32 0}
!98 = !{!93, !69, i64 16}
!99 = !{!93, !69, i64 24}
!100 = !{!93, !96, i64 32}
!101 = !{!102, !69, i64 8}
!102 = !{!"_ZTSN5cGate4DescE", !69, i64 0, !69, i64 8, !86, i64 16, !64, i64 24, !64, i64 32}
!103 = !{!"function_entry_count", i64 292246}
!104 = !{!"branch_weights", i32 133992, i32 158254}
!105 = !{!"branch_weights", i32 0, i32 133992}
!106 = !{!"function_entry_count", i64 87858}
!107 = !{!102, !86, i64 16}
!108 = !{!"branch_weights", i32 46134, i32 41724}
!109 = !{!"branch_weights", i32 0, i32 46134}
!110 = !{!"VP", i32 0, i64 46134, i64 -3513973037635291526, i64 46134}
!111 = !{!"branch_weights", i32 46134, i32 276804}
!112 = distinct !{!112, !113, !114}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !{!"branch_weights", i32 37764, i32 8370}
!116 = !{!"branch_weights", i32 8370, i32 0}
!117 = !{!84, !69, i64 40}
!118 = !{!84, !69, i64 32}
!119 = !{!120, !69, i64 0}
!120 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !69, i64 0}
!121 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!122 = !{!123, !96, i64 8}
!123 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !120, i64 0, !96, i64 8, !64, i64 16}
!124 = !{!102, !69, i64 0}
!125 = !{!126, !128, i64 32}
!126 = !{!"_ZTSSt8ios_base", !96, i64 8, !96, i64 16, !127, i64 24, !128, i64 28, !128, i64 32, !69, i64 40, !129, i64 48, !64, i64 64, !86, i64 192, !69, i64 200, !130, i64 208}
!127 = !{!"_ZTSSt13_Ios_Fmtflags", !64, i64 0}
!128 = !{!"_ZTSSt12_Ios_Iostate", !64, i64 0}
!129 = !{!"_ZTSNSt8ios_base6_WordsE", !69, i64 0, !96, i64 8}
!130 = !{!"_ZTSSt6locale", !69, i64 0}
!131 = !{!123, !69, i64 0}
!132 = !{!96, !96, i64 0}
!133 = !{!"branch_weights", i32 1257662, i32 631781}
!134 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!135 = !{!"function_entry_count", i64 93116}
!136 = !{!"function_entry_count", i64 175716}
!137 = !{!"function_entry_count", i64 404778218}
!138 = !{!139, !69, i64 160}
!139 = !{!"_ZTS7cModule", !140, i64 0, !69, i64 104, !86, i64 112, !69, i64 120, !69, i64 128, !69, i64 136, !69, i64 144, !86, i64 152, !69, i64 160, !86, i64 168, !86, i64 172}
!140 = !{!"_ZTS10cComponent", !141, i64 0, !69, i64 56, !145, i64 64, !69, i64 72, !145, i64 80, !145, i64 82, !69, i64 88, !69, i64 96}
!141 = !{!"_ZTS12cDefaultList", !142, i64 0, !69, i64 40, !86, i64 48, !86, i64 52}
!142 = !{!"_ZTS23cNoncopyableOwnedObject", !143, i64 0}
!143 = !{!"_ZTS12cOwnedObject", !144, i64 0, !69, i64 24, !86, i64 32}
!144 = !{!"_ZTS12cNamedObject", !85, i64 0, !69, i64 8, !145, i64 16, !145, i64 18}
!145 = !{!"short", !64, i64 0}
!146 = !{!"branch_weights", i32 137493884, i32 267284334}
!147 = !{!"function_entry_count", i64 49}
!148 = !{!"branch_weights", i32 0, i32 49}
!149 = !{!"function_entry_count", i64 65602}
!150 = !{!"branch_weights", i32 65602, i32 0}
!151 = !{!"branch_weights", i32 0, i32 65602}
!152 = !{!"branch_weights", i32 55840, i32 9762}
!153 = !{!154, !69, i64 104}
!154 = !{!"_ZTS8cChannel", !140, i64 0, !69, i64 104, !86, i64 112}
!155 = !{!"VP", i32 0, i64 9762, i64 4492280530626840185, i64 9762}
!156 = !{!69, !69, i64 0}
!157 = !{!158, !159, i64 9}
!158 = !{!"_ZTS6cEnvir", !159, i64 8, !159, i64 9, !159, i64 10, !160, i64 16}
!159 = !{!"bool", !64, i64 0}
!160 = !{!"_ZTSSo"}
!161 = !{i8 0, i8 2}
!162 = !{}
!163 = !{!"VP", i32 0, i64 65602, i64 -8243740662409333060, i64 65602}
!164 = !{!"VP", i32 0, i64 9762, i64 325973987169327844, i64 9762}
!165 = !{!"branch_weights", i32 0, i32 9762}
!166 = !{!144, !145, i64 16}
!167 = !{!"branch_weights", i32 9762, i32 0}
!168 = !{!"branch_weights", i32 65602, i32 12467}
!169 = distinct !{!169, !113, !114}
!170 = !{!"branch_weights", i32 1, i32 65601}
!171 = !{!"branch_weights", i32 64250, i32 26286}
!172 = !{!"VP", i32 0, i64 26286, i64 5480187584978443763, i64 26286}
!173 = !{!"branch_weights", i32 65601, i32 24935}
!174 = distinct !{!174, !113, !114}
!175 = distinct !{!175, !113, !114}
!176 = !{!"VP", i32 0, i64 65602, i64 3944876711547169006, i64 65602}
!177 = !{!"function_entry_count", i64 8550}
!178 = !{!"branch_weights", i32 8550, i32 23798}
!179 = !{!"function_entry_count", i64 599148757}
!180 = !{!"branch_weights", i32 202389109, i32 396759648}
!181 = !{!182, !96, i64 0}
!182 = !{!"_ZTS7SimTime", !96, i64 0}
!183 = !{!"VP", i32 0, i64 202389109, i64 -3815335665609576096, i64 202389109}
!184 = !{!"branch_weights", i32 289503849, i32 107255799}
!185 = !{!"branch_weights", i32 0, i32 107255799}
!186 = !{!"VP", i32 0, i64 107255799, i64 2114662115797238670, i64 107255799}
!187 = !{!"branch_weights", i32 289503849, i32 0}
!188 = !{!"VP", i32 0, i64 289503849, i64 -2919255247795394451, i64 289503849}
!189 = distinct !{!189, !113, !114}
!190 = distinct !{!190, !113, !114}
!191 = distinct !{!191, !113, !114}
!192 = !{!"function_entry_count", i64 137642}
!193 = !{!"branch_weights", i32 68821, i32 68821}
!194 = !{!"function_entry_count", i64 17700}
!195 = !{!"branch_weights", i32 8850, i32 8850}
!196 = !{!"VP", i32 0, i64 8550, i64 -8226754602187134676, i64 8550}
!197 = !{!"branch_weights", i32 8550, i32 0}
!198 = !{!"function_entry_count", i64 26398}
!199 = !{!"branch_weights", i32 2, i32 47}
!200 = !{!94, !69, i64 24}
!201 = !{!94, !69, i64 16}
!202 = !{!"branch_weights", i32 47, i32 0}
!203 = distinct !{!203, !113, !114}
!204 = !{!"branch_weights", i32 0, i32 1}
!205 = !{!206, !86, i64 8}
!206 = !{!"_ZTS10cException", !207, i64 0, !86, i64 8, !123, i64 16, !159, i64 48, !123, i64 56, !123, i64 88, !86, i64 120}
!207 = !{!"_ZTSSt9exception"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!210 = distinct !{!210, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!213 = distinct !{!213, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!214 = !{!206, !159, i64 48}
!215 = !{!206, !86, i64 120}
!216 = !{!"simulator/cgate.cc;_GLOBAL__sub_I_cgate.cc"}
