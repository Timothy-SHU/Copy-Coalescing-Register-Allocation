; ModuleID = 'simulator/cparimpl.cc'
source_filename = "simulator/cparimpl.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.cStringPool = type <{ %"class.std::__cxx11::basic_string", %"class.std::map", i8, [7 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.cStringPool::strless" }
%"struct.cStringPool::strless" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%class.cParImpl = type { %class.cNamedObject.base, ptr }
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
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
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }

$__clang_call_terminate = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK7cObject8getOwnerEv = comdat any

$_ZNK7cObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK8cParImpl10isVolatileEv = comdat any

$_ZNK8cParImpl12isExpressionEv = comdat any

$_ZNK8cParImpl8isSharedEv = comdat any

$_ZNK8cParImpl13containsValueEv = comdat any

$_ZNK8cParImpl5isSetEv = comdat any

$_ZN8cParImpl13setIsVolatileEb = comdat any

$_ZN8cParImpl11setIsSharedEb = comdat any

$_ZN8cParImpl8setIsSetEb = comdat any

$_ZN8cParImpl14setStringValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

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

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN8cParImpl18total_parimpl_objsE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN8cParImpl17live_parimpl_objsE = dso_local local_unnamed_addr global i64 0, align 8
@_ZN8cParImpl14unitStringPoolE = dso_local global %class.cStringPool zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"cParImpl::unitStringPool\00", align 1
@_ZTV8cParImpl = dso_local unnamed_addr constant { [56 x ptr] } { [56 x ptr] [ptr null, ptr @_ZTI8cParImpl, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN8cParImplD2Ev, ptr @_ZN8cParImplD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK8cParImpl4infoB5cxx11Ev, ptr @_ZNK8cParImpl12detailedInfoB5cxx11Ev, ptr @_ZNK8cParImpl3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN8cParImpl10parsimPackEP11cCommBuffer, ptr @_ZN8cParImpl12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK8cParImpl10isVolatileEv, ptr @_ZNK8cParImpl12isExpressionEv, ptr @_ZNK8cParImpl8isSharedEv, ptr @_ZNK8cParImpl13containsValueEv, ptr @_ZNK8cParImpl5isSetEv, ptr @_ZN8cParImpl13setIsVolatileEb, ptr @_ZN8cParImpl11setIsSharedEb, ptr @_ZN8cParImpl8setIsSetEb, ptr @_ZNK8cParImpl7getUnitEv, ptr @_ZN8cParImpl7setUnitEPKc, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN8cParImpl14setStringValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK8cParImpl27containsConstSubexpressionsEv, ptr @_ZN8cParImpl27evaluateConstSubexpressionsEP10cComponent, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK8cParImpl7compareEPKS_] }, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" = default(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c" isExpression=\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" (unassigned)\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.10 = private unnamed_addr constant [45 x i8] c"cParImpl::createWithType(): no such type: %d\00", align 1
@_ZTS8cParImpl = dso_local constant [10 x i8] c"8cParImpl\00", align 1
@_ZTI12cNamedObject = external constant ptr
@_ZTI8cParImpl = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8cParImpl, ptr @_ZTI12cNamedObject }, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cparimpl.cc, ptr null }]

@_ZN8cParImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8cParImplD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

declare void @_ZN11cStringPoolC1EPKc(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11cStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8cParImplC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !59 {
  tail call void @_ZN12cNamedObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store ptr getelementptr inbounds ({ [56 x ptr] }, ptr @_ZTV8cParImpl, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %class.cParImpl, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !63
  %3 = load i64, ptr @_ZN8cParImpl18total_parimpl_objsE, align 8, !tbaa !70
  %4 = add nsw i64 %3, 1
  store i64 %4, ptr @_ZN8cParImpl18total_parimpl_objsE, align 8, !tbaa !70
  %5 = load i64, ptr @_ZN8cParImpl17live_parimpl_objsE, align 8, !tbaa !70
  %6 = add nsw i64 %5, 1
  store i64 %6, ptr @_ZN8cParImpl17live_parimpl_objsE, align 8, !tbaa !70
  ret void
}

declare void @_ZN12cNamedObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8cParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  store ptr getelementptr inbounds ({ [56 x ptr] }, ptr @_ZTV8cParImpl, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %class.cParImpl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  invoke void @_ZN11cStringPool7releaseEPKc(ptr noundef nonnull align 8 dereferenceable(81) @_ZN8cParImpl14unitStringPoolE, ptr noundef %3)
          to label %4 unwind label %7, !prof !72

4:                                                ; preds = %1
  %5 = load i64, ptr @_ZN8cParImpl17live_parimpl_objsE, align 8, !tbaa !70
  %6 = add nsw i64 %5, -1
  store i64 %6, ptr @_ZN8cParImpl17live_parimpl_objsE, align 8, !tbaa !70
  tail call void @_ZN12cNamedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) #23
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #24
  unreachable
}

declare void @_ZN11cStringPool7releaseEPKc(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !73 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #23
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN12cNamedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #1

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN8cParImplD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !73 {
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN8cParImplaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 align 2 !prof !74 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(32) %0), !prof !75
  %7 = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN12cNamedObjectaSERKS_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %8 = load ptr, ptr %0, align 8, !tbaa !60
  %9 = getelementptr inbounds ptr, ptr %8, i64 30
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %6), !prof !76
  %11 = load ptr, ptr %1, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 32
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(32) %1), !prof !77
  %15 = load ptr, ptr %0, align 8, !tbaa !60
  %16 = getelementptr inbounds ptr, ptr %15, i64 33
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %14), !prof !78
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

declare noundef nonnull align 8 dereferenceable(20) ptr @_ZN12cNamedObjectaSERKS_(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN8cParImpl10parsimPackEP11cCommBuffer(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 !prof !73 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN8cParImpl12parsimUnpackEP11cCommBuffer(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 !prof !73 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK8cParImpl4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #10 align 2 !prof !73 {
  %3 = load ptr, ptr %1, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 51
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK8cParImpl12detailedInfoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %6 = getelementptr inbounds i8, ptr %3, i64 16
  %7 = load ptr, ptr %1, align 8, !tbaa !60
  %8 = getelementptr inbounds ptr, ptr %7, i64 22
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %11 unwind label %78

11:                                               ; preds = %2
  %12 = invoke noundef ptr @_ZN4cPar11getTypeNameENS_4TypeE(i32 noundef %10)
          to label %13 unwind label %78

13:                                               ; preds = %11
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8, !tbaa !60
  %17 = getelementptr i8, ptr %16, i64 -24
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  %20 = getelementptr inbounds %"class.std::ios_base", ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !79
  %22 = or i32 %21, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %19, i32 noundef %22)
          to label %26 unwind label %78

23:                                               ; preds = %13
  %24 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #23
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %12, i64 noundef %24)
          to label %26 unwind label %78

26:                                               ; preds = %23, %15
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %28 unwind label %78

28:                                               ; preds = %26
  %29 = load ptr, ptr %1, align 8, !tbaa !60
  %30 = getelementptr inbounds ptr, ptr %29, i64 6
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %33 unwind label %78

33:                                               ; preds = %28
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %33
  %36 = load ptr, ptr %6, align 8, !tbaa !60
  %37 = getelementptr i8, ptr %36, i64 -24
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr %6, i64 %38
  %40 = getelementptr inbounds %"class.std::ios_base", ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !79
  %42 = or i32 %41, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %39, i32 noundef %42)
          to label %46 unwind label %78

43:                                               ; preds = %33
  %44 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #23
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %32, i64 noundef %44)
          to label %46 unwind label %78

46:                                               ; preds = %43, %35
  %47 = load ptr, ptr %1, align 8, !tbaa !60
  %48 = getelementptr inbounds ptr, ptr %47, i64 27
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %51 unwind label %78

51:                                               ; preds = %46
  br i1 %50, label %52, label %138

52:                                               ; preds = %51
  %53 = load ptr, ptr %1, align 8, !tbaa !60
  %54 = getelementptr inbounds ptr, ptr %53, i64 28
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef zeroext i1 %55(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %57 unwind label %78

57:                                               ; preds = %52
  br i1 %56, label %58, label %93

58:                                               ; preds = %57
  %59 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.3, i64 noundef 3)
          to label %60 unwind label %78

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  %61 = load ptr, ptr %1, align 8, !tbaa !60
  %62 = getelementptr inbounds ptr, ptr %61, i64 51
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %64 unwind label %80

64:                                               ; preds = %60
  %65 = load ptr, ptr %4, align 8, !tbaa !86
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !89
  %68 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %65, i64 noundef %67)
          to label %69 unwind label %82

69:                                               ; preds = %64
  %70 = load ptr, ptr %4, align 8, !tbaa !86
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i64, ptr %66, align 8, !tbaa !89
  %75 = icmp ult i64 %74, 16
  call void @llvm.assume(i1 %75)
  br label %77

76:                                               ; preds = %69
  call void @_ZdlPv(ptr noundef %70) #25
  br label %77

77:                                               ; preds = %73, %76
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %128

78:                                               ; preds = %138, %142, %128, %93, %58, %43, %35, %26, %23, %15, %130, %52, %46, %28, %11, %2
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %146

80:                                               ; preds = %60
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %91

82:                                               ; preds = %64
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load ptr, ptr %4, align 8, !tbaa !86
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, ptr %66, align 8, !tbaa !89
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  br label %91

90:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %84) #25
  br label %91

91:                                               ; preds = %90, %87, %80
  %92 = phi { ptr, i32 } [ %81, %80 ], [ %83, %87 ], [ %83, %90 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %146

93:                                               ; preds = %57
  %94 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.4, i64 noundef 11)
          to label %95 unwind label %78

95:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %96 = load ptr, ptr %1, align 8, !tbaa !60
  %97 = getelementptr inbounds ptr, ptr %96, i64 51
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %99 unwind label %115

99:                                               ; preds = %95
  %100 = load ptr, ptr %5, align 8, !tbaa !86
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !89
  %103 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %100, i64 noundef %102)
          to label %104 unwind label %117

104:                                              ; preds = %99
  %105 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %106 unwind label %117

106:                                              ; preds = %104
  %107 = load ptr, ptr %5, align 8, !tbaa !86
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, ptr %101, align 8, !tbaa !89
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  br label %114

113:                                              ; preds = %106
  call void @_ZdlPv(ptr noundef %107) #25
  br label %114

114:                                              ; preds = %110, %113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %128

115:                                              ; preds = %95
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %126

117:                                              ; preds = %104, %99
  %118 = landingpad { ptr, i32 }
          cleanup
  %119 = load ptr, ptr %5, align 8, !tbaa !86
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i64, ptr %101, align 8, !tbaa !89
  %124 = icmp ult i64 %123, 16
  call void @llvm.assume(i1 %124)
  br label %126

125:                                              ; preds = %117
  call void @_ZdlPv(ptr noundef %119) #25
  br label %126

126:                                              ; preds = %125, %122, %115
  %127 = phi { ptr, i32 } [ %116, %115 ], [ %118, %122 ], [ %118, %125 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %146

128:                                              ; preds = %114, %77
  %129 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.6, i64 noundef 14)
          to label %130 unwind label %78

130:                                              ; preds = %128
  %131 = load ptr, ptr %1, align 8, !tbaa !60
  %132 = getelementptr inbounds ptr, ptr %131, i64 25
  %133 = load ptr, ptr %132, align 8
  %134 = invoke noundef zeroext i1 %133(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %135 unwind label %78

135:                                              ; preds = %130
  %136 = select i1 %134, ptr @.str.7, ptr @.str.8
  %137 = select i1 %134, i64 4, i64 5
  br label %138

138:                                              ; preds = %51, %135
  %139 = phi ptr [ %136, %135 ], [ @.str.9, %51 ]
  %140 = phi i64 [ %137, %135 ], [ 13, %51 ]
  %141 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %139, i64 noundef %140)
          to label %142 unwind label %78

142:                                              ; preds = %138
  %143 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %3, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %143)
          to label %144 unwind label %78

144:                                              ; preds = %142
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #23
  %145 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %145) #23
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #23
  ret void

146:                                              ; preds = %126, %91, %78
  %147 = phi { ptr, i32 } [ %79, %78 ], [ %92, %91 ], [ %127, %126 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #23
  %148 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %148) #23
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #23
  resume { ptr, i32 } %147
}

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #10 align 2

declare noundef ptr @_ZN4cPar11getTypeNameENS_4TypeE(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK8cParImpl3dupEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull %0, i32 noundef 7)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #26
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #23
  resume { ptr, i32 } %5
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK8cParImpl7getUnitEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #12 align 2 !prof !90 {
  %2 = getelementptr inbounds %class.cParImpl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8cParImpl7setUnitEPKc(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !91 {
  %3 = getelementptr inbounds %class.cParImpl, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  tail call void @_ZN11cStringPool7releaseEPKc(ptr noundef nonnull align 8 dereferenceable(81) @_ZN8cParImpl14unitStringPoolE, ptr noundef %4)
  %5 = tail call noundef ptr @_ZN11cStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(81) @_ZN8cParImpl14unitStringPoolE, ptr noundef %1)
  store ptr %5, ptr %3, align 8, !tbaa !63
  ret void
}

declare noundef ptr @_ZN11cStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8cParImpl27containsConstSubexpressionsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !92 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds ptr, ptr %2, i64 47
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(32) %0), !prof !93
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !94

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !60
  %9 = getelementptr inbounds ptr, ptr %8, i64 27
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(8) %5), !prof !95
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi i1 [ %11, %7 ], [ false, %1 ]
  ret i1 %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN8cParImpl27evaluateConstSubexpressionsEP10cComponent(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !73 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 47
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 28
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1)
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK8cParImpl7compareEPKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !96 {
  %3 = load ptr, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(20) %0), !prof !97
  %7 = load ptr, ptr %1, align 8, !tbaa !60
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(20) %1), !prof !97
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %10) #27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %64, !prof !98

13:                                               ; preds = %2
  %14 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !99
  %16 = and i16 %15, -17
  %17 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !99
  %19 = and i16 %18, -17
  %20 = icmp eq i16 %16, %19
  br i1 %20, label %24, label %21, !prof !100

21:                                               ; preds = %13
  %22 = icmp ult i16 %16, %19
  %23 = select i1 %22, i32 -1, i32 1, !prof !101
  br label %64

24:                                               ; preds = %13
  %25 = load ptr, ptr %0, align 8, !tbaa !60
  %26 = getelementptr inbounds ptr, ptr %25, i64 22
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef i32 %27(ptr noundef nonnull align 8 dereferenceable(32) %0), !prof !102
  %29 = load ptr, ptr %1, align 8, !tbaa !60
  %30 = getelementptr inbounds ptr, ptr %29, i64 22
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(32) %1), !prof !102
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %45, label %34, !prof !103

34:                                               ; preds = %24
  %35 = load ptr, ptr %0, align 8, !tbaa !60
  %36 = getelementptr inbounds ptr, ptr %35, i64 22
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %39 = load ptr, ptr %1, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 22
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef i32 %41(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %43 = icmp slt i32 %38, %42
  %44 = select i1 %43, i32 -1, i32 1
  br label %64

45:                                               ; preds = %24
  %46 = getelementptr inbounds %class.cParImpl, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !63
  %48 = getelementptr inbounds %class.cParImpl, ptr %1, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !63
  %50 = icmp eq ptr %47, null
  %51 = icmp eq ptr %49, null
  br i1 %50, label %59, label %52, !prof !104

52:                                               ; preds = %45
  br i1 %51, label %55, label %53, !prof !105

53:                                               ; preds = %52
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %49) #27
  br label %64

55:                                               ; preds = %52
  %56 = load i8, ptr %47, align 1, !tbaa !106
  %57 = icmp ne i8 %56, 0
  %58 = zext i1 %57 to i32
  br label %64

59:                                               ; preds = %45
  br i1 %51, label %64, label %60, !prof !107

60:                                               ; preds = %59
  %61 = load i8, ptr %49, align 1, !tbaa !106
  %62 = icmp ne i8 %61, 0
  %63 = sext i1 %62 to i32
  br label %64

64:                                               ; preds = %60, %59, %55, %53, %21, %34, %2
  %65 = phi i32 [ %11, %2 ], [ %23, %21 ], [ %44, %34 ], [ %54, %53 ], [ %58, %55 ], [ 0, %59 ], [ %63, %60 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN8cParImpl14createWithTypeEN4cPar4TypeE(i32 noundef %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  switch i32 %0, label %22 [
    i32 66, label %2
    i32 68, label %6
    i32 76, label %10
    i32 83, label %14
    i32 88, label %18
  ], !prof !109

2:                                                ; preds = %1
  %3 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
  invoke void @_ZN12cBoolParImplC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %27 unwind label %4, !prof !110

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %3) #25
  br label %29

6:                                                ; preds = %1
  %7 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
  invoke void @_ZN14cDoubleParImplC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %27 unwind label %8, !prof !111

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %7) #25
  br label %29

10:                                               ; preds = %1
  %11 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
  invoke void @_ZN12cLongParImplC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %27 unwind label %12, !prof !112

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %11) #25
  br label %29

14:                                               ; preds = %1
  %15 = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28
  invoke void @_ZN14cStringParImplC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %15)
          to label %27 unwind label %16, !prof !110

16:                                               ; preds = %14
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %15) #25
  br label %29

18:                                               ; preds = %1
  %19 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28
  invoke void @_ZN11cXMLParImplC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %19)
          to label %27 unwind label %20

20:                                               ; preds = %18
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %19) #25
  br label %29

22:                                               ; preds = %1
  %23 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %23, ptr noundef nonnull @.str.10, i32 noundef %0)
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #26
  unreachable

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %23) #23
  br label %29

27:                                               ; preds = %18, %14, %10, %6, %2
  %28 = phi ptr [ %3, %2 ], [ %7, %6 ], [ %11, %10 ], [ %15, %14 ], [ %19, %18 ]
  ret ptr %28

29:                                               ; preds = %25, %20, %16, %12, %8, %4
  %30 = phi { ptr, i32 } [ %26, %25 ], [ %21, %20 ], [ %17, %16 ], [ %13, %12 ], [ %9, %8 ], [ %5, %4 ]
  resume { ptr, i32 } %30
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare void @_ZN12cBoolParImplC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #15

declare void @_ZN14cDoubleParImplC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #0

declare void @_ZN12cLongParImplC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #0

declare void @_ZN14cStringParImplC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare void @_ZN11cXMLParImplC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #16 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.14, ptr %3, !prof !115
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !116 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !117
  ret ptr %5
}

declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 !prof !73 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !118 {
  ret i1 false
}

declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #17 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !99
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl10isVolatileEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !99
  %4 = and i16 %3, 4
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl12isExpressionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !120 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !99
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl8isSharedEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !99
  %4 = and i16 %3, 16
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl13containsValueEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !122 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !99
  %4 = and i16 %3, 32
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl5isSetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !123 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !99
  %4 = and i16 %3, 64
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN8cParImpl13setIsVolatileEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #10 comdat align 2 !prof !124 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !99
  %5 = and i16 %4, -5
  %6 = select i1 %1, i16 4, i16 0, !prof !125
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8cParImpl11setIsSharedEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 !prof !126 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !99
  %5 = and i16 %4, -17
  %6 = select i1 %1, i16 16, i16 0, !prof !127
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8cParImpl8setIsSetEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 !prof !128 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !99
  %5 = and i16 %4, -65
  %6 = select i1 %1, i16 64, i16 0, !prof !129
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !99
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN8cParImpl14setStringValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = load ptr, ptr %1, align 8, !tbaa !86
  %4 = load ptr, ptr %0, align 8, !tbaa !60
  %5 = getelementptr inbounds ptr, ptr %4, i64 37
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !131

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !89
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #25
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !131

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !89
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #25
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !132

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !89
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #25
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !73 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #25
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #28
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #25
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !133
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !73 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !89
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !137, !alias.scope !138
  %10 = load ptr, ptr %7, align 8, !tbaa !86
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !89
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !86, !alias.scope !138
  %19 = load i64, ptr %11, align 8, !tbaa !106
  store i64 %19, ptr %9, align 8, !tbaa !106, !alias.scope !138
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !89
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !89, !alias.scope !138
  store ptr %11, ptr %7, align 8, !tbaa !86
  store i64 0, ptr %21, align 8, !tbaa !89
  store i8 0, ptr %11, align 8, !tbaa !106
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !89, !noalias !141
  %27 = load i64, ptr %23, align 8, !tbaa !89, !noalias !141
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #26
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !86, !noalias !141
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !137, !alias.scope !141
  %37 = load ptr, ptr %34, align 8, !tbaa !86
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !89
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !86, !alias.scope !141
  %46 = load i64, ptr %38, align 8, !tbaa !106
  store i64 %46, ptr %36, align 8, !tbaa !106, !alias.scope !141
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !89
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !89, !alias.scope !141
  store ptr %38, ptr %34, align 8, !tbaa !86
  store i64 0, ptr %48, align 8, !tbaa !89
  store i8 0, ptr %38, align 8, !tbaa !106
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  %52 = load ptr, ptr %3, align 8, !tbaa !86
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !89
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #25
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !86
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !89
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #25
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !86
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !89
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #25
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !86
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !89
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #25
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !86
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !89
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #25
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !144, !range !145, !noundef !146
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #17 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !147
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !137
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #26
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store i64 %9, ptr %4, align 8, !tbaa !70
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !148

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !86
  %13 = load i64, ptr %4, align 8, !tbaa !70
  store i64 %13, ptr %5, align 8, !tbaa !106
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !86
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !149

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !106
  store i8 %17, ptr %15, align 1, !tbaa !106
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !150
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !70
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !89
  %22 = load ptr, ptr %0, align 8, !tbaa !86
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #17 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #17 align 2

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #10 align 2

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cparimpl.cc() #20 section ".text.startup" !prof !130 !PGOFuncName !151 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #23
  tail call void @_ZN11cStringPoolC1EPKc(ptr noundef nonnull align 8 dereferenceable(81) @_ZN8cParImpl14unitStringPoolE, ptr noundef nonnull @.str)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11cStringPoolD1Ev, ptr nonnull @_ZN8cParImpl14unitStringPoolE, ptr nonnull @__dso_handle) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!58}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @_ZN8cParImplC2Ev, ptr @_ZN12cNamedObjectC2Ev, i64 18619}
!36 = !{ptr @_ZN8cParImplD2Ev, ptr @_ZN11cStringPool7releaseEPKc, i64 18619}
!37 = !{ptr @_ZN8cParImplD2Ev, ptr @_ZN12cNamedObjectD2Ev, i64 18619}
!38 = !{ptr @_ZN8cParImplaSERKS_, ptr @_ZNK8cParImpl8isSharedEv, i64 18453}
!39 = !{ptr @_ZN8cParImplaSERKS_, ptr @_ZN12cNamedObjectaSERKS_, i64 18453}
!40 = !{ptr @_ZN8cParImplaSERKS_, ptr @_ZN8cParImpl11setIsSharedEb, i64 18453}
!41 = !{ptr @_ZN8cParImplaSERKS_, ptr @_ZNK8cParImpl7getUnitEv, i64 18453}
!42 = !{ptr @_ZN8cParImplaSERKS_, ptr @_ZN8cParImpl7setUnitEPKc, i64 18453}
!43 = !{ptr @_ZN8cParImpl7setUnitEPKc, ptr @_ZN11cStringPool7releaseEPKc, i64 18615}
!44 = !{ptr @_ZN8cParImpl7setUnitEPKc, ptr @_ZN11cStringPool3getEPKc, i64 18615}
!45 = !{ptr @_ZNK8cParImpl7compareEPKS_, ptr @_ZNK12cNamedObject7getNameEv, i64 886234}
!46 = !{ptr @_ZNK8cParImpl7compareEPKS_, ptr @strcmp, i64 628239}
!47 = !{ptr @_ZN8cParImpl14createWithTypeEN4cPar4TypeE, ptr @_Znwm, i64 162}
!48 = !{ptr @_ZN8cParImpl14createWithTypeEN4cPar4TypeE, ptr @_ZN12cBoolParImplC1Ev, i64 5}
!49 = !{ptr @_ZN8cParImpl14createWithTypeEN4cPar4TypeE, ptr @_ZN14cDoubleParImplC1Ev, i64 4}
!50 = !{ptr @_ZN8cParImpl14createWithTypeEN4cPar4TypeE, ptr @_ZN12cLongParImplC1Ev, i64 148}
!51 = !{ptr @_ZN8cParImpl14createWithTypeEN4cPar4TypeE, ptr @_ZN14cStringParImplC1Ev, i64 5}
!52 = !{ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK12cNamedObject7getNameEv, i64 97893}
!53 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!54 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!55 = !{ptr @_GLOBAL__sub_I_cparimpl.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!56 = !{ptr @_GLOBAL__sub_I_cparimpl.cc, ptr @__cxa_atexit, i64 2}
!57 = !{ptr @_GLOBAL__sub_I_cparimpl.cc, ptr @_ZN11cStringPoolC1EPKc, i64 1}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 18619}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!64, !67, i64 24}
!64 = !{!"_ZTS8cParImpl", !65, i64 0, !67, i64 24}
!65 = !{!"_ZTS12cNamedObject", !66, i64 0, !67, i64 8, !69, i64 16, !69, i64 18}
!66 = !{!"_ZTS7cObject"}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !62, i64 0}
!69 = !{!"short", !68, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"long", !68, i64 0}
!72 = !{!"branch_weights", i32 18619, i32 0}
!73 = !{!"function_entry_count", i64 0}
!74 = !{!"function_entry_count", i64 18453}
!75 = !{!"VP", i32 0, i64 18453, i64 3133058105110021643, i64 18453}
!76 = !{!"VP", i32 0, i64 18453, i64 2316395310670416864, i64 18453}
!77 = !{!"VP", i32 0, i64 18453, i64 571140623194914545, i64 18453}
!78 = !{!"VP", i32 0, i64 18453, i64 1730556329969623976, i64 18453}
!79 = !{!80, !82, i64 32}
!80 = !{!"_ZTSSt8ios_base", !71, i64 8, !71, i64 16, !81, i64 24, !82, i64 28, !82, i64 32, !67, i64 40, !83, i64 48, !68, i64 64, !84, i64 192, !67, i64 200, !85, i64 208}
!81 = !{!"_ZTSSt13_Ios_Fmtflags", !68, i64 0}
!82 = !{!"_ZTSSt12_Ios_Iostate", !68, i64 0}
!83 = !{!"_ZTSNSt8ios_base6_WordsE", !67, i64 0, !71, i64 8}
!84 = !{!"int", !68, i64 0}
!85 = !{!"_ZTSSt6locale", !67, i64 0}
!86 = !{!87, !67, i64 0}
!87 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !88, i64 0, !71, i64 8, !68, i64 16}
!88 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !67, i64 0}
!89 = !{!87, !71, i64 8}
!90 = !{!"function_entry_count", i64 129039}
!91 = !{!"function_entry_count", i64 18615}
!92 = !{!"function_entry_count", i64 14772}
!93 = !{!"VP", i32 0, i64 14772, i64 -7885769014594039835, i64 14772}
!94 = !{!"branch_weights", i32 0, i32 14772}
!95 = !{!"VP", i32 0, i64 14772, i64 3409416872855893933, i64 14772}
!96 = !{!"function_entry_count", i64 443117}
!97 = !{!"VP", i32 0, i64 443117, i64 -1846066915438621208, i64 443117}
!98 = !{!"branch_weights", i32 355087, i32 88030}
!99 = !{!65, !69, i64 16}
!100 = !{!"branch_weights", i32 306794, i32 48293}
!101 = !{!"branch_weights", i32 4927, i32 43366}
!102 = !{!"VP", i32 0, i64 306794, i64 -2131727662495920458, i64 183678, i64 -7511890825116690609, i64 58566, i64 4775231491338224802, i64 46466}
!103 = !{!"branch_weights", i32 306794, i32 0}
!104 = !{!"branch_weights", i32 121672, i32 185122}
!105 = !{!"branch_weights", i32 0, i32 185122}
!106 = !{!68, !68, i64 0}
!107 = !{!"branch_weights", i32 121672, i32 0}
!108 = !{!"function_entry_count", i64 162}
!109 = !{!"branch_weights", i32 0, i32 5, i32 4, i32 148, i32 5, i32 0}
!110 = !{!"branch_weights", i32 5, i32 0}
!111 = !{!"branch_weights", i32 4, i32 0}
!112 = !{!"branch_weights", i32 148, i32 0}
!113 = !{!"function_entry_count", i64 192538233}
!114 = !{!65, !67, i64 8}
!115 = !{!"branch_weights", i32 0, i32 192538233}
!116 = !{!"function_entry_count", i64 235321}
!117 = !{!"VP", i32 0, i64 235321, i64 8390818187414654894, i64 137428, i64 -1846066915438621208, i64 97893}
!118 = !{!"function_entry_count", i64 26398}
!119 = !{!"function_entry_count", i64 19696}
!120 = !{!"function_entry_count", i64 274856}
!121 = !{!"function_entry_count", i64 311706}
!122 = !{!"function_entry_count", i64 266736}
!123 = !{!"function_entry_count", i64 213700}
!124 = !{!"function_entry_count", i64 49}
!125 = !{!"branch_weights", i32 3, i32 46}
!126 = !{!"function_entry_count", i64 41949}
!127 = !{!"branch_weights", i32 5029, i32 36920}
!128 = !{!"function_entry_count", i64 157511}
!129 = !{!"branch_weights", i32 81216, i32 76295}
!130 = !{!"function_entry_count", i64 1}
!131 = !{!"branch_weights", i32 1, i32 0}
!132 = !{!"branch_weights", i32 0, i32 1}
!133 = !{!134, !84, i64 8}
!134 = !{!"_ZTS10cException", !135, i64 0, !84, i64 8, !87, i64 16, !136, i64 48, !87, i64 56, !87, i64 88, !84, i64 120}
!135 = !{!"_ZTSSt9exception"}
!136 = !{!"bool", !68, i64 0}
!137 = !{!88, !67, i64 0}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!140 = distinct !{!140, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!143 = distinct !{!143, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!144 = !{!134, !136, i64 48}
!145 = !{i8 0, i8 2}
!146 = !{}
!147 = !{!134, !84, i64 120}
!148 = !{!"branch_weights", i32 1257662, i32 631781}
!149 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!150 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!151 = !{!"simulator/cparimpl.cc;_GLOBAL__sub_I_cparimpl.cc"}
