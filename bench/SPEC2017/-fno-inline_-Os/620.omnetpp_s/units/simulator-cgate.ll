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
%class.cGate = type { %class.cObject, ptr, i32, ptr, ptr, ptr }
%class.cObject = type { ptr }
%"struct.cGate::Desc" = type { ptr, ptr, i32, %union.anon.3, %union.anon.4 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%"struct.cGate::Name" = type <{ %class.opp_string, %class.opp_string, %class.opp_string, i32, [4 x i8] }>
%class.opp_string = type { ptr }
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
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%struct._Guard = type { ptr }
%class.cModule = type { %class.cComponent, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.cChannel = type <{ %class.cComponent, ptr, i32, [4 x i8] }>

$_ZNK7cObject13isOwnedObjectEv = comdat any

$_ZN10opp_stringC2Ev = comdat any

$_ZN10opp_stringaSEPKc = comdat any

$_ZN10opp_stringD2Ev = comdat any

$_Z10opp_strdupPKc = comdat any

$_Z10opp_strcmpPKcS0_ = comdat any

$_ZNK10opp_string5c_strEv = comdat any

$_ZN7cObjectC2Ev = comdat any

$_ZN11noncopyableC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11noncopyableD2Ev = comdat any

$_ZN16CommonStringPool5clearEv = comdat any

$_ZNSt3setIPcN16CommonStringPool7strlessESaIS0_EE5clearEv = comdat any

$_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE5clearEv = comdat any

$_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E = comdat any

$_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_beginEv = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS0_E = comdat any

$_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS0_E = comdat any

$_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS0_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIPcEEE7destroyIS1_EEvRS3_PT_ = comdat any

$_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeIPcE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIPcEE7destroyIS1_EEvPT_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufIPcE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIPcE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIPcEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIPcEE10deallocateEPS2_m = comdat any

$_ZNKSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE9_M_mbeginEv = comdat any

$_ZNK5cGate4Desc7isInputEPKS_ = comdat any

$_ZNK5cGate8isVectorEv = comdat any

$_Z10opp_strlenPKc = comdat any

$_Z15opp_appendindexPcj = comdat any

$_ZNK5cGate8getIndexEv = comdat any

$_ZNK5cGate4Desc8isVectorEv = comdat any

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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNK5cGate4Desc7indexOfEPKS_ = comdat any

$_ZNK5cGate7getTypeEv = comdat any

$_ZNK5cGate4Desc9getTypeOfEPKS_ = comdat any

$_Z14check_and_castIP10cComponentET_P7cObject = comdat any

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$_ZNK10cComponent11initializedEv = comdat any

$_ZN8cChannel13setSourceGateEP5cGate = comdat any

$_ZNK5cGate11getNextGateEv = comdat any

$_ZN7SimTimeC2ERKS_ = comdat any

$_ZN7SimTimeaSERKS_ = comdat any

$_ZNK5cGate10getChannelEv = comdat any

$_ZN14cDisplayString3setEPKc = comdat any

$_ZTS11noncopyable = comdat any

$_ZTI11noncopyable = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

$_ZTSP10cComponent = comdat any

$_ZTIP10cComponent = comdat any

@_ZTV5cGate = dso_local unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTI5cGate, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN5cGateD2Ev, ptr @_ZN5cGateD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK5cGate7getNameEv, ptr @_ZNK5cGate11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK5cGate4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK7cObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK5cGate8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN5cGate12forEachChildEP8cVisitor, ptr @_ZN5cGate7deliverEP8cMessage7SimTime] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS5cGate = dso_local constant [7 x i8] c"5cGate\00", align 1
@_ZTI7cObject = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS11noncopyable = linkonce_odr dso_local constant [14 x i8] c"11noncopyable\00", comdat, align 1
@_ZTI11noncopyable = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11noncopyable }, comdat, align 8
@_ZTI5cGate = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS5cGate, i32 0, i32 2, ptr @_ZTI7cObject, i64 2, ptr @_ZTI11noncopyable, i64 0 }, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZL16gateFullnamePool = internal global %class.CommonStringPool zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"$i\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"$o\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTV7cObject = external unnamed_addr constant { [21 x ptr] }, align 8
@.str.4 = private unnamed_addr constant [66 x i8] c"getFullName(): gate name too long, should be under 100 characters\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZZNK5cGate11getFullNameEvE3tmp = internal global [128 x i8] zeroinitializer, align 16
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d]\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"--> \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"<-- \00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"not connected\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"<parent>\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"inout\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"(unknown type)\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"check_and_cast(): cannot cast NULL pointer to type '%s'\00", align 1
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSP10cComponent = linkonce_odr dso_local constant [14 x i8] c"P10cComponent\00", comdat, align 1
@_ZTI10cComponent = external constant ptr
@_ZTIP10cComponent = linkonce_odr dso_local constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSP10cComponent, i32 0, ptr @_ZTI10cComponent }, comdat, align 8
@.str.23 = private unnamed_addr constant [52 x i8] c"check_and_cast(): cannot cast (%s *)%s to type '%s'\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"connectTo(): gate already connected\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"connectTo(): destination gate cannot be NULL pointer\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"connectTo(): destination gate already connected\00", align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [90 x i8] c"More than one channel with data rate found in the connection path between gates %s and %s\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"reconnectWith(): gate must be already connected\00", align 1
@.str.29 = private unnamed_addr constant [73 x i8] c"setDeliverOnReceptionStart() may only be invoked on a simple module gate\00", align 1
@.str.30 = private unnamed_addr constant [66 x i8] c"setDeliverOnReceptionStart() may only be invoked on an input gate\00", align 1
@.str.31 = private unnamed_addr constant [161 x i8] c"Channel not initialized (did you forget to invoke callInitialize() for a dynamically created channel or a dynamically created compound module that contains it?)\00", align 1
@.str.32 = private unnamed_addr constant [73 x i8] c"No datarate channel found in the connection path between gates %s and %s\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"No datarate channel found: gate %s is not connected\00", align 1
@.str.34 = private unnamed_addr constant [145 x i8] c"getTransmissionChannel(): cannot be invoked on a simple module input gate (or a compound module input gate which is not connected on the inside)\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cgate.cc, ptr null }]

@_ZN5cGate4NameC1EPKcNS_4TypeE = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN5cGate4NameC2EPKcNS_4TypeE
@_ZN5cGateC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN5cGateC2Ev
@_ZN5cGateD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN5cGateD2Ev

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN5cGateD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN5cGateD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK5cGate7getNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !140 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !150
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %18, !prof !154

9:                                                ; preds = %1
  %10 = tail call noundef zeroext i1 @_ZNK5cGate4Desc7isInputEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %0) #20
  %11 = load ptr, ptr %2, align 8, !tbaa !141
  %12 = getelementptr inbounds %"struct.cGate::Desc", ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !148
  br i1 %10, label %14, label %16, !prof !155

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.cGate::Name", ptr %13, i64 0, i32 1
  br label %18

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"struct.cGate::Name", ptr %13, i64 0, i32 2
  br label %18

18:                                               ; preds = %1, %14, %16
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ], [ %5, %1 ]
  %20 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #20
  ret ptr %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK5cGate11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %2 = tail call noundef zeroext i1 @_ZNK5cGate8isVectorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !157
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  br i1 %2, label %7, label %23, !prof !159

7:                                                ; preds = %1
  %8 = tail call noundef i32 @_Z10opp_strlenPKc(ptr noundef %6) #20
  %9 = icmp sgt i32 %8, 100
  br i1 %9, label %10, label %15, !prof !160

10:                                               ; preds = %7
  %11 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #20
          to label %12 unwind label %13

12:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #21
  resume { ptr, i32 } %14

15:                                               ; preds = %7
  %16 = load ptr, ptr %0, align 8, !tbaa !157
  %17 = getelementptr inbounds ptr, ptr %16, i64 6
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %20 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @_ZZNK5cGate11getFullNameEvE3tmp, ptr noundef nonnull dereferenceable(1) %19) #18
  %21 = tail call noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_Z15opp_appendindexPcj(ptr noundef nonnull @_ZZNK5cGate11getFullNameEvE3tmp, i32 noundef %21) #20
  %22 = tail call noundef ptr @_ZN16CommonStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(48) @_ZL16gateFullnamePool, ptr noundef nonnull @_ZZNK5cGate11getFullNameEvE3tmp) #20
  br label %23

23:                                               ; preds = %1, %15
  %24 = phi ptr [ %22, %15 ], [ %6, %1 ]
  ret ptr %24
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK5cGate4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = tail call noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #20
  %7 = icmp eq i32 %6, 79
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = tail call noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #20
  %10 = icmp ne i32 %9, 73
  %11 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = select i1 %10, i1 true, i1 %13
  br i1 %14, label %19, label %23

15:                                               ; preds = %2
  %16 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !162
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %8, %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #21
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
          to label %20 unwind label %21

20:                                               ; preds = %19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #21
  br label %92

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #21
  br label %93

23:                                               ; preds = %8, %15
  %24 = phi ptr [ %1, %15 ], [ %12, %8 ]
  %25 = phi ptr [ %17, %15 ], [ %12, %8 ]
  %26 = phi ptr [ @.str.9, %15 ], [ @.str.10, %8 ]
  %27 = getelementptr inbounds %class.cGate, ptr %24, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #20
  %29 = getelementptr inbounds i8, ptr %4, i64 16
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %26) #20
          to label %31 unwind label %80

31:                                               ; preds = %23
  %32 = call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %25) #20
  %33 = call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #20
  %34 = load ptr, ptr %33, align 8, !tbaa !157
  %35 = getelementptr inbounds ptr, ptr %34, i64 37
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(176) %33) #20
          to label %38 unwind label %80

38:                                               ; preds = %31
  %39 = icmp eq ptr %32, %37
  br i1 %39, label %46, label %40

40:                                               ; preds = %38
  %41 = call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %25) #20
  %42 = load ptr, ptr %41, align 8, !tbaa !157
  %43 = getelementptr inbounds ptr, ptr %42, i64 7
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(176) %41) #20
          to label %46 unwind label %80

46:                                               ; preds = %40, %38
  %47 = phi ptr [ @.str.12, %38 ], [ %45, %40 ]
  %48 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %47) #20
          to label %49 unwind label %80

49:                                               ; preds = %46
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.13) #20
          to label %51 unwind label %80

51:                                               ; preds = %49
  %52 = load ptr, ptr %25, align 8, !tbaa !157
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(48) %25) #20
          to label %56 unwind label %80

56:                                               ; preds = %51
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %55) #20
          to label %58 unwind label %80

58:                                               ; preds = %56
  %59 = icmp eq ptr %28, null
  br i1 %59, label %88, label %60

60:                                               ; preds = %58
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.14) #20
          to label %62 unwind label %80

62:                                               ; preds = %60
  %63 = invoke noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %28) #20
          to label %64 unwind label %80

64:                                               ; preds = %62
  %65 = load ptr, ptr %63, align 8, !tbaa !157
  %66 = getelementptr inbounds ptr, ptr %65, i64 7
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(168) %63) #20
          to label %69 unwind label %80

69:                                               ; preds = %64
  %70 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef %68) #20
          to label %71 unwind label %80

71:                                               ; preds = %69
  %72 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull @.str.15) #20
          to label %73 unwind label %80

73:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %74 = load ptr, ptr %28, align 8, !tbaa !157
  %75 = getelementptr inbounds ptr, ptr %74, i64 9
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(116) %28) #20
          to label %77 unwind label %82

77:                                               ; preds = %73
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull align 8 dereferenceable(32) %5) #20
          to label %79 unwind label %84

79:                                               ; preds = %77
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %88

80:                                               ; preds = %88, %71, %69, %64, %62, %60, %56, %51, %49, %46, %40, %31, %23
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %90

82:                                               ; preds = %73
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %86

84:                                               ; preds = %77
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %90

88:                                               ; preds = %79, %58
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %4) #20
          to label %89 unwind label %80

89:                                               ; preds = %88
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #18
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #21
  br label %92

90:                                               ; preds = %86, %80
  %91 = phi { ptr, i32 } [ %81, %80 ], [ %87, %86 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #18
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #21
  br label %93

92:                                               ; preds = %89, %20
  ret void

93:                                               ; preds = %90, %21
  %94 = phi { ptr, i32 } [ %91, %90 ], [ %22, %21 ]
  resume { ptr, i32 } %94
}

; Function Attrs: optsize
declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject3dupEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK5cGate8getOwnerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #3 align 2 !prof !164 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !166 {
  ret i1 false
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN5cGate12forEachChildEP8cVisitor(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !161 {
  %3 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !157
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4) #20
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN5cGate7deliverEP8cMessage7SimTime(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !167 {
  %4 = alloca %class.SimTime, align 8
  %5 = alloca %class.SimTime, align 8
  %6 = alloca %class.SimTime, align 8
  %7 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !162
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15, !prof !168

10:                                               ; preds = %3
  %11 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %12 = load ptr, ptr %11, align 8, !tbaa !157
  %13 = getelementptr inbounds ptr, ptr %12, i64 47
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull align 8 dereferenceable(176) %11, ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %4) #20
  br label %49

15:                                               ; preds = %3
  %16 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !163
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19, !prof !169

19:                                               ; preds = %15
  %20 = tail call noundef zeroext i1 @_ZNK10cComponent11initializedEv(ptr noundef nonnull align 8 dereferenceable(104) %17) #20
  br i1 %20, label %27, label %21, !prof !170

21:                                               ; preds = %19
  %22 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  %23 = load ptr, ptr %16, align 8, !tbaa !163
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef %23, ptr noundef nonnull @.str.31) #20
          to label %24 unwind label %25

24:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #21
  resume { ptr, i32 } %26

27:                                               ; preds = %19
  %28 = load ptr, ptr %16, align 8, !tbaa !163
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %29 = load ptr, ptr %28, align 8, !tbaa !157
  %30 = getelementptr inbounds ptr, ptr %29, i64 47
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(116) %28, ptr noundef %1, ptr noundef nonnull %5) #20
  br label %49

33:                                               ; preds = %15
  %34 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #20
  %35 = getelementptr inbounds %class.cEnvir, ptr %34, i64 0, i32 2
  %36 = load i8, ptr %35, align 1, !tbaa !171, !range !175, !noundef !176
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %43, !prof !177

38:                                               ; preds = %33
  %39 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #20
  %40 = load ptr, ptr %39, align 8, !tbaa !157
  %41 = getelementptr inbounds ptr, ptr %40, i64 12
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(288) %39, ptr noundef %1, ptr noundef nonnull %0) #20
  br label %43

43:                                               ; preds = %33, %38
  %44 = load ptr, ptr %7, align 8, !tbaa !162
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %45 = load ptr, ptr %44, align 8, !tbaa !157
  %46 = getelementptr inbounds ptr, ptr %45, i64 19
  %47 = load ptr, ptr %46, align 8
  %48 = call noundef zeroext i1 %47(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef %1, ptr noundef nonnull %6) #20
  br label %49

49:                                               ; preds = %43, %27, %10
  %50 = phi i1 [ true, %10 ], [ %32, %27 ], [ %48, %43 ]
  ret i1 %50
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #20
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #4 section ".text.startup" {
  tail call void @_ZN16CommonStringPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZL16gateFullnamePool) #20
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16CommonStringPoolD1Ev, ptr nonnull @_ZL16gateFullnamePool, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: optsize
declare void @_ZN16CommonStringPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZN16CommonStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN5cGate4NameC2EPKcNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !178 {
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 1
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %5 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 2
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %6 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #20
          to label %7 unwind label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !150
  %9 = icmp eq i32 %2, 66
  br i1 %9, label %10, label %20, !prof !179

10:                                               ; preds = %7
  %11 = invoke noundef ptr @_Z10opp_concatPKcS0_S0_S0_(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null) #20
          to label %12 unwind label %18

12:                                               ; preds = %10
  %13 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %11) #20
          to label %14 unwind label %18

14:                                               ; preds = %12
  %15 = invoke noundef ptr @_Z10opp_concatPKcS0_S0_S0_(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null) #20
          to label %16 unwind label %18

16:                                               ; preds = %14
  %17 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15) #20
          to label %20 unwind label %18

18:                                               ; preds = %16, %14, %12, %10, %3
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  resume { ptr, i32 } %19

20:                                               ; preds = %16, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !180 {
  store ptr null, ptr %0, align 8, !tbaa !181
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !182 {
  %3 = load ptr, ptr %0, align 8, !tbaa !181
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_ZdaPv(ptr noundef nonnull %3) #19
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #20
  store ptr %7, ptr %0, align 8, !tbaa !181
  ret ptr %7
}

; Function Attrs: optsize
declare noundef ptr @_Z10opp_concatPKcS0_S0_S0_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !183 {
  %2 = load ptr, ptr %0, align 8, !tbaa !181
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z10opp_strdupPKc(ptr noundef %0) local_unnamed_addr #2 comdat !prof !184 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !185

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !186
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !187

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %8 = add i64 %7, 1
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #24
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #18
  br label %11

11:                                               ; preds = %1, %3, %6
  %12 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate4NameltERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #1 align 2 !prof !188 {
  %3 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %5 = tail call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %3, ptr noundef %4) #20
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %15, label %7, !prof !189

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %9, label %15, !prof !190

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !150
  %12 = getelementptr inbounds %"struct.cGate::Name", ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !150
  %14 = icmp slt i32 %11, %13
  br label %15

15:                                               ; preds = %7, %2, %9
  %16 = phi i1 [ %14, %9 ], [ true, %2 ], [ false, %7 ]
  ret i1 %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !191 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  br i1 %3, label %12, label %5, !prof !192

5:                                                ; preds = %2
  br i1 %4, label %8, label %6, !prof !193

6:                                                ; preds = %5
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #23
  br label %17

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !186
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %17

12:                                               ; preds = %2
  br i1 %4, label %17, label %13, !prof !194

13:                                               ; preds = %12
  %14 = load i8, ptr %1, align 1, !tbaa !186
  %15 = icmp ne i8 %14, 0
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %13, %6, %8
  %18 = phi i32 [ %7, %6 ], [ %11, %8 ], [ 0, %12 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !181
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @.str.3, ptr %2, !prof !196
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN5cGateC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !197 {
  tail call void @_ZN7cObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  tail call void @_ZN11noncopyableC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTV5cGate, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !141
  %3 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 8, !tbaa !198
  %4 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7cObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !199 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTV7cObject, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11noncopyableC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !200 {
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN5cGateD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !197 {
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTV5cGate, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  invoke void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #20
          to label %4 unwind label %5

4:                                                ; preds = %1
  tail call void @_ZN11noncopyableD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #25
  unreachable
}

; Function Attrs: optsize
declare void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11noncopyableD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !201 {
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN5cGate17clearFullnamePoolEv() local_unnamed_addr #1 align 2 !prof !202 {
  tail call void @_ZN16CommonStringPool5clearEv(ptr noundef nonnull align 8 dereferenceable(48) @_ZL16gateFullnamePool) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN16CommonStringPool5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !202 {
  tail call void @_ZNSt3setIPcN16CommonStringPool7strlessESaIS0_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3setIPcN16CommonStringPool7strlessESaIS0_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !202 {
  tail call void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  invoke void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #20
          to label %3 unwind label %5

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #20
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #25
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !203 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !204

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #18
  tail call void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #20
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #18
  tail call void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !205, !llvm.loop !206

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !208 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !209 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !210
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !215
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %0, ptr %4, align 8, !tbaa !216
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !218 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !219
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !220 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !222 {
  tail call void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #18
  tail call void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeIPcE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #20
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIPcEEE7destroyIS1_EEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS0_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIPcEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #20
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #25
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIPcEEE7destroyIS1_EEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !222 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIPcEE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !223 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeIPcE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !224 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufIPcE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIPcEE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !222 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufIPcE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !224 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufIPcE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufIPcE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !224 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIPcEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !222 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIPcEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIPcEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK5cGate11getBaseNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 !prof !161 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  %6 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5cGate4Desc7isInputEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !225 {
  %3 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !198
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5cGate8isVectorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !156 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #20
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strlenPKc(ptr noundef %0) local_unnamed_addr #1 comdat !prof !226 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !227

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %5 = trunc i64 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_Z15opp_appendindexPcj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 comdat !prof !226 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %3 ]
  %5 = load i8, ptr %4, align 1, !tbaa !186
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br i1 %6, label %8, label %3, !prof !228, !llvm.loop !229

8:                                                ; preds = %3
  store i8 91, ptr %4, align 1, !tbaa !186
  %9 = icmp ult i32 %1, 10
  br i1 %9, label %10, label %15, !prof !230

10:                                               ; preds = %8
  %11 = trunc i32 %1 to i8
  %12 = or disjoint i8 %11, 48
  %13 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %12, ptr %7, align 1, !tbaa !186
  %14 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 93, ptr %13, align 1, !tbaa !186
  store i8 0, ptr %14, align 1, !tbaa !186
  br label %28

15:                                               ; preds = %8
  %16 = icmp ult i32 %1, 100
  br i1 %16, label %17, label %26, !prof !231

17:                                               ; preds = %15
  %18 = trunc i32 %1 to i8
  %19 = udiv i8 %18, 10
  %20 = or disjoint i8 %19, 48
  %21 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %20, ptr %7, align 1, !tbaa !186
  %22 = urem i8 %18, 10
  %23 = or disjoint i8 %22, 48
  %24 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 %23, ptr %21, align 1, !tbaa !186
  %25 = getelementptr inbounds i8, ptr %4, i64 4
  store i8 93, ptr %24, align 1, !tbaa !186
  store i8 0, ptr %25, align 1, !tbaa !186
  br label %28

26:                                               ; preds = %15
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %1) #18
  br label %28

28:                                               ; preds = %26, %17, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !232 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = tail call noundef i32 @_ZNK5cGate4Desc7indexOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %0) #20
  ret i32 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN16CommonStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !233 {
  %2 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !234
  %4 = icmp sgt i32 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !202 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #18
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !202 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #24
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #20
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
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !235
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !161 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #21
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #20
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5) #20
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #20
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !202 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !240, !range !175, !noundef !176
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !241
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat !prof !242 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !243 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #20
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #26
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #20
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #20
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !244 {
  ret void
}

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

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !245 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #20
  store i64 %6, ptr %4, align 8, !tbaa !246
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !247

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #20
  %10 = load i64, ptr %4, align 8, !tbaa !246
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #20
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #20
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #18
  store ptr null, ptr %5, align 8, !tbaa !248
  %15 = load i64, ptr %4, align 8, !tbaa !246
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #20
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !245 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !250
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #20
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !245 {
  store ptr %1, ptr %0, align 8, !tbaa !248
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !245 {
  %2 = load ptr, ptr %0, align 8, !tbaa !248
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !251

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #25
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !245 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !245 {
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate4Desc7indexOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !232 {
  %3 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !198
  %5 = ashr i32 %4, 2
  %6 = icmp eq i32 %5, -1
  %7 = select i1 %6, i32 0, i32 %5, !prof !252
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !253 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = tail call noundef i32 @_ZNK5cGate4Desc9getTypeOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %0) #20
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #3 align 2 !prof !254 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate4Desc9getTypeOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !253 {
  %3 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !198
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 73, i32 79
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK5cGate5getIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 !prof !255 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  %5 = getelementptr inbounds %class.cModule, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !256
  %7 = ptrtoint ptr %3 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 40
  %11 = trunc i64 %10 to i32
  %12 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #20
  br i1 %12, label %19, label %13, !prof !264

13:                                               ; preds = %1
  %14 = shl i32 %11, 1
  %15 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !198
  %17 = and i32 %16, 1
  %18 = or disjoint i32 %17, %14
  br label %29

19:                                               ; preds = %1
  %20 = shl i32 %11, 20
  %21 = add i32 %20, 1048576
  %22 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !198
  %24 = shl i32 %23, 19
  %25 = and i32 %24, 524288
  %26 = or disjoint i32 %25, %21
  %27 = ashr i32 %23, 2
  %28 = or i32 %26, %27
  br label %29

29:                                               ; preds = %19, %13
  %30 = phi i32 [ %28, %19 ], [ %18, %13 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN5cGate11getTypeNameENS_4TypeE(i32 noundef %0) local_unnamed_addr #15 align 2 !prof !161 {
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
  %6 = phi ptr [ @.str.21, %4 ], [ @.str.20, %3 ], [ @.str.19, %2 ], [ @.str.18, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK5cGate13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !161 {
  %2 = load ptr, ptr %0, align 8, !tbaa !157
  %3 = getelementptr inbounds ptr, ptr %2, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %6 = tail call noundef ptr @_Z14check_and_castIP10cComponentET_P7cObject(ptr noundef %5) #20
  %7 = tail call noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %6) #20
  %8 = tail call noundef ptr @_ZNK5cGate11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %9 = load ptr, ptr %7, align 8, !tbaa !157
  %10 = getelementptr inbounds ptr, ptr %9, i64 26
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef %8) #20
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z14check_and_castIP10cComponentET_P7cObject(ptr noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 !prof !203 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %11, !prof !265

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  %6 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIP10cComponent) #20
          to label %7 unwind label %9

7:                                                ; preds = %4
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull @.str.22, ptr noundef %6) #20
          to label %8 unwind label %9

8:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

9:                                                ; preds = %7, %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #21
  br label %40

11:                                               ; preds = %1
  %12 = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI10cComponent, i64 0) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %39, !prof !265

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  %16 = load ptr, ptr %0, align 8, !tbaa !157
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
          to label %20 unwind label %29

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !157
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
          to label %24 unwind label %31

24:                                               ; preds = %20
  %25 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %26 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIP10cComponent) #20
          to label %27 unwind label %33

27:                                               ; preds = %24
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull @.str.23, ptr noundef %19, ptr noundef %25, ptr noundef %26) #20
          to label %28 unwind label %33

28:                                               ; preds = %27
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
          to label %42 unwind label %35

29:                                               ; preds = %14
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %37

31:                                               ; preds = %20
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  br label %37

33:                                               ; preds = %27, %24
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  br label %37

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  br label %40

37:                                               ; preds = %33, %31, %29
  %38 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ], [ %34, %33 ]
  call void @__cxa_free_exception(ptr %15) #21
  br label %40

39:                                               ; preds = %11
  ret ptr %12

40:                                               ; preds = %35, %37, %9
  %41 = phi { ptr, i32 } [ %10, %9 ], [ %38, %37 ], [ %36, %35 ]
  resume { ptr, i32 } %41

42:                                               ; preds = %28
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #16

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN5cGate9connectToEPS_P8cChannelb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef returned %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !266 {
  %5 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !267

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #20
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %61

13:                                               ; preds = %4
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %20, !prof !268

15:                                               ; preds = %13
  %16 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %16, ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #20
          to label %17 unwind label %18

17:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %61

20:                                               ; preds = %13
  %21 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !269
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24, !prof !267

24:                                               ; preds = %20
  %25 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #20
          to label %26 unwind label %27

26:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %61

29:                                               ; preds = %20
  store ptr %1, ptr %5, align 8, !tbaa !162
  store ptr %0, ptr %21, align 8, !tbaa !269
  %30 = icmp eq ptr %2, null
  br i1 %30, label %32, label %31, !prof !270

31:                                               ; preds = %29
  tail call void @_ZN5cGate14installChannelEP8cChannel(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %2) #20
  br label %32

32:                                               ; preds = %31, %29
  tail call void @_ZNK5cGate13checkChannelsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %33 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #20
  %34 = getelementptr inbounds %class.cEnvir, ptr %33, i64 0, i32 2
  %35 = load i8, ptr %34, align 1, !tbaa !171, !range !175, !noundef !176
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %42, !prof !267

37:                                               ; preds = %32
  %38 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #20
  %39 = load ptr, ptr %38, align 8, !tbaa !157
  %40 = getelementptr inbounds ptr, ptr %39, i64 23
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(288) %38, ptr noundef nonnull %0) #20
  br label %42

42:                                               ; preds = %32, %37
  %43 = or i1 %30, %3
  br i1 %43, label %60, label %44, !prof !271

44:                                               ; preds = %42
  %45 = load ptr, ptr %2, align 8, !tbaa !157
  %46 = getelementptr inbounds ptr, ptr %45, i64 37
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(116) %2) #20
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !272

50:                                               ; preds = %44
  %51 = load ptr, ptr %2, align 8, !tbaa !157
  %52 = getelementptr inbounds ptr, ptr %51, i64 37
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(116) %2) #20
  %55 = tail call noundef zeroext i1 @_ZNK10cComponent11initializedEv(ptr noundef nonnull align 8 dereferenceable(104) %54) #20
  br i1 %55, label %56, label %60, !prof !272

56:                                               ; preds = %50, %44
  %57 = load ptr, ptr %2, align 8, !tbaa !157
  %58 = getelementptr inbounds ptr, ptr %57, i64 38
  %59 = load ptr, ptr %58, align 8
  tail call void %59(ptr noundef nonnull align 8 dereferenceable(116) %2) #20
  br label %60

60:                                               ; preds = %42, %56, %50
  ret ptr %2

61:                                               ; preds = %27, %18, %11
  %62 = phi ptr [ %25, %27 ], [ %16, %18 ], [ %9, %11 ]
  %63 = phi { ptr, i32 } [ %28, %27 ], [ %19, %18 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %62) #21
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN5cGate14installChannelEP8cChannel(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) local_unnamed_addr #2 align 2 !prof !273 {
  %3 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !163
  tail call void @_ZN8cChannel13setSourceGateEP5cGate(ptr noundef nonnull align 8 dereferenceable(116) %1, ptr noundef nonnull %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = load ptr, ptr %0, align 8, !tbaa !157
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK5cGate13checkChannelsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !266 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = tail call noundef ptr @_ZNK5cGate16getPathStartGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %5 = getelementptr inbounds %class.cGate, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %10, !prof !274

8:                                                ; preds = %26
  %9 = icmp sgt i32 %28, 1
  br i1 %9, label %32, label %58, !prof !275

10:                                               ; preds = %1, %26
  %11 = phi ptr [ %30, %26 ], [ %6, %1 ]
  %12 = phi ptr [ %29, %26 ], [ %5, %1 ]
  %13 = phi ptr [ %27, %26 ], [ %4, %1 ]
  %14 = phi i32 [ %28, %26 ], [ 0, %1 ]
  %15 = getelementptr inbounds %class.cGate, ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !276

18:                                               ; preds = %10
  %19 = load ptr, ptr %16, align 8, !tbaa !157
  %20 = getelementptr inbounds ptr, ptr %19, i64 46
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(116) %16) #20
  %23 = zext i1 %22 to i32
  %24 = add nsw i32 %14, %23
  %25 = load ptr, ptr %12, align 8, !tbaa !162
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi ptr [ %11, %10 ], [ %25, %18 ]
  %28 = phi i32 [ %14, %10 ], [ %24, %18 ]
  %29 = getelementptr inbounds %class.cGate, ptr %27, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !162
  %31 = icmp eq ptr %30, null
  br i1 %31, label %8, label %10, !prof !277, !llvm.loop !278

32:                                               ; preds = %8
  %33 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  %34 = tail call noundef ptr @_ZNK5cGate16getPathStartGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %35 = load ptr, ptr %34, align 8, !tbaa !157
  %36 = getelementptr inbounds ptr, ptr %35, i64 8
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %34) #20
          to label %38 unwind label %47

38:                                               ; preds = %32
  %39 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %40 = call noundef ptr @_ZNK5cGate14getPathEndGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %41 = load ptr, ptr %40, align 8, !tbaa !157
  %42 = getelementptr inbounds ptr, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %40) #20
          to label %44 unwind label %49

44:                                               ; preds = %38
  %45 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %33, ptr noundef nonnull @.str.27, ptr noundef %39, ptr noundef %45) #20
          to label %46 unwind label %51

46:                                               ; preds = %44
  invoke void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
          to label %59 unwind label %51

47:                                               ; preds = %32
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  br label %54

49:                                               ; preds = %38
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  br label %54

51:                                               ; preds = %44, %46
  %52 = phi i1 [ false, %46 ], [ true, %44 ]
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  br i1 %52, label %54, label %56

54:                                               ; preds = %49, %47, %51
  %55 = phi { ptr, i32 } [ %48, %47 ], [ %53, %51 ], [ %50, %49 ]
  call void @__cxa_free_exception(ptr %33) #21
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi { ptr, i32 } [ %55, %54 ], [ %53, %51 ]
  resume { ptr, i32 } %57

58:                                               ; preds = %1, %8
  ret void

59:                                               ; preds = %46
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #1 comdat align 2 !prof !279 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !250
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cComponent11initializedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #1 comdat align 2 !prof !280 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !281
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8cChannel13setSourceGateEP5cGate(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !273 {
  %3 = getelementptr inbounds %class.cChannel, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !282
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN5cGate10disconnectEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !266 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5, !prof !268

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #20
  %7 = getelementptr inbounds %class.cEnvir, ptr %6, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !171, !range !175, !noundef !176
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15, !prof !267

10:                                               ; preds = %5
  %11 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #20
  %12 = load ptr, ptr %11, align 8, !tbaa !157
  %13 = getelementptr inbounds ptr, ptr %12, i64 24
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef nonnull %0) #20
  br label %15

15:                                               ; preds = %5, %10
  %16 = load ptr, ptr %2, align 8, !tbaa !162
  %17 = getelementptr inbounds %class.cGate, ptr %16, i64 0, i32 4
  store ptr null, ptr %17, align 8, !tbaa !269
  store ptr null, ptr %2, align 8, !tbaa !162
  %18 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !163
  tail call void @_ZN7cObject13dropAndDeleteEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19) #20
  store ptr null, ptr %18, align 8, !tbaa !163
  br label %20

20:                                               ; preds = %1, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK5cGate16getPathStartGateEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #3 align 2 !prof !266 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %class.cGate, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !269
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !prof !284, !llvm.loop !285

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @_ZNK5cGate14getPathEndGateEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #3 align 2 !prof !286 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %class.cGate, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !prof !287, !llvm.loop !288

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN5cGate13reconnectWithEP8cChannelb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef returned %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %4 = tail call noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #20
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #21
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  tail call void @_ZN5cGate10disconnectEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %12 = tail call noundef ptr @_ZN5cGate9connectToEPS_P8cChannelb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %4, ptr noundef %1, i1 noundef zeroext %2) #20
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !289 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN5cGate26setDeliverOnReceptionStartEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds ptr, ptr %4, i64 57
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(176) %3) #20
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #20
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %27

13:                                               ; preds = %2
  %14 = tail call noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %15 = icmp eq i32 %14, 73
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull %0, ptr noundef nonnull @.str.30) #20
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %27

21:                                               ; preds = %13
  %22 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !198
  %24 = and i32 %23, -3
  %25 = select i1 %1, i32 2, i32 0
  %26 = or disjoint i32 %24, %25
  store i32 %26, ptr %22, align 8, !tbaa !198
  ret void

27:                                               ; preds = %19, %11
  %28 = phi ptr [ %17, %19 ], [ %9, %11 ]
  %29 = phi { ptr, i32 } [ %20, %19 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %28) #21
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !290 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !291 {
  %3 = load i64, ptr %1, align 8, !tbaa !292
  store i64 %3, ptr %0, align 8, !tbaa !292
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK5cGate22getTransmissionChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp eq ptr %6, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %1, %22
  %9 = phi ptr [ %25, %22 ], [ %6, %1 ]
  %10 = phi ptr [ %24, %22 ], [ %5, %1 ]
  %11 = phi ptr [ %23, %22 ], [ %0, %1 ]
  %12 = getelementptr inbounds %class.cGate, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !163
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %13, align 8, !tbaa !157
  %17 = getelementptr inbounds ptr, ptr %16, i64 46
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(116) %13) #20
  br i1 %19, label %76, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %10, align 8, !tbaa !162
  br label %22

22:                                               ; preds = %20, %8
  %23 = phi ptr [ %21, %20 ], [ %9, %8 ]
  %24 = getelementptr inbounds %class.cGate, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !162
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !294

27:                                               ; preds = %22
  %28 = load ptr, ptr %5, align 8, !tbaa !162
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  %32 = load ptr, ptr %0, align 8, !tbaa !157
  %33 = getelementptr inbounds ptr, ptr %32, i64 8
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
          to label %35 unwind label %44

35:                                               ; preds = %30
  %36 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %37 = call noundef ptr @_ZNK5cGate14getPathEndGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %38 = load ptr, ptr %37, align 8, !tbaa !157
  %39 = getelementptr inbounds ptr, ptr %38, i64 8
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %37) #20
          to label %41 unwind label %46

41:                                               ; preds = %35
  %42 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull @.str.32, ptr noundef %36, ptr noundef %42) #20
          to label %43 unwind label %48

43:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
          to label %81 unwind label %48

44:                                               ; preds = %30
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  br label %51

46:                                               ; preds = %35
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  br label %51

48:                                               ; preds = %41, %43
  %49 = phi i1 [ false, %43 ], [ true, %41 ]
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  br i1 %49, label %51, label %79

51:                                               ; preds = %46, %44, %48
  %52 = phi { ptr, i32 } [ %45, %44 ], [ %50, %48 ], [ %47, %46 ]
  call void @__cxa_free_exception(ptr %31) #21
  br label %79

53:                                               ; preds = %1, %27
  %54 = tail call noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %55 = icmp eq i32 %54, 79
  %56 = tail call ptr @__cxa_allocate_exception(i64 128) #21
  br i1 %55, label %57, label %72

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  %58 = load ptr, ptr %0, align 8, !tbaa !157
  %59 = getelementptr inbounds ptr, ptr %58, i64 8
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
          to label %61 unwind label %66

61:                                               ; preds = %57
  %62 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %56, ptr noundef nonnull @.str.33, ptr noundef %62) #20
          to label %65 unwind label %63

63:                                               ; preds = %61
  %64 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  br label %70

65:                                               ; preds = %61
  invoke void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
          to label %81 unwind label %68

66:                                               ; preds = %57
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  br label %70

68:                                               ; preds = %65
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  br label %79

70:                                               ; preds = %63, %66
  %71 = phi { ptr, i32 } [ %67, %66 ], [ %64, %63 ]
  call void @__cxa_free_exception(ptr %56) #21
  br label %79

72:                                               ; preds = %53
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %56, ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #20
          to label %73 unwind label %74

73:                                               ; preds = %72
  tail call void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

74:                                               ; preds = %72
  %75 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %56) #21
  br label %79

76:                                               ; preds = %15
  %77 = getelementptr inbounds %class.cGate, ptr %11, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !163
  ret ptr %78

79:                                               ; preds = %68, %70, %48, %51, %74
  %80 = phi { ptr, i32 } [ %52, %51 ], [ %50, %48 ], [ %71, %70 ], [ %69, %68 ], [ %75, %74 ]
  resume { ptr, i32 } %80

81:                                               ; preds = %65, %43
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate6isBusyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !161 {
  %2 = tail call noundef ptr @_ZNK5cGate22getTransmissionChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = getelementptr inbounds ptr, ptr %3, i64 50
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(116) %2) #20
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK5cGate25getTransmissionFinishTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 align 2 !prof !161 {
  %3 = tail call noundef ptr @_ZNK5cGate22getTransmissionChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds ptr, ptr %4, i64 49
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr dead_on_unwind writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(116) %3) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN5cGate12pathContainsEP7cModulei(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !161 {
  %4 = icmp eq i32 %2, -1
  br label %9

5:                                                ; preds = %17
  %6 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %21

9:                                                ; preds = %3, %17
  %10 = phi ptr [ %0, %3 ], [ %19, %17 ]
  %11 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #20
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  br i1 %4, label %33, label %14

14:                                               ; preds = %13
  %15 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #20
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %33, label %17

17:                                               ; preds = %9, %14
  %18 = getelementptr inbounds %class.cGate, ptr %10, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !269
  %20 = icmp eq ptr %19, null
  br i1 %20, label %5, label %9, !llvm.loop !295

21:                                               ; preds = %5, %29
  %22 = phi ptr [ %31, %29 ], [ %7, %5 ]
  %23 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %22) #20
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  br i1 %4, label %33, label %26

26:                                               ; preds = %25
  %27 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %22) #20
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %33, label %29

29:                                               ; preds = %21, %26
  %30 = getelementptr inbounds %class.cGate, ptr %22, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !162
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %21, !llvm.loop !296

33:                                               ; preds = %13, %14, %26, %25, %29, %5
  %34 = phi i1 [ false, %5 ], [ true, %26 ], [ true, %25 ], [ false, %29 ], [ true, %14 ], [ true, %13 ]
  ret i1 %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !297 {
  %2 = tail call noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %3 = icmp eq i32 %2, 73
  %4 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = select i1 %3, ptr %6, ptr %7
  %9 = icmp ne ptr %8, null
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !298 {
  %2 = tail call noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %3 = icmp eq i32 %2, 73
  %4 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = select i1 %3, ptr %6, ptr %7
  %9 = icmp ne ptr %8, null
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate11isConnectedEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !286 {
  %2 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = getelementptr inbounds ptr, ptr %3, i64 57
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(176) %2) #20
  br i1 %6, label %15, label %7, !prof !299

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !269
  %10 = icmp ne ptr %9, null
  %11 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %10, i1 %13, i1 false
  br label %17

15:                                               ; preds = %1
  %16 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i1 [ %16, %15 ], [ %14, %7 ]
  ret i1 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK5cGate8isPathOKEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !161 {
  %2 = tail call noundef ptr @_ZNK5cGate16getPathStartGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %3 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds ptr, ptr %4, i64 57
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(176) %3) #20
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = tail call noundef ptr @_ZNK5cGate14getPathEndGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %10 = tail call noundef ptr @_ZNK5cGate14getOwnerModuleEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #20
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  %12 = getelementptr inbounds ptr, ptr %11, i64 57
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(176) %10) #20
  br label %15

15:                                               ; preds = %8, %1
  %16 = phi i1 [ false, %1 ], [ %14, %8 ]
  ret i1 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN5cGate16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 !prof !161 {
  %2 = tail call noundef ptr @_ZNK5cGate10getChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZN13cIdealChannel6createEPKc(ptr noundef nonnull @.str.35) #20
  tail call void @_ZN5cGate14installChannelEP8cChannel(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5) #20
  %6 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = getelementptr inbounds ptr, ptr %8, i64 38
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(116) %7) #20
  br label %11

11:                                               ; preds = %4, %1
  %12 = tail call noundef ptr @_ZNK5cGate10getChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %13 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN10cComponent16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(104) %12) #20
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5cGate10getChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !300 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN13cIdealChannel6createEPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN10cComponent16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN5cGate16setDisplayStringEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !161 {
  %3 = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5cGate16getDisplayStringEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN14cDisplayString3setEPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14cDisplayString3setEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !161 {
  tail call void @_ZN14cDisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZN14cDisplayString5parseEPKc(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #0

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cgate.cc() #4 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind optsize }
attributes #19 = { builtin nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { builtin optsize allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!139}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!36 = !{ptr @_ZNK5cGate7getNameEv, ptr @_ZNK5cGate4Desc7isInputEPKS_, i64 133992}
!37 = !{ptr @_ZNK5cGate7getNameEv, ptr @_ZNK10opp_string5c_strEv, i64 292246}
!38 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @_ZNK5cGate8isVectorEv, i64 87858}
!39 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @_Z10opp_strlenPKc, i64 46134}
!40 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @__cxa_allocate_exception, i64 1}
!41 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!42 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @strcpy, i64 46133}
!43 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @_ZNK5cGate8getIndexEv, i64 46133}
!44 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @_Z15opp_appendindexPcj, i64 46133}
!45 = !{ptr @_ZNK5cGate11getFullNameEv, ptr @_ZN16CommonStringPool3getEPKc, i64 46133}
!46 = !{ptr @_ZN5cGate7deliverEP8cMessage7SimTime, ptr @_ZNK5cGate14getOwnerModuleEv, i64 202389109}
!47 = !{ptr @_ZN5cGate7deliverEP8cMessage7SimTime, ptr @_ZN7SimTimeC2ERKS_, i64 599148755}
!48 = !{ptr @_ZN5cGate7deliverEP8cMessage7SimTime, ptr @_ZNK10cComponent11initializedEv, i64 107255799}
!49 = !{ptr @_ZN5cGate7deliverEP8cMessage7SimTime, ptr @__cxa_allocate_exception, i64 1}
!50 = !{ptr @_ZN5cGate7deliverEP8cMessage7SimTime, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!51 = !{ptr @_ZN5cGate7deliverEP8cMessage7SimTime, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 579007695}
!52 = !{ptr @_ZN5cGate4NameC2EPKcNS_4TypeE, ptr @_ZN10opp_stringC2Ev, i64 214164}
!53 = !{ptr @_ZN5cGate4NameC2EPKcNS_4TypeE, ptr @_ZN10opp_stringaSEPKc, i64 100198}
!54 = !{ptr @_ZN5cGate4NameC2EPKcNS_4TypeE, ptr @_Z10opp_concatPKcS0_S0_S0_, i64 28810}
!55 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_ZdaPv, i64 203513}
!56 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_Z10opp_strdupPKc, i64 325620}
!57 = !{ptr @_ZN10opp_stringD2Ev, ptr @_ZdaPv, i64 277850}
!58 = !{ptr @_Z10opp_strdupPKc, ptr @strlen, i64 188204299}
!59 = !{ptr @_Z10opp_strdupPKc, ptr @_Znam, i64 188204299}
!60 = !{ptr @_Z10opp_strdupPKc, ptr @strcpy, i64 188204299}
!61 = !{ptr @_ZNK5cGate4NameltERKS0_, ptr @_ZNK10opp_string5c_strEv, i64 632866}
!62 = !{ptr @_ZNK5cGate4NameltERKS0_, ptr @_Z10opp_strcmpPKcS0_, i64 316433}
!63 = !{ptr @_Z10opp_strcmpPKcS0_, ptr @strcmp, i64 3128955}
!64 = !{ptr @_ZN5cGateC2Ev, ptr @_ZN7cObjectC2Ev, i64 113504}
!65 = !{ptr @_ZN5cGateC2Ev, ptr @_ZN11noncopyableC2Ev, i64 113504}
!66 = !{ptr @_ZN5cGateD2Ev, ptr @_ZN7cObject13dropAndDeleteEP12cOwnedObject, i64 113504}
!67 = !{ptr @_ZN5cGateD2Ev, ptr @_ZN11noncopyableD2Ev, i64 113504}
!68 = !{ptr @_ZN5cGateD2Ev, ptr @_ZN7cObjectD2Ev, i64 113504}
!69 = !{ptr @_ZN5cGate17clearFullnamePoolEv, ptr @_ZN16CommonStringPool5clearEv, i64 1}
!70 = !{ptr @_ZN16CommonStringPool5clearEv, ptr @_ZNSt3setIPcN16CommonStringPool7strlessESaIS0_EE5clearEv, i64 1}
!71 = !{ptr @_ZNSt3setIPcN16CommonStringPool7strlessESaIS0_EE5clearEv, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE5clearEv, i64 1}
!72 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE5clearEv, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_beginEv, i64 1}
!73 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE5clearEv, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E, i64 1}
!74 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE5clearEv, ptr @_ZNSt15_Rb_tree_header8_M_resetEv, i64 1}
!75 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_S_rightEPSt18_Rb_tree_node_base, i64 47}
!76 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E, i64 47}
!77 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE7_S_leftEPSt18_Rb_tree_node_base, i64 47}
!78 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_eraseEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS0_E, i64 47}
!79 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE9_M_mbeginEv, i64 46187}
!80 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS0_E, i64 47}
!81 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS0_E, i64 47}
!82 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE21_M_get_Node_allocatorEv, i64 47}
!83 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt13_Rb_tree_nodeIPcE9_M_valptrEv, i64 47}
!84 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIPcEEE7destroyIS1_EEvRS3_PT_, i64 47}
!85 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE21_M_get_Node_allocatorEv, i64 47}
!86 = !{ptr @_ZNSt8_Rb_treeIPcS0_St9_IdentityIS0_EN16CommonStringPool7strlessESaIS0_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS0_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIPcEEE10deallocateERS3_PS2_m, i64 47}
!87 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIPcEEE7destroyIS1_EEvRS3_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIPcEE7destroyIS1_EEvPT_, i64 47}
!88 = !{ptr @_ZNSt13_Rb_tree_nodeIPcE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufIPcE6_M_ptrEv, i64 94}
!89 = !{ptr @_ZN9__gnu_cxx16__aligned_membufIPcE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufIPcE7_M_addrEv, i64 94}
!90 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIPcEEE10deallocateERS3_PS2_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIPcEE10deallocateEPS2_m, i64 47}
!91 = !{ptr @_ZNK5cGate8isVectorEv, ptr @_ZNK5cGate4Desc8isVectorEv, i64 87858}
!92 = !{ptr @_Z10opp_strlenPKc, ptr @strlen, i64 54985}
!93 = !{ptr @_Z15opp_appendindexPcj, ptr @sprintf, i64 21}
!94 = !{ptr @_ZNK5cGate8getIndexEv, ptr @_ZNK5cGate4Desc7indexOfEPKS_, i64 14375669}
!95 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!96 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!97 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!98 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!99 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!100 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!101 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!102 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!103 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!104 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!105 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!106 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!107 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!108 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!109 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!110 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!111 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!112 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!113 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!114 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!115 = !{ptr @_ZNK5cGate7getTypeEv, ptr @_ZNK5cGate4Desc9getTypeOfEPKS_, i64 202685165}
!116 = !{ptr @_ZNK5cGate5getIdEv, ptr @_ZNK5cGate4Desc8isVectorEv, i64 404778218}
!117 = !{ptr @_Z14check_and_castIP10cComponentET_P7cObject, ptr @__cxa_allocate_exception, i64 2}
!118 = !{ptr @_Z14check_and_castIP10cComponentET_P7cObject, ptr @_Z12opp_typenameRKSt9type_info, i64 1}
!119 = !{ptr @_Z14check_and_castIP10cComponentET_P7cObject, ptr @__cxa_free_exception, i64 2}
!120 = !{ptr @_Z14check_and_castIP10cComponentET_P7cObject, ptr @__dynamic_cast, i64 48}
!121 = !{ptr @_ZN5cGate9connectToEPS_P8cChannelb, ptr @__cxa_allocate_exception, i64 3}
!122 = !{ptr @_ZN5cGate9connectToEPS_P8cChannelb, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 3}
!123 = !{ptr @_ZN5cGate9connectToEPS_P8cChannelb, ptr @_ZN5cGate14installChannelEP8cChannel, i64 9762}
!124 = !{ptr @_ZN5cGate9connectToEPS_P8cChannelb, ptr @_ZNK5cGate13checkChannelsEv, i64 65599}
!125 = !{ptr @_ZN5cGate9connectToEPS_P8cChannelb, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 131197}
!126 = !{ptr @_ZN5cGate9connectToEPS_P8cChannelb, ptr @_ZNK10cComponent11initializedEv, i64 9760}
!127 = !{ptr @_ZN5cGate9connectToEPS_P8cChannelb, ptr @__cxa_free_exception, i64 1}
!128 = !{ptr @_ZN5cGate14installChannelEP8cChannel, ptr @_ZN8cChannel13setSourceGateEP5cGate, i64 9762}
!129 = !{ptr @_ZNK5cGate13checkChannelsEv, ptr @_ZNK5cGate16getPathStartGateEv, i64 65603}
!130 = !{ptr @_ZNK5cGate13checkChannelsEv, ptr @__cxa_allocate_exception, i64 1}
!131 = !{ptr @_ZNK5cGate13checkChannelsEv, ptr @__cxa_free_exception, i64 1}
!132 = !{ptr @_ZN5cGate10disconnectEv, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 131201}
!133 = !{ptr @_ZN5cGate10disconnectEv, ptr @_ZN7cObject13dropAndDeleteEP12cOwnedObject, i64 65601}
!134 = !{ptr @_ZN7SimTimeC2ERKS_, ptr @_ZN7SimTimeaSERKS_, i64 57319387120}
!135 = !{ptr @_ZNK5cGate18isConnectedOutsideEv, ptr @_ZNK5cGate7getTypeEv, i64 146192}
!136 = !{ptr @_ZNK5cGate17isConnectedInsideEv, ptr @_ZNK5cGate7getTypeEv, i64 17700}
!137 = !{ptr @_ZNK5cGate11isConnectedEv, ptr @_ZNK5cGate14getOwnerModuleEv, i64 8550}
!138 = !{ptr @_ZNK5cGate11isConnectedEv, ptr @_ZNK5cGate18isConnectedOutsideEv, i64 8549}
!139 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!140 = !{!"function_entry_count", i64 292246}
!141 = !{!142, !144, i64 8}
!142 = !{!"_ZTS5cGate", !143, i64 0, !144, i64 8, !147, i64 16, !144, i64 24, !144, i64 32, !144, i64 40}
!143 = !{!"_ZTS7cObject"}
!144 = !{!"any pointer", !145, i64 0}
!145 = !{!"omnipotent char", !146, i64 0}
!146 = !{!"Simple C++ TBAA"}
!147 = !{!"int", !145, i64 0}
!148 = !{!149, !144, i64 8}
!149 = !{!"_ZTSN5cGate4DescE", !144, i64 0, !144, i64 8, !147, i64 16, !145, i64 24, !145, i64 32}
!150 = !{!151, !153, i64 24}
!151 = !{!"_ZTSN5cGate4NameE", !152, i64 0, !152, i64 8, !152, i64 16, !153, i64 24}
!152 = !{!"_ZTS10opp_string", !144, i64 0}
!153 = !{!"_ZTSN5cGate4TypeE", !145, i64 0}
!154 = !{!"branch_weights", i32 133993, i32 158255}
!155 = !{!"branch_weights", i32 1, i32 133993}
!156 = !{!"function_entry_count", i64 87858}
!157 = !{!158, !158, i64 0}
!158 = !{!"vtable pointer", !146, i64 0}
!159 = !{!"branch_weights", i32 46135, i32 41725}
!160 = !{!"branch_weights", i32 1, i32 46135}
!161 = !{!"function_entry_count", i64 0}
!162 = !{!142, !144, i64 40}
!163 = !{!142, !144, i64 24}
!164 = !{!"function_entry_count", i64 175716}
!165 = !{!149, !144, i64 0}
!166 = !{!"function_entry_count", i64 26398}
!167 = !{!"function_entry_count", i64 599148757}
!168 = !{!"branch_weights", i32 202389110, i32 396759649}
!169 = !{!"branch_weights", i32 289503850, i32 107255800}
!170 = !{!"branch_weights", i32 107255800, i32 1}
!171 = !{!172, !173, i64 9}
!172 = !{!"_ZTS6cEnvir", !173, i64 8, !173, i64 9, !173, i64 10, !174, i64 16}
!173 = !{!"bool", !145, i64 0}
!174 = !{!"_ZTSSo"}
!175 = !{i8 0, i8 2}
!176 = !{}
!177 = !{!"branch_weights", i32 289503850, i32 1}
!178 = !{!"function_entry_count", i64 71388}
!179 = !{!"branch_weights", i32 14405, i32 56985}
!180 = !{!"function_entry_count", i64 439586}
!181 = !{!152, !144, i64 0}
!182 = !{!"function_entry_count", i64 325620}
!183 = !{!"function_entry_count", i64 444560}
!184 = !{!"function_entry_count", i64 188204319}
!185 = !{!"branch_weights", i32 13, i32 188204308}
!186 = !{!145, !145, i64 0}
!187 = !{!"branch_weights", i32 7, i32 188204302}
!188 = !{!"function_entry_count", i64 316433}
!189 = !{!"branch_weights", i32 129535, i32 186900}
!190 = !{!"branch_weights", i32 142761, i32 44140}
!191 = !{!"function_entry_count", i64 3403184}
!192 = !{!"branch_weights", i32 274228, i32 3128958}
!193 = !{!"branch_weights", i32 1, i32 3128958}
!194 = !{!"branch_weights", i32 121684, i32 152545}
!195 = !{!"function_entry_count", i64 397759682}
!196 = !{!"branch_weights", i32 51305, i32 397708379}
!197 = !{!"function_entry_count", i64 113504}
!198 = !{!142, !147, i64 16}
!199 = !{!"function_entry_count", i64 189116523}
!200 = !{!"function_entry_count", i64 582939}
!201 = !{!"function_entry_count", i64 582938}
!202 = !{!"function_entry_count", i64 1}
!203 = !{!"function_entry_count", i64 49}
!204 = !{!"branch_weights", i32 2, i32 48}
!205 = !{!"branch_weights", i32 48, i32 0}
!206 = distinct !{!206, !207}
!207 = !{!"llvm.loop.mustprogress"}
!208 = !{!"function_entry_count", i64 46187}
!209 = !{!"function_entry_count", i64 197751}
!210 = !{!211, !144, i64 8}
!211 = !{!"_ZTSSt15_Rb_tree_header", !212, i64 0, !214, i64 32}
!212 = !{!"_ZTSSt18_Rb_tree_node_base", !213, i64 0, !144, i64 8, !144, i64 16, !144, i64 24}
!213 = !{!"_ZTSSt14_Rb_tree_color", !145, i64 0}
!214 = !{!"long", !145, i64 0}
!215 = !{!211, !144, i64 16}
!216 = !{!211, !144, i64 24}
!217 = !{!211, !214, i64 32}
!218 = !{!"function_entry_count", i64 184525}
!219 = !{!212, !144, i64 24}
!220 = !{!"function_entry_count", i64 103427}
!221 = !{!212, !144, i64 16}
!222 = !{!"function_entry_count", i64 47}
!223 = !{!"function_entry_count", i64 188}
!224 = !{!"function_entry_count", i64 94}
!225 = !{!"function_entry_count", i64 133992}
!226 = !{!"function_entry_count", i64 54986}
!227 = !{!"branch_weights", i32 1, i32 54987}
!228 = !{!"branch_weights", i32 54987, i32 310919}
!229 = distinct !{!229, !207}
!230 = !{!"branch_weights", i32 44769, i32 10219}
!231 = !{!"branch_weights", i32 10199, i32 21}
!232 = !{!"function_entry_count", i64 14375669}
!233 = !{!"function_entry_count", i64 926392781}
!234 = !{!149, !147, i64 16}
!235 = !{!236, !147, i64 8}
!236 = !{!"_ZTS10cException", !237, i64 0, !147, i64 8, !238, i64 16, !173, i64 48, !238, i64 56, !238, i64 88, !147, i64 120}
!237 = !{!"_ZTSSt9exception"}
!238 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !239, i64 0, !214, i64 8, !145, i64 16}
!239 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !144, i64 0}
!240 = !{!236, !173, i64 48}
!241 = !{!236, !147, i64 120}
!242 = !{!"function_entry_count", i64 2}
!243 = !{!"function_entry_count", i64 2107073}
!244 = !{!"function_entry_count", i64 1891507}
!245 = !{!"function_entry_count", i64 1889443}
!246 = !{!214, !214, i64 0}
!247 = !{!"branch_weights", i32 1257663, i32 631782}
!248 = !{!249, !144, i64 0}
!249 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !144, i64 0}
!250 = !{!144, !144, i64 0}
!251 = !{!"branch_weights", i32 1889444, i32 1}
!252 = !{!"branch_weights", i32 1, i32 14375670}
!253 = !{!"function_entry_count", i64 202685165}
!254 = !{!"function_entry_count", i64 202490775}
!255 = !{!"function_entry_count", i64 404778218}
!256 = !{!257, !144, i64 160}
!257 = !{!"_ZTS7cModule", !258, i64 0, !144, i64 104, !147, i64 112, !144, i64 120, !144, i64 128, !144, i64 136, !144, i64 144, !147, i64 152, !144, i64 160, !147, i64 168, !147, i64 172}
!258 = !{!"_ZTS10cComponent", !259, i64 0, !144, i64 56, !263, i64 64, !144, i64 72, !263, i64 80, !263, i64 82, !144, i64 88, !144, i64 96}
!259 = !{!"_ZTS12cDefaultList", !260, i64 0, !144, i64 40, !147, i64 48, !147, i64 52}
!260 = !{!"_ZTS23cNoncopyableOwnedObject", !261, i64 0}
!261 = !{!"_ZTS12cOwnedObject", !262, i64 0, !144, i64 24, !147, i64 32}
!262 = !{!"_ZTS12cNamedObject", !143, i64 0, !144, i64 8, !263, i64 16, !263, i64 18}
!263 = !{!"short", !145, i64 0}
!264 = !{!"branch_weights", i32 137493885, i32 267284335}
!265 = !{!"branch_weights", i32 1, i32 50}
!266 = !{!"function_entry_count", i64 65602}
!267 = !{!"branch_weights", i32 65603, i32 1}
!268 = !{!"branch_weights", i32 1, i32 65603}
!269 = !{!142, !144, i64 32}
!270 = !{!"branch_weights", i32 55841, i32 9763}
!271 = !{!"branch_weights", i32 545241287, i32 95316169}
!272 = !{!"branch_weights", i32 1, i32 9763}
!273 = !{!"function_entry_count", i64 9762}
!274 = !{!"branch_weights", i32 1, i32 65602}
!275 = !{!"branch_weights", i32 32735, i32 2147450913}
!276 = !{!"branch_weights", i32 64251, i32 26287}
!277 = !{!"branch_weights", i32 65602, i32 24935}
!278 = distinct !{!278, !207}
!279 = !{!"function_entry_count", i64 21674314260}
!280 = !{!"function_entry_count", i64 574617348}
!281 = !{!262, !263, i64 16}
!282 = !{!283, !144, i64 104}
!283 = !{!"_ZTS8cChannel", !258, i64 0, !144, i64 104, !147, i64 112}
!284 = !{!"branch_weights", i32 65603, i32 12468}
!285 = distinct !{!285, !207}
!286 = !{!"function_entry_count", i64 8550}
!287 = !{!"branch_weights", i32 8551, i32 23799}
!288 = distinct !{!288, !207}
!289 = !{!"function_entry_count", i64 309856362}
!290 = !{!"function_entry_count", i64 57319387120}
!291 = !{!"function_entry_count", i64 61624744013}
!292 = !{!293, !214, i64 0}
!293 = !{!"_ZTS7SimTime", !214, i64 0}
!294 = distinct !{!294, !207}
!295 = distinct !{!295, !207}
!296 = distinct !{!296, !207}
!297 = !{!"function_entry_count", i64 146192}
!298 = !{!"function_entry_count", i64 17700}
!299 = !{!"branch_weights", i32 8551, i32 1}
!300 = !{!"function_entry_count", i64 505888}
