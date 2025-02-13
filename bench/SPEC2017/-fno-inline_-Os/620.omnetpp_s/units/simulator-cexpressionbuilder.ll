; ModuleID = 'simulator/cexpressionbuilder.cc'
source_filename = "simulator/cexpressionbuilder.cc"
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
%class.cExpressionBuilder = type { i8, ptr, i32, i32 }
%"class.cDynamicExpression::Elem" = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { double, ptr }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }
%struct._Guard = type { ptr }
%class.OperatorElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%class.FunctionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.IdentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.NEDSupport::XMLDoc" = type <{ %"class.cDynamicExpression::Functor", i8, [7 x i8] }>
%"class.cDynamicExpression::Functor" = type { %class.cObject }
%class.cObject = type { ptr }
%"class.NEDSupport::LoopVar" = type { %"class.cDynamicExpression::Functor", %"class.std::__cxx11::basic_string" }
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

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

$__clang_call_terminate = comdat any

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

$_ZNK15OperatorElement7getNameEv = comdat any

$_ZN18cDynamicExpression4ElemaSENS_6OpTypeE = comdat any

$_ZNK15FunctionElement7getNameEv = comdat any

$_ZN18cDynamicExpression4ElemaSEPNS_7FunctorE = comdat any

$_ZNK12IdentElement7getNameEv = comdat any

$_ZNK12IdentElement9getModuleEv = comdat any

$_Z11opp_isemptyPKc = comdat any

$_ZN10NEDSupport6XMLDocC2Eb = comdat any

$_ZN18cDynamicExpression4ElemaSEP13cMathFunction = comdat any

$_ZN18cDynamicExpression4Elem3setEP12cNEDFunctioni = comdat any

$_ZN18cDynamicExpression7FunctorC2Ev = comdat any

$_ZN7cObjectC2Ev = comdat any

$_ZN18cDynamicExpression7FunctorD0Ev = comdat any

$_ZNK7cObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK7cObject8getOwnerEv = comdat any

$_ZNK7cObject13isOwnedObjectEv = comdat any

$_ZNK18cDynamicExpression7Functor10getNumArgsEv = comdat any

$_ZN10NEDSupport7LoopVar11getVarNamesEv = comdat any

$_ZN10NEDSupport7LoopVar10getNumVarsEv = comdat any

$_ZN10NEDSupport7LoopVarC2EPKc = comdat any

$_ZNK14LiteralElement8getValueEv = comdat any

$_ZNK14LiteralElement7getTypeEv = comdat any

$_ZN18cDynamicExpression4ElemaSEb = comdat any

$_ZN18cDynamicExpression4ElemaSEl = comdat any

$_ZN18cDynamicExpression4ElemaSEd = comdat any

$_ZN18cDynamicExpression4Elem7setUnitEPKc = comdat any

$_ZNK14LiteralElement7getUnitEv = comdat any

$_ZN18cDynamicExpression4ElemaSEPKc = comdat any

$_ZN18cDynamicExpression4ElemC2Ev = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

$_ZTVN18cDynamicExpression7FunctorE = comdat any

$_ZTSN18cDynamicExpression7FunctorE = comdat any

$_ZTIN18cDynamicExpression7FunctorE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [20 x i8] c"Expression too long\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Unexpected tag in expression: %s\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Unexpected operator %s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"?:\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.30 = private unnamed_addr constant [59 x i8] c"`index' operator is only supported in submodule parameters\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"`const' operator: not yet supported\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.35 = private unnamed_addr constant [64 x i8] c"dynamic module builder: sizeof(module.ident): not yet supported\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"xmldoc\00", align 1
@.str.37 = private unnamed_addr constant [82 x i8] c"Function %s with %d args not found (Define_NED_Function() missing from C++ code?)\00", align 1
@_ZTVN10NEDSupport6XMLDocE = external unnamed_addr constant { [26 x ptr] }, align 8
@_ZTVN18cDynamicExpression7FunctorE = linkonce_odr dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTIN18cDynamicExpression7FunctorE, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN7cObjectD2Ev, ptr @_ZN18cDynamicExpression7FunctorD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK7cObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @__cxa_pure_virtual, ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTSN18cDynamicExpression7FunctorE = linkonce_odr dso_local constant [31 x i8] c"N18cDynamicExpression7FunctorE\00", comdat, align 1
@_ZTI7cObject = external constant ptr
@_ZTIN18cDynamicExpression7FunctorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN18cDynamicExpression7FunctorE, ptr @_ZTI7cObject }, comdat, align 8
@_ZTV7cObject = external unnamed_addr constant { [21 x ptr] }, align 8
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN10NEDSupport7LoopVar8varNamesE = external global [32 x ptr], align 16
@_ZN10NEDSupport7LoopVar8varCountE = external local_unnamed_addr global i32, align 4
@_ZTVN10NEDSupport7LoopVarE = external unnamed_addr constant { [26 x ptr] }, align 8
@.str.39 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Internal error: wrong constant type\00", align 1
@_ZN18cDynamicExpression4Elem10stringPoolE = external global %class.cStringPool, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cexpressionbuilder.cc, ptr null }]

@_ZN18cExpressionBuilderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18cExpressionBuilderC2Ev
@_ZN18cExpressionBuilderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18cExpressionBuilderD2Ev

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18cExpressionBuilderC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !127 {
  %2 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN18cExpressionBuilderD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !127 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %3 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !136
  %5 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !137
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %13, !prof !138

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str) #16
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %33

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 8, !tbaa !139
  %15 = getelementptr inbounds ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(112) %1) #16
  switch i32 %17, label %22 [
    i32 31, label %18
    i32 32, label %19
    i32 33, label %20
    i32 34, label %21
  ], !prof !141

18:                                               ; preds = %13
  tail call void @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #16
  br label %32

19:                                               ; preds = %13
  tail call void @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #16
  br label %32

20:                                               ; preds = %13
  tail call void @_ZN18cExpressionBuilder7doIdentEP12IdentElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #16
  br label %32

21:                                               ; preds = %13
  tail call void @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #16
  br label %32

22:                                               ; preds = %13
  %23 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  %24 = load ptr, ptr %1, align 8, !tbaa !139
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(112) %1) #16
          to label %28 unwind label %30

28:                                               ; preds = %22
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %23, ptr noundef nonnull @.str.1, ptr noundef %27) #16
          to label %29 unwind label %30

29:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

30:                                               ; preds = %28, %22
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %33

32:                                               ; preds = %21, %20, %19, %18
  ret void

33:                                               ; preds = %30, %11
  %34 = phi ptr [ %23, %30 ], [ %9, %11 ]
  %35 = phi { ptr, i32 } [ %31, %30 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %34) #17
  resume { ptr, i32 } %35
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = load ptr, ptr %1, align 8, !tbaa !139
  %4 = getelementptr inbounds ptr, ptr %3, i64 23
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(112) %1) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15, !prof !143

8:                                                ; preds = %15, %2
  %9 = tail call noundef ptr @_ZNK15OperatorElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #16
  %10 = load ptr, ptr %1, align 8, !tbaa !139
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %1) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %22, !prof !144

15:                                               ; preds = %2, %15
  %16 = phi ptr [ %20, %15 ], [ %6, %2 ]
  tail call void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %16) #16
  %17 = load ptr, ptr %16, align 8, !tbaa !139
  %18 = getelementptr inbounds ptr, ptr %17, i64 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(112) %16) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %8, label %15, !prof !145, !llvm.loop !146

22:                                               ; preds = %8
  %23 = load ptr, ptr %13, align 8, !tbaa !139
  %24 = getelementptr inbounds ptr, ptr %23, i64 25
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(112) %13) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %42, !prof !148

28:                                               ; preds = %8, %22
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.5) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %121, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.6) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %121, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.7) #19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %121, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %38, ptr noundef nonnull @.str.8, ptr noundef %9) #16
          to label %39 unwind label %40

39:                                               ; preds = %37
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %130

42:                                               ; preds = %22
  %43 = load ptr, ptr %26, align 8, !tbaa !139
  %44 = getelementptr inbounds ptr, ptr %43, i64 25
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(112) %26) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %113, !prof !149

48:                                               ; preds = %42
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.9) #19
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %121, label %51, !prof !150

51:                                               ; preds = %48
  %52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.5) #19
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %121, label %54, !prof !151

54:                                               ; preds = %51
  %55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.10) #19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %121, label %57, !prof !152

57:                                               ; preds = %54
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.11) #19
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %121, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.12) #19
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %121, label %63

63:                                               ; preds = %60
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.13) #19
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %121, label %66

66:                                               ; preds = %63
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.14) #19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %121, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.15) #19
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %121, label %72

72:                                               ; preds = %69
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.16) #19
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %121, label %75

75:                                               ; preds = %72
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.17) #19
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %121, label %78

78:                                               ; preds = %75
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.18) #19
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %121, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.19) #19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %121, label %84

84:                                               ; preds = %81
  %85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.20) #19
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %84
  %88 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.21) #19
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %121, label %90

90:                                               ; preds = %87
  %91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.22) #19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %121, label %93

93:                                               ; preds = %90
  %94 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.23) #19
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %121, label %96

96:                                               ; preds = %93
  %97 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.24) #19
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %121, label %99

99:                                               ; preds = %96
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.25) #19
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %121, label %102

102:                                              ; preds = %99
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.26) #19
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %102
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.27) #19
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %105
  %109 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %109, ptr noundef nonnull @.str.8, ptr noundef %9) #16
          to label %110 unwind label %111

110:                                              ; preds = %108
  tail call void @__cxa_throw(ptr nonnull %109, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

111:                                              ; preds = %108
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %130

113:                                              ; preds = %42
  %114 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.28) #19
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %117, ptr noundef nonnull @.str.8, ptr noundef %9) #16
          to label %118 unwind label %119

118:                                              ; preds = %116
  tail call void @__cxa_throw(ptr nonnull %117, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

119:                                              ; preds = %116
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %130

121:                                              ; preds = %113, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %34, %31, %28
  %122 = phi i32 [ 6, %28 ], [ 17, %31 ], [ 21, %34 ], [ 0, %48 ], [ 1, %51 ], [ 2, %54 ], [ 3, %57 ], [ 4, %60 ], [ 5, %63 ], [ 7, %66 ], [ 8, %69 ], [ 11, %72 ], [ 12, %75 ], [ 9, %78 ], [ 10, %81 ], [ 14, %84 ], [ 15, %87 ], [ 16, %90 ], [ 18, %93 ], [ 19, %96 ], [ 20, %99 ], [ 22, %102 ], [ 23, %105 ], [ 13, %113 ]
  %123 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !128
  %125 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !136
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %125, align 8, !tbaa !136
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %124, i64 %128
  tail call void @_ZN18cDynamicExpression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(24) %129, i32 noundef %122) #16
  ret void

130:                                              ; preds = %119, %111, %40
  %131 = phi ptr [ %117, %119 ], [ %109, %111 ], [ %38, %40 ]
  %132 = phi { ptr, i32 } [ %120, %119 ], [ %112, %111 ], [ %41, %40 ]
  tail call void @__cxa_free_exception(ptr %131) #17
  resume { ptr, i32 } %132
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !153 {
  %3 = tail call noundef ptr @_ZNK15FunctionElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #16
  %4 = load ptr, ptr %1, align 8, !tbaa !139
  %5 = getelementptr inbounds ptr, ptr %4, i64 32
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(112) %1) #16
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(6) @.str.29) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30, !prof !154

10:                                               ; preds = %2
  %11 = load i8, ptr %0, align 8, !tbaa !155, !range !156, !noundef !157
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull @.str.30) #16
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #17
  br label %148

18:                                               ; preds = %10
  %19 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
  invoke void @_ZN10NEDSupport11ModuleIndexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #16
          to label %20 unwind label %28

20:                                               ; preds = %18
  %21 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !128
  %23 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !136
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !136
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %22, i64 %26
  tail call void @_ZN18cDynamicExpression4ElemaSEPNS_7FunctorE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull %19) #16
  br label %147

28:                                               ; preds = %18
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %19) #21
  br label %148

30:                                               ; preds = %2
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(6) @.str.31) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38, !prof !154

33:                                               ; preds = %30
  %34 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %34, ptr noundef nonnull @.str.32) #16
          to label %35 unwind label %36

35:                                               ; preds = %33
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

36:                                               ; preds = %33
  %37 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %34) #17
  br label %148

38:                                               ; preds = %30
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str.33) #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %83, !prof !158

41:                                               ; preds = %38
  %42 = load ptr, ptr %1, align 8, !tbaa !139
  %43 = getelementptr inbounds ptr, ptr %42, i64 40
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(144) %1) #16
  %46 = tail call noundef ptr @_ZNK12IdentElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(176) %45) #16
  %47 = tail call noundef ptr @_ZNK12IdentElement9getModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %45) #16
  %48 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %47) #16
  br i1 %48, label %49, label %63, !prof !158

49:                                               ; preds = %41
  %50 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20
  %51 = load i8, ptr %0, align 8, !tbaa !155, !range !156, !noundef !157
  %52 = icmp ne i8 %51, 0
  invoke void @_ZN10NEDSupport6SizeofC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef %46, i1 noundef zeroext %52, i1 noundef zeroext false) #16
          to label %53 unwind label %61

53:                                               ; preds = %49
  %54 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !128
  %56 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !136
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !136
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %55, i64 %59
  tail call void @_ZN18cDynamicExpression4ElemaSEPNS_7FunctorE(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull %50) #16
  br label %147

61:                                               ; preds = %49
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %50) #21
  br label %148

63:                                               ; preds = %41
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(5) @.str.34) #19
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20
  invoke void @_ZN10NEDSupport6SizeofC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %67, ptr noundef %46, i1 noundef zeroext false, i1 noundef zeroext true) #16
          to label %68 unwind label %76

68:                                               ; preds = %66
  %69 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !128
  %71 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !136
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !136
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %70, i64 %74
  tail call void @_ZN18cDynamicExpression4ElemaSEPNS_7FunctorE(ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef nonnull %67) #16
  br label %147

76:                                               ; preds = %66
  %77 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %67) #21
  br label %148

78:                                               ; preds = %63
  %79 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %79, ptr noundef nonnull @.str.35) #16
          to label %80 unwind label %81

80:                                               ; preds = %78
  tail call void @__cxa_throw(ptr nonnull %79, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

81:                                               ; preds = %78
  %82 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %79) #17
  br label %148

83:                                               ; preds = %38
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str.36) #19
  %85 = icmp eq i32 %84, 0
  %86 = load ptr, ptr %1, align 8, !tbaa !139
  %87 = getelementptr inbounds ptr, ptr %86, i64 23
  %88 = load ptr, ptr %87, align 8
  %89 = tail call noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(112) %1) #16
  %90 = icmp eq ptr %89, null
  br i1 %85, label %91, label %112

91:                                               ; preds = %83
  br i1 %90, label %92, label %95

92:                                               ; preds = %95, %91
  %93 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
  %94 = icmp eq i32 %7, 2
  invoke void @_ZN10NEDSupport6XMLDocC2Eb(ptr noundef nonnull align 8 dereferenceable(9) %93, i1 noundef zeroext %94) #16
          to label %102 unwind label %110

95:                                               ; preds = %91, %95
  %96 = phi ptr [ %100, %95 ], [ %89, %91 ]
  tail call void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %96) #16
  %97 = load ptr, ptr %96, align 8, !tbaa !139
  %98 = getelementptr inbounds ptr, ptr %97, i64 25
  %99 = load ptr, ptr %98, align 8
  %100 = tail call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(112) %96) #16
  %101 = icmp eq ptr %100, null
  br i1 %101, label %92, label %95, !llvm.loop !159

102:                                              ; preds = %92
  %103 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !128
  %105 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %106 = load i32, ptr %105, align 8, !tbaa !136
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %105, align 8, !tbaa !136
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %104, i64 %108
  tail call void @_ZN18cDynamicExpression4ElemaSEPNS_7FunctorE(ptr noundef nonnull align 8 dereferenceable(24) %109, ptr noundef nonnull %93) #16
  br label %147

110:                                              ; preds = %92
  %111 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %93) #21
  br label %148

112:                                              ; preds = %83
  br i1 %90, label %113, label %117

113:                                              ; preds = %117, %112
  %114 = tail call noundef ptr @_ZN13cMathFunction4findEPKci(ptr noundef %3, i32 noundef %7) #16
  %115 = tail call noundef ptr @_ZN12cNEDFunction4findEPKci(ptr noundef %3, i32 noundef %7) #16
  %116 = icmp eq ptr %114, null
  br i1 %116, label %132, label %124

117:                                              ; preds = %112, %117
  %118 = phi ptr [ %122, %117 ], [ %89, %112 ]
  tail call void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %118) #16
  %119 = load ptr, ptr %118, align 8, !tbaa !139
  %120 = getelementptr inbounds ptr, ptr %119, i64 25
  %121 = load ptr, ptr %120, align 8
  %122 = tail call noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(112) %118) #16
  %123 = icmp eq ptr %122, null
  br i1 %123, label %113, label %117, !llvm.loop !160

124:                                              ; preds = %113
  %125 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !128
  %127 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !136
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %127, align 8, !tbaa !136
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %126, i64 %130
  tail call void @_ZN18cDynamicExpression4ElemaSEP13cMathFunction(ptr noundef nonnull align 8 dereferenceable(24) %131, ptr noundef nonnull %114) #16
  br label %147

132:                                              ; preds = %113
  %133 = icmp eq ptr %115, null
  br i1 %133, label %142, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !128
  %137 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %138 = load i32, ptr %137, align 8, !tbaa !136
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %137, align 8, !tbaa !136
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %136, i64 %140
  tail call void @_ZN18cDynamicExpression4Elem3setEP12cNEDFunctioni(ptr noundef nonnull align 8 dereferenceable(24) %141, ptr noundef nonnull %115, i32 noundef %7) #16
  br label %147

142:                                              ; preds = %132
  %143 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %143, ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %7) #16
          to label %144 unwind label %145

144:                                              ; preds = %142
  tail call void @__cxa_throw(ptr nonnull %143, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

145:                                              ; preds = %142
  %146 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %143) #17
  br label %148

147:                                              ; preds = %124, %134, %53, %68, %102, %20
  ret void

148:                                              ; preds = %61, %76, %81, %145, %110, %36, %28, %16
  %149 = phi { ptr, i32 } [ %146, %145 ], [ %111, %110 ], [ %37, %36 ], [ %29, %28 ], [ %17, %16 ], [ %62, %61 ], [ %77, %76 ], [ %82, %81 ]
  resume { ptr, i32 } %149
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18cExpressionBuilder7doIdentEP12IdentElement(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = tail call noundef ptr @_ZNK12IdentElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #16
  %4 = tail call noundef ptr @_ZNK12IdentElement9getModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %1) #16
  %5 = load ptr, ptr %1, align 8, !tbaa !139
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(112) %1) #16
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %15, !prof !162

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !139
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(112) %1) #16
  tail call void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %14) #16
  br label %15

15:                                               ; preds = %10, %2
  %16 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %4) #16
  br i1 %16, label %17, label %23, !prof !163

17:                                               ; preds = %15
  %18 = tail call noundef zeroext i1 @_ZN18cExpressionBuilder9isLoopVarEPKc(ptr nonnull align 8 poison, ptr noundef %3) #16
  br i1 %18, label %19, label %23, !prof !164

19:                                               ; preds = %17
  %20 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20
  invoke void @_ZN10NEDSupport7LoopVarC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef %3) #16
          to label %44 unwind label %21

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %53

23:                                               ; preds = %17, %15
  %24 = tail call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %4) #16
  br i1 %24, label %25, label %31, !prof !165

25:                                               ; preds = %23
  %26 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20
  %27 = load i8, ptr %0, align 8, !tbaa !155, !range !156, !noundef !157
  %28 = icmp ne i8 %27, 0
  invoke void @_ZN10NEDSupport12ParameterRefC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef %3, i1 noundef zeroext %28, i1 noundef zeroext false) #16
          to label %44 unwind label %29

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %53

31:                                               ; preds = %23
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(5) @.str.34) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38, !prof !166

34:                                               ; preds = %31
  %35 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20
  invoke void @_ZN10NEDSupport12ParameterRefC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext true) #16
          to label %44 unwind label %36

36:                                               ; preds = %34
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %53

38:                                               ; preds = %31
  %39 = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20
  %40 = load i8, ptr %0, align 8, !tbaa !155, !range !156, !noundef !157
  %41 = icmp ne i8 %40, 0
  invoke void @_ZN10NEDSupport25SiblingModuleParameterRefC1EPKcS2_bb(ptr noundef nonnull align 8 dereferenceable(88) %39, ptr noundef %4, ptr noundef %3, i1 noundef zeroext %41, i1 noundef zeroext %9) #16
          to label %44 unwind label %42

42:                                               ; preds = %38
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %53

44:                                               ; preds = %38, %34, %25, %19
  %45 = phi ptr [ %20, %19 ], [ %26, %25 ], [ %35, %34 ], [ %39, %38 ]
  %46 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !128
  %48 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !136
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %48, align 8, !tbaa !136
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %47, i64 %51
  tail call void @_ZN18cDynamicExpression4ElemaSEPNS_7FunctorE(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull %45) #16
  ret void

53:                                               ; preds = %42, %36, %29, %21
  %54 = phi ptr [ %39, %42 ], [ %35, %36 ], [ %26, %29 ], [ %20, %21 ]
  %55 = phi { ptr, i32 } [ %43, %42 ], [ %37, %36 ], [ %30, %29 ], [ %22, %21 ]
  tail call void @_ZdlPv(ptr noundef nonnull %54) #21
  resume { ptr, i32 } %55
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !167 {
  %3 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #16
  %4 = tail call noundef i32 @_ZNK14LiteralElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #16
  switch i32 %4, label %50 [
    i32 3, label %5
    i32 1, label %15
    i32 0, label %25
    i32 2, label %41
  ], !prof !168

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(5) @.str.39) #19
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !136
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !136
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %9, i64 %13
  tail call void @_ZN18cDynamicExpression4ElemaSEb(ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext %7) #16
  br label %55

15:                                               ; preds = %2
  %16 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #16
  %17 = tail call noundef i64 @_Z8opp_atolPKc(ptr noundef %16) #16
  %18 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !136
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !136
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %19, i64 %23
  tail call void @_ZN18cDynamicExpression4ElemaSEl(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 noundef %17) #16
  br label %55

25:                                               ; preds = %2
  %26 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #16
  %27 = tail call noundef double @_Z8opp_atofPKc(ptr noundef %26) #16
  %28 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !128
  %30 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !136
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !136
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %29, i64 %33
  tail call void @_ZN18cDynamicExpression4ElemaSEd(ptr noundef nonnull align 8 dereferenceable(24) %34, double noundef %27) #16
  %35 = load ptr, ptr %28, align 8, !tbaa !128
  %36 = load i32, ptr %30, align 8, !tbaa !136
  %37 = sext i32 %36 to i64
  %38 = getelementptr %"class.cDynamicExpression::Elem", ptr %35, i64 %37
  %39 = getelementptr %"class.cDynamicExpression::Elem", ptr %38, i64 -1
  %40 = tail call noundef ptr @_ZNK14LiteralElement7getUnitEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #16
  tail call void @_ZN18cDynamicExpression4Elem7setUnitEPKc(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef %40) #16
  br label %55

41:                                               ; preds = %2
  %42 = tail call noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %1) #16
  %43 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !128
  %45 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !136
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !136
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %44, i64 %48
  tail call void @_ZN18cDynamicExpression4ElemaSEPKc(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef %42) #16
  br label %55

50:                                               ; preds = %2
  %51 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %51, ptr noundef nonnull @.str.40) #16
          to label %52 unwind label %53

52:                                               ; preds = %50
  tail call void @__cxa_throw(ptr nonnull %51, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

53:                                               ; preds = %50
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %51) #17
  resume { ptr, i32 } %54

55:                                               ; preds = %41, %25, %15, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8 align 2

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #8 comdat align 2 !prof !169 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !139
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #22
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #8 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #8 comdat align 2 !prof !169 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !170 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #20
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #16
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #21
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #8 comdat align 2 !prof !170 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !171
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !170 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !170 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #16
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2) #16
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #16
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #22
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #22
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #22
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #22
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #8 comdat align 2 !prof !169 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !177, !range !156, !noundef !157
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #8 comdat align 2 !prof !170 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #8 comdat align 2 !prof !170 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #8 comdat align 2 !prof !170 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !178
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #8 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat !prof !179 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !180 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #24
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
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #8 comdat align 2 !prof !181 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #8 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !182 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #16
  store i64 %6, ptr %4, align 8, !tbaa !183
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !184

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #16
  %10 = load i64, ptr %4, align 8, !tbaa !183
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #16
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #22
  store ptr null, ptr %5, align 8, !tbaa !185
  %15 = load i64, ptr %4, align 8, !tbaa !183
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #16
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !182 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !187
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #16
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 !prof !182 {
  store ptr %1, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %2 = load ptr, ptr %0, align 8, !tbaa !185
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !188

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
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat !prof !182 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #8 comdat !prof !182 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15OperatorElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 comdat align 2 !prof !189 {
  %2 = getelementptr inbounds %class.OperatorElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 !prof !190 {
  store i32 8, ptr %0, align 8, !tbaa !191
  %3 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15FunctionElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #8 comdat align 2 !prof !195 {
  %2 = getelementptr inbounds %class.FunctionElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN10NEDSupport11ModuleIndexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression4ElemaSEPNS_7FunctorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !196 {
  store i32 7, ptr %0, align 8, !tbaa !191
  %3 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12IdentElement7getNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #8 comdat align 2 !prof !196 {
  %2 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12IdentElement9getModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #8 comdat align 2 !prof !196 {
  %2 = getelementptr inbounds %class.IdentElement, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %0) local_unnamed_addr #8 comdat !prof !197 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !198

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !194
  %5 = icmp eq i8 %4, 0
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ true, %1 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: optsize
declare void @_ZN10NEDSupport6SizeofC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport6XMLDocC2Eb(ptr noundef nonnull align 8 dereferenceable(9) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 !prof !170 {
  %3 = zext i1 %1 to i8
  tail call void @_ZN18cDynamicExpression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport6XMLDocE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !139
  %4 = getelementptr inbounds %"class.NEDSupport::XMLDoc", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !199
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN13cMathFunction4findEPKci(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN12cNEDFunction4findEPKci(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression4ElemaSEP13cMathFunction(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !170 {
  store i32 5, ptr %0, align 8, !tbaa !191
  %3 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression4Elem3setEP12cNEDFunctioni(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 !prof !203 {
  store i32 6, ptr %0, align 8, !tbaa !191
  %4 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !194
  %5 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 %2, ptr %5, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN7cObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN18cDynamicExpression7FunctorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7cObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !204 {
  store ptr getelementptr inbounds ({ [21 x ptr] }, ptr @_ZTV7cObject, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !139
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression7FunctorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !170 {
  ret ptr @.str.38
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !205 {
  %2 = load ptr, ptr %0, align 8, !tbaa !139
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cObject4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject3dupEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !170 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !206 {
  ret i1 false
}

; Function Attrs: optsize
declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK18cDynamicExpression7Functor10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !207 {
  %2 = load ptr, ptr %0, align 8, !tbaa !139
  %3 = getelementptr inbounds ptr, ptr %2, i64 19
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #19
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN18cExpressionBuilder9isLoopVarEPKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 align 2 !prof !208 {
  %3 = tail call noundef ptr @_ZN10NEDSupport7LoopVar11getVarNamesEv() #16
  %4 = tail call noundef i32 @_ZN10NEDSupport7LoopVar10getNumVarsEv() #16
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %23, !prof !209

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  %8 = zext nneg i32 %4 to i64
  %9 = load ptr, ptr %3, align 8, !tbaa !187
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12, !prof !210

12:                                               ; preds = %6, %16
  %13 = phi i64 [ %14, %16 ], [ 0, %6 ]
  %14 = add nuw nsw i64 %13, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %21, label %16, !prof !211, !llvm.loop !212

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %3, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !187
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %1) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %12, !prof !213, !llvm.loop !212

21:                                               ; preds = %16, %12
  %22 = icmp ult i64 %14, %7
  br label %23

23:                                               ; preds = %21, %6, %2
  %24 = phi i1 [ false, %2 ], [ true, %6 ], [ %22, %21 ]
  ret i1 %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN10NEDSupport7LoopVar11getVarNamesEv() local_unnamed_addr #8 comdat align 2 !prof !208 {
  ret ptr @_ZN10NEDSupport7LoopVar8varNamesE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN10NEDSupport7LoopVar10getNumVarsEv() local_unnamed_addr #8 comdat align 2 !prof !208 {
  %1 = load i32, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !214
  ret i32 %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport7LoopVarC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !215 {
  tail call void @_ZN18cDynamicExpression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport7LoopVarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !139
  %3 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  %4 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #16
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare void @_ZN10NEDSupport12ParameterRefC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10NEDSupport25SiblingModuleParameterRefC1EPKcS2_bb(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14LiteralElement8getValueEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #8 comdat align 2 !prof !216 {
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 4
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK14LiteralElement7getTypeEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #8 comdat align 2 !prof !217 {
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !218
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression4ElemaSEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #8 comdat align 2 !prof !222 {
  %3 = zext i1 %1 to i8
  store i32 1, ptr %0, align 8, !tbaa !191
  %4 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !194
  ret void
}

; Function Attrs: optsize
declare noundef i64 @_Z8opp_atolPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression4ElemaSEl(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 !prof !223 {
  store i32 2, ptr %0, align 8, !tbaa !191
  %3 = sitofp i64 %1 to double
  %4 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1
  store double %3, ptr %4, align 8, !tbaa !194
  %5 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !194
  ret void
}

; Function Attrs: optsize
declare noundef double @_Z8opp_atofPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression4ElemaSEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) local_unnamed_addr #8 comdat align 2 !prof !224 {
  store i32 2, ptr %0, align 8, !tbaa !191
  %3 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !194
  %4 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression4Elem7setUnitEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !224 {
  %3 = tail call noundef ptr @_ZN11cStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(81) @_ZN18cDynamicExpression4Elem10stringPoolE, ptr noundef %1) #16
  %4 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK14LiteralElement7getUnitEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #8 comdat align 2 !prof !225 {
  %2 = getelementptr inbounds %class.LiteralElement, ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression4ElemaSEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !195 {
  store i32 3, ptr %0, align 8, !tbaa !191
  %3 = tail call noundef ptr @_ZN11cStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(81) @_ZN18cDynamicExpression4Elem10stringPoolE, ptr noundef %1) #16
  %4 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !194
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11cStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %4 = zext i1 %2 to i8
  store i8 %4, ptr %0, align 8, !tbaa !155
  %5 = tail call noalias noundef nonnull dereferenceable(24008) ptr @_Znam(i64 noundef 24008) #20
  store i64 1000, ptr %5, align 16
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ 8, %3 ], [ %9, %6 ]
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  tail call void @_ZN18cDynamicExpression4ElemC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  %9 = add nuw nsw i64 %7, 24
  %10 = icmp eq i64 %9, 24008
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %5, i64 8
  %13 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !128
  %14 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !136
  %15 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 3
  store i32 990, ptr %15, align 4, !tbaa !137
  %16 = load ptr, ptr %1, align 8, !tbaa !139
  %17 = getelementptr inbounds ptr, ptr %16, i64 23
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(112) %1) #16
  tail call void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %19) #16
  %20 = load i32, ptr %14, align 8, !tbaa !136
  %21 = sext i32 %20 to i64
  %22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %21, i64 24)
  %23 = extractvalue { i64, i1 } %22, 1
  %24 = extractvalue { i64, i1 } %22, 0
  %25 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %24, i64 8)
  %26 = extractvalue { i64, i1 } %25, 1
  %27 = or i1 %23, %26
  %28 = extractvalue { i64, i1 } %25, 0
  %29 = select i1 %27, i64 -1, i64 %28
  %30 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %29) #20
  store i64 %21, ptr %30, align 16
  %31 = getelementptr inbounds i8, ptr %30, i64 8
  %32 = icmp eq i32 %20, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %11
  %34 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %31, i64 %21
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %31, %33 ], [ %37, %35 ]
  tail call void @_ZN18cDynamicExpression4ElemC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %36) #16
  %37 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %36, i64 1
  %38 = icmp eq ptr %37, %34
  br i1 %38, label %39, label %35

39:                                               ; preds = %35
  %40 = icmp sgt i32 %20, 0
  br i1 %40, label %41, label %43, !prof !226

41:                                               ; preds = %39
  %42 = zext nneg i32 %20 to i64
  br label %45

43:                                               ; preds = %45, %11, %39
  %44 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
  invoke void @_ZN18cDynamicExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %44) #16
          to label %52 unwind label %70

45:                                               ; preds = %41, %45
  %46 = phi i64 [ 0, %41 ], [ %50, %45 ]
  %47 = load ptr, ptr %13, align 8, !tbaa !128
  %48 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %47, i64 %46
  %49 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %31, i64 %46
  tail call void @_ZN18cDynamicExpression4ElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %48) #16
  %50 = add nuw nsw i64 %46, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %43, label %45, !prof !227, !llvm.loop !228

52:                                               ; preds = %43
  %53 = load ptr, ptr %44, align 8, !tbaa !139
  %54 = getelementptr inbounds ptr, ptr %53, i64 29
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(20) %44, ptr noundef nonnull %31, i32 noundef %20) #16
  %56 = load ptr, ptr %13, align 8, !tbaa !128
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds i8, ptr %56, i64 -8
  %60 = load i64, ptr %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %56, i64 %60
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi ptr [ %66, %64 ], [ %63, %62 ]
  %66 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %65, i64 -1
  tail call void @_ZN18cDynamicExpression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %66) #22
  %67 = icmp eq ptr %66, %56
  br i1 %67, label %68, label %64

68:                                               ; preds = %64, %58
  tail call void @_ZdaPv(ptr noundef nonnull %59) #21
  br label %69

69:                                               ; preds = %68, %52
  store ptr null, ptr %13, align 8, !tbaa !128
  ret ptr %44

70:                                               ; preds = %43
  %71 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %44) #21
  resume { ptr, i32 } %71
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN18cDynamicExpression4ElemC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 !prof !229 {
  store i32 0, ptr %0, align 8, !tbaa !191
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN18cDynamicExpression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #15

; Function Attrs: optsize
declare void @_ZN18cDynamicExpression4ElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN18cDynamicExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN18cExpressionBuilder13setExpressionEP8cParImplP18cDynamicExpression(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !127 {
  %3 = load ptr, ptr %0, align 8, !tbaa !139
  %4 = getelementptr inbounds ptr, ptr %3, i64 40
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #16
  %6 = load ptr, ptr %1, align 8, !tbaa !139
  %7 = getelementptr inbounds ptr, ptr %6, i64 31
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(20) %1) #16
  br i1 %9, label %10, label %14, !prof !230

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !139
  %12 = getelementptr inbounds ptr, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef null) #16
  br label %14

14:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cexpressionbuilder.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { builtin optsize allocsize(0) }
attributes #21 = { builtin nounwind optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!126}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!36 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @__cxa_allocate_exception, i64 2}
!37 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @_ZN13cRuntimeErrorC1EPKcz, i64 1}
!38 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement, i64 37}
!39 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, i64 5}
!40 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, i64 89}
!41 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, i64 86}
!42 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @__cxa_free_exception, i64 1}
!43 = !{ptr @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement, ptr @_ZNK15OperatorElement7getNameEv, i64 37}
!44 = !{ptr @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement, ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, i64 73}
!45 = !{ptr @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement, ptr @strcmp, i64 77}
!46 = !{ptr @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement, ptr @_ZN18cDynamicExpression4ElemaSENS_6OpTypeE, i64 37}
!47 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_ZNK15FunctionElement7getNameEv, i64 4}
!48 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @strcmp, i64 10}
!49 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_Znwm, i64 3}
!50 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_ZN10NEDSupport11ModuleIndexC1Ev, i64 1}
!51 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_ZN18cDynamicExpression4ElemaSEPNS_7FunctorE, i64 3}
!52 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @__cxa_allocate_exception, i64 1}
!53 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_ZN13cRuntimeErrorC1EPKcz, i64 1}
!54 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_ZNK12IdentElement7getNameEv, i64 2}
!55 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_ZNK12IdentElement9getModuleEv, i64 2}
!56 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_Z11opp_isemptyPKc, i64 2}
!57 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_ZN10NEDSupport6SizeofC1EPKcbb, i64 2}
!58 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, i64 9}
!59 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_ZNK12IdentElement7getNameEv, i64 90}
!60 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_ZNK12IdentElement9getModuleEv, i64 90}
!61 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, i64 1}
!62 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_Z11opp_isemptyPKc, i64 145}
!63 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_ZN18cExpressionBuilder9isLoopVarEPKc, i64 88}
!64 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_Znwm, i64 90}
!65 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_ZN10NEDSupport7LoopVarC2EPKc, i64 35}
!66 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_ZN10NEDSupport12ParameterRefC1EPKcbb, i64 54}
!67 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @strcmp, i64 2}
!68 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_ZN10NEDSupport25SiblingModuleParameterRefC1EPKcS2_bb, i64 1}
!69 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_ZN18cDynamicExpression4ElemaSEPNS_7FunctorE, i64 90}
!70 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_ZNK14LiteralElement8getValueEv, i64 165}
!71 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_ZNK14LiteralElement7getTypeEv, i64 87}
!72 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @strcmp, i64 8}
!73 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_ZN18cDynamicExpression4ElemaSEb, i64 8}
!74 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_Z8opp_atolPKc, i64 64}
!75 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_ZN18cDynamicExpression4ElemaSEl, i64 64}
!76 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_Z8opp_atofPKc, i64 9}
!77 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_ZN18cDynamicExpression4ElemaSEd, i64 9}
!78 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_ZNK14LiteralElement7getUnitEv, i64 9}
!79 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_ZN18cDynamicExpression4Elem7setUnitEPKc, i64 9}
!80 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_ZN18cDynamicExpression4ElemaSEPKc, i64 5}
!81 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @__cxa_allocate_exception, i64 1}
!82 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_ZN13cRuntimeErrorC1EPKcz, i64 1}
!83 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!84 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!85 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!86 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!87 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!88 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!89 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!90 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!91 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!92 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!93 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!94 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!95 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!96 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!97 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!98 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!99 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!100 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!101 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!102 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!103 = !{ptr @_ZNK15OperatorElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 74}
!104 = !{ptr @_ZNK15FunctionElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 8}
!105 = !{ptr @_ZNK12IdentElement7getNameEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 94}
!106 = !{ptr @_ZNK12IdentElement9getModuleEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 94}
!107 = !{ptr @_ZNK18cDynamicExpression7Functor10getNumArgsEv, ptr @strlen, i64 35153}
!108 = !{ptr @_ZN18cExpressionBuilder9isLoopVarEPKc, ptr @_ZN10NEDSupport7LoopVar11getVarNamesEv, i64 89}
!109 = !{ptr @_ZN18cExpressionBuilder9isLoopVarEPKc, ptr @_ZN10NEDSupport7LoopVar10getNumVarsEv, i64 89}
!110 = !{ptr @_ZN18cExpressionBuilder9isLoopVarEPKc, ptr @strcmp, i64 78}
!111 = !{ptr @_ZN10NEDSupport7LoopVarC2EPKc, ptr @_ZN18cDynamicExpression7FunctorC2Ev, i64 70}
!112 = !{ptr @_ZN10NEDSupport7LoopVarC2EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 70}
!113 = !{ptr @_ZN10NEDSupport7LoopVarC2EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 70}
!114 = !{ptr @_ZNK14LiteralElement8getValueEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 322}
!115 = !{ptr @_ZN18cDynamicExpression4Elem7setUnitEPKc, ptr @_ZN11cStringPool3getEPKc, i64 15}
!116 = !{ptr @_ZNK14LiteralElement7getUnitEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 128}
!117 = !{ptr @_ZN18cDynamicExpression4ElemaSEPKc, ptr @_ZN11cStringPool3getEPKc, i64 8}
!118 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_Znam, i64 288}
!119 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZN18cDynamicExpression4ElemC2Ev, i64 7488}
!120 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, i64 144}
!121 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_Znwm, i64 144}
!122 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZN18cDynamicExpressionC1Ev, i64 144}
!123 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZN18cDynamicExpression4ElemaSERKS0_, i64 137}
!124 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZN18cDynamicExpression4ElemD1Ev, i64 1800}
!125 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZdaPv, i64 90}
!126 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!127 = !{!"function_entry_count", i64 144}
!128 = !{!129, !133, i64 8}
!129 = !{!"_ZTS18cExpressionBuilder", !130, i64 0, !133, i64 8, !134, i64 16, !134, i64 20}
!130 = !{!"bool", !131, i64 0}
!131 = !{!"omnipotent char", !132, i64 0}
!132 = !{!"Simple C++ TBAA"}
!133 = !{!"any pointer", !131, i64 0}
!134 = !{!"int", !131, i64 0}
!135 = !{!"function_entry_count", i64 218}
!136 = !{!129, !134, i64 16}
!137 = !{!129, !134, i64 20}
!138 = !{!"branch_weights", i32 1, i32 219}
!139 = !{!140, !140, i64 0}
!140 = !{!"vtable pointer", !132, i64 0}
!141 = !{!"branch_weights", i32 1, i32 38, i32 5, i32 91, i32 88}
!142 = !{!"function_entry_count", i64 37}
!143 = !{!"branch_weights", i32 1, i32 151}
!144 = !{!"branch_weights", i32 1, i32 38}
!145 = !{!"branch_weights", i32 151, i32 149}
!146 = distinct !{!146, !147}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !{!"branch_weights", i32 0, i32 -2147483648}
!149 = !{!"branch_weights", i32 38, i32 1}
!150 = !{!"branch_weights", i32 5, i32 34}
!151 = !{!"branch_weights", i32 27, i32 8}
!152 = !{!"branch_weights", i32 8, i32 1}
!153 = !{!"function_entry_count", i64 4}
!154 = !{!"branch_weights", i32 1, i32 5}
!155 = !{!129, !130, i64 0}
!156 = !{i8 0, i8 2}
!157 = !{}
!158 = !{!"branch_weights", i32 5, i32 1}
!159 = distinct !{!159, !147}
!160 = distinct !{!160, !147}
!161 = !{!"function_entry_count", i64 90}
!162 = !{!"branch_weights", i32 1, i32 91}
!163 = !{!"branch_weights", i32 90, i32 2}
!164 = !{!"branch_weights", i32 36, i32 55}
!165 = !{!"branch_weights", i32 55, i32 2}
!166 = !{!"branch_weights", i32 2, i32 1}
!167 = !{!"function_entry_count", i64 87}
!168 = !{!"branch_weights", i32 1, i32 8, i32 68, i32 10, i32 5}
!169 = !{!"function_entry_count", i64 1}
!170 = !{!"function_entry_count", i64 0}
!171 = !{!172, !134, i64 8}
!172 = !{!"_ZTS10cException", !173, i64 0, !134, i64 8, !174, i64 16, !130, i64 48, !174, i64 56, !174, i64 88, !134, i64 120}
!173 = !{!"_ZTSSt9exception"}
!174 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !175, i64 0, !176, i64 8, !131, i64 16}
!175 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !133, i64 0}
!176 = !{!"long", !131, i64 0}
!177 = !{!172, !130, i64 48}
!178 = !{!172, !134, i64 120}
!179 = !{!"function_entry_count", i64 2}
!180 = !{!"function_entry_count", i64 2107073}
!181 = !{!"function_entry_count", i64 1891507}
!182 = !{!"function_entry_count", i64 1889443}
!183 = !{!176, !176, i64 0}
!184 = !{!"branch_weights", i32 1257663, i32 631782}
!185 = !{!186, !133, i64 0}
!186 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !133, i64 0}
!187 = !{!133, !133, i64 0}
!188 = !{!"branch_weights", i32 1889444, i32 1}
!189 = !{!"function_entry_count", i64 74}
!190 = !{!"function_entry_count", i64 40}
!191 = !{!192, !193, i64 0}
!192 = !{!"_ZTSN18cDynamicExpression4ElemE", !193, i64 0, !131, i64 8}
!193 = !{!"_ZTSN18cDynamicExpression4Elem4TypeE", !131, i64 0}
!194 = !{!131, !131, i64 0}
!195 = !{!"function_entry_count", i64 8}
!196 = !{!"function_entry_count", i64 94}
!197 = !{!"function_entry_count", i64 728460}
!198 = !{!"branch_weights", i32 393162, i32 335300}
!199 = !{!200, !130, i64 8}
!200 = !{!"_ZTSN10NEDSupport6XMLDocE", !201, i64 0, !130, i64 8}
!201 = !{!"_ZTSN18cDynamicExpression7FunctorE", !202, i64 0}
!202 = !{!"_ZTS7cObject"}
!203 = !{!"function_entry_count", i64 3}
!204 = !{!"function_entry_count", i64 189116523}
!205 = !{!"function_entry_count", i64 235321}
!206 = !{!"function_entry_count", i64 26398}
!207 = !{!"function_entry_count", i64 35153}
!208 = !{!"function_entry_count", i64 89}
!209 = !{!"branch_weights", i32 48, i32 7}
!210 = !{!"branch_weights", i32 23, i32 13}
!211 = !{!"branch_weights", i32 48, i32 0}
!212 = distinct !{!212, !147}
!213 = !{!"branch_weights", i32 13, i32 0}
!214 = !{!134, !134, i64 0}
!215 = !{!"function_entry_count", i64 70}
!216 = !{!"function_entry_count", i64 322}
!217 = !{!"function_entry_count", i64 225}
!218 = !{!219, !134, i64 112}
!219 = !{!"_ZTS14LiteralElement", !220, i64 0, !134, i64 112, !174, i64 120, !174, i64 152, !174, i64 184}
!220 = !{!"_ZTS10NEDElement", !176, i64 8, !174, i64 16, !221, i64 48, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96, !133, i64 104}
!221 = !{!"_ZTS15NEDSourceRegion", !134, i64 0, !134, i64 4, !134, i64 8, !134, i64 12}
!222 = !{!"function_entry_count", i64 7}
!223 = !{!"function_entry_count", i64 98}
!224 = !{!"function_entry_count", i64 15}
!225 = !{!"function_entry_count", i64 128}
!226 = !{!"branch_weights", i32 -2147483648, i32 0}
!227 = !{!"branch_weights", i32 144, i32 75}
!228 = distinct !{!228, !147}
!229 = !{!"function_entry_count", i64 177309}
!230 = !{!"branch_weights", i32 60, i32 86}
