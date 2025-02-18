; ModuleID = 'simulator/cstringparimpl.cc'
source_filename = "simulator/cstringparimpl.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.cStringParImpl = type { %class.cParImpl, ptr, %"class.std::__cxx11::basic_string" }
%class.cParImpl = type { %class.cNamedObject.base, ptr }
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }

$__clang_call_terminate = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK14cStringParImpl3dupEv = comdat any

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

$_ZN14cStringParImplC2ERKS_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV14cStringParImpl = dso_local unnamed_addr constant { [56 x ptr] } { [56 x ptr] [ptr null, ptr @_ZTI14cStringParImpl, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN14cStringParImplD2Ev, ptr @_ZN14cStringParImplD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK8cParImpl4infoB5cxx11Ev, ptr @_ZNK8cParImpl12detailedInfoB5cxx11Ev, ptr @_ZNK14cStringParImpl3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN14cStringParImpl10parsimPackEP11cCommBuffer, ptr @_ZN14cStringParImpl12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZNK14cStringParImpl7getTypeEv, ptr @_ZNK14cStringParImpl9isNumericEv, ptr @_ZNK8cParImpl10isVolatileEv, ptr @_ZNK8cParImpl12isExpressionEv, ptr @_ZNK8cParImpl8isSharedEv, ptr @_ZNK8cParImpl13containsValueEv, ptr @_ZNK8cParImpl5isSetEv, ptr @_ZN8cParImpl13setIsVolatileEb, ptr @_ZN8cParImpl11setIsSharedEb, ptr @_ZN8cParImpl8setIsSetEb, ptr @_ZNK8cParImpl7getUnitEv, ptr @_ZN8cParImpl7setUnitEPKc, ptr @_ZN14cStringParImpl12setBoolValueEb, ptr @_ZN14cStringParImpl12setLongValueEl, ptr @_ZN14cStringParImpl14setDoubleValueEd, ptr @_ZN14cStringParImpl14setStringValueEPKc, ptr @_ZN8cParImpl14setStringValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN14cStringParImpl11setXMLValueEP11cXMLElement, ptr @_ZN14cStringParImpl13setExpressionEP11cExpression, ptr @_ZNK14cStringParImpl9boolValueEP10cComponent, ptr @_ZNK14cStringParImpl9longValueEP10cComponent, ptr @_ZNK14cStringParImpl11doubleValueEP10cComponent, ptr @_ZNK14cStringParImpl11stringValueEP10cComponent, ptr @_ZNK14cStringParImpl14stdstringValueB5cxx11EP10cComponent, ptr @_ZNK14cStringParImpl8xmlValueEP10cComponent, ptr @_ZNK14cStringParImpl13getExpressionEv, ptr @_ZN14cStringParImpl14convertToConstEP10cComponent, ptr @_ZNK8cParImpl27containsConstSubexpressionsEv, ptr @_ZN8cParImpl27evaluateConstSubexpressionsEP10cComponent, ptr @_ZNK14cStringParImpl3strB5cxx11Ev, ptr @_ZN14cStringParImpl5parseEPKc, ptr @_ZNK14cStringParImpl7compareEPK8cParImpl] }, align 8
@.str = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"int/long\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"XML\00", align 1
@.str.6 = private unnamed_addr constant [177 x i8] c"stringValue() and conversion to `const char *' cannot be invoked on parameters declared `volatile string' in NED -- use stdstringValue() or conversion to `std::string' instead.\00", align 1
@_ZTI8cParImpl = external constant ptr
@_ZTS14cStringParImpl = dso_local constant [17 x i8] c"14cStringParImpl\00", align 1
@_ZTI14cStringParImpl = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14cStringParImpl, ptr @_ZTI8cParImpl }, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cstringparimpl.cc, ptr null }]

@_ZN14cStringParImplC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14cStringParImplC2Ev
@_ZN14cStringParImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14cStringParImplD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cStringParImplC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN8cParImplC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr getelementptr inbounds ({ [56 x ptr] }, ptr @_ZTV14cStringParImpl, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2, i32 2
  store ptr %3, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %4, align 8, !tbaa !72
  store i8 0, ptr %3, align 8, !tbaa !75
  ret void
}

declare void @_ZN8cParImplC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14cStringParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  store ptr getelementptr inbounds ({ [56 x ptr] }, ptr @_ZTV14cStringParImpl, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !81

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !85

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8) #26, !prof !86
  br label %14

14:                                               ; preds = %10, %6
  %15 = load i16, ptr %2, align 8, !tbaa !77
  %16 = and i16 %15, -9
  store i16 %16, ptr %2, align 8, !tbaa !77
  br label %17

17:                                               ; preds = %1, %14
  %18 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2, i32 2
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26, !prof !88

22:                                               ; preds = %17
  %23 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !72
  %25 = icmp ult i64 %24, 16
  tail call void @llvm.assume(i1 %25)
  br label %27

26:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #27
  br label %27

27:                                               ; preds = %22, %26
  tail call void @_ZN8cParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN14cStringParImpl9deleteOldEv(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %14

14:                                               ; preds = %10, %6
  %15 = load i16, ptr %2, align 8, !tbaa !77
  %16 = and i16 %15, -9
  store i16 %16, ptr %2, align 8, !tbaa !77
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !76 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #26
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN8cParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14cStringParImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  store ptr getelementptr inbounds ({ [56 x ptr] }, ptr @_ZTV14cStringParImpl, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !81

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !85

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8) #26, !prof !90
  br label %14

14:                                               ; preds = %10, %6
  %15 = load i16, ptr %2, align 8, !tbaa !77
  %16 = and i16 %15, -9
  store i16 %16, ptr %2, align 8, !tbaa !77
  br label %17

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2, i32 2
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26, !prof !88

22:                                               ; preds = %17
  %23 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !72
  %25 = icmp ult i64 %24, 16
  tail call void @llvm.assume(i1 %25)
  br label %27

26:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #27
  br label %27

27:                                               ; preds = %22, %26
  tail call void @_ZN8cParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  tail call void @_ZdlPv(ptr noundef %0) #27
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14cStringParImplaSERKS_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #8 align 2 !prof !76 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %36, label %4, !prof !91

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !77
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9, !prof !92

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !65
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #26
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i16, ptr %5, align 8, !tbaa !77
  %19 = and i16 %18, -9
  store i16 %19, ptr %5, align 8, !tbaa !77
  br label %20

20:                                               ; preds = %4, %17
  %21 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8cParImplaSERKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %22 = load i16, ptr %5, align 8, !tbaa !77
  %23 = and i16 %22, 8
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %33, label %25, !prof !92

25:                                               ; preds = %20
  %26 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !82
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 11
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27)
  %32 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !82
  br label %36

33:                                               ; preds = %20
  %34 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 2
  %35 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %34)
  br label %36

36:                                               ; preds = %2, %33, %25
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN8cParImplaSERKS_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN14cStringParImpl10parsimPackEP11cCommBuffer(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 !prof !76 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN14cStringParImpl12parsimUnpackEP11cCommBuffer(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #9 align 2 !prof !76 {
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN14cStringParImpl12setBoolValueEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 zeroext %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #26
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN14cStringParImpl12setLongValueEl(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #26
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN14cStringParImpl14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(72) %0, double %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #26
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14cStringParImpl14setStringValueEPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #8 align 2 !prof !93 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !77
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7, !prof !94

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !95

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #26, !prof !96
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i16, ptr %3, align 8, !tbaa !77
  %17 = and i16 %16, -9
  store i16 %17, ptr %3, align 8, !tbaa !77
  br label %18

18:                                               ; preds = %2, %15
  %19 = icmp eq ptr %1, null
  %20 = select i1 %19, ptr @.str.4, ptr %1, !prof !91
  %21 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !72
  %24 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #26
  %25 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef %23, ptr noundef nonnull %20, i64 noundef %24)
  %26 = load i16, ptr %3, align 8, !tbaa !77
  %27 = or i16 %26, 96
  store i16 %27, ptr %3, align 8, !tbaa !77
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN14cStringParImpl11setXMLValueEP11cXMLElement(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #26
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cStringParImpl13setExpressionEP11cExpression(ptr nocapture noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !97 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !77
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7, !prof !98

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i16, ptr %3, align 8, !tbaa !77
  %17 = and i16 %16, -9
  store i16 %17, ptr %3, align 8, !tbaa !77
  br label %18

18:                                               ; preds = %2, %15
  %19 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  store ptr %1, ptr %19, align 8, !tbaa !82
  %20 = load i16, ptr %3, align 8, !tbaa !77
  %21 = or i16 %20, 104
  store i16 %21, ptr %3, align 8, !tbaa !77
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef zeroext i1 @_ZNK14cStringParImpl9boolValueEP10cComponent(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #26
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef i64 @_ZNK14cStringParImpl9longValueEP10cComponent(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #26
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef double @_ZNK14cStringParImpl11doubleValueEP10cComponent(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #26
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK14cStringParImpl11stringValueEP10cComponent(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !77
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %12, label %7, !prof !100

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #26
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  ret ptr %14
}

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK14cStringParImpl14stdstringValueB5cxx11EP10cComponent(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1, ptr noundef %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %4 = alloca i64, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %5 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !77, !noalias !102
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %15, label %9, !prof !105

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !82, !noalias !102
  %12 = load ptr, ptr %11, align 8, !tbaa !65, !noalias !102
  %13 = getelementptr inbounds ptr, ptr %12, i64 22
  %14 = load ptr, ptr %13, align 8, !noalias !102
  tail call void %14(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %2), !prof !106
  br label %35

15:                                               ; preds = %3
  %16 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 2
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %17, ptr %0, align 8, !tbaa !68, !alias.scope !102
  %18 = load ptr, ptr %16, align 8, !tbaa !87, !noalias !102
  %19 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 2, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !72, !noalias !102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  store i64 %20, ptr %4, align 8, !tbaa !107
  %21 = icmp ugt i64 %20, 15
  br i1 %21, label %22, label %25, !prof !108

22:                                               ; preds = %15
  %23 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %23, ptr %0, align 8, !tbaa !87
  %24 = load i64, ptr %4, align 8, !tbaa !107
  store i64 %24, ptr %17, align 8, !tbaa !75
  br label %25

25:                                               ; preds = %22, %15
  %26 = load ptr, ptr %0, align 8, !tbaa !87
  switch i64 %20, label %29 [
    i64 1, label %27
    i64 0, label %30
  ], !prof !109

27:                                               ; preds = %25
  %28 = load i8, ptr %18, align 1, !tbaa !75
  store i8 %28, ptr %26, align 1, !tbaa !75
  br label %30

29:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %18, i64 %20, i1 false), !prof !110
  br label %30

30:                                               ; preds = %25, %27, %29
  %31 = load i64, ptr %4, align 8, !tbaa !107
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %31, ptr %32, align 8, !tbaa !72
  %33 = load ptr, ptr %0, align 8, !tbaa !87
  %34 = getelementptr inbounds i8, ptr %33, i64 %31
  store i8 0, ptr %34, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  br label %35

35:                                               ; preds = %9, %30
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK14cStringParImpl8evaluateB5cxx11EP10cComponent(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %4 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !77
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 22
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %2)
  br label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %16, ptr %0, align 8, !tbaa !68
  %17 = load ptr, ptr %15, align 8, !tbaa !87
  %18 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 2, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !72
  %20 = getelementptr inbounds i8, ptr %17, i64 %19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %17, ptr noundef %20)
  br label %21

21:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK14cStringParImpl8xmlValueEP10cComponent(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #26
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #29
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #26
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK14cStringParImpl13getExpressionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #11 align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK14cStringParImpl7getTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #12 align 2 !prof !111 {
  ret i32 83
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK14cStringParImpl9isNumericEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !76 {
  ret i1 false
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cStringParImpl14convertToConstEP10cComponent(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !112 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = getelementptr inbounds ptr, ptr %4, i64 45
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1), !prof !113
  %7 = load ptr, ptr %3, align 8, !tbaa !87
  %8 = load ptr, ptr %0, align 8, !tbaa !65
  %9 = getelementptr inbounds ptr, ptr %8, i64 37
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %7)
          to label %11 unwind label %21, !prof !114

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !tbaa !87
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %19, !prof !115

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !72
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %20

19:                                               ; preds = %11
  call void @_ZdlPv(ptr noundef %12) #27
  br label %20

20:                                               ; preds = %15, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void

21:                                               ; preds = %2
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %3, align 8, !tbaa !87
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !72
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  call void @_ZdlPv(ptr noundef %23) #27
  br label %31

31:                                               ; preds = %26, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK14cStringParImpl3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 !prof !76 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !77
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds ptr, ptr %10, i64 24
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  tail call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %15)
  br label %16

16:                                               ; preds = %13, %7
  ret void
}

declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cStringParImpl5parseEPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %3 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
  invoke void @_ZN18cDynamicExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %3)
          to label %4 unwind label %8, !prof !117

4:                                                ; preds = %2
  %5 = load ptr, ptr %3, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 25
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef %1)
          to label %23 unwind label %10, !prof !118

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %3) #27
  br label %36

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %12 = extractvalue { ptr, i32 } %11, 1
  %13 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #26
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = extractvalue { ptr, i32 } %11, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #26
  %18 = load ptr, ptr %3, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(20) %3) #26
  invoke void @__cxa_rethrow() #29
          to label %41 unwind label %21

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %36 unwind label %38

23:                                               ; preds = %4
  %24 = load ptr, ptr %0, align 8, !tbaa !65
  %25 = getelementptr inbounds ptr, ptr %24, i64 40
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %3), !prof !119
  %27 = load ptr, ptr %3, align 8, !tbaa !65
  %28 = getelementptr inbounds ptr, ptr %27, i64 31
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(20) %3), !prof !120
  br i1 %30, label %31, label %35, !prof !117

31:                                               ; preds = %23
  %32 = load ptr, ptr %0, align 8, !tbaa !65
  %33 = getelementptr inbounds ptr, ptr %32, i64 48
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef null), !prof !121
  br label %35

35:                                               ; preds = %31, %23
  ret void

36:                                               ; preds = %21, %10, %8
  %37 = phi { ptr, i32 } [ %11, %10 ], [ %9, %8 ], [ %22, %21 ]
  resume { ptr, i32 } %37

38:                                               ; preds = %21
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #28
  unreachable

41:                                               ; preds = %15
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare void @_ZN18cDynamicExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #0

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #15

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK14cStringParImpl7compareEPK8cParImpl(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call noundef i32 @_ZNK8cParImpl7compareEPKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %58, !prof !123

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %9, label %7, !prof !124

7:                                                ; preds = %5
  %8 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI8cParImpl, ptr nonnull @_ZTI14cStringParImpl, i64 0) #26
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi ptr [ %8, %7 ], [ null, %5 ]
  %11 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !77
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %24, label %15, !prof !125

15:                                               ; preds = %9
  %16 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = getelementptr inbounds %class.cStringParImpl, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = load ptr, ptr %17, align 8, !tbaa !65
  %21 = getelementptr inbounds ptr, ptr %20, i64 26
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19)
  br label %58

24:                                               ; preds = %9
  %25 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %class.cStringParImpl, ptr %10, i64 0, i32 2
  %27 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %class.cStringParImpl, ptr %10, i64 0, i32 2, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !72
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %39, !prof !125

32:                                               ; preds = %24
  %33 = icmp eq i64 %28, 0
  br i1 %33, label %58, label %34, !prof !126

34:                                               ; preds = %32
  %35 = load ptr, ptr %26, align 8, !tbaa !87
  %36 = load ptr, ptr %25, align 8, !tbaa !87
  %37 = tail call i32 @bcmp(ptr %36, ptr %35, i64 %28), !prof !127
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39, !prof !128

39:                                               ; preds = %24, %34
  %40 = tail call i64 @llvm.umin.i64(i64 %30, i64 %28)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %26, align 8, !tbaa !87
  %44 = load ptr, ptr %25, align 8, !tbaa !87
  %45 = tail call i32 @memcmp(ptr noundef %44, ptr noundef %43, i64 noundef %40) #26
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i32 [ %45, %42 ], [ 0, %39 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = sub i64 %28, %30
  %51 = tail call i64 @llvm.smax.i64(i64 %50, i64 -2147483648)
  %52 = tail call i64 @llvm.smin.i64(i64 %51, i64 2147483647)
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %46, %49
  %55 = phi i32 [ %47, %46 ], [ %53, %49 ]
  %56 = icmp sgt i32 %55, -1
  %57 = select i1 %56, i32 1, i32 -1
  br label %58

58:                                               ; preds = %32, %15, %34, %54, %2
  %59 = phi i32 [ %3, %2 ], [ %23, %15 ], [ %57, %54 ], [ 0, %34 ], [ 0, %32 ]
  ret i32 %59
}

declare noundef i32 @_ZNK8cParImpl7compareEPKS_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #16

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #17 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.4, ptr %3, !prof !131
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !132 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !133
  ret ptr %5
}

declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK8cParImpl4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare void @_ZNK8cParImpl12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14cStringParImpl3dupEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  %2 = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30
  invoke void @_ZN14cStringParImplC2ERKS_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %3 unwind label %4, !prof !92

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

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !76 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !134 {
  ret i1 false
}

declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #5 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl10isVolatileEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !135 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = and i16 %3, 4
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl12isExpressionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !136 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl8isSharedEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !137 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = and i16 %3, 16
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl13containsValueEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = and i16 %3, 32
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl5isSetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !77
  %4 = and i16 %3, 64
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN8cParImpl13setIsVolatileEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !140 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !77
  %5 = and i16 %4, -5
  %6 = select i1 %1, i16 4, i16 0, !prof !141
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8cParImpl11setIsSharedEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 !prof !142 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !77
  %5 = and i16 %4, -17
  %6 = select i1 %1, i16 16, i16 0, !prof !143
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8cParImpl8setIsSetEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 !prof !144 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !77
  %5 = and i16 %4, -65
  %6 = select i1 %1, i16 64, i16 0, !prof !145
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !77
  ret void
}

declare noundef ptr @_ZNK8cParImpl7getUnitEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare void @_ZN8cParImpl7setUnitEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN8cParImpl14setStringValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 !prof !76 {
  %3 = load ptr, ptr %1, align 8, !tbaa !87
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = getelementptr inbounds ptr, ptr %4, i64 37
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3)
  ret void
}

declare noundef zeroext i1 @_ZNK8cParImpl27containsConstSubexpressionsEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare void @_ZN8cParImpl27evaluateConstSubexpressionsEP10cComponent(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !147

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !72
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #27
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !147

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !72
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #27
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !85

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !72
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #27
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !76 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #26
  tail call void @_ZdlPv(ptr noundef %0) #27
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #30
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
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !148
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !76 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !72
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !68, !alias.scope !153
  %10 = load ptr, ptr %7, align 8, !tbaa !87
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !72
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !87, !alias.scope !153
  %19 = load i64, ptr %11, align 8, !tbaa !75
  store i64 %19, ptr %9, align 8, !tbaa !75, !alias.scope !153
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !72
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !72, !alias.scope !153
  store ptr %11, ptr %7, align 8, !tbaa !87
  store i64 0, ptr %21, align 8, !tbaa !72
  store i8 0, ptr %11, align 8, !tbaa !75
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !72, !noalias !156
  %27 = load i64, ptr %23, align 8, !tbaa !72, !noalias !156
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #29
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !87, !noalias !156
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !68, !alias.scope !156
  %37 = load ptr, ptr %34, align 8, !tbaa !87
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !72
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !87, !alias.scope !156
  %46 = load i64, ptr %38, align 8, !tbaa !75
  store i64 %46, ptr %36, align 8, !tbaa !75, !alias.scope !156
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !72
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !72, !alias.scope !156
  store ptr %38, ptr %34, align 8, !tbaa !87
  store i64 0, ptr %48, align 8, !tbaa !72
  store i8 0, ptr %38, align 8, !tbaa !75
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  %52 = load ptr, ptr %3, align 8, !tbaa !87
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !72
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #27
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !87
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !72
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #27
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !87
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !72
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #27
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !87
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !72
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #27
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !87
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !72
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #27
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !146 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !159, !range !160, !noundef !161
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !162
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !68
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #29
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  store i64 %9, ptr %4, align 8, !tbaa !107
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !163

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !87
  %13 = load i64, ptr %4, align 8, !tbaa !107
  store i64 %13, ptr %5, align 8, !tbaa !75
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !87
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !164

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !75
  store i8 %17, ptr %15, align 1, !tbaa !75
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !165
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !107
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !72
  %22 = load ptr, ptr %0, align 8, !tbaa !87
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN14cStringParImplC2ERKS_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  tail call void @_ZN8cParImplC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr getelementptr inbounds ({ [56 x ptr] }, ptr @_ZTV14cStringParImpl, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2, i32 2
  store ptr %4, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %5, align 8, !tbaa !72
  store i8 0, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %1, align 8, !tbaa !65
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = invoke noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %10 unwind label %50, !prof !166

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 19
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %9)
          to label %14 unwind label %50, !prof !167

14:                                               ; preds = %10
  %15 = icmp eq ptr %0, %1
  br i1 %15, label %49, label %16, !prof !91

16:                                               ; preds = %14
  %17 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !77
  %19 = and i16 %18, 8
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %32, label %21, !prof !92

21:                                               ; preds = %16
  %22 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %23) #26
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i16, ptr %17, align 8, !tbaa !77
  %31 = and i16 %30, -9
  store i16 %31, ptr %17, align 8, !tbaa !77
  br label %32

32:                                               ; preds = %29, %16
  %33 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8cParImplaSERKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %34 unwind label %50

34:                                               ; preds = %32
  %35 = load i16, ptr %17, align 8, !tbaa !77
  %36 = and i16 %35, 8
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %47, label %38, !prof !92

38:                                               ; preds = %34
  %39 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !82
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  %42 = getelementptr inbounds ptr, ptr %41, i64 11
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %45 unwind label %50

45:                                               ; preds = %38
  %46 = getelementptr inbounds %class.cStringParImpl, ptr %0, i64 0, i32 1
  store ptr %44, ptr %46, align 8, !tbaa !82
  br label %49

47:                                               ; preds = %34
  %48 = getelementptr inbounds %class.cStringParImpl, ptr %1, i64 0, i32 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %49 unwind label %50

49:                                               ; preds = %45, %14, %47
  ret void

50:                                               ; preds = %47, %38, %32, %10, %2
  %51 = landingpad { ptr, i32 }
          cleanup
  %52 = load ptr, ptr %3, align 8, !tbaa !87
  %53 = icmp eq ptr %52, %4
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, ptr %5, align 8, !tbaa !72
  %56 = icmp ult i64 %55, 16
  tail call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %50
  tail call void @_ZdlPv(ptr noundef %52) #27
  br label %58

58:                                               ; preds = %54, %57
  tail call void @_ZN8cParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !107
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !108

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !87
  %11 = load i64, ptr %4, align 8, !tbaa !107
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !75
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !87
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !109

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !75
  store i8 %16, ptr %14, align 1, !tbaa !75
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !169
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !107
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !72
  %21 = load ptr, ptr %0, align 8, !tbaa !87
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cstringparimpl.cc() #21 section ".text.startup" !prof !146 !PGOFuncName !170 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(none) }
attributes #16 = { nofree nounwind memory(read) }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!63}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @_ZN14cStringParImplC2Ev, ptr @_ZN8cParImplC2Ev, i64 5}
!36 = !{ptr @_ZN14cStringParImplD0Ev, ptr @_ZdlPv, i64 17113}
!37 = !{ptr @_ZN14cStringParImplD0Ev, ptr @_ZN8cParImplD2Ev, i64 8563}
!38 = !{ptr @_ZN14cStringParImpl14setStringValueEPKc, ptr @strlen, i64 8558}
!39 = !{ptr @_ZN14cStringParImpl14setStringValueEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 8558}
!40 = !{ptr @_ZNK14cStringParImpl14stdstringValueB5cxx11EP10cComponent, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 174}
!41 = !{ptr @_ZN14cStringParImpl14convertToConstEP10cComponent, ptr @_ZNK14cStringParImpl14stdstringValueB5cxx11EP10cComponent, i64 8}
!42 = !{ptr @_ZN14cStringParImpl14convertToConstEP10cComponent, ptr @_ZN14cStringParImpl14setStringValueEPKc, i64 8}
!43 = !{ptr @_ZN14cStringParImpl5parseEPKc, ptr @_Znwm, i64 4}
!44 = !{ptr @_ZN14cStringParImpl5parseEPKc, ptr @_ZN18cDynamicExpressionC1Ev, i64 4}
!45 = !{ptr @_ZN14cStringParImpl5parseEPKc, ptr @_ZN14cStringParImpl13setExpressionEP11cExpression, i64 4}
!46 = !{ptr @_ZN14cStringParImpl5parseEPKc, ptr @_ZN14cStringParImpl14convertToConstEP10cComponent, i64 4}
!47 = !{ptr @_ZNK14cStringParImpl7compareEPK8cParImpl, ptr @_ZNK8cParImpl7compareEPKS_, i64 27813}
!48 = !{ptr @_ZNK14cStringParImpl7compareEPK8cParImpl, ptr @__dynamic_cast, i64 18084}
!49 = !{ptr @_ZNK14cStringParImpl7compareEPK8cParImpl, ptr @bcmp, i64 17588}
!50 = !{ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK12cNamedObject7getNameEv, i64 97893}
!51 = !{ptr @_ZNK14cStringParImpl3dupEv, ptr @_Znwm, i64 8558}
!52 = !{ptr @_ZNK14cStringParImpl3dupEv, ptr @_ZN14cStringParImplC2ERKS_, i64 8558}
!53 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!54 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!55 = !{ptr @_ZN14cStringParImplC2ERKS_, ptr @_ZN8cParImplC2Ev, i64 8558}
!56 = !{ptr @_ZN14cStringParImplC2ERKS_, ptr @_ZNK12cNamedObject7getNameEv, i64 8558}
!57 = !{ptr @_ZN14cStringParImplC2ERKS_, ptr @_ZN12cNamedObject7setNameEPKc, i64 8558}
!58 = !{ptr @_ZN14cStringParImplC2ERKS_, ptr @_ZN8cParImplaSERKS_, i64 8558}
!59 = !{ptr @_ZN14cStringParImplC2ERKS_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_, i64 8558}
!60 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1399509}
!61 = !{ptr @_GLOBAL__sub_I_cstringparimpl.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!62 = !{ptr @_GLOBAL__sub_I_cstringparimpl.cc, ptr @__cxa_atexit, i64 1}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 5}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !67, i64 0}
!67 = !{!"Simple C++ TBAA"}
!68 = !{!69, !70, i64 0}
!69 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !70, i64 0}
!70 = !{!"any pointer", !71, i64 0}
!71 = !{!"omnipotent char", !67, i64 0}
!72 = !{!73, !74, i64 8}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !69, i64 0, !74, i64 8, !71, i64 16}
!74 = !{!"long", !71, i64 0}
!75 = !{!71, !71, i64 0}
!76 = !{!"function_entry_count", i64 0}
!77 = !{!78, !80, i64 16}
!78 = !{!"_ZTS12cNamedObject", !79, i64 0, !70, i64 8, !80, i64 16, !80, i64 18}
!79 = !{!"_ZTS7cObject"}
!80 = !{!"short", !71, i64 0}
!81 = !{!"branch_weights", i32 8562, i32 1}
!82 = !{!83, !70, i64 32}
!83 = !{!"_ZTS14cStringParImpl", !84, i64 0, !70, i64 32, !73, i64 40}
!84 = !{!"_ZTS8cParImpl", !78, i64 0, !70, i64 24}
!85 = !{!"branch_weights", i32 0, i32 1}
!86 = !{!"VP", i32 0, i64 0, i64 -3940675483640185030, i64 0}
!87 = !{!73, !70, i64 0}
!88 = !{!"branch_weights", i32 13, i32 8550}
!89 = !{!"function_entry_count", i64 8563}
!90 = !{!"VP", i32 0, i64 1, i64 -3940675483640185030, i64 1}
!91 = !{!"branch_weights", i32 0, i32 8558}
!92 = !{!"branch_weights", i32 8558, i32 0}
!93 = !{!"function_entry_count", i64 8558}
!94 = !{!"branch_weights", i32 8550, i32 8}
!95 = !{!"branch_weights", i32 0, i32 8}
!96 = !{!"VP", i32 0, i64 8, i64 -3940675483640185030, i64 8}
!97 = !{!"function_entry_count", i64 9}
!98 = !{!"branch_weights", i32 9, i32 0}
!99 = !{!"function_entry_count", i64 18640}
!100 = !{!"branch_weights", i32 18640, i32 0}
!101 = !{!"function_entry_count", i64 500}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK14cStringParImpl8evaluateB5cxx11EP10cComponent: argument 0"}
!104 = distinct !{!104, !"_ZNK14cStringParImpl8evaluateB5cxx11EP10cComponent"}
!105 = !{!"branch_weights", i32 246, i32 254}
!106 = !{!"VP", i32 0, i64 254, i64 6347455673684687179, i64 254}
!107 = !{!74, !74, i64 0}
!108 = !{!"branch_weights", i32 1399683, i32 574359}
!109 = !{!"branch_weights", i32 1590758, i32 96, i32 383188}
!110 = !{!"VP", i32 1, i64 198, i64 17, i64 103, i64 32, i64 38, i64 33, i64 32, i64 8, i64 12}
!111 = !{!"function_entry_count", i64 36414}
!112 = !{!"function_entry_count", i64 8}
!113 = !{!"VP", i32 0, i64 8, i64 -845931156451137625, i64 8}
!114 = !{!"VP", i32 0, i64 8, i64 5420087652888093893, i64 8}
!115 = !{!"branch_weights", i32 8, i32 0}
!116 = !{!"function_entry_count", i64 4}
!117 = !{!"branch_weights", i32 4, i32 0}
!118 = !{!"VP", i32 0, i64 4, i64 3871620702652209279, i64 4}
!119 = !{!"VP", i32 0, i64 4, i64 7041740622140808183, i64 4}
!120 = !{!"VP", i32 0, i64 4, i64 -8554648042136898500, i64 4}
!121 = !{!"VP", i32 0, i64 4, i64 2301204176599865746, i64 4}
!122 = !{!"function_entry_count", i64 27813}
!123 = !{!"branch_weights", i32 18084, i32 9729}
!124 = !{!"branch_weights", i32 0, i32 18084}
!125 = !{!"branch_weights", i32 18084, i32 0}
!126 = !{!"branch_weights", i32 496, i32 17588}
!127 = !{!"VP", i32 1, i64 17588, i64 4, i64 17098, i64 9, i64 490}
!128 = !{!"branch_weights", i32 17588, i32 0}
!129 = !{!"function_entry_count", i64 192538233}
!130 = !{!78, !70, i64 8}
!131 = !{!"branch_weights", i32 0, i32 192538233}
!132 = !{!"function_entry_count", i64 235321}
!133 = !{!"VP", i32 0, i64 235321, i64 8390818187414654894, i64 137428, i64 -1846066915438621208, i64 97893}
!134 = !{!"function_entry_count", i64 26398}
!135 = !{!"function_entry_count", i64 19696}
!136 = !{!"function_entry_count", i64 274856}
!137 = !{!"function_entry_count", i64 311706}
!138 = !{!"function_entry_count", i64 266736}
!139 = !{!"function_entry_count", i64 213700}
!140 = !{!"function_entry_count", i64 49}
!141 = !{!"branch_weights", i32 3, i32 46}
!142 = !{!"function_entry_count", i64 41949}
!143 = !{!"branch_weights", i32 5029, i32 36920}
!144 = !{!"function_entry_count", i64 157511}
!145 = !{!"branch_weights", i32 81216, i32 76295}
!146 = !{!"function_entry_count", i64 1}
!147 = !{!"branch_weights", i32 1, i32 0}
!148 = !{!149, !151, i64 8}
!149 = !{!"_ZTS10cException", !150, i64 0, !151, i64 8, !73, i64 16, !152, i64 48, !73, i64 56, !73, i64 88, !151, i64 120}
!150 = !{!"_ZTSSt9exception"}
!151 = !{!"int", !71, i64 0}
!152 = !{!"bool", !71, i64 0}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!155 = distinct !{!155, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!158 = distinct !{!158, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!159 = !{!149, !152, i64 48}
!160 = !{i8 0, i8 2}
!161 = !{}
!162 = !{!149, !151, i64 120}
!163 = !{!"branch_weights", i32 1257662, i32 631781}
!164 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!165 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!166 = !{!"VP", i32 0, i64 8558, i64 -1846066915438621208, i64 8558}
!167 = !{!"VP", i32 0, i64 8558, i64 5461257039155346105, i64 8558}
!168 = !{!"function_entry_count", i64 1973796}
!169 = !{!"VP", i32 1, i64 1590559, i64 17, i64 829280, i64 32, i64 306985, i64 33, i64 262229, i64 8, i64 98087}
!170 = !{!"simulator/cstringparimpl.cc;_GLOBAL__sub_I_cstringparimpl.cc"}
