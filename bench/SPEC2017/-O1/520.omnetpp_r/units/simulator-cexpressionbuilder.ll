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
%class.OperatorElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%"class.cDynamicExpression::Elem" = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { double, ptr }
%class.FunctionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.IdentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.NEDSupport::XMLDoc" = type <{ %"class.cDynamicExpression::Functor", i8, [7 x i8] }>
%"class.cDynamicExpression::Functor" = type { %class.cObject }
%class.cObject = type { ptr }
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.NEDSupport::LoopVar" = type { %"class.cDynamicExpression::Functor", %"class.std::__cxx11::basic_string" }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }

$_ZN10NEDSupport7LoopVarC2EPKc = comdat any

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
@.str = private unnamed_addr constant [20 x i8] c"Expression too long\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Unexpected tag in expression: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unexpected operator %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"?:\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"`index' operator is only supported in submodule parameters\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"`const' operator: not yet supported\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"dynamic module builder: sizeof(module.ident): not yet supported\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"xmldoc\00", align 1
@.str.34 = private unnamed_addr constant [82 x i8] c"Function %s with %d args not found (Define_NED_Function() missing from C++ code?)\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Internal error: wrong constant type\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.37 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN10NEDSupport6XMLDocE = external unnamed_addr constant { [26 x ptr] }, align 8
@_ZN10NEDSupport7LoopVar8varNamesE = external local_unnamed_addr global [32 x ptr], align 16
@_ZN10NEDSupport7LoopVar8varCountE = external local_unnamed_addr global i32, align 4
@_ZTVN10NEDSupport7LoopVarE = external unnamed_addr constant { [26 x ptr] }, align 8
@_ZN18cDynamicExpression4Elem10stringPoolE = external global %class.cStringPool, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cexpressionbuilder.cc, ptr null }]

@_ZN18cExpressionBuilderC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18cExpressionBuilderC2Ev
@_ZN18cExpressionBuilderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18cExpressionBuilderD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18cExpressionBuilderC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !66 {
  %2 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !67
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN18cExpressionBuilderD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !66 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %13, !prof !77

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %33

13:                                               ; preds = %2
  %14 = load ptr, ptr %1, align 8, !tbaa !78
  %15 = getelementptr inbounds ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(112) %1), !prof !80
  switch i32 %17, label %22 [
    i32 31, label %18
    i32 32, label %19
    i32 33, label %20
    i32 34, label %21
  ], !prof !81

18:                                               ; preds = %13
  tail call void @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1)
  br label %32

19:                                               ; preds = %13
  tail call void @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1)
  br label %32

20:                                               ; preds = %13
  tail call void @_ZN18cExpressionBuilder7doIdentEP12IdentElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1)
  br label %32

21:                                               ; preds = %13
  tail call void @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1)
  br label %32

22:                                               ; preds = %13
  %23 = tail call ptr @__cxa_allocate_exception(i64 128) #19
  %24 = load ptr, ptr %1, align 8, !tbaa !78
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %28 unwind label %30

28:                                               ; preds = %22
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %23, ptr noundef nonnull @.str.1, ptr noundef %27)
          to label %29 unwind label %30

29:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
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
  tail call void @__cxa_free_exception(ptr %34) #19
  resume { ptr, i32 } %35
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %3 = load ptr, ptr %1, align 8, !tbaa !78
  %4 = getelementptr inbounds ptr, ptr %3, i64 23
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(112) %1), !prof !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16, !prof !84

8:                                                ; preds = %16, %2
  %9 = getelementptr inbounds %class.OperatorElement, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = load ptr, ptr %1, align 8, !tbaa !78
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(112) %1), !prof !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %23, !prof !89

16:                                               ; preds = %2, %16
  %17 = phi ptr [ %21, %16 ], [ %6, %2 ]
  tail call void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %17)
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  %19 = getelementptr inbounds ptr, ptr %18, i64 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(112) %17), !prof !90
  %22 = icmp eq ptr %21, null
  br i1 %22, label %8, label %16, !prof !91, !llvm.loop !92

23:                                               ; preds = %8
  %24 = load ptr, ptr %14, align 8, !tbaa !78
  %25 = getelementptr inbounds ptr, ptr %24, i64 25
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(112) %14), !prof !95
  br label %28

28:                                               ; preds = %8, %23
  %29 = phi ptr [ %27, %23 ], [ null, %8 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !prof !89

31:                                               ; preds = %28
  %32 = load ptr, ptr %29, align 8, !tbaa !78
  %33 = getelementptr inbounds ptr, ptr %32, i64 25
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(112) %29), !prof !95
  br label %36

36:                                               ; preds = %28, %31
  %37 = phi ptr [ %35, %31 ], [ null, %28 ]
  br i1 %30, label %38, label %79, !prof !89

38:                                               ; preds = %36
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.2) #21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !75
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !75
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %43, i64 %47
  store i32 8, ptr %48, align 8, !tbaa !96
  %49 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %43, i64 %47, i32 1
  store i32 6, ptr %49, align 8, !tbaa !99
  br label %343

50:                                               ; preds = %38
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.3) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !67
  %56 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !75
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !75
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %55, i64 %59
  store i32 8, ptr %60, align 8, !tbaa !96
  %61 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %55, i64 %59, i32 1
  store i32 17, ptr %61, align 8, !tbaa !99
  br label %343

62:                                               ; preds = %50
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.4) #21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !67
  %68 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !75
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %68, align 8, !tbaa !75
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %67, i64 %71
  store i32 8, ptr %72, align 8, !tbaa !96
  %73 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %67, i64 %71, i32 1
  store i32 21, ptr %73, align 8, !tbaa !99
  br label %343

74:                                               ; preds = %62
  %75 = tail call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %75, ptr noundef nonnull @.str.5, ptr noundef %10)
          to label %76 unwind label %77

76:                                               ; preds = %74
  tail call void @__cxa_throw(ptr nonnull %75, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
  unreachable

77:                                               ; preds = %74
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %344

79:                                               ; preds = %36
  %80 = icmp eq ptr %37, null
  br i1 %80, label %81, label %326, !prof !100

81:                                               ; preds = %79
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.6) #21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93, !prof !101

84:                                               ; preds = %81
  %85 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !67
  %87 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !75
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %87, align 8, !tbaa !75
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %86, i64 %90
  store i32 8, ptr %91, align 8, !tbaa !96
  %92 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %86, i64 %90, i32 1
  store i32 0, ptr %92, align 8, !tbaa !99
  br label %343

93:                                               ; preds = %81
  %94 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.2) #21
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105, !prof !102

96:                                               ; preds = %93
  %97 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !67
  %99 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %100 = load i32, ptr %99, align 8, !tbaa !75
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %99, align 8, !tbaa !75
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %98, i64 %102
  store i32 8, ptr %103, align 8, !tbaa !96
  %104 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %98, i64 %102, i32 1
  store i32 1, ptr %104, align 8, !tbaa !99
  br label %343

105:                                              ; preds = %93
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.7) #21
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %117, !prof !103

108:                                              ; preds = %105
  %109 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !67
  %111 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !75
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %111, align 8, !tbaa !75
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %110, i64 %114
  store i32 8, ptr %115, align 8, !tbaa !96
  %116 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %110, i64 %114, i32 1
  store i32 2, ptr %116, align 8, !tbaa !99
  br label %343

117:                                              ; preds = %105
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.8) #21
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !67
  %123 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !75
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !75
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %122, i64 %126
  store i32 8, ptr %127, align 8, !tbaa !96
  %128 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %122, i64 %126, i32 1
  store i32 3, ptr %128, align 8, !tbaa !99
  br label %343

129:                                              ; preds = %117
  %130 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.9) #21
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !67
  %135 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !75
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %135, align 8, !tbaa !75
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %134, i64 %138
  store i32 8, ptr %139, align 8, !tbaa !96
  %140 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %134, i64 %138, i32 1
  store i32 4, ptr %140, align 8, !tbaa !99
  br label %343

141:                                              ; preds = %129
  %142 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.10) #21
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !67
  %147 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !75
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %147, align 8, !tbaa !75
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %146, i64 %150
  store i32 8, ptr %151, align 8, !tbaa !96
  %152 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %146, i64 %150, i32 1
  store i32 5, ptr %152, align 8, !tbaa !99
  br label %343

153:                                              ; preds = %141
  %154 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.11) #21
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !67
  %159 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !75
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr %159, align 8, !tbaa !75
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %158, i64 %162
  store i32 8, ptr %163, align 8, !tbaa !96
  %164 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %158, i64 %162, i32 1
  store i32 7, ptr %164, align 8, !tbaa !99
  br label %343

165:                                              ; preds = %153
  %166 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.12) #21
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !67
  %171 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %172 = load i32, ptr %171, align 8, !tbaa !75
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %171, align 8, !tbaa !75
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %170, i64 %174
  store i32 8, ptr %175, align 8, !tbaa !96
  %176 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %170, i64 %174, i32 1
  store i32 8, ptr %176, align 8, !tbaa !99
  br label %343

177:                                              ; preds = %165
  %178 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.13) #21
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %177
  %181 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !67
  %183 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %184 = load i32, ptr %183, align 8, !tbaa !75
  %185 = add nsw i32 %184, 1
  store i32 %185, ptr %183, align 8, !tbaa !75
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %182, i64 %186
  store i32 8, ptr %187, align 8, !tbaa !96
  %188 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %182, i64 %186, i32 1
  store i32 11, ptr %188, align 8, !tbaa !99
  br label %343

189:                                              ; preds = %177
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.14) #21
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %189
  %193 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !67
  %195 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %196 = load i32, ptr %195, align 8, !tbaa !75
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %195, align 8, !tbaa !75
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %194, i64 %198
  store i32 8, ptr %199, align 8, !tbaa !96
  %200 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %194, i64 %198, i32 1
  store i32 12, ptr %200, align 8, !tbaa !99
  br label %343

201:                                              ; preds = %189
  %202 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.15) #21
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !67
  %207 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %208 = load i32, ptr %207, align 8, !tbaa !75
  %209 = add nsw i32 %208, 1
  store i32 %209, ptr %207, align 8, !tbaa !75
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %206, i64 %210
  store i32 8, ptr %211, align 8, !tbaa !96
  %212 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %206, i64 %210, i32 1
  store i32 9, ptr %212, align 8, !tbaa !99
  br label %343

213:                                              ; preds = %201
  %214 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.16) #21
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %213
  %217 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !67
  %219 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %220 = load i32, ptr %219, align 8, !tbaa !75
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %219, align 8, !tbaa !75
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %218, i64 %222
  store i32 8, ptr %223, align 8, !tbaa !96
  %224 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %218, i64 %222, i32 1
  store i32 10, ptr %224, align 8, !tbaa !99
  br label %343

225:                                              ; preds = %213
  %226 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.17) #21
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !67
  %231 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %232 = load i32, ptr %231, align 8, !tbaa !75
  %233 = add nsw i32 %232, 1
  store i32 %233, ptr %231, align 8, !tbaa !75
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %230, i64 %234
  store i32 8, ptr %235, align 8, !tbaa !96
  %236 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %230, i64 %234, i32 1
  store i32 14, ptr %236, align 8, !tbaa !99
  br label %343

237:                                              ; preds = %225
  %238 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.18) #21
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %237
  %241 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !67
  %243 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %244 = load i32, ptr %243, align 8, !tbaa !75
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr %243, align 8, !tbaa !75
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %242, i64 %246
  store i32 8, ptr %247, align 8, !tbaa !96
  %248 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %242, i64 %246, i32 1
  store i32 15, ptr %248, align 8, !tbaa !99
  br label %343

249:                                              ; preds = %237
  %250 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.19) #21
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %249
  %253 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !67
  %255 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %256 = load i32, ptr %255, align 8, !tbaa !75
  %257 = add nsw i32 %256, 1
  store i32 %257, ptr %255, align 8, !tbaa !75
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %254, i64 %258
  store i32 8, ptr %259, align 8, !tbaa !96
  %260 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %254, i64 %258, i32 1
  store i32 16, ptr %260, align 8, !tbaa !99
  br label %343

261:                                              ; preds = %249
  %262 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.20) #21
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %261
  %265 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !67
  %267 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %268 = load i32, ptr %267, align 8, !tbaa !75
  %269 = add nsw i32 %268, 1
  store i32 %269, ptr %267, align 8, !tbaa !75
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %266, i64 %270
  store i32 8, ptr %271, align 8, !tbaa !96
  %272 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %266, i64 %270, i32 1
  store i32 18, ptr %272, align 8, !tbaa !99
  br label %343

273:                                              ; preds = %261
  %274 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.21) #21
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %273
  %277 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !67
  %279 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %280 = load i32, ptr %279, align 8, !tbaa !75
  %281 = add nsw i32 %280, 1
  store i32 %281, ptr %279, align 8, !tbaa !75
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %278, i64 %282
  store i32 8, ptr %283, align 8, !tbaa !96
  %284 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %278, i64 %282, i32 1
  store i32 19, ptr %284, align 8, !tbaa !99
  br label %343

285:                                              ; preds = %273
  %286 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.22) #21
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %285
  %289 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !67
  %291 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %292 = load i32, ptr %291, align 8, !tbaa !75
  %293 = add nsw i32 %292, 1
  store i32 %293, ptr %291, align 8, !tbaa !75
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %290, i64 %294
  store i32 8, ptr %295, align 8, !tbaa !96
  %296 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %290, i64 %294, i32 1
  store i32 20, ptr %296, align 8, !tbaa !99
  br label %343

297:                                              ; preds = %285
  %298 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.23) #21
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %297
  %301 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !67
  %303 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %304 = load i32, ptr %303, align 8, !tbaa !75
  %305 = add nsw i32 %304, 1
  store i32 %305, ptr %303, align 8, !tbaa !75
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %302, i64 %306
  store i32 8, ptr %307, align 8, !tbaa !96
  %308 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %302, i64 %306, i32 1
  store i32 22, ptr %308, align 8, !tbaa !99
  br label %343

309:                                              ; preds = %297
  %310 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.24) #21
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %309
  %313 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !67
  %315 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %316 = load i32, ptr %315, align 8, !tbaa !75
  %317 = add nsw i32 %316, 1
  store i32 %317, ptr %315, align 8, !tbaa !75
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %314, i64 %318
  store i32 8, ptr %319, align 8, !tbaa !96
  %320 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %314, i64 %318, i32 1
  store i32 23, ptr %320, align 8, !tbaa !99
  br label %343

321:                                              ; preds = %309
  %322 = tail call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %322, ptr noundef nonnull @.str.5, ptr noundef %10)
          to label %323 unwind label %324

323:                                              ; preds = %321
  tail call void @__cxa_throw(ptr nonnull %322, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
  unreachable

324:                                              ; preds = %321
  %325 = landingpad { ptr, i32 }
          cleanup
  br label %344

326:                                              ; preds = %79
  %327 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.25) #21
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %326
  %330 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !67
  %332 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %333 = load i32, ptr %332, align 8, !tbaa !75
  %334 = add nsw i32 %333, 1
  store i32 %334, ptr %332, align 8, !tbaa !75
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %331, i64 %335
  store i32 8, ptr %336, align 8, !tbaa !96
  %337 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %331, i64 %335, i32 1
  store i32 13, ptr %337, align 8, !tbaa !99
  br label %343

338:                                              ; preds = %326
  %339 = tail call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %339, ptr noundef nonnull @.str.5, ptr noundef %10)
          to label %340 unwind label %341

340:                                              ; preds = %338
  tail call void @__cxa_throw(ptr nonnull %339, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
  unreachable

341:                                              ; preds = %338
  %342 = landingpad { ptr, i32 }
          cleanup
  br label %344

343:                                              ; preds = %329, %96, %120, %144, %168, %192, %216, %240, %264, %288, %312, %300, %276, %252, %228, %204, %180, %156, %132, %108, %84, %41, %65, %53
  ret void

344:                                              ; preds = %341, %324, %77
  %345 = phi ptr [ %339, %341 ], [ %322, %324 ], [ %75, %77 ]
  %346 = phi { ptr, i32 } [ %342, %341 ], [ %325, %324 ], [ %78, %77 ]
  tail call void @__cxa_free_exception(ptr %345) #19
  resume { ptr, i32 } %346
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %3 = getelementptr inbounds %class.FunctionElement, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = load ptr, ptr %1, align 8, !tbaa !78
  %6 = getelementptr inbounds ptr, ptr %5, i64 32
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(112) %1), !prof !105
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(6) @.str.26) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32, !prof !106

11:                                               ; preds = %2
  %12 = load i8, ptr %0, align 8, !tbaa !107, !range !108, !noundef !109
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull @.str.27)
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #19
  br label %160

19:                                               ; preds = %11
  %20 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
  invoke void @_ZN10NEDSupport11ModuleIndexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %21 unwind label %30

21:                                               ; preds = %19
  %22 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !75
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !75
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %23, i64 %27
  store i32 7, ptr %28, align 8, !tbaa !96
  %29 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %23, i64 %27, i32 1
  store ptr %20, ptr %29, align 8, !tbaa !99
  br label %159

30:                                               ; preds = %19
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %20) #23
  br label %160

32:                                               ; preds = %2
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(6) @.str.28) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40, !prof !106

35:                                               ; preds = %32
  %36 = tail call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull @.str.29)
          to label %37 unwind label %38

37:                                               ; preds = %35
  tail call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
  unreachable

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %36) #19
  br label %160

40:                                               ; preds = %32
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(7) @.str.30) #21
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %92, !prof !110

43:                                               ; preds = %40
  %44 = load ptr, ptr %1, align 8, !tbaa !78
  %45 = getelementptr inbounds ptr, ptr %44, i64 40
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(144) %1), !prof !111
  %48 = getelementptr inbounds %class.IdentElement, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !85
  %50 = getelementptr inbounds %class.IdentElement, ptr %47, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !85
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53, !prof !106

53:                                               ; preds = %43
  %54 = load i8, ptr %51, align 1, !tbaa !99
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %71, !prof !110

56:                                               ; preds = %43, %53
  %57 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
  %58 = load i8, ptr %0, align 8, !tbaa !107, !range !108, !noundef !109
  %59 = icmp ne i8 %58, 0
  invoke void @_ZN10NEDSupport6SizeofC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef %49, i1 noundef zeroext %59, i1 noundef zeroext false)
          to label %60 unwind label %69, !prof !110

60:                                               ; preds = %56
  %61 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !67
  %63 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !75
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !75
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %62, i64 %66
  store i32 7, ptr %67, align 8, !tbaa !96
  %68 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %62, i64 %66, i32 1
  store ptr %57, ptr %68, align 8, !tbaa !99
  br label %159

69:                                               ; preds = %56
  %70 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %57) #23
  br label %160

71:                                               ; preds = %53
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(5) @.str.31) #21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
  invoke void @_ZN10NEDSupport6SizeofC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %75, ptr noundef %49, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %76 unwind label %85

76:                                               ; preds = %74
  %77 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !67
  %79 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !75
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %79, align 8, !tbaa !75
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %78, i64 %82
  store i32 7, ptr %83, align 8, !tbaa !96
  %84 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %78, i64 %82, i32 1
  store ptr %75, ptr %84, align 8, !tbaa !99
  br label %159

85:                                               ; preds = %74
  %86 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %75) #23
  br label %160

87:                                               ; preds = %71
  %88 = tail call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %88, ptr noundef nonnull @.str.32)
          to label %89 unwind label %90

89:                                               ; preds = %87
  tail call void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
  unreachable

90:                                               ; preds = %87
  %91 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %88) #19
  br label %160

92:                                               ; preds = %40
  %93 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(7) @.str.33) #21
  %94 = icmp eq i32 %93, 0
  %95 = load ptr, ptr %1, align 8, !tbaa !78
  %96 = getelementptr inbounds ptr, ptr %95, i64 23
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %99 = icmp eq ptr %98, null
  br i1 %94, label %100, label %121

100:                                              ; preds = %92
  br i1 %99, label %101, label %114

101:                                              ; preds = %114, %100
  %102 = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22
  %103 = icmp eq i32 %8, 2
  %104 = zext i1 %103 to i8
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport6XMLDocE, i64 0, inrange i32 0, i64 2), ptr %102, align 8, !tbaa !78
  %105 = getelementptr inbounds %"class.NEDSupport::XMLDoc", ptr %102, i64 0, i32 1
  store i8 %104, ptr %105, align 8, !tbaa !112
  %106 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !67
  %108 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !75
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %108, align 8, !tbaa !75
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %107, i64 %111
  store i32 7, ptr %112, align 8, !tbaa !96
  %113 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %107, i64 %111, i32 1
  store ptr %102, ptr %113, align 8, !tbaa !99
  br label %159

114:                                              ; preds = %100, %114
  %115 = phi ptr [ %119, %114 ], [ %98, %100 ]
  tail call void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %115)
  %116 = load ptr, ptr %115, align 8, !tbaa !78
  %117 = getelementptr inbounds ptr, ptr %116, i64 25
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(112) %115)
  %120 = icmp eq ptr %119, null
  br i1 %120, label %101, label %114, !llvm.loop !116

121:                                              ; preds = %92
  br i1 %99, label %122, label %126

122:                                              ; preds = %126, %121
  %123 = tail call noundef ptr @_ZN13cMathFunction4findEPKci(ptr noundef %4, i32 noundef %8)
  %124 = tail call noundef ptr @_ZN12cNEDFunction4findEPKci(ptr noundef %4, i32 noundef %8)
  %125 = icmp eq ptr %123, null
  br i1 %125, label %142, label %133

126:                                              ; preds = %121, %126
  %127 = phi ptr [ %131, %126 ], [ %98, %121 ]
  tail call void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %127)
  %128 = load ptr, ptr %127, align 8, !tbaa !78
  %129 = getelementptr inbounds ptr, ptr %128, i64 25
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(112) %127)
  %132 = icmp eq ptr %131, null
  br i1 %132, label %122, label %126, !llvm.loop !117

133:                                              ; preds = %122
  %134 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !67
  %136 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !75
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %136, align 8, !tbaa !75
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %135, i64 %139
  store i32 5, ptr %140, align 8, !tbaa !96
  %141 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %135, i64 %139, i32 1
  store ptr %123, ptr %141, align 8, !tbaa !99
  br label %159

142:                                              ; preds = %122
  %143 = icmp eq ptr %124, null
  br i1 %143, label %154, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !67
  %147 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %148 = load i32, ptr %147, align 8, !tbaa !75
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %147, align 8, !tbaa !75
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %146, i64 %150
  store i32 6, ptr %151, align 8, !tbaa !96
  %152 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %146, i64 %150, i32 1
  store ptr %124, ptr %152, align 8, !tbaa !99
  %153 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %146, i64 %150, i32 1, i32 0, i32 1
  store i32 %8, ptr %153, align 8, !tbaa !99
  br label %159

154:                                              ; preds = %142
  %155 = tail call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %155, ptr noundef nonnull @.str.34, ptr noundef %4, i32 noundef %8)
          to label %156 unwind label %157

156:                                              ; preds = %154
  tail call void @__cxa_throw(ptr nonnull %155, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
  unreachable

157:                                              ; preds = %154
  %158 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %155) #19
  br label %160

159:                                              ; preds = %133, %144, %60, %76, %101, %21
  ret void

160:                                              ; preds = %69, %85, %90, %157, %38, %30, %17
  %161 = phi { ptr, i32 } [ %158, %157 ], [ %39, %38 ], [ %31, %30 ], [ %18, %17 ], [ %70, %69 ], [ %86, %85 ], [ %91, %90 ]
  resume { ptr, i32 } %161
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN18cExpressionBuilder7doIdentEP12IdentElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = getelementptr inbounds %class.IdentElement, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = getelementptr inbounds %class.IdentElement, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = load ptr, ptr %1, align 8, !tbaa !78
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(112) %1), !prof !119
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %17, !prof !120

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 8, !tbaa !78
  %14 = getelementptr inbounds ptr, ptr %13, i64 23
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %1)
  tail call void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16)
  br label %17

17:                                               ; preds = %12, %2
  %18 = icmp eq ptr %6, null
  br i1 %18, label %22, label %19, !prof !120

19:                                               ; preds = %17
  %20 = load i8, ptr %6, align 1, !tbaa !99
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %48, !prof !121

22:                                               ; preds = %17, %19
  %23 = load i32, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !122
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %29, label %48, !prof !123

25:                                               ; preds = %29
  %26 = zext nneg i32 %23 to i64
  %27 = add nuw nsw i64 %30, 1
  %28 = icmp eq i64 %27, %26
  br i1 %28, label %48, label %29, !prof !124, !llvm.loop !125

29:                                               ; preds = %22, %25
  %30 = phi i64 [ %27, %25 ], [ 0, %22 ]
  %31 = getelementptr inbounds ptr, ptr @_ZN10NEDSupport7LoopVar8varNamesE, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !126
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %4) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %25, !prof !127

35:                                               ; preds = %29
  %36 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
  invoke void @_ZN10NEDSupport7LoopVarC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef %4)
          to label %37 unwind label %46, !prof !128

37:                                               ; preds = %35
  %38 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  %40 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !75
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !75
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %39, i64 %43
  store i32 7, ptr %44, align 8, !tbaa !96
  %45 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %39, i64 %43, i32 1
  store ptr %36, ptr %45, align 8, !tbaa !99
  br label %98

46:                                               ; preds = %35
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %99

48:                                               ; preds = %25, %22, %19
  br i1 %18, label %52, label %49, !prof !129

49:                                               ; preds = %48
  %50 = load i8, ptr %6, align 1, !tbaa !99
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %67, !prof !130

52:                                               ; preds = %48, %49
  %53 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
  %54 = load i8, ptr %0, align 8, !tbaa !107, !range !108, !noundef !109
  %55 = icmp ne i8 %54, 0
  invoke void @_ZN10NEDSupport12ParameterRefC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %53, ptr noundef %4, i1 noundef zeroext %55, i1 noundef zeroext false)
          to label %56 unwind label %65, !prof !131

56:                                               ; preds = %52
  %57 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !67
  %59 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !75
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %59, align 8, !tbaa !75
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %58, i64 %62
  store i32 7, ptr %63, align 8, !tbaa !96
  %64 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %58, i64 %62, i32 1
  store ptr %53, ptr %64, align 8, !tbaa !99
  br label %98

65:                                               ; preds = %52
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %99

67:                                               ; preds = %49
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.31) #21
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %83, !prof !132

70:                                               ; preds = %67
  %71 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
  invoke void @_ZN10NEDSupport12ParameterRefC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef %4, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %72 unwind label %81, !prof !132

72:                                               ; preds = %70
  %73 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !67
  %75 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !75
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %75, align 8, !tbaa !75
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %74, i64 %78
  store i32 7, ptr %79, align 8, !tbaa !96
  %80 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %74, i64 %78, i32 1
  store ptr %71, ptr %80, align 8, !tbaa !99
  br label %98

81:                                               ; preds = %70
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %99

83:                                               ; preds = %67
  %84 = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22
  %85 = load i8, ptr %0, align 8, !tbaa !107, !range !108, !noundef !109
  %86 = icmp ne i8 %85, 0
  invoke void @_ZN10NEDSupport25SiblingModuleParameterRefC1EPKcS2_bb(ptr noundef nonnull align 8 dereferenceable(88) %84, ptr noundef nonnull %6, ptr noundef %4, i1 noundef zeroext %86, i1 noundef zeroext %11)
          to label %87 unwind label %96

87:                                               ; preds = %83
  %88 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !67
  %90 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !75
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %90, align 8, !tbaa !75
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %89, i64 %93
  store i32 7, ptr %94, align 8, !tbaa !96
  %95 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %89, i64 %93, i32 1
  store ptr %84, ptr %95, align 8, !tbaa !99
  br label %98

96:                                               ; preds = %83
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %99

98:                                               ; preds = %56, %87, %72, %37
  ret void

99:                                               ; preds = %96, %81, %65, %46
  %100 = phi ptr [ %84, %96 ], [ %71, %81 ], [ %53, %65 ], [ %36, %46 ]
  %101 = phi { ptr, i32 } [ %97, %96 ], [ %82, %81 ], [ %66, %65 ], [ %47, %46 ]
  tail call void @_ZdlPv(ptr noundef %100) #23
  resume { ptr, i32 } %101
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = getelementptr inbounds %class.LiteralElement, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = getelementptr inbounds %class.LiteralElement, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !134
  switch i32 %6, label %60 [
    i32 3, label %7
    i32 1, label %19
    i32 0, label %31
    i32 2, label %50
  ], !prof !138

7:                                                ; preds = %2
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(5) @.str.35) #21
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !75
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !75
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %11, i64 %15
  %17 = zext i1 %9 to i8
  store i32 1, ptr %16, align 8, !tbaa !96
  %18 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %11, i64 %15, i32 1
  store i8 %17, ptr %18, align 8, !tbaa !99
  br label %65

19:                                               ; preds = %2
  %20 = tail call noundef i64 @_Z8opp_atolPKc(ptr noundef %4)
  %21 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !75
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !75
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %22, i64 %26
  store i32 2, ptr %27, align 8, !tbaa !96
  %28 = sitofp i64 %20 to double
  %29 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %22, i64 %26, i32 1
  store double %28, ptr %29, align 8, !tbaa !99
  %30 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %22, i64 %26, i32 1, i32 0, i32 1
  store ptr null, ptr %30, align 8, !tbaa !99
  br label %65

31:                                               ; preds = %2
  %32 = tail call noundef double @_Z8opp_atofPKc(ptr noundef %4)
  %33 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !75
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !75
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %34, i64 %38
  store i32 2, ptr %39, align 8, !tbaa !96
  %40 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %34, i64 %38, i32 1
  store double %32, ptr %40, align 8, !tbaa !99
  %41 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %34, i64 %38, i32 1, i32 0, i32 1
  store ptr null, ptr %41, align 8, !tbaa !99
  %42 = load ptr, ptr %33, align 8, !tbaa !67
  %43 = load i32, ptr %35, align 8, !tbaa !75
  %44 = sext i32 %43 to i64
  %45 = getelementptr %"class.cDynamicExpression::Elem", ptr %42, i64 %44
  %46 = getelementptr inbounds %class.LiteralElement, ptr %1, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !85
  %48 = tail call noundef ptr @_ZN11cStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(81) @_ZN18cDynamicExpression4Elem10stringPoolE, ptr noundef %47)
  %49 = getelementptr %"class.cDynamicExpression::Elem", ptr %45, i64 -1, i32 1, i32 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !99
  br label %65

50:                                               ; preds = %2
  %51 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !67
  %53 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !75
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !75
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %52, i64 %56
  store i32 3, ptr %57, align 8, !tbaa !96
  %58 = tail call noundef ptr @_ZN11cStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(81) @_ZN18cDynamicExpression4Elem10stringPoolE, ptr noundef %4)
  %59 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %52, i64 %56, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !99
  br label %65

60:                                               ; preds = %2
  %61 = tail call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %61, ptr noundef nonnull @.str.36)
          to label %62 unwind label %63

62:                                               ; preds = %60
  tail call void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
  unreachable

63:                                               ; preds = %60
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %61) #19
  resume { ptr, i32 } %64

65:                                               ; preds = %50, %31, %19, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZN10NEDSupport11ModuleIndexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare void @_ZN10NEDSupport6SizeofC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

declare noundef ptr @_ZN13cMathFunction4findEPKci(ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN12cNEDFunction4findEPKci(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN18cExpressionBuilder9isLoopVarEPKc(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 align 2 !prof !139 {
  %3 = load i32, ptr @_ZN10NEDSupport7LoopVar8varCountE, align 4, !tbaa !122
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = zext nneg i32 %3 to i64
  %8 = load ptr, ptr @_ZN10NEDSupport7LoopVar8varNamesE, align 16, !tbaa !126
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %5, %15
  %12 = phi i64 [ %13, %15 ], [ 0, %5 ]
  %13 = add nuw nsw i64 %12, 1
  %14 = icmp eq i64 %13, %7
  br i1 %14, label %20, label %15, !llvm.loop !125

15:                                               ; preds = %11
  %16 = getelementptr inbounds ptr, ptr @_ZN10NEDSupport7LoopVar8varNamesE, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !126
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %1) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %11, !llvm.loop !125

20:                                               ; preds = %15, %11
  %21 = icmp ult i64 %13, %6
  br label %22

22:                                               ; preds = %20, %5, %2
  %23 = phi i1 [ %4, %2 ], [ %4, %5 ], [ %21, %20 ]
  ret i1 %23
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10NEDSupport7LoopVarC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !140 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTVN10NEDSupport7LoopVarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !78
  %3 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1, i32 2
  store ptr %4, ptr %3, align 8, !tbaa !141
  %5 = getelementptr inbounds %"class.NEDSupport::LoopVar", ptr %0, i64 0, i32 1, i32 1
  store i64 0, ptr %5, align 8, !tbaa !142
  store i8 0, ptr %4, align 8, !tbaa !99
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %1, i64 noundef %6)
          to label %8 unwind label %9, !prof !143

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = load ptr, ptr %3, align 8, !tbaa !85
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i64, ptr %5, align 8, !tbaa !142
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %9
  tail call void @_ZdlPv(ptr noundef %11) #23
  br label %17

17:                                               ; preds = %13, %16
  tail call void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  resume { ptr, i32 } %10
}

declare void @_ZN10NEDSupport12ParameterRefC1EPKcbb(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

declare void @_ZN10NEDSupport25SiblingModuleParameterRefC1EPKcS2_bb(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

declare noundef i64 @_Z8opp_atolPKc(ptr noundef) local_unnamed_addr #0

declare noundef double @_Z8opp_atofPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %4 = zext i1 %2 to i8
  store i8 %4, ptr %0, align 8, !tbaa !107
  %5 = tail call noalias noundef nonnull dereferenceable(24008) ptr @_Znam(i64 noundef 24008) #22
  store i64 1000, ptr %5, align 16
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ 8, %3 ], [ %9, %6 ]
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  store i32 0, ptr %8, align 8, !tbaa !96
  %9 = add nuw nsw i64 %7, 24
  %10 = icmp eq i64 %9, 24008
  br i1 %10, label %11, label %6, !prof !144

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %5, i64 8
  %13 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !67
  %14 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 2
  store i32 0, ptr %14, align 8, !tbaa !75
  %15 = getelementptr inbounds %class.cExpressionBuilder, ptr %0, i64 0, i32 3
  store i32 990, ptr %15, align 4, !tbaa !76
  %16 = load ptr, ptr %1, align 8, !tbaa !78
  %17 = getelementptr inbounds ptr, ptr %16, i64 23
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(112) %1), !prof !145
  tail call void @_ZN18cExpressionBuilder6doNodeEP10NEDElement(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %19)
  %20 = load i32, ptr %14, align 8, !tbaa !75
  %21 = sext i32 %20 to i64
  %22 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %21, i64 24)
  %23 = extractvalue { i64, i1 } %22, 1
  %24 = extractvalue { i64, i1 } %22, 0
  %25 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %24, i64 8)
  %26 = extractvalue { i64, i1 } %25, 1
  %27 = or i1 %23, %26
  %28 = extractvalue { i64, i1 } %25, 0
  %29 = select i1 %27, i64 -1, i64 %28, !prof !146
  %30 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %29) #22
  store i64 %21, ptr %30, align 16
  %31 = getelementptr inbounds i8, ptr %30, i64 8
  %32 = icmp eq i32 %20, 0
  br i1 %32, label %39, label %33, !prof !146

33:                                               ; preds = %11
  %34 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %31, i64 %21
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %31, %33 ], [ %37, %35 ]
  store i32 0, ptr %36, align 8, !tbaa !96
  %37 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %36, i64 1
  %38 = icmp eq ptr %37, %34
  br i1 %38, label %39, label %35, !prof !147

39:                                               ; preds = %35, %11
  %40 = icmp sgt i32 %20, 0
  br i1 %40, label %41, label %43, !prof !148

41:                                               ; preds = %39
  %42 = zext nneg i32 %20 to i64
  br label %45

43:                                               ; preds = %45, %39
  %44 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
  invoke void @_ZN18cDynamicExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %44)
          to label %52 unwind label %70, !prof !149

45:                                               ; preds = %41, %45
  %46 = phi i64 [ 0, %41 ], [ %50, %45 ]
  %47 = load ptr, ptr %13, align 8, !tbaa !67
  %48 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %47, i64 %46
  %49 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %31, i64 %46
  tail call void @_ZN18cDynamicExpression4ElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %48)
  %50 = add nuw nsw i64 %46, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %43, label %45, !prof !150, !llvm.loop !151

52:                                               ; preds = %43
  %53 = load ptr, ptr %44, align 8, !tbaa !78
  %54 = getelementptr inbounds ptr, ptr %53, i64 29
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(20) %44, ptr noundef nonnull %31, i32 noundef %20), !prof !152
  %56 = load ptr, ptr %13, align 8, !tbaa !67
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58, !prof !146

58:                                               ; preds = %52
  %59 = getelementptr inbounds i8, ptr %56, i64 -8
  %60 = load i64, ptr %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %68, label %62, !prof !146

62:                                               ; preds = %58
  %63 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %56, i64 %60
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi ptr [ %66, %64 ], [ %63, %62 ]
  %66 = getelementptr inbounds %"class.cDynamicExpression::Elem", ptr %65, i64 -1
  tail call void @_ZN18cDynamicExpression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %66) #19
  %67 = icmp eq ptr %66, %56
  br i1 %67, label %68, label %64, !prof !144

68:                                               ; preds = %64, %58
  tail call void @_ZdaPv(ptr noundef %59) #23
  br label %69

69:                                               ; preds = %68, %52
  store ptr null, ptr %13, align 8, !tbaa !67
  ret ptr %44

70:                                               ; preds = %43
  %71 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %44) #23
  resume { ptr, i32 } %71
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN18cDynamicExpression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #12

declare void @_ZN18cDynamicExpression4ElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN18cDynamicExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN18cExpressionBuilder13setExpressionEP8cParImplP18cDynamicExpression(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !66 {
  %3 = load ptr, ptr %0, align 8, !tbaa !78
  %4 = getelementptr inbounds ptr, ptr %3, i64 40
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1), !prof !153
  %6 = load ptr, ptr %1, align 8, !tbaa !78
  %7 = getelementptr inbounds ptr, ptr %6, i64 31
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(20) %1), !prof !154
  br i1 %9, label %10, label %14, !prof !155

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !78
  %12 = getelementptr inbounds ptr, ptr %11, i64 48
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef null), !prof !156
  br label %14

14:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !78
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !132

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !142
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #23
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !132

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !142
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #23
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !158

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !142
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #23
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !139 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !139 {
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
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !159
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !139 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !142
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.37)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !141, !alias.scope !162
  %10 = load ptr, ptr %7, align 8, !tbaa !85
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !142
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !85, !alias.scope !162
  %19 = load i64, ptr %11, align 8, !tbaa !99
  store i64 %19, ptr %9, align 8, !tbaa !99, !alias.scope !162
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !142
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !142, !alias.scope !162
  store ptr %11, ptr %7, align 8, !tbaa !85
  store i64 0, ptr %21, align 8, !tbaa !142
  store i8 0, ptr %11, align 8, !tbaa !99
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !142, !noalias !165
  %27 = load i64, ptr %23, align 8, !tbaa !142, !noalias !165
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #20
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !85, !noalias !165
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !141, !alias.scope !165
  %37 = load ptr, ptr %34, align 8, !tbaa !85
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !142
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !85, !alias.scope !165
  %46 = load i64, ptr %38, align 8, !tbaa !99
  store i64 %46, ptr %36, align 8, !tbaa !99, !alias.scope !165
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !142
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !142, !alias.scope !165
  store ptr %38, ptr %34, align 8, !tbaa !85
  store i64 0, ptr %48, align 8, !tbaa !142
  store i8 0, ptr %38, align 8, !tbaa !99
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  %52 = load ptr, ptr %3, align 8, !tbaa !85
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !142
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #23
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !85
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !142
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #23
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !85
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !142
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #23
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !85
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !142
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #23
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !85
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !142
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #23
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !168, !range !108, !noundef !109
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #13 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !169
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !141
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.39) #20
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store i64 %9, ptr %4, align 8, !tbaa !170
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !171

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !85
  %13 = load i64, ptr %4, align 8, !tbaa !170
  store i64 %13, ptr %5, align 8, !tbaa !99
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !85
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !172

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !99
  store i8 %17, ptr %15, align 1, !tbaa !99
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !173
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !170
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !142
  %22 = load ptr, ptr %0, align 8, !tbaa !85
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #11 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11cStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cexpressionbuilder.cc() #16 section ".text.startup" !prof !157 !PGOFuncName !174 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!65}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!35 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement, i64 37}
!36 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, i64 4}
!37 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, i64 90}
!38 = !{ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, i64 87}
!39 = !{ptr @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement, ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, i64 74}
!40 = !{ptr @_ZN18cExpressionBuilder10doOperatorEP15OperatorElement, ptr @strcmp, i64 77}
!41 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @strcmp, i64 12}
!42 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_Znwm, i64 4}
!43 = !{ptr @_ZN18cExpressionBuilder10doFunctionEP15FunctionElement, ptr @_ZN10NEDSupport6SizeofC1EPKcbb, i64 4}
!44 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @strcmp, i64 78}
!45 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_Znwm, i64 91}
!46 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_ZN10NEDSupport7LoopVarC2EPKc, i64 58}
!47 = !{ptr @_ZN18cExpressionBuilder7doIdentEP12IdentElement, ptr @_ZN10NEDSupport12ParameterRefC1EPKcbb, i64 33}
!48 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @strcmp, i64 7}
!49 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_Z8opp_atolPKc, i64 67}
!50 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_Z8opp_atofPKc, i64 9}
!51 = !{ptr @_ZN18cExpressionBuilder9doLiteralEP14LiteralElement, ptr @_ZN11cStringPool3getEPKc, i64 13}
!52 = !{ptr @_ZN10NEDSupport7LoopVarC2EPKc, ptr @strlen, i64 70}
!53 = !{ptr @_ZN10NEDSupport7LoopVarC2EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 70}
!54 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_Znam, i64 288}
!55 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZN18cExpressionBuilder6doNodeEP10NEDElement, i64 144}
!56 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_Znwm, i64 144}
!57 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZN18cDynamicExpressionC1Ev, i64 144}
!58 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZN18cDynamicExpression4ElemaSERKS0_, i64 218}
!59 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZN18cDynamicExpression4ElemD1Ev, i64 144000}
!60 = !{ptr @_ZN18cExpressionBuilder7processEP17ExpressionElementb, ptr @_ZdaPv, i64 144}
!61 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!62 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!63 = !{ptr @_GLOBAL__sub_I_cexpressionbuilder.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!64 = !{ptr @_GLOBAL__sub_I_cexpressionbuilder.cc, ptr @__cxa_atexit, i64 1}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = !{!"function_entry_count", i64 144}
!67 = !{!68, !72, i64 8}
!68 = !{!"_ZTS18cExpressionBuilder", !69, i64 0, !72, i64 8, !73, i64 16, !73, i64 20}
!69 = !{!"bool", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C++ TBAA"}
!72 = !{!"any pointer", !70, i64 0}
!73 = !{!"int", !70, i64 0}
!74 = !{!"function_entry_count", i64 218}
!75 = !{!68, !73, i64 16}
!76 = !{!68, !73, i64 20}
!77 = !{!"branch_weights", i32 0, i32 218}
!78 = !{!79, !79, i64 0}
!79 = !{!"vtable pointer", !71, i64 0}
!80 = !{!"VP", i32 0, i64 218, i64 7645052046219768714, i64 90, i64 -467464192053893877, i64 87, i64 7032535450762907945, i64 37}
!81 = !{!"branch_weights", i32 0, i32 37, i32 4, i32 90, i32 87}
!82 = !{!"function_entry_count", i64 37}
!83 = !{!"VP", i32 0, i64 37, i64 -4535849660517922832, i64 37}
!84 = !{!"branch_weights", i32 1, i32 147}
!85 = !{!86, !72, i64 0}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !87, i64 0, !88, i64 8, !70, i64 16}
!87 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !72, i64 0}
!88 = !{!"long", !70, i64 0}
!89 = !{!"branch_weights", i32 0, i32 37}
!90 = !{!"VP", i32 0, i64 74, i64 -7396538328733376965, i64 74}
!91 = !{!"branch_weights", i32 147, i32 149}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!"VP", i32 0, i64 37, i64 -7396538328733376965, i64 37}
!96 = !{!97, !98, i64 0}
!97 = !{!"_ZTSN18cDynamicExpression4ElemE", !98, i64 0, !70, i64 8}
!98 = !{!"_ZTSN18cDynamicExpression4Elem4TypeE", !70, i64 0}
!99 = !{!70, !70, i64 0}
!100 = !{!"branch_weights", i32 37, i32 0}
!101 = !{!"branch_weights", i32 4, i32 33}
!102 = !{!"branch_weights", i32 26, i32 7}
!103 = !{!"branch_weights", i32 7, i32 0}
!104 = !{!"function_entry_count", i64 4}
!105 = !{!"VP", i32 0, i64 4, i64 -4690344510050399184, i64 4}
!106 = !{!"branch_weights", i32 0, i32 4}
!107 = !{!68, !69, i64 0}
!108 = !{i8 0, i8 2}
!109 = !{}
!110 = !{!"branch_weights", i32 4, i32 0}
!111 = !{!"VP", i32 0, i64 4, i64 2692580133296111266, i64 4}
!112 = !{!113, !69, i64 8}
!113 = !{!"_ZTSN10NEDSupport6XMLDocE", !114, i64 0, !69, i64 8}
!114 = !{!"_ZTSN18cDynamicExpression7FunctorE", !115, i64 0}
!115 = !{!"_ZTS7cObject"}
!116 = distinct !{!116, !93, !94}
!117 = distinct !{!117, !93, !94}
!118 = !{!"function_entry_count", i64 90}
!119 = !{!"VP", i32 0, i64 90, i64 -4535849660517922832, i64 90}
!120 = !{!"branch_weights", i32 0, i32 90}
!121 = !{!"branch_weights", i32 89, i32 1}
!122 = !{!73, !73, i64 0}
!123 = !{!"branch_weights", i32 47, i32 7}
!124 = !{!"branch_weights", i32 47, i32 0}
!125 = distinct !{!125, !93, !94}
!126 = !{!72, !72, i64 0}
!127 = !{!"branch_weights", i32 35, i32 12}
!128 = !{!"branch_weights", i32 35, i32 0}
!129 = !{!"branch_weights", i32 0, i32 55}
!130 = !{!"branch_weights", i32 54, i32 1}
!131 = !{!"branch_weights", i32 54, i32 0}
!132 = !{!"branch_weights", i32 1, i32 0}
!133 = !{!"function_entry_count", i64 87}
!134 = !{!135, !73, i64 112}
!135 = !{!"_ZTS14LiteralElement", !136, i64 0, !73, i64 112, !86, i64 120, !86, i64 152, !86, i64 184}
!136 = !{!"_ZTS10NEDElement", !88, i64 8, !86, i64 16, !137, i64 48, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !72, i64 104}
!137 = !{!"_ZTS15NEDSourceRegion", !73, i64 0, !73, i64 4, !73, i64 8, !73, i64 12}
!138 = !{!"branch_weights", i32 0, i32 7, i32 67, i32 9, i32 4}
!139 = !{!"function_entry_count", i64 0}
!140 = !{!"function_entry_count", i64 70}
!141 = !{!87, !72, i64 0}
!142 = !{!86, !88, i64 8}
!143 = !{!"branch_weights", i32 70, i32 0}
!144 = !{!"branch_weights", i32 144, i32 143856}
!145 = !{!"VP", i32 0, i64 144, i64 -4535849660517922832, i64 144}
!146 = !{!"branch_weights", i32 0, i32 144}
!147 = !{!"branch_weights", i32 144, i32 74}
!148 = !{!"branch_weights", i32 143, i32 1}
!149 = !{!"branch_weights", i32 144, i32 0}
!150 = !{!"branch_weights", i32 143, i32 75}
!151 = distinct !{!151, !93, !94}
!152 = !{!"VP", i32 0, i64 144, i64 -3939948340332322487, i64 144}
!153 = !{!"VP", i32 0, i64 144, i64 -8803117954401036533, i64 127, i64 -6556953388856022081, i64 7, i64 7041740622140808183, i64 5}
!154 = !{!"VP", i32 0, i64 144, i64 -8554648042136898500, i64 144}
!155 = !{!"branch_weights", i32 59, i32 85}
!156 = !{!"VP", i32 0, i64 59, i64 -3400297560414007241, i64 43, i64 7384286917898455226, i64 7, i64 8102158561727650184, i64 5}
!157 = !{!"function_entry_count", i64 1}
!158 = !{!"branch_weights", i32 0, i32 1}
!159 = !{!160, !73, i64 8}
!160 = !{!"_ZTS10cException", !161, i64 0, !73, i64 8, !86, i64 16, !69, i64 48, !86, i64 56, !86, i64 88, !73, i64 120}
!161 = !{!"_ZTSSt9exception"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!164 = distinct !{!164, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!167 = distinct !{!167, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!168 = !{!160, !69, i64 48}
!169 = !{!160, !73, i64 120}
!170 = !{!88, !88, i64 0}
!171 = !{!"branch_weights", i32 1257662, i32 631781}
!172 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!173 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!174 = !{!"simulator/cexpressionbuilder.cc;_GLOBAL__sub_I_cexpressionbuilder.cc"}
