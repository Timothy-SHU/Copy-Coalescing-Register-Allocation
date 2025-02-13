; ModuleID = 'simulator/cxmlparimpl.cc'
source_filename = "simulator/cxmlparimpl.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.cObject = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%class.cXMLParImpl = type { %class.cParImpl, ptr, ptr }
%class.cParImpl = type { %class.cNamedObject.base, ptr }
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%struct._Guard = type { ptr }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK11cXMLParImpl3dupEv = comdat any

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

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

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

$_ZN11cXMLParImplC2ERKS_ = comdat any

$_ZN12cNamedObject7setFlagEib = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZTV11cXMLParImpl = dso_local unnamed_addr constant { [56 x ptr] } { [56 x ptr] [ptr null, ptr @_ZTI11cXMLParImpl, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN11cXMLParImplD2Ev, ptr @_ZN11cXMLParImplD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK8cParImpl4infoB5cxx11Ev, ptr @_ZNK11cXMLParImpl12detailedInfoB5cxx11Ev, ptr @_ZNK11cXMLParImpl3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN11cXMLParImpl10parsimPackEP11cCommBuffer, ptr @_ZN11cXMLParImpl12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZNK11cXMLParImpl7getTypeEv, ptr @_ZNK11cXMLParImpl9isNumericEv, ptr @_ZNK8cParImpl10isVolatileEv, ptr @_ZNK8cParImpl12isExpressionEv, ptr @_ZNK8cParImpl8isSharedEv, ptr @_ZNK8cParImpl13containsValueEv, ptr @_ZNK8cParImpl5isSetEv, ptr @_ZN8cParImpl13setIsVolatileEb, ptr @_ZN8cParImpl11setIsSharedEb, ptr @_ZN8cParImpl8setIsSetEb, ptr @_ZNK8cParImpl7getUnitEv, ptr @_ZN8cParImpl7setUnitEPKc, ptr @_ZN11cXMLParImpl12setBoolValueEb, ptr @_ZN11cXMLParImpl12setLongValueEl, ptr @_ZN11cXMLParImpl14setDoubleValueEd, ptr @_ZN11cXMLParImpl14setStringValueEPKc, ptr @_ZN8cParImpl14setStringValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN11cXMLParImpl11setXMLValueEP11cXMLElement, ptr @_ZN11cXMLParImpl13setExpressionEP11cExpression, ptr @_ZNK11cXMLParImpl9boolValueEP10cComponent, ptr @_ZNK11cXMLParImpl9longValueEP10cComponent, ptr @_ZNK11cXMLParImpl11doubleValueEP10cComponent, ptr @_ZNK11cXMLParImpl11stringValueEP10cComponent, ptr @_ZNK11cXMLParImpl14stdstringValueB5cxx11EP10cComponent, ptr @_ZNK11cXMLParImpl8xmlValueEP10cComponent, ptr @_ZNK11cXMLParImpl13getExpressionEv, ptr @_ZN11cXMLParImpl14convertToConstEP10cComponent, ptr @_ZNK8cParImpl27containsConstSubexpressionsEv, ptr @_ZN8cParImpl27evaluateConstSubexpressionsEP10cComponent, ptr @_ZNK11cXMLParImpl3strB5cxx11Ev, ptr @_ZN11cXMLParImpl5parseEPKc, ptr @_ZNK11cXMLParImpl7compareEPK8cParImpl] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS11cXMLParImpl = dso_local constant [14 x i8] c"11cXMLParImpl\00", align 1
@_ZTI8cParImpl = external constant ptr
@_ZTI11cXMLParImpl = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11cXMLParImpl, ptr @_ZTI8cParImpl }, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [13 x i8] c"<expression>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"XML\00", align 1
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"int/long\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"> from \00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cxmlparimpl.cc, ptr null }]

@_ZN11cXMLParImplC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11cXMLParImplC2Ev
@_ZN11cXMLParImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11cXMLParImplD2Ev

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11cXMLParImplD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11cXMLParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 !prof !60 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.12, ptr %3, !prof !68
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZNK8cParImpl4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11cXMLParImpl12detailedInfoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::allocator", align 1
  %5 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !73
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
          to label %20 unwind label %24

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.cXMLParImpl, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4) #19
          to label %19 unwind label %22

15:                                               ; preds = %10
  %16 = load ptr, ptr %12, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %16, i64 25
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %12) #19
  br label %21

19:                                               ; preds = %14
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  br label %21

20:                                               ; preds = %9
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br label %21

21:                                               ; preds = %15, %19, %20
  ret void

22:                                               ; preds = %14
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  br label %26

24:                                               ; preds = %9
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br label %26

26:                                               ; preds = %22, %24
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11cXMLParImpl3dupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21
  invoke void @_ZN11cXMLParImplC2ERKS_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0) #19
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11cXMLParImpl10parsimPackEP11cCommBuffer(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11cXMLParImpl12parsimUnpackEP11cCommBuffer(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 !prof !72 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !72 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !77 {
  ret i1 false
}

; Function Attrs: optsize
declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !73
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11cXMLParImpl7getTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !72 {
  ret i32 88
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11cXMLParImpl9isNumericEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !72 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl10isVolatileEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !73
  %4 = and i16 %3, 4
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl12isExpressionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !73
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl8isSharedEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !73
  %4 = and i16 %3, 16
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl13containsValueEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !73
  %4 = and i16 %3, 32
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8cParImpl5isSetEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !prof !82 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !73
  %4 = and i16 %3, 64
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN8cParImpl13setIsVolatileEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !83 {
  tail call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 4, i1 noundef zeroext %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8cParImpl11setIsSharedEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !84 {
  tail call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 16, i1 noundef zeroext %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8cParImpl8setIsSetEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !85 {
  tail call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 64, i1 noundef zeroext %1) #19
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK8cParImpl7getUnitEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN8cParImpl7setUnitEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11cXMLParImpl12setBoolValueEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 zeroext %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #19
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
define dso_local void @_ZN11cXMLParImpl12setLongValueEl(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4) #19
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
define dso_local void @_ZN11cXMLParImpl14setDoubleValueEd(ptr noundef nonnull align 8 dereferenceable(48) %0, double %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4) #19
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
define dso_local void @_ZN11cXMLParImpl14setStringValueEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #19
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
define linkonce_odr dso_local void @_ZN8cParImpl14setStringValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 !prof !72 {
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !70
  %5 = getelementptr inbounds ptr, ptr %4, i64 37
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11cXMLParImpl11setXMLValueEP11cXMLElement(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !72 {
  tail call void @_ZN11cXMLParImpl9deleteOldEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %3 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !73
  %6 = or i16 %5, 96
  store i16 %6, ptr %4, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11cXMLParImpl13setExpressionEP11cExpression(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !72 {
  tail call void @_ZN11cXMLParImpl9deleteOldEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %3 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !73
  %6 = or i16 %5, 104
  store i16 %6, ptr %4, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11cXMLParImpl9boolValueEP10cComponent(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #19
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
define dso_local noundef i64 @_ZNK11cXMLParImpl9longValueEP10cComponent(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #19
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
define dso_local noundef double @_ZNK11cXMLParImpl11doubleValueEP10cComponent(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #19
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
define dso_local noalias noundef nonnull ptr @_ZNK11cXMLParImpl11stringValueEP10cComponent(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #19
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
define dso_local void @_ZNK11cXMLParImpl14stdstringValueB5cxx11EP10cComponent(ptr dead_on_unwind noalias nocapture readnone sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nocapture readnone %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #19
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #22
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11cXMLParImpl8xmlValueEP10cComponent(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !72 {
  %3 = tail call noundef ptr @_ZNK11cXMLParImpl8evaluateEP10cComponent(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11cXMLParImpl13getExpressionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #5 align 2 !prof !72 {
  %2 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cXMLParImpl14convertToConstEP10cComponent(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !70
  %4 = getelementptr inbounds ptr, ptr %3, i64 46
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #19
  %7 = load ptr, ptr %0, align 8, !tbaa !70
  %8 = getelementptr inbounds ptr, ptr %7, i64 39
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #19
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK8cParImpl27containsConstSubexpressionsEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN8cParImpl27evaluateConstSubexpressionsEP10cComponent(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11cXMLParImpl3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"class.std::allocator", align 1
  %8 = getelementptr inbounds %class.cNamedObject, ptr %1, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !73
  %10 = and i16 %9, 8
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.cXMLParImpl, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = getelementptr inbounds ptr, ptr %15, i64 24
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #19
  br label %57

18:                                               ; preds = %2
  %19 = getelementptr inbounds %class.cXMLParImpl, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = icmp eq ptr %20, null
  br i1 %21, label %53, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %6) #19
          to label %23 unwind label %39

23:                                               ; preds = %22
  %24 = load ptr, ptr %19, align 8, !tbaa !74
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds ptr, ptr %25, i64 8
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(192) %24) #19
          to label %29 unwind label %41

29:                                               ; preds = %23
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %28) #19
          to label %30 unwind label %41

30:                                               ; preds = %29
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11) #19
          to label %31 unwind label %43

31:                                               ; preds = %30
  %32 = load ptr, ptr %19, align 8, !tbaa !74
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = getelementptr inbounds ptr, ptr %33, i64 9
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(192) %32) #19
          to label %37 unwind label %45

37:                                               ; preds = %31
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %36) #19
          to label %38 unwind label %45

38:                                               ; preds = %37
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %57

39:                                               ; preds = %22
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %51

41:                                               ; preds = %29, %23
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %49

43:                                               ; preds = %30
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %47

45:                                               ; preds = %37, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %42, %41 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %40, %39 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %58

53:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %7) #19
          to label %54 unwind label %55

54:                                               ; preds = %53
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  br label %57

55:                                               ; preds = %53
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #20
  br label %58

57:                                               ; preds = %54, %38, %12
  ret void

58:                                               ; preds = %55, %51
  %59 = phi { ptr, i32 } [ %52, %51 ], [ %56, %55 ]
  resume { ptr, i32 } %59
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cXMLParImpl5parseEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
  invoke void @_ZN18cDynamicExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %3) #19
          to label %4 unwind label %8

4:                                                ; preds = %2
  %5 = load ptr, ptr %3, align 8, !tbaa !70
  %6 = getelementptr inbounds ptr, ptr %5, i64 25
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef %1) #19
          to label %23 unwind label %10

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %3) #18
  br label %36

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %12 = extractvalue { ptr, i32 } %11, 1
  %13 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #20
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = extractvalue { ptr, i32 } %11, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #20
  %18 = load ptr, ptr %3, align 8, !tbaa !70
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(20) %3) #17
  invoke void @__cxa_rethrow() #22
          to label %41 unwind label %21

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %36 unwind label %38

23:                                               ; preds = %4
  %24 = load ptr, ptr %0, align 8, !tbaa !70
  %25 = getelementptr inbounds ptr, ptr %24, i64 40
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %3) #19
  %27 = load ptr, ptr %3, align 8, !tbaa !70
  %28 = getelementptr inbounds ptr, ptr %27, i64 31
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(20) %3) #19
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load ptr, ptr %0, align 8, !tbaa !70
  %33 = getelementptr inbounds ptr, ptr %32, i64 48
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null) #19
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
  tail call void @__clang_call_terminate(ptr %40) #23
  unreachable

41:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11cXMLParImpl7compareEPK8cParImpl(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !72 {
  %3 = tail call noundef i32 @_ZNK8cParImpl7compareEPKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTI8cParImpl, ptr nonnull @_ZTI11cXMLParImpl, i64 0) #20
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi ptr [ %8, %7 ], [ null, %5 ]
  %11 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !73
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = getelementptr inbounds %class.cXMLParImpl, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = load ptr, ptr %17, align 8, !tbaa !70
  %21 = getelementptr inbounds ptr, ptr %20, i64 26
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19) #19
  br label %33

24:                                               ; preds = %9
  %25 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  %27 = getelementptr inbounds %class.cXMLParImpl, ptr %10, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = icmp eq ptr %26, %28
  %30 = icmp ult ptr %26, %28
  %31 = select i1 %30, i32 -1, i32 1
  %32 = select i1 %29, i32 0, i32 %31
  br label %33

33:                                               ; preds = %15, %24, %2
  %34 = phi i32 [ %3, %2 ], [ %23, %15 ], [ %32, %24 ]
  ret i32 %34
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #6 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #19
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cXMLParImplC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !prof !72 {
  tail call void @_ZN8cParImplC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  store ptr getelementptr inbounds ({ [56 x ptr] }, ptr @_ZTV11cXMLParImpl, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 2
  store ptr null, ptr %2, align 8, !tbaa !74
  ret void
}

; Function Attrs: optsize
declare void @_ZN8cParImplC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11cXMLParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [56 x ptr] }, ptr @_ZTV11cXMLParImpl, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  tail call void @_ZN11cXMLParImpl9deleteOldEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN8cParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11cXMLParImpl9deleteOldEv(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 !prof !72 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !73
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !70
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %14 = load i16, ptr %2, align 8, !tbaa !73
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i16 [ %14, %10 ], [ %3, %6 ]
  %17 = and i16 %16, -9
  store i16 %17, ptr %2, align 8, !tbaa !73
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN8cParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cXMLParImplaSERKS_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 align 2 !prof !72 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  tail call void @_ZN11cXMLParImpl9deleteOldEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8cParImplaSERKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  %6 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !73
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %class.cXMLParImpl, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 11
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #19
  %17 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !86
  br label %22

18:                                               ; preds = %4
  %19 = getelementptr inbounds %class.cXMLParImpl, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !74
  br label %22

22:                                               ; preds = %2, %18, %10
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN8cParImplaSERKS_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #24
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
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #19
  store i64 %6, ptr %4, align 8, !tbaa !89
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !91

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #19
  %10 = load i64, ptr %4, align 8, !tbaa !89
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
  store ptr null, ptr %5, align 8, !tbaa !92
  %15 = load i64, ptr %4, align 8, !tbaa !89
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
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !88 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !94
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
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !88 {
  store ptr %1, ptr %0, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !95

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
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !88 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !88 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
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
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !97
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
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
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5) #19
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !104, !range !105, !noundef !106
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !107
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat !prof !108 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !109 {
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11cXMLParImpl8evaluateEP10cComponent(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !72 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !73
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %1) #19
  br label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.cXMLParImpl, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi ptr [ %13, %7 ], [ %16, %14 ]
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN18cDynamicExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #0

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #15

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: optsize
declare noundef i32 @_ZNK8cParImpl7compareEPKS_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #16

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11cXMLParImplC2ERKS_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN8cParImplC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  store ptr getelementptr inbounds ({ [56 x ptr] }, ptr @_ZTV11cXMLParImpl, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !70
  %3 = load ptr, ptr %1, align 8, !tbaa !70
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(20) %1) #19
          to label %7 unwind label %13

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !70
  %9 = getelementptr inbounds ptr, ptr %8, i64 19
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %6) #19
          to label %11 unwind label %13

11:                                               ; preds = %7
  invoke void @_ZN11cXMLParImplaSERKS_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #19
          to label %12 unwind label %13

12:                                               ; preds = %11
  ret void

13:                                               ; preds = %11, %7, %2
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8cParImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 !prof !110 {
  %4 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !73
  %6 = trunc i32 %1 to i16
  br i1 %2, label %7, label %9, !prof !111

7:                                                ; preds = %3
  %8 = or i16 %5, %6
  br label %12

9:                                                ; preds = %3
  %10 = xor i16 %6, -1
  %11 = and i16 %5, %10
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i16 [ %11, %9 ], [ %8, %7 ]
  store i16 %13, ptr %4, align 8, !tbaa !73
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cxmlparimpl.cc() #6 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(none) }
attributes #16 = { nofree nounwind memory(read) }
attributes #17 = { nounwind optsize }
attributes #18 = { builtin nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { builtin optsize allocsize(0) }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!59}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!36 = !{ptr @_ZN8cParImpl13setIsVolatileEb, ptr @_ZN12cNamedObject7setFlagEib, i64 49}
!37 = !{ptr @_ZN8cParImpl11setIsSharedEb, ptr @_ZN12cNamedObject7setFlagEib, i64 41949}
!38 = !{ptr @_ZN8cParImpl8setIsSetEb, ptr @_ZN12cNamedObject7setFlagEib, i64 157511}
!39 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!40 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!41 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!42 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!43 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!44 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!45 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!46 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!47 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!48 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!49 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!50 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!51 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!52 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!53 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!54 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!55 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!56 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!57 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!58 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 192538233}
!61 = !{!62, !64, i64 8}
!62 = !{!"_ZTS12cNamedObject", !63, i64 0, !64, i64 8, !67, i64 16, !67, i64 18}
!63 = !{!"_ZTS7cObject"}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!"short", !65, i64 0}
!68 = !{!"branch_weights", i32 1, i32 192538234}
!69 = !{!"function_entry_count", i64 235321}
!70 = !{!71, !71, i64 0}
!71 = !{!"vtable pointer", !66, i64 0}
!72 = !{!"function_entry_count", i64 0}
!73 = !{!62, !67, i64 16}
!74 = !{!75, !64, i64 40}
!75 = !{!"_ZTS11cXMLParImpl", !76, i64 0, !64, i64 32, !64, i64 40}
!76 = !{!"_ZTS8cParImpl", !62, i64 0, !64, i64 24}
!77 = !{!"function_entry_count", i64 26398}
!78 = !{!"function_entry_count", i64 19696}
!79 = !{!"function_entry_count", i64 274856}
!80 = !{!"function_entry_count", i64 311706}
!81 = !{!"function_entry_count", i64 266736}
!82 = !{!"function_entry_count", i64 213700}
!83 = !{!"function_entry_count", i64 49}
!84 = !{!"function_entry_count", i64 41949}
!85 = !{!"function_entry_count", i64 157511}
!86 = !{!75, !64, i64 32}
!87 = !{!"function_entry_count", i64 1891507}
!88 = !{!"function_entry_count", i64 1889443}
!89 = !{!90, !90, i64 0}
!90 = !{!"long", !65, i64 0}
!91 = !{!"branch_weights", i32 1257663, i32 631782}
!92 = !{!93, !64, i64 0}
!93 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !64, i64 0}
!94 = !{!64, !64, i64 0}
!95 = !{!"branch_weights", i32 1889444, i32 1}
!96 = !{!"function_entry_count", i64 1}
!97 = !{!98, !100, i64 8}
!98 = !{!"_ZTS10cException", !99, i64 0, !100, i64 8, !101, i64 16, !103, i64 48, !101, i64 56, !101, i64 88, !100, i64 120}
!99 = !{!"_ZTSSt9exception"}
!100 = !{!"int", !65, i64 0}
!101 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !102, i64 0, !90, i64 8, !65, i64 16}
!102 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !64, i64 0}
!103 = !{!"bool", !65, i64 0}
!104 = !{!98, !103, i64 48}
!105 = !{i8 0, i8 2}
!106 = !{}
!107 = !{!98, !100, i64 120}
!108 = !{!"function_entry_count", i64 2}
!109 = !{!"function_entry_count", i64 2107073}
!110 = !{!"function_entry_count", i64 202993470}
!111 = !{!"branch_weights", i32 380268, i32 202613204}
