; ModuleID = 'VariablesStack.cpp'
source_filename = "VariablesStack.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::VariablesStack" = type { %"class.xalanc_1_10::XalanVector", i64, i8, i64, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::VariablesStack::StackEntry" = type { i32, ptr, %"class.xalanc_1_10::XObjectPtr", ptr, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry" = type { ptr, %"class.xalanc_1_10::XObjectPtr", ptr }
%"class.xalanc_1_10::VariablesStack::CommitPushParams" = type { ptr, i64 }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1010XalanQName6equalsERKS0_ = comdat any

$_ZNK11xalanc_1_1014VariablesStack28InvalidStackContextException7getTypeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZSt9__find_ifIPPKN11xalanc_1_1012ElemVariableEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE = dso_local constant [62 x i8] c"N11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE\00", align 1
@_ZTIN11xalanc_1_1022XSLTProcessorExceptionE = external constant ptr
@_ZTIN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, ptr @_ZTIN11xalanc_1_1022XSLTProcessorExceptionE }, align 8
@_ZN11xalanc_1_1014VariablesStack28InvalidStackContextException6m_typeE = dso_local constant [29 x i16] [i16 73, i16 110, i16 118, i16 97, i16 108, i16 105, i16 100, i16 83, i16 116, i16 97, i16 99, i16 107, i16 67, i16 111, i16 110, i16 116, i16 101, i16 120, i16 116, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev, ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD0Ev, ptr @_ZNK11xalanc_1_1014VariablesStack28InvalidStackContextException7getTypeEv] }, align 8

@_ZN11xalanc_1_1014VariablesStackC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014VariablesStackC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014VariablesStackD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014VariablesStackD2Ev
@_ZN11xalanc_1_1014VariablesStack16CommitPushParamsC1ERS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsC2ERS0_
@_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD2Ev
@_ZN11xalanc_1_1014VariablesStack10StackEntryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2Ev
@_ZN11xalanc_1_1014VariablesStack10StackEntryC1EPKNS_10XalanQNameERKNS_10XObjectPtrEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameERKNS_10XObjectPtrEb
@_ZN11xalanc_1_1014VariablesStack10StackEntryC1EPKNS_10XalanQNameEPKNS_12ElemVariableEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameEPKNS_12ElemVariableEb
@_ZN11xalanc_1_1014VariablesStack10StackEntryC1EPKNS_19ElemTemplateElementE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_19ElemTemplateElementE
@_ZN11xalanc_1_1014VariablesStack10StackEntryC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryC2ERKS1_
@_ZN11xalanc_1_1014VariablesStack10StackEntryD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev
@_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionC1ERNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionC2ERNS_14XalanDOMStringE
@_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStackC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr %1, ptr %0, align 8, !tbaa !72
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i64 4294967295, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  store i8 0, ptr %5, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  store i64 0, ptr %6, align 8, !tbaa !84
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !85
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 4, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !86
  %10 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 5, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 100)
          to label %11 unwind label %12, !prof !87

11:                                               ; preds = %2
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  resume { ptr, i32 } %13
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !90

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = load ptr, ptr %0, align 8, !tbaa !86
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !94

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #21
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !95
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !87

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = load ptr, ptr %0, align 8, !tbaa !85
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !98
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %28, label %5, !prof !99

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !101
  %10 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %22, label %12, !prof !102

12:                                               ; preds = %5, %19
  %13 = phi ptr [ %20, %19 ], [ %7, %5 ]
  %14 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %15)
          to label %19 unwind label %16, !prof !105

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #21
  unreachable

19:                                               ; preds = %12
  %20 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %13, i64 1
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %22, label %12, !prof !106, !llvm.loop !107

22:                                               ; preds = %19, %5
  %23 = load ptr, ptr %6, align 8, !tbaa !100
  %24 = load ptr, ptr %0, align 8, !tbaa !72
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %23)
          to label %28 unwind label %29, !prof !110

28:                                               ; preds = %22, %1
  ret void

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #21
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStackD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !101
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %8, label %5, !prof !87

5:                                                ; preds = %1, %5
  tail call void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  %6 = load i64, ptr %2, align 8, !tbaa !101
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %5, !prof !87, !llvm.loop !111

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 4, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !112
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %13, label %12, !prof !113

12:                                               ; preds = %8
  store i64 0, ptr %9, align 8, !tbaa !112
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 5, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !114
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %18, label %17, !prof !113

17:                                               ; preds = %13
  store i64 0, ptr %14, align 8, !tbaa !114
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  store i8 0, ptr %19, align 8, !tbaa !83
  %20 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 4294967295, ptr %20, align 8, !tbaa !78
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr nocapture noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !84
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !101
  %6 = icmp eq i64 %3, %5
  br i1 %6, label %7, label %9, !prof !115

7:                                                ; preds = %1
  %8 = add i64 %3, -1
  store i64 %8, ptr %2, align 8, !tbaa !84
  br label %9

9:                                                ; preds = %7, %1
  %10 = add i64 %5, -1
  store i64 %10, ptr %4, align 8, !tbaa !101
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %12, i64 %10, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %14)
          to label %18 unwind label %15, !prof !115

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #21
  unreachable

18:                                               ; preds = %9
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014VariablesStack25elementFrameAlreadyPushedEPKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef readnone %1) local_unnamed_addr #4 align 2 !prof !116 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !101
  %5 = add i64 %4, -1
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  br label %10

10:                                               ; preds = %7, %20
  %11 = phi i1 [ %6, %7 ], [ %22, %20 ]
  %12 = phi i64 [ %5, %7 ], [ %21, %20 ]
  %13 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %9, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !117
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %9, i64 %12, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %10
  %21 = add i64 %12, -1
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %10, label %23, !llvm.loop !121

23:                                               ; preds = %16, %20, %2
  %24 = phi i1 [ %6, %2 ], [ %11, %16 ], [ %22, %20 ]
  ret i1 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #20
  store i32 0, ptr %2, align 8, !tbaa !117
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %2, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %2, i64 0, i32 3
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = load i64, ptr %6, align 8, !tbaa !84
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !101
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %13, !prof !123

11:                                               ; preds = %1
  %12 = add i64 %7, 1
  store i64 %12, ptr %6, align 8, !tbaa !84
  br label %13

13:                                               ; preds = %11, %1
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %14 unwind label %30, !prof !123

14:                                               ; preds = %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !83, !range !124, !noundef !125
  %17 = icmp eq i8 %16, 0
  %18 = load i32, ptr %2, align 8
  %19 = icmp eq i32 %18, 1
  %20 = select i1 %17, i1 %19, i1 false, !prof !126
  br i1 %20, label %21, label %24, !prof !127

21:                                               ; preds = %14
  %22 = load i64, ptr %6, align 8, !tbaa !84
  %23 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !78
  br label %24

24:                                               ; preds = %21, %14
  %25 = load ptr, ptr %4, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %25)
          to label %29 unwind label %26, !prof !123

26:                                               ; preds = %24
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #21
  unreachable

29:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #20
  ret void

30:                                               ; preds = %13
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load ptr, ptr %4, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %32)
          to label %36 unwind label %33

33:                                               ; preds = %30
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  call void @__clang_call_terminate(ptr %35) #21
  unreachable

36:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #20
  resume { ptr, i32 } %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack4pushERKNS0_10StackEntryE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 !prof !116 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !101
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = add i64 %4, 1
  store i64 %9, ptr %3, align 8, !tbaa !84
  br label %10

10:                                               ; preds = %8, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %11 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  %12 = load i8, ptr %11, align 8, !tbaa !83, !range !124, !noundef !125
  %13 = icmp eq i8 %12, 0
  %14 = load i32, ptr %1, align 8
  %15 = icmp eq i32 %14, 1
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i64, ptr %3, align 8, !tbaa !84
  %19 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 %18, ptr %19, align 8, !tbaa !78
  br label %20

20:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack16popContextMarkerEv(ptr nocapture noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 %5
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %25, %1
  %9 = phi ptr [ %6, %1 ], [ %10, %25 ]
  %10 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %9, i64 -1
  %11 = load i32, ptr %10, align 8, !tbaa !117
  %12 = load i64, ptr %7, align 8, !tbaa !84
  %13 = load i64, ptr %4, align 8, !tbaa !101
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17, !prof !115

15:                                               ; preds = %8
  %16 = add i64 %12, -1
  store i64 %16, ptr %7, align 8, !tbaa !84
  br label %17

17:                                               ; preds = %15, %8
  %18 = add i64 %13, -1
  store i64 %18, ptr %4, align 8, !tbaa !101
  %19 = load ptr, ptr %2, align 8, !tbaa !100
  %20 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %19, i64 %18, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %21)
          to label %25 unwind label %22, !prof !115

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #21
  unreachable

25:                                               ; preds = %17
  %26 = icmp eq i32 %11, 0
  br i1 %26, label %27, label %8, !prof !129

27:                                               ; preds = %25
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014VariablesStack16PushParamFunctorclERKNS0_17ParamsVectorEntryE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %3 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  %4 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  %5 = getelementptr inbounds %"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr %0, align 8, !tbaa !130
  br i1 %7, label %45, label %9, !prof !132

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  %10 = load ptr, ptr %1, align 8, !tbaa !133
  store i32 2, ptr %3, align 8, !tbaa !117
  %11 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !135
  %12 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 0, i32 2
  store ptr %6, ptr %12, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %6)
  %13 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 0, i32 3
  %14 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %8, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %15 = load i64, ptr %14, align 8, !tbaa !84
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !101
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %21, !prof !136

19:                                               ; preds = %9
  %20 = add i64 %15, 1
  store i64 %20, ptr %14, align 8, !tbaa !84
  br label %21

21:                                               ; preds = %19, %9
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %22 unwind label %38, !prof !136

22:                                               ; preds = %21
  %23 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %8, i64 0, i32 2
  %24 = load i8, ptr %23, align 8, !tbaa !83, !range !124, !noundef !125
  %25 = icmp eq i8 %24, 0
  %26 = load i32, ptr %3, align 8
  %27 = icmp eq i32 %26, 1
  %28 = select i1 %25, i1 %27, i1 false, !prof !132
  br i1 %28, label %29, label %32, !prof !132

29:                                               ; preds = %22
  %30 = load i64, ptr %14, align 8, !tbaa !84
  %31 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %8, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !78
  br label %32

32:                                               ; preds = %29, %22
  %33 = load ptr, ptr %12, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %33)
          to label %37 unwind label %34, !prof !136

34:                                               ; preds = %32
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #21
  unreachable

37:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  br label %84

38:                                               ; preds = %21
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = load ptr, ptr %12, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %40)
          to label %44 unwind label %41

41:                                               ; preds = %38
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #21
  unreachable

44:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  br label %85

45:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #20
  %46 = load ptr, ptr %1, align 8, !tbaa !133
  %47 = getelementptr inbounds %"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry", ptr %1, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !137
  store i32 2, ptr %4, align 8, !tbaa !117
  %49 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 0, i32 1
  store ptr %46, ptr %49, align 8, !tbaa !135
  %50 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 0, i32 2
  store ptr null, ptr %50, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %51 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 0, i32 3
  store ptr %48, ptr %51, align 8, !tbaa !138
  %52 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 0, i32 4
  store ptr null, ptr %52, align 8, !tbaa !120
  %53 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %8, i64 0, i32 3
  %54 = load i64, ptr %53, align 8, !tbaa !84
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !101
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = add i64 %54, 1
  store i64 %59, ptr %53, align 8, !tbaa !84
  br label %60

60:                                               ; preds = %58, %45
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %61 unwind label %77

61:                                               ; preds = %60
  %62 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %8, i64 0, i32 2
  %63 = load i8, ptr %62, align 8, !tbaa !83, !range !124, !noundef !125
  %64 = icmp eq i8 %63, 0
  %65 = load i32, ptr %4, align 8
  %66 = icmp eq i32 %65, 1
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i64, ptr %53, align 8, !tbaa !84
  %70 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %8, i64 0, i32 1
  store i64 %69, ptr %70, align 8, !tbaa !78
  br label %71

71:                                               ; preds = %68, %61
  %72 = load ptr, ptr %50, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %72)
          to label %76 unwind label %73

73:                                               ; preds = %71
  %74 = landingpad { ptr, i32 }
          catch ptr null
  %75 = extractvalue { ptr, i32 } %74, 0
  call void @__clang_call_terminate(ptr %75) #21
  unreachable

76:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  br label %84

77:                                               ; preds = %60
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %50, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %79)
          to label %83 unwind label %80

80:                                               ; preds = %77
  %81 = landingpad { ptr, i32 }
          catch ptr null
  %82 = extractvalue { ptr, i32 } %81, 0
  call void @__clang_call_terminate(ptr %82) #21
  unreachable

83:                                               ; preds = %77
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  br label %85

84:                                               ; preds = %76, %37
  ret void

85:                                               ; preds = %83, %44
  %86 = phi { ptr, i32 } [ %39, %44 ], [ %78, %83 ]
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsC2ERS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #7 align 2 !prof !116 {
  store ptr %1, ptr %0, align 8, !tbaa !139
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::CommitPushParams", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !101
  store i64 %5, ptr %3, align 8, !tbaa !141
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack16CommitPushParamsD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %2 = load ptr, ptr %0, align 8, !tbaa !139
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::CommitPushParams", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %0, align 8, !tbaa !139
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !101
  %9 = load i64, ptr %5, align 8, !tbaa !141
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %13, %11 ], [ %6, %4 ]
  tail call void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr noundef nonnull align 8 dereferenceable(120) %12), !llvm.loop !142
  %13 = load ptr, ptr %0, align 8, !tbaa !139
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !101
  %16 = load i64, ptr %5, align 8, !tbaa !141
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %11, label %18

18:                                               ; preds = %11, %4, %1
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !116 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %3 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  %4 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !146
  %11 = getelementptr inbounds %"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry", ptr %8, i64 %10
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %97, label %13, !prof !147

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 0, i32 2
  %16 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 0, i32 3
  %17 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 0, i32 2
  br label %20

20:                                               ; preds = %13, %94
  %21 = phi ptr [ %8, %13 ], [ %95, %94 ]
  %22 = getelementptr inbounds %"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry", ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = icmp eq ptr %23, null
  br i1 %24, label %56, label %25, !prof !132

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  %26 = load ptr, ptr %21, align 8, !tbaa !133
  store i32 2, ptr %3, align 8, !tbaa !117
  store ptr %26, ptr %14, align 8, !tbaa !135
  store ptr %23, ptr %15, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %23)
          to label %27 unwind label %98

27:                                               ; preds = %25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %28 = load i64, ptr %17, align 8, !tbaa !84
  %29 = load i64, ptr %5, align 8, !tbaa !101
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33, !prof !136

31:                                               ; preds = %27
  %32 = add i64 %28, 1
  store i64 %32, ptr %17, align 8, !tbaa !84
  br label %33

33:                                               ; preds = %31, %27
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %34 unwind label %49, !prof !136

34:                                               ; preds = %33
  %35 = load i8, ptr %18, align 8, !tbaa !83, !range !124, !noundef !125
  %36 = icmp eq i8 %35, 0
  %37 = load i32, ptr %3, align 8
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %36, i1 %38, i1 false, !prof !132
  br i1 %39, label %40, label %43, !prof !132

40:                                               ; preds = %34
  %41 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  %42 = load i64, ptr %17, align 8, !tbaa !84
  store i64 %42, ptr %41, align 8, !tbaa !78
  br label %43

43:                                               ; preds = %40, %34
  %44 = load ptr, ptr %15, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %44)
          to label %48 unwind label %45, !prof !136

45:                                               ; preds = %43
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #21
  unreachable

48:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  br label %94

49:                                               ; preds = %33
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = load ptr, ptr %15, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %51)
          to label %55 unwind label %52

52:                                               ; preds = %49
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #21
  unreachable

55:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  br label %100

56:                                               ; preds = %20
  %57 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #20
  %58 = load ptr, ptr %21, align 8, !tbaa !133
  %59 = getelementptr inbounds %"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry", ptr %21, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !137
  store i32 2, ptr %4, align 8, !tbaa !117
  store ptr %58, ptr %57, align 8, !tbaa !135
  store ptr null, ptr %19, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %61 unwind label %98

61:                                               ; preds = %56
  %62 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 0, i32 3
  %63 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %4, i64 0, i32 4
  %64 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  store ptr %60, ptr %62, align 8, !tbaa !138
  store ptr null, ptr %63, align 8, !tbaa !120
  %65 = load i64, ptr %64, align 8, !tbaa !84
  %66 = load i64, ptr %5, align 8, !tbaa !101
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = add i64 %65, 1
  store i64 %69, ptr %64, align 8, !tbaa !84
  br label %70

70:                                               ; preds = %68, %61
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %71 unwind label %87

71:                                               ; preds = %70
  %72 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  %73 = load i8, ptr %72, align 8, !tbaa !83, !range !124, !noundef !125
  %74 = icmp eq i8 %73, 0
  %75 = load i32, ptr %4, align 8
  %76 = icmp eq i32 %75, 1
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  %80 = load i64, ptr %64, align 8, !tbaa !84
  store i64 %80, ptr %79, align 8, !tbaa !78
  br label %81

81:                                               ; preds = %78, %71
  %82 = load ptr, ptr %19, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %82)
          to label %86 unwind label %83

83:                                               ; preds = %81
  %84 = landingpad { ptr, i32 }
          catch ptr null
  %85 = extractvalue { ptr, i32 } %84, 0
  call void @__clang_call_terminate(ptr %85) #21
  unreachable

86:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  br label %94

87:                                               ; preds = %70
  %88 = landingpad { ptr, i32 }
          cleanup
  %89 = load ptr, ptr %19, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %89)
          to label %93 unwind label %90

90:                                               ; preds = %87
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #21
  unreachable

93:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  br label %100

94:                                               ; preds = %86, %48
  %95 = getelementptr inbounds %"struct.xalanc_1_10::VariablesStack::ParamsVectorEntry", ptr %21, i64 1
  %96 = icmp eq ptr %95, %11
  br i1 %96, label %97, label %20, !prof !148, !llvm.loop !149

97:                                               ; preds = %94, %2
  ret void

98:                                               ; preds = %56, %25
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %100

100:                                              ; preds = %55, %93, %98
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %50, %55 ], [ %88, %93 ]
  %102 = load i64, ptr %5, align 8, !tbaa !101
  %103 = icmp ugt i64 %102, %6
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %104
  call void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr noundef nonnull align 8 dereferenceable(120) %0), !llvm.loop !142
  %105 = load i64, ptr %5, align 8, !tbaa !101
  %106 = icmp ugt i64 %105, %6
  br i1 %106, label %104, label %107

107:                                              ; preds = %104, %100
  resume { ptr, i32 } %101
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameEPKNS_12ElemVariableEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %5 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !101
  %8 = add i64 %7, -1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  br label %13

13:                                               ; preds = %10, %22
  %14 = phi i64 [ %8, %10 ], [ %23, %22 ]
  %15 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %12, i64 %14
  %16 = load i32, ptr %15, align 8, !tbaa !117
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %12, i64 %14, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !120
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = add i64 %14, -1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %13, !llvm.loop !121

25:                                               ; preds = %22, %4
  tail call void @_ZN11xalanc_1_1014VariablesStack16pushElementFrameEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %3)
  br label %26

26:                                               ; preds = %18, %25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #20
  store i32 1, ptr %5, align 8, !tbaa !117
  %27 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %5, i64 0, i32 1
  store ptr %1, ptr %27, align 8, !tbaa !135
  %28 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %5, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %29 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %5, i64 0, i32 3
  store ptr %2, ptr %29, align 8, !tbaa !138
  %30 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %5, i64 0, i32 4
  store ptr null, ptr %30, align 8, !tbaa !120
  %31 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !84
  %33 = load i64, ptr %6, align 8, !tbaa !101
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = add i64 %32, 1
  store i64 %36, ptr %31, align 8, !tbaa !84
  br label %37

37:                                               ; preds = %35, %26
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %38 unwind label %54

38:                                               ; preds = %37
  %39 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !83, !range !124, !noundef !125
  %41 = icmp eq i8 %40, 0
  %42 = load i32, ptr %5, align 8
  %43 = icmp eq i32 %42, 1
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, ptr %31, align 8, !tbaa !84
  %47 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 %46, ptr %47, align 8, !tbaa !78
  br label %48

48:                                               ; preds = %45, %38
  %49 = load ptr, ptr %28, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %49)
          to label %53 unwind label %50

50:                                               ; preds = %48
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  call void @__clang_call_terminate(ptr %52) #21
  unreachable

53:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  ret void

54:                                               ; preds = %37
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = load ptr, ptr %28, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %56)
          to label %60 unwind label %57

57:                                               ; preds = %54
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #21
  unreachable

60:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  resume { ptr, i32 } %55
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack16pushElementFrameEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !150 {
  %3 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  store i32 4, ptr %3, align 8, !tbaa !117
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !138
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !120
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !84
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !101
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %13, label %15, !prof !151

13:                                               ; preds = %2
  %14 = add i64 %9, 1
  store i64 %14, ptr %8, align 8, !tbaa !84
  br label %15

15:                                               ; preds = %13, %2
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %16 unwind label %32, !prof !151

16:                                               ; preds = %15
  %17 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  %18 = load i8, ptr %17, align 8, !tbaa !83, !range !124, !noundef !125
  %19 = icmp eq i8 %18, 0
  %20 = load i32, ptr %3, align 8
  %21 = icmp eq i32 %20, 1
  %22 = select i1 %19, i1 %21, i1 false, !prof !152
  br i1 %22, label %23, label %26, !prof !153

23:                                               ; preds = %16
  %24 = load i64, ptr %8, align 8, !tbaa !84
  %25 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 %24, ptr %25, align 8, !tbaa !78
  br label %26

26:                                               ; preds = %23, %16
  %27 = load ptr, ptr %5, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %27)
          to label %31 unwind label %28, !prof !151

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #21
  unreachable

31:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  ret void

32:                                               ; preds = %15
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %5, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %34)
          to label %38 unwind label %35

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #21
  unreachable

38:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr noundef readnone %3) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !154 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::VariablesStack::StackEntry", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !101
  %9 = add i64 %8, -1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %26, label %11, !prof !155

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  br label %14

14:                                               ; preds = %11, %23
  %15 = phi i64 [ %9, %11 ], [ %24, %23 ]
  %16 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %13, i64 %15
  %17 = load i32, ptr %16, align 8, !tbaa !117
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %23, !prof !156

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %13, i64 %15, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %53, label %23, !prof !156

23:                                               ; preds = %19, %14
  %24 = add i64 %15, -1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %14, !prof !157, !llvm.loop !121

26:                                               ; preds = %23, %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #20
  %27 = load ptr, ptr %0, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %27)
  %28 = call ptr @__cxa_allocate_exception(i64 104) #20
  %29 = load ptr, ptr %5, align 8, !tbaa !158
  %30 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 123)
          to label %31 unwind label %33

31:                                               ; preds = %26
  invoke void @_ZN11xalanc_1_1022XSLTProcessorExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %28, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(36) %30)
          to label %32 unwind label %33

32:                                               ; preds = %31
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, i64 0, inrange i32 0, i64 2), ptr %28, align 8, !tbaa !92
  invoke void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, ptr nonnull @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev) #22
          to label %90 unwind label %35

33:                                               ; preds = %31, %26
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %28) #20
  br label %37

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !160
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !161
  %45 = load ptr, ptr %5, align 8, !tbaa !158
  %46 = load ptr, ptr %45, align 8, !tbaa !92
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %44)
          to label %52 unwind label %49

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #21
  unreachable

52:                                               ; preds = %37, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  br label %88

53:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #20
  store i32 1, ptr %6, align 8, !tbaa !117
  %54 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %6, i64 0, i32 1
  store ptr %1, ptr %54, align 8, !tbaa !135
  %55 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %6, i64 0, i32 2
  %56 = load ptr, ptr %2, align 8, !tbaa !103
  store ptr %56, ptr %55, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %56)
  %57 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %6, i64 0, i32 3
  %58 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  %59 = load i64, ptr %58, align 8, !tbaa !84
  %60 = load i64, ptr %7, align 8, !tbaa !101
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64, !prof !156

62:                                               ; preds = %53
  %63 = add i64 %59, 1
  store i64 %63, ptr %58, align 8, !tbaa !84
  br label %64

64:                                               ; preds = %62, %53
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %65 unwind label %81, !prof !156

65:                                               ; preds = %64
  %66 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  %67 = load i8, ptr %66, align 8, !tbaa !83, !range !124, !noundef !125
  %68 = icmp eq i8 %67, 0
  %69 = load i32, ptr %6, align 8
  %70 = icmp eq i32 %69, 1
  %71 = select i1 %68, i1 %70, i1 false, !prof !157
  br i1 %71, label %72, label %75, !prof !157

72:                                               ; preds = %65
  %73 = load i64, ptr %58, align 8, !tbaa !84
  %74 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 %73, ptr %74, align 8, !tbaa !78
  br label %75

75:                                               ; preds = %72, %65
  %76 = load ptr, ptr %55, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %76)
          to label %80 unwind label %77, !prof !156

77:                                               ; preds = %75
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #21
  unreachable

80:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  ret void

81:                                               ; preds = %64
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load ptr, ptr %55, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %83)
          to label %87 unwind label %84

84:                                               ; preds = %81
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #21
  unreachable

87:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  br label %88

88:                                               ; preds = %87, %52
  %89 = phi { ptr, i32 } [ %38, %52 ], [ %82, %87 ]
  resume { ptr, i32 } %89

90:                                               ; preds = %32
  unreachable
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack5startEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(120) %0) local_unnamed_addr #11 align 2 !prof !116 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack11resetParamsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0) local_unnamed_addr #12 align 2 !prof !116 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !84
  %4 = add i64 %3, -1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  br label %9

9:                                                ; preds = %6, %14
  %10 = phi i64 [ %4, %6 ], [ %15, %14 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %8, i64 %10
  %12 = load i32, ptr %11, align 8, !tbaa !117
  switch i32 %12, label %14 [
    i32 0, label %17
    i32 3, label %13
  ]

13:                                               ; preds = %9
  store i32 2, ptr %11, align 8, !tbaa !117
  br label %14

14:                                               ; preds = %9, %13
  %15 = add i64 %10, -1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %9, !llvm.loop !162

17:                                               ; preds = %14, %9, %1
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntry10deactivateEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 align 2 !prof !116 {
  %2 = load i32, ptr %0, align 8, !tbaa !117
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 2, ptr %0, align 8, !tbaa !117
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack20markGlobalStackFrameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !101
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 %3, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  store i8 1, ptr %5, align 8, !tbaa !83
  tail call void @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack22unmarkGlobalStackFrameEv(ptr nocapture noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %3, i64 %5
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %6, %1 ], [ %9, %7 ]
  %9 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %8, i64 -1
  %10 = load i32, ptr %9, align 8, !tbaa !117
  tail call void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %7, !prof !87

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  store i64 4294967295, ptr %13, align 8, !tbaa !78
  %14 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 2
  store i8 0, ptr %14, align 8, !tbaa !83
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb(ptr dead_on_unwind noalias nocapture writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !163 {
  %8 = alloca ptr, align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !101
  %12 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %1, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  br label %15

15:                                               ; preds = %77, %7
  %16 = phi i64 [ %13, %7 ], [ %18, %77 ]
  %17 = phi i64 [ %11, %7 ], [ %79, %77 ]
  %18 = add i64 %16, -1
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %80, label %20, !prof !164

20:                                               ; preds = %15
  %21 = load ptr, ptr %14, align 8, !tbaa !100
  %22 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %21, i64 %18
  %23 = load i32, ptr %22, align 8, !tbaa !117
  %24 = and i32 %23, -3
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %48, !prof !165

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %21, i64 %18, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !135
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef nonnull align 8 dereferenceable(36) ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28), !prof !166
  %33 = load ptr, ptr %2, align 8, !tbaa !92
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef nonnull align 8 dereferenceable(36) ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !167
  %37 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull align 8 dereferenceable(36) %36)
  br i1 %37, label %38, label %76, !prof !168

38:                                               ; preds = %26
  %39 = load ptr, ptr %28, align 8, !tbaa !92
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef nonnull align 8 dereferenceable(36) ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %28), !prof !169
  %43 = load ptr, ptr %2, align 8, !tbaa !92
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef nonnull align 8 dereferenceable(36) ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !170
  %47 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %42, ptr noundef nonnull align 8 dereferenceable(36) %46)
  br i1 %47, label %77, label %76, !prof !171

48:                                               ; preds = %20
  switch i32 %23, label %76 [
    i32 2, label %49
    i32 0, label %77
  ], !prof !172

49:                                               ; preds = %48
  br i1 %4, label %50, label %76, !prof !173

50:                                               ; preds = %49
  %51 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %21, i64 %18, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !135
  %53 = load ptr, ptr %52, align 8, !tbaa !92
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef nonnull align 8 dereferenceable(36) ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %52), !prof !174
  %57 = load ptr, ptr %2, align 8, !tbaa !92
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef nonnull align 8 dereferenceable(36) ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !175
  %61 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %56, ptr noundef nonnull align 8 dereferenceable(36) %60)
  br i1 %61, label %62, label %76, !prof !168

62:                                               ; preds = %50
  %63 = load ptr, ptr %52, align 8, !tbaa !92
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef nonnull align 8 dereferenceable(36) ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %52), !prof !176
  %67 = load ptr, ptr %2, align 8, !tbaa !92
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef nonnull align 8 dereferenceable(36) ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !177
  %71 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %66, ptr noundef nonnull align 8 dereferenceable(36) %70)
  br i1 %71, label %72, label %76, !prof !178

72:                                               ; preds = %62
  %73 = load i32, ptr %22, align 8, !tbaa !117
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %77, !prof !136

75:                                               ; preds = %72
  store i32 3, ptr %22, align 8, !tbaa !117
  br label %77

76:                                               ; preds = %62, %50, %49, %48, %38, %26
  br label %77

77:                                               ; preds = %76, %75, %72, %48, %38
  %78 = phi i1 [ true, %76 ], [ false, %38 ], [ false, %72 ], [ false, %75 ], [ false, %48 ]
  %79 = phi i64 [ %17, %76 ], [ %18, %38 ], [ %18, %72 ], [ %18, %75 ], [ %17, %48 ]
  br i1 %78, label %15, label %80, !prof !179, !llvm.loop !180

80:                                               ; preds = %77, %15
  %81 = phi i64 [ %17, %15 ], [ %79, %77 ]
  %82 = load i64, ptr %10, align 8, !tbaa !101
  %83 = icmp ne i64 %81, %82
  %84 = xor i1 %5, true
  %85 = or i1 %83, %84
  %86 = or i1 %85, %4
  %87 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %1, i64 0, i32 1
  %88 = load i64, ptr %87, align 8
  %89 = icmp ult i64 %88, 2
  %90 = select i1 %86, i1 true, i1 %89, !prof !181
  br i1 %90, label %108, label %91, !prof !181

91:                                               ; preds = %80, %105
  %92 = phi i64 [ %94, %105 ], [ %88, %80 ]
  %93 = phi i64 [ %107, %105 ], [ %81, %80 ]
  %94 = add i64 %92, -1
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %14, align 8, !tbaa !100
  %98 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %97, i64 %94
  %99 = load i32, ptr %98, align 8, !tbaa !117
  switch i32 %99, label %104 [
    i32 1, label %100
    i32 0, label %105
  ]

100:                                              ; preds = %96
  %101 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %97, i64 %94, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !135
  %103 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %103, label %105, label %104

104:                                              ; preds = %100, %96
  br label %105

105:                                              ; preds = %104, %100, %96
  %106 = phi i1 [ true, %104 ], [ false, %100 ], [ false, %96 ]
  %107 = phi i64 [ %93, %104 ], [ %94, %100 ], [ %93, %96 ]
  br i1 %106, label %91, label %108, !llvm.loop !182

108:                                              ; preds = %91, %105, %80
  %109 = phi i64 [ %81, %80 ], [ %93, %91 ], [ %107, %105 ]
  %110 = load i64, ptr %10, align 8, !tbaa !101
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %113, !prof !183

112:                                              ; preds = %108
  store i8 0, ptr %6, align 1, !tbaa !184
  store ptr null, ptr %0, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  br label %236

113:                                              ; preds = %108
  store i8 1, ptr %6, align 1, !tbaa !184
  %114 = load ptr, ptr %14, align 8, !tbaa !100
  %115 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %114, i64 %109, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !103
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118, !prof !185

118:                                              ; preds = %113
  store ptr %116, ptr %0, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %116)
  br label %236

119:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  %120 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %114, i64 %109, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !138
  store ptr %121, ptr %8, align 8, !tbaa !186
  store ptr null, ptr %0, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %122 = load ptr, ptr %8, align 8, !tbaa !186
  %123 = icmp eq ptr %122, null
  br i1 %123, label %235, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %3, align 8, !tbaa !92
  %126 = getelementptr inbounds ptr, ptr %125, i64 53
  %127 = load ptr, ptr %126, align 8
  %128 = invoke noundef ptr %127(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %129 unwind label %167

129:                                              ; preds = %124
  %130 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %1, i64 0, i32 4
  %131 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %1, i64 0, i32 4, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !96
  %133 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %1, i64 0, i32 4, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !112
  %135 = getelementptr inbounds ptr, ptr %132, i64 %134
  %136 = invoke noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1012ElemVariableEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %132, ptr noundef %135, ptr nonnull %8)
          to label %137 unwind label %167

137:                                              ; preds = %129
  %138 = load ptr, ptr %131, align 8, !tbaa !96
  %139 = load i64, ptr %133, align 8, !tbaa !112
  %140 = getelementptr inbounds ptr, ptr %138, i64 %139
  %141 = icmp eq ptr %136, %140
  br i1 %141, label %180, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %3, align 8, !tbaa !92
  %144 = getelementptr inbounds ptr, ptr %143, i64 23
  %145 = load ptr, ptr %144, align 8
  %146 = invoke noundef nonnull align 8 dereferenceable(36) ptr %145(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %147 unwind label %169

147:                                              ; preds = %142
  %148 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %146, i32 noundef 137)
          to label %149 unwind label %171

149:                                              ; preds = %147
  %150 = load ptr, ptr %8, align 8, !tbaa !186
  %151 = load ptr, ptr %150, align 8, !tbaa !92
  %152 = getelementptr inbounds ptr, ptr %151, i64 4
  %153 = load ptr, ptr %152, align 8
  %154 = invoke noundef ptr %153(ptr noundef nonnull align 8 dereferenceable(322) %150)
          to label %155 unwind label %171

155:                                              ; preds = %149
  %156 = load ptr, ptr %3, align 8, !tbaa !92
  %157 = getelementptr inbounds ptr, ptr %156, i64 2
  %158 = load ptr, ptr %157, align 8
  invoke void %158(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %148, ptr noundef %128, ptr noundef %154)
          to label %159 unwind label %171

159:                                              ; preds = %155
  %160 = load ptr, ptr %3, align 8, !tbaa !92
  %161 = getelementptr inbounds ptr, ptr %160, i64 24
  %162 = load ptr, ptr %161, align 8
  %163 = invoke noundef zeroext i1 %162(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %146)
          to label %180 unwind label %164

164:                                              ; preds = %159
  %165 = landingpad { ptr, i32 }
          catch ptr null
  %166 = extractvalue { ptr, i32 } %165, 0
  call void @__clang_call_terminate(ptr %166) #21
  unreachable

167:                                              ; preds = %211, %210, %180, %129, %198, %181, %124
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %228

169:                                              ; preds = %142
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %228

171:                                              ; preds = %155, %149, %147
  %172 = landingpad { ptr, i32 }
          cleanup
  %173 = load ptr, ptr %3, align 8, !tbaa !92
  %174 = getelementptr inbounds ptr, ptr %173, i64 24
  %175 = load ptr, ptr %174, align 8
  %176 = invoke noundef zeroext i1 %175(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %146)
          to label %228 unwind label %177

177:                                              ; preds = %171
  %178 = landingpad { ptr, i32 }
          catch ptr null
  %179 = extractvalue { ptr, i32 } %178, 0
  call void @__clang_call_terminate(ptr %179) #21
  unreachable

180:                                              ; preds = %159, %137
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %130, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %181 unwind label %167

181:                                              ; preds = %180
  %182 = load ptr, ptr %3, align 8, !tbaa !92
  %183 = getelementptr inbounds ptr, ptr %182, i64 85
  %184 = load ptr, ptr %183, align 8
  invoke void %184(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %185 unwind label %167

185:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  %186 = load ptr, ptr %8, align 8, !tbaa !186
  invoke void @_ZNK11xalanc_1_1012ElemVariable8getValueERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(368) %186, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %128)
          to label %187 unwind label %218

187:                                              ; preds = %185
  %188 = load ptr, ptr %9, align 8, !tbaa !103
  %189 = icmp eq ptr %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef null)
          to label %191 unwind label %220

191:                                              ; preds = %190
  %192 = load ptr, ptr %9, align 8, !tbaa !103
  store ptr %192, ptr %0, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %192)
          to label %193 unwind label %220

193:                                              ; preds = %187, %191
  %194 = load ptr, ptr %9, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %194)
          to label %198 unwind label %195

195:                                              ; preds = %193
  %196 = landingpad { ptr, i32 }
          catch ptr null
  %197 = extractvalue { ptr, i32 } %196, 0
  call void @__clang_call_terminate(ptr %197) #21
  unreachable

198:                                              ; preds = %193
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  %199 = load ptr, ptr %3, align 8, !tbaa !92
  %200 = getelementptr inbounds ptr, ptr %199, i64 86
  %201 = load ptr, ptr %200, align 8
  invoke void %201(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %202 unwind label %167

202:                                              ; preds = %198
  %203 = load i64, ptr %133, align 8, !tbaa !112
  %204 = add i64 %203, -1
  store i64 %204, ptr %133, align 8, !tbaa !112
  %205 = load ptr, ptr %14, align 8, !tbaa !100
  %206 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %205, i64 %109, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !103
  %208 = load ptr, ptr %0, align 8, !tbaa !103
  %209 = icmp eq ptr %207, %208
  br i1 %209, label %212, label %210

210:                                              ; preds = %202
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %207)
          to label %211 unwind label %167

211:                                              ; preds = %210
  store ptr %208, ptr %206, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %208)
          to label %212 unwind label %167

212:                                              ; preds = %202, %211
  %213 = load ptr, ptr %14, align 8, !tbaa !100
  %214 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %213, i64 %109
  %215 = load i32, ptr %214, align 8, !tbaa !117
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %235

217:                                              ; preds = %212
  store i32 3, ptr %214, align 8, !tbaa !117
  br label %235

218:                                              ; preds = %185
  %219 = landingpad { ptr, i32 }
          cleanup
  br label %226

220:                                              ; preds = %191, %190
  %221 = landingpad { ptr, i32 }
          cleanup
  %222 = load ptr, ptr %9, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %222)
          to label %226 unwind label %223

223:                                              ; preds = %220
  %224 = landingpad { ptr, i32 }
          catch ptr null
  %225 = extractvalue { ptr, i32 } %224, 0
  call void @__clang_call_terminate(ptr %225) #21
  unreachable

226:                                              ; preds = %220, %218
  %227 = phi { ptr, i32 } [ %219, %218 ], [ %221, %220 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  br label %228

228:                                              ; preds = %169, %171, %226, %167
  %229 = phi { ptr, i32 } [ %168, %167 ], [ %227, %226 ], [ %170, %169 ], [ %172, %171 ]
  %230 = load ptr, ptr %0, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %230)
          to label %234 unwind label %231

231:                                              ; preds = %228
  %232 = landingpad { ptr, i32 }
          catch ptr null
  %233 = extractvalue { ptr, i32 } %232, 0
  call void @__clang_call_terminate(ptr %233) #21
  unreachable

234:                                              ; preds = %228
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  resume { ptr, i32 } %229

235:                                              ; preds = %217, %212, %119
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  br label %236

236:                                              ; preds = %118, %235, %112
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i64 @_ZN11xalanc_1_1014VariablesStack9findEntryERKNS_10XalanQNameEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 !prof !116 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !84
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %72, %4
  %11 = phi i64 [ %8, %4 ], [ %13, %72 ]
  %12 = phi i64 [ %6, %4 ], [ %74, %72 ]
  %13 = add i64 %11, -1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %75, label %15, !prof !164

15:                                               ; preds = %10
  %16 = load ptr, ptr %9, align 8, !tbaa !100
  %17 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %16, i64 %13
  %18 = load i32, ptr %17, align 8, !tbaa !117
  %19 = and i32 %18, -3
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %43, !prof !165

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %16, i64 %13, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !135
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef nonnull align 8 dereferenceable(36) ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23), !prof !187
  %28 = load ptr, ptr %1, align 8, !tbaa !92
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef nonnull align 8 dereferenceable(36) ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !188
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %31)
  br i1 %32, label %33, label %71, !prof !168

33:                                               ; preds = %21
  %34 = load ptr, ptr %23, align 8, !tbaa !92
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef nonnull align 8 dereferenceable(36) ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %23), !prof !189
  %38 = load ptr, ptr %1, align 8, !tbaa !92
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef nonnull align 8 dereferenceable(36) ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !190
  %42 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %37, ptr noundef nonnull align 8 dereferenceable(36) %41)
  br i1 %42, label %72, label %71, !prof !171

43:                                               ; preds = %15
  switch i32 %18, label %71 [
    i32 2, label %44
    i32 0, label %72
  ], !prof !172

44:                                               ; preds = %43
  br i1 %2, label %45, label %71, !prof !173

45:                                               ; preds = %44
  %46 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %16, i64 %13, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !135
  %48 = load ptr, ptr %47, align 8, !tbaa !92
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef nonnull align 8 dereferenceable(36) ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %47), !prof !187
  %52 = load ptr, ptr %1, align 8, !tbaa !92
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef nonnull align 8 dereferenceable(36) ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !188
  %56 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(36) %55)
  br i1 %56, label %57, label %71, !prof !168

57:                                               ; preds = %45
  %58 = load ptr, ptr %47, align 8, !tbaa !92
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef nonnull align 8 dereferenceable(36) ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %47), !prof !189
  %62 = load ptr, ptr %1, align 8, !tbaa !92
  %63 = getelementptr inbounds ptr, ptr %62, i64 3
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef nonnull align 8 dereferenceable(36) ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !190
  %66 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %61, ptr noundef nonnull align 8 dereferenceable(36) %65)
  br i1 %66, label %67, label %71, !prof !178

67:                                               ; preds = %57
  %68 = load i32, ptr %17, align 8, !tbaa !117
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %72, !prof !136

70:                                               ; preds = %67
  store i32 3, ptr %17, align 8, !tbaa !117
  br label %72

71:                                               ; preds = %45, %21, %43, %57, %44, %33
  br label %72

72:                                               ; preds = %43, %70, %67, %33, %71
  %73 = phi i1 [ true, %71 ], [ false, %33 ], [ false, %67 ], [ false, %70 ], [ false, %43 ]
  %74 = phi i64 [ %12, %71 ], [ %13, %33 ], [ %13, %67 ], [ %13, %70 ], [ %12, %43 ]
  br i1 %73, label %10, label %75, !prof !179, !llvm.loop !180

75:                                               ; preds = %72, %10
  %76 = phi i64 [ %12, %10 ], [ %74, %72 ]
  %77 = load i64, ptr %5, align 8, !tbaa !101
  %78 = icmp ne i64 %76, %77
  %79 = xor i1 %3, true
  %80 = or i1 %78, %79
  %81 = or i1 %80, %2
  %82 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 1
  %83 = load i64, ptr %82, align 8
  %84 = icmp ult i64 %83, 2
  %85 = select i1 %81, i1 true, i1 %84, !prof !181
  br i1 %85, label %105, label %86, !prof !181

86:                                               ; preds = %75
  %87 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  br label %88

88:                                               ; preds = %86, %102
  %89 = phi i64 [ %91, %102 ], [ %83, %86 ]
  %90 = phi i64 [ %104, %102 ], [ %76, %86 ]
  %91 = add i64 %89, -1
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %87, align 8, !tbaa !100
  %95 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %94, i64 %91
  %96 = load i32, ptr %95, align 8, !tbaa !117
  switch i32 %96, label %101 [
    i32 1, label %97
    i32 0, label %102
  ]

97:                                               ; preds = %93
  %98 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %94, i64 %91, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !135
  %100 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %100, label %102, label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %93, %97, %101
  %103 = phi i1 [ true, %101 ], [ false, %97 ], [ false, %93 ]
  %104 = phi i64 [ %90, %101 ], [ %91, %97 ], [ %90, %93 ]
  br i1 %103, label %88, label %105, !llvm.loop !182

105:                                              ; preds = %102, %88, %75
  %106 = phi i64 [ %76, %75 ], [ %90, %88 ], [ %104, %102 ]
  ret i64 %106
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #10

declare void @_ZNK11xalanc_1_1012ElemVariable8getValueERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntry8activateEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 align 2 !prof !116 {
  %2 = load i32, ptr %0, align 8, !tbaa !117
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 3, ptr %0, align 8, !tbaa !117
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !191 {
  %3 = load ptr, ptr %0, align 8, !tbaa !92
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !192
  %7 = load ptr, ptr %1, align 8, !tbaa !92
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !193
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %10)
  br i1 %11, label %12, label %22, !prof !168

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !92
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !194
  %17 = load ptr, ptr %1, align 8, !tbaa !92
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !195
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %20)
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv(ptr nocapture noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !150 {
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack", ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %60, %1
  %8 = phi i64 [ %4, %1 ], [ %9, %60 ]
  %9 = add i64 %8, -1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %62, label %11, !prof !196

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8, !tbaa !100
  %13 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %12, i64 %9
  %14 = load i32, ptr %13, align 8, !tbaa !117
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47, !prof !196

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #20
  %17 = load ptr, ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %18 unwind label %24

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 104) #20
  %20 = load ptr, ptr %2, align 8, !tbaa !158
  %21 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 123)
          to label %22 unwind label %26

22:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1022XSLTProcessorExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %23 unwind label %26

23:                                               ; preds = %22
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, i64 0, inrange i32 0, i64 2), ptr %19, align 8, !tbaa !92
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, ptr nonnull @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev) #22
          to label %63 unwind label %28

24:                                               ; preds = %16
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %45

26:                                               ; preds = %22, %18
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #20
  br label %30

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !160
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %2, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !161
  %38 = load ptr, ptr %2, align 8, !tbaa !158
  %39 = load ptr, ptr %38, align 8, !tbaa !92
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %37)
          to label %45 unwind label %42

42:                                               ; preds = %35
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #21
  unreachable

45:                                               ; preds = %35, %30, %24
  %46 = phi { ptr, i32 } [ %25, %24 ], [ %31, %30 ], [ %31, %35 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #20
  call void @_ZN11xalanc_1_1014VariablesStack3popEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  resume { ptr, i32 } %46

47:                                               ; preds = %11
  %48 = load i64, ptr %6, align 8, !tbaa !84
  %49 = load i64, ptr %3, align 8, !tbaa !101
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53, !prof !115

51:                                               ; preds = %47
  %52 = add i64 %48, -1
  store i64 %52, ptr %6, align 8, !tbaa !84
  br label %53

53:                                               ; preds = %51, %47
  %54 = add i64 %49, -1
  store i64 %54, ptr %3, align 8, !tbaa !101
  %55 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %12, i64 %54, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %56)
          to label %60 unwind label %57, !prof !115

57:                                               ; preds = %53
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #21
  unreachable

60:                                               ; preds = %53
  %61 = icmp eq i32 %14, 4
  br i1 %61, label %62, label %7, !prof !197, !llvm.loop !198

62:                                               ; preds = %60, %7
  ret void

63:                                               ; preds = %23
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 !prof !116 {
  store i32 0, ptr %0, align 8, !tbaa !117
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameERKNS_10XObjectPtrEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 !prof !116 {
  %5 = select i1 %3, i32 2, i32 1
  store i32 %5, ptr %0, align 8, !tbaa !117
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !135
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %2, align 8, !tbaa !103
  store ptr %8, ptr %7, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %8)
  %9 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_10XalanQNameEPKNS_12ElemVariableEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 !prof !116 {
  %5 = select i1 %3, i32 2, i32 1
  store i32 %5, ptr %0, align 8, !tbaa !117
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !135
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !138
  %9 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !120
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2EPKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !116 {
  store i32 4, ptr %0, align 8, !tbaa !117
  %3 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !138
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 4
  store ptr %1, ptr %5, align 8, !tbaa !120
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryC2ERKS1_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 !prof !116 {
  %3 = load i32, ptr %1, align 8, !tbaa !117
  store i32 %3, ptr %0, align 8, !tbaa !117
  %4 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  store ptr %6, ptr %4, align 8, !tbaa !135
  %7 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  store ptr %9, ptr %7, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %9)
  %10 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !138
  store ptr %12, ptr %10, align 8, !tbaa !138
  %13 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !120
  store ptr %15, ptr %13, align 8, !tbaa !120
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack10StackEntryD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %3)
          to label %7 unwind label %4

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #21
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 !prof !116 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !117
  store i32 %5, ptr %0, align 8, !tbaa !117
  %6 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !135
  %9 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = load ptr, ptr %9, align 8, !tbaa !103
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %11)
  %15 = load ptr, ptr %9, align 8, !tbaa !103
  store ptr %15, ptr %10, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %15)
  br label %16

16:                                               ; preds = %4, %14
  %17 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !138
  %19 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !138
  %20 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !120
  br label %23

23:                                               ; preds = %16, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014VariablesStack10StackEntryeqERKS1_(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef nonnull readonly align 8 dereferenceable(40) %1) local_unnamed_addr #13 align 2 !prof !116 {
  %3 = load i32, ptr %0, align 8, !tbaa !117
  %4 = load i32, ptr %1, align 8, !tbaa !117
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  switch i32 %3, label %28 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %9
    i32 3, label %9
    i32 4, label %22
  ]

7:                                                ; preds = %6
  %8 = icmp eq ptr %1, %0
  br label %28

9:                                                ; preds = %6, %6, %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %10, align 8, !tbaa !103
  %13 = load ptr, ptr %11, align 8, !tbaa !103
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !138
  %18 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !138
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15, %9
  br label %28

22:                                               ; preds = %6
  %23 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  %25 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !120
  %27 = icmp eq ptr %24, %26
  br label %28

28:                                               ; preds = %22, %7, %6, %15, %21, %2
  %29 = phi i1 [ true, %21 ], [ false, %15 ], [ false, %2 ], [ %8, %7 ], [ false, %6 ], [ %27, %22 ]
  ret i1 %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionC2ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !116 {
  %3 = load ptr, ptr %1, align 8, !tbaa !158
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 123)
  tail call void @_ZN11xalanc_1_1022XSLTProcessorExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !92
  ret void
}

declare void @_ZN11xalanc_1_1022XSLTProcessorExceptionC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022XSLTProcessorExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #14

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 !prof !116 {
  tail call void @_ZN11xalanc_1_1022XSLTProcessorExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 !prof !116 {
  tail call void @_ZN11xalanc_1_1022XSLTProcessorExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014VariablesStack28InvalidStackContextException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 !prof !116 {
  ret ptr @_ZN11xalanc_1_1014VariablesStack28InvalidStackContextException6m_typeE
}

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #10

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !72
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !101
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = load ptr, ptr %3, align 8, !tbaa !72
  store ptr %12, ptr %0, align 8, !tbaa !72
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !101
  store i64 %14, ptr %6, align 8, !tbaa !101
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !98
  store i64 %16, ptr %8, align 8, !tbaa !98
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  store ptr %18, ptr %10, align 8, !tbaa !100
  store ptr %5, ptr %3, align 8, !tbaa !72
  store i64 %7, ptr %13, align 8, !tbaa !101
  store i64 %9, ptr %15, align 8, !tbaa !98
  store ptr %11, ptr %17, align 8, !tbaa !100
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !72
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !200

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !72
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !101
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !98
  %16 = mul i64 %13, 40
  %17 = load ptr, ptr %2, align 8, !tbaa !92
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !201
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !100
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  %24 = load i64, ptr %9, align 8, !tbaa !101
  %25 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35, !prof !202

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !72
  %28 = load i64, ptr %6, align 8, !tbaa !101
  %29 = load i64, ptr %7, align 8, !tbaa !98
  %30 = load ptr, ptr %8, align 8, !tbaa !100
  %31 = load ptr, ptr %5, align 8, !tbaa !72
  store ptr %31, ptr %0, align 8, !tbaa !72
  %32 = load i64, ptr %14, align 8, !tbaa !101
  store i64 %32, ptr %6, align 8, !tbaa !101
  %33 = load i64, ptr %15, align 8, !tbaa !98
  store i64 %33, ptr %7, align 8, !tbaa !98
  %34 = load ptr, ptr %21, align 8, !tbaa !100
  store ptr %34, ptr %8, align 8, !tbaa !100
  store ptr %27, ptr %5, align 8, !tbaa !72
  store i64 %28, ptr %14, align 8, !tbaa !101
  store i64 %29, ptr %15, align 8, !tbaa !98
  store ptr %30, ptr %21, align 8, !tbaa !100
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !155

39:                                               ; preds = %37
  %40 = mul i64 %3, 40
  %41 = load ptr, ptr %2, align 8, !tbaa !92
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40), !prof !203
  store ptr %44, ptr %8, align 8, !tbaa !100
  store i64 %3, ptr %7, align 8, !tbaa !98
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !204 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 40
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %153, label %11, !prof !205

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !101
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !98
  br i1 %18, label %21, label %51, !prof !202

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !205

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %153, label %26, !prof !206

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !100
  %28 = load i64, ptr %12, align 8, !tbaa !101
  %29 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %49, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %46, %30 ], [ %29, %26 ]
  %33 = load i32, ptr %31, align 8, !tbaa !117
  store i32 %33, ptr %32, align 8, !tbaa !117
  %34 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %32, i64 0, i32 1
  %35 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !135
  store ptr %36, ptr %34, align 8, !tbaa !135
  %37 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %32, i64 0, i32 2
  %38 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %31, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !103
  store ptr %39, ptr %37, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %39)
  %40 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %32, i64 0, i32 3
  %41 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %31, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !138
  store ptr %42, ptr %40, align 8, !tbaa !138
  %43 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %32, i64 0, i32 4
  %44 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %31, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !120
  store ptr %45, ptr %43, align 8, !tbaa !120
  %46 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %32, i64 1
  %47 = load i64, ptr %12, align 8, !tbaa !101
  %48 = add i64 %47, 1
  store i64 %48, ptr %12, align 8, !tbaa !101
  %49 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %31, i64 1
  %50 = icmp eq ptr %49, %3
  br i1 %50, label %153, label %30, !prof !207, !llvm.loop !208

51:                                               ; preds = %11
  %52 = icmp ugt i64 %14, %20
  br i1 %52, label %53, label %88

53:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %54 = load ptr, ptr %0, align 8, !tbaa !72
  store ptr %54, ptr %5, align 8, !tbaa !72
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %55, align 8, !tbaa !101
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %56, align 8, !tbaa !98
  %57 = mul i64 %14, 40
  %58 = load ptr, ptr %54, align 8, !tbaa !92
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %57)
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %61, ptr %62, align 8, !tbaa !100
  %63 = load i64, ptr %55, align 8, !tbaa !101
  %64 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %61, i64 %63
  %65 = load ptr, ptr %15, align 8, !tbaa !100
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %64, ptr noundef %65, ptr noundef %1)
          to label %66 unwind label %86

66:                                               ; preds = %53
  %67 = load ptr, ptr %62, align 8, !tbaa !100
  %68 = load i64, ptr %55, align 8, !tbaa !101
  %69 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %67, i64 %68
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %69, ptr noundef %2, ptr noundef %3)
          to label %70 unwind label %86

70:                                               ; preds = %66
  %71 = load ptr, ptr %62, align 8, !tbaa !100
  %72 = load i64, ptr %55, align 8, !tbaa !101
  %73 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %71, i64 %72
  %74 = load ptr, ptr %15, align 8, !tbaa !100
  %75 = load i64, ptr %12, align 8, !tbaa !101
  %76 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %74, i64 %75
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %73, ptr noundef %1, ptr noundef %76)
          to label %77 unwind label %86

77:                                               ; preds = %70
  %78 = load ptr, ptr %0, align 8, !tbaa !72
  %79 = load i64, ptr %12, align 8, !tbaa !101
  %80 = load i64, ptr %19, align 8, !tbaa !98
  %81 = load ptr, ptr %15, align 8, !tbaa !100
  %82 = load ptr, ptr %5, align 8, !tbaa !72
  store ptr %82, ptr %0, align 8, !tbaa !72
  %83 = load i64, ptr %55, align 8, !tbaa !101
  store i64 %83, ptr %12, align 8, !tbaa !101
  %84 = load i64, ptr %56, align 8, !tbaa !98
  store i64 %84, ptr %19, align 8, !tbaa !98
  %85 = load ptr, ptr %62, align 8, !tbaa !100
  store ptr %85, ptr %15, align 8, !tbaa !100
  store ptr %78, ptr %5, align 8, !tbaa !72
  store i64 %79, ptr %55, align 8, !tbaa !101
  store i64 %80, ptr %56, align 8, !tbaa !98
  store ptr %81, ptr %62, align 8, !tbaa !100
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %153

86:                                               ; preds = %70, %66, %53
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %87

88:                                               ; preds = %51
  %89 = ptrtoint ptr %17 to i64
  %90 = ptrtoint ptr %1 to i64
  %91 = sub i64 %89, %90
  %92 = icmp ugt i64 %91, %8
  br i1 %92, label %119, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds i8, ptr %2, i64 %91
  %95 = icmp eq ptr %94, %3
  br i1 %95, label %96, label %98

96:                                               ; preds = %98, %93
  %97 = icmp eq ptr %17, %1
  br i1 %97, label %106, label %102

98:                                               ; preds = %93, %98
  %99 = phi ptr [ %100, %98 ], [ %94, %93 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %99)
  %100 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %99, i64 1
  %101 = icmp eq ptr %100, %3
  br i1 %101, label %96, label %98, !llvm.loop !209

102:                                              ; preds = %96, %102
  %103 = phi ptr [ %104, %102 ], [ %1, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %103)
  %104 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %103, i64 1
  %105 = icmp eq ptr %104, %17
  br i1 %105, label %106, label %102, !llvm.loop !210

106:                                              ; preds = %102, %96
  %107 = icmp sgt i64 %91, 0
  br i1 %107, label %108, label %153

108:                                              ; preds = %106
  %109 = udiv exact i64 %91, 40
  br label %110

110:                                              ; preds = %108, %110
  %111 = phi i64 [ %117, %110 ], [ %109, %108 ]
  %112 = phi ptr [ %116, %110 ], [ %1, %108 ]
  %113 = phi ptr [ %115, %110 ], [ %2, %108 ]
  %114 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %112, ptr noundef nonnull align 8 dereferenceable(40) %113)
  %115 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %113, i64 1
  %116 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %112, i64 1
  %117 = add nsw i64 %111, -1
  %118 = icmp sgt i64 %111, 1
  br i1 %118, label %110, label %153, !llvm.loop !211

119:                                              ; preds = %88
  %120 = sub nsw i64 0, %9
  %121 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %17, i64 %120
  %122 = icmp eq ptr %3, %2
  br i1 %122, label %127, label %123

123:                                              ; preds = %119, %123
  %124 = phi ptr [ %125, %123 ], [ %121, %119 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %124)
  %125 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %124, i64 1
  %126 = icmp eq ptr %125, %17
  br i1 %126, label %127, label %123, !llvm.loop !212

127:                                              ; preds = %123, %119
  %128 = ptrtoint ptr %121 to i64
  %129 = sub i64 %128, %90
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = udiv exact i64 %129, 40
  br label %135

133:                                              ; preds = %135, %127
  %134 = icmp sgt i64 %8, 0
  br i1 %134, label %144, label %153

135:                                              ; preds = %131, %135
  %136 = phi i64 [ %142, %135 ], [ %132, %131 ]
  %137 = phi ptr [ %140, %135 ], [ %17, %131 ]
  %138 = phi ptr [ %139, %135 ], [ %121, %131 ]
  %139 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %138, i64 -1
  %140 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %137, i64 -1
  %141 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %140, ptr noundef nonnull align 8 dereferenceable(40) %139)
  %142 = add nsw i64 %136, -1
  %143 = icmp sgt i64 %136, 1
  br i1 %143, label %135, label %133, !llvm.loop !213

144:                                              ; preds = %133, %144
  %145 = phi i64 [ %151, %144 ], [ %9, %133 ]
  %146 = phi ptr [ %150, %144 ], [ %1, %133 ]
  %147 = phi ptr [ %149, %144 ], [ %2, %133 ]
  %148 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1014VariablesStack10StackEntryaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %146, ptr noundef nonnull align 8 dereferenceable(40) %147)
  %149 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %147, i64 1
  %150 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %146, i64 1
  %151 = add nsw i64 %145, -1
  %152 = icmp sgt i64 %145, 1
  br i1 %152, label %144, label %153, !llvm.loop !211

153:                                              ; preds = %110, %144, %30, %106, %133, %24, %77, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !214 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !101
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !98
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %28, !prof !215

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %11, i64 %5
  %13 = load i32, ptr %1, align 8, !tbaa !117
  store i32 %13, ptr %12, align 8, !tbaa !117
  %14 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %11, i64 %5, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  store ptr %16, ptr %14, align 8, !tbaa !135
  %17 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %11, i64 %5, i32 2
  %18 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !103
  store ptr %19, ptr %17, align 8, !tbaa !103
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %19)
  %20 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %11, i64 %5, i32 3
  %21 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !138
  store ptr %22, ptr %20, align 8, !tbaa !138
  %23 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %11, i64 %5, i32 4
  %24 = getelementptr inbounds %"class.xalanc_1_10::VariablesStack::StackEntry", ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !120
  store ptr %25, ptr %23, align 8, !tbaa !120
  %26 = load i64, ptr %4, align 8, !tbaa !101
  %27 = add i64 %26, 1
  store i64 %27, ptr %4, align 8, !tbaa !101
  br label %50

28:                                               ; preds = %2
  %29 = icmp eq i64 %5, 0
  %30 = uitofp i64 %5 to double
  %31 = tail call double @llvm.fmuladd.f64(double %30, double 1.600000e+00, double 5.000000e-01)
  %32 = fptoui double %31 to i64
  %33 = select i1 %29, i64 1, i64 %32, !prof !205
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %34 = load ptr, ptr %0, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %33)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %35 unwind label %48, !prof !202

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 8, !tbaa !72
  %37 = load i64, ptr %4, align 8, !tbaa !101
  %38 = load i64, ptr %6, align 8, !tbaa !98
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !100
  %41 = load ptr, ptr %3, align 8, !tbaa !72
  store ptr %41, ptr %0, align 8, !tbaa !72
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !101
  store i64 %43, ptr %4, align 8, !tbaa !101
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !98
  store i64 %45, ptr %6, align 8, !tbaa !98
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !100
  store ptr %47, ptr %39, align 8, !tbaa !100
  store ptr %36, ptr %3, align 8, !tbaa !72
  store i64 %37, ptr %42, align 8, !tbaa !101
  store i64 %38, ptr %44, align 8, !tbaa !98
  store ptr %40, ptr %46, align 8, !tbaa !100
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %50

48:                                               ; preds = %28
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %49

50:                                               ; preds = %35, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1012ElemVariableEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !116 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !186
  %11 = and i64 %6, -32
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %30
  %14 = phi i64 [ %7, %9 ], [ %32, %30 ]
  %15 = phi ptr [ %0, %9 ], [ %31, %30 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !186
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !186
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %15, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !186
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %15, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !186
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %15, i64 4
  %32 = add nsw i64 %14, -1
  %33 = icmp sgt i64 %14, 1
  br i1 %33, label %13, label %34, !llvm.loop !216

34:                                               ; preds = %30, %3
  %35 = phi ptr [ %0, %3 ], [ %12, %30 ]
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %4, %36
  %38 = ashr exact i64 %37, 3
  switch i64 %38, label %57 [
    i64 3, label %39
    i64 2, label %45
    i64 1, label %52
  ]

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !186
  %41 = load ptr, ptr %2, align 8, !tbaa !186
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !186
  %48 = load ptr, ptr %2, align 8, !tbaa !186
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %51, %50 ], [ %35, %34 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !186
  %55 = load ptr, ptr %2, align 8, !tbaa !186
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %52, %34
  br label %64

58:                                               ; preds = %18
  %59 = getelementptr inbounds ptr, ptr %15, i64 1
  br label %64

60:                                               ; preds = %22
  %61 = getelementptr inbounds ptr, ptr %15, i64 2
  br label %64

62:                                               ; preds = %26
  %63 = getelementptr inbounds ptr, ptr %15, i64 3
  br label %64

64:                                               ; preds = %13, %58, %60, %62, %45, %52, %39, %57
  %65 = phi ptr [ %1, %57 ], [ %35, %39 ], [ %53, %52 ], [ %46, %45 ], [ %59, %58 ], [ %61, %60 ], [ %63, %62 ], [ %15, %13 ]
  ret ptr %65
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !112
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !95
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !186
  store ptr %13, ptr %12, align 8, !tbaa !186
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !112
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !85
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !85
  %24 = load i64, ptr %4, align 8, !tbaa !112
  %25 = load i64, ptr %6, align 8, !tbaa !95
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !96
  %28 = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %28, ptr %0, align 8, !tbaa !85
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !112
  store i64 %30, ptr %4, align 8, !tbaa !112
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !95
  store i64 %32, ptr %6, align 8, !tbaa !95
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  store ptr %34, ptr %26, align 8, !tbaa !96
  store ptr %23, ptr %3, align 8, !tbaa !85
  store i64 %24, ptr %29, align 8, !tbaa !112
  store i64 %25, ptr %31, align 8, !tbaa !95
  store ptr %27, ptr %33, align 8, !tbaa !96
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !92
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !95
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !96
  %52 = load ptr, ptr %3, align 8, !tbaa !85
  %53 = load ptr, ptr %52, align 8, !tbaa !92
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !85
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !112
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !85
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !112
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !95
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !92
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !96
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = load i64, ptr %9, align 8, !tbaa !112
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !85
  %28 = load i64, ptr %6, align 8, !tbaa !112
  %29 = load i64, ptr %7, align 8, !tbaa !95
  %30 = load ptr, ptr %8, align 8, !tbaa !96
  %31 = load ptr, ptr %5, align 8, !tbaa !85
  store ptr %31, ptr %0, align 8, !tbaa !85
  %32 = load i64, ptr %14, align 8, !tbaa !112
  store i64 %32, ptr %6, align 8, !tbaa !112
  %33 = load i64, ptr %15, align 8, !tbaa !95
  store i64 %33, ptr %7, align 8, !tbaa !95
  %34 = load ptr, ptr %21, align 8, !tbaa !96
  store ptr %34, ptr %8, align 8, !tbaa !96
  store ptr %27, ptr %5, align 8, !tbaa !85
  store i64 %28, ptr %14, align 8, !tbaa !112
  store i64 %29, ptr %15, align 8, !tbaa !95
  store ptr %30, ptr %21, align 8, !tbaa !96
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !92
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !95
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !96
  %50 = load ptr, ptr %5, align 8, !tbaa !85
  %51 = load ptr, ptr %50, align 8, !tbaa !92
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #21
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !92
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !96
  store i64 %3, ptr %7, align 8, !tbaa !95
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !112
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !95
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !96
  %28 = load i64, ptr %12, align 8, !tbaa !112
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !186
  store ptr %34, ptr %32, align 8, !tbaa !186
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !217

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %42 = load ptr, ptr %0, align 8, !tbaa !85
  store ptr %42, ptr %5, align 8, !tbaa !85
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !112
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !95
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !92
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !96
  %51 = load i64, ptr %43, align 8, !tbaa !112
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !96
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !96
  %56 = load i64, ptr %43, align 8, !tbaa !112
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !96
  %60 = load i64, ptr %43, align 8, !tbaa !112
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !96
  %63 = load i64, ptr %12, align 8, !tbaa !112
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !85
  %67 = load i64, ptr %12, align 8, !tbaa !112
  %68 = load i64, ptr %19, align 8, !tbaa !95
  %69 = load ptr, ptr %15, align 8, !tbaa !96
  %70 = load ptr, ptr %5, align 8, !tbaa !85
  store ptr %70, ptr %0, align 8, !tbaa !85
  %71 = load i64, ptr %43, align 8, !tbaa !112
  store i64 %71, ptr %12, align 8, !tbaa !112
  %72 = load i64, ptr %44, align 8, !tbaa !95
  store i64 %72, ptr %19, align 8, !tbaa !95
  %73 = load ptr, ptr %50, align 8, !tbaa !96
  store ptr %73, ptr %15, align 8, !tbaa !96
  store ptr %66, ptr %5, align 8, !tbaa !85
  store i64 %67, ptr %43, align 8, !tbaa !112
  store i64 %68, ptr %44, align 8, !tbaa !95
  store ptr %69, ptr %50, align 8, !tbaa !96
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !92
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #21
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !95
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !96
  %89 = load ptr, ptr %5, align 8, !tbaa !85
  %90 = load ptr, ptr %89, align 8, !tbaa !92
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #21
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !218

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !219

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !220

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !112
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !85
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !85
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !112
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !95
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = load ptr, ptr %3, align 8, !tbaa !85
  store ptr %12, ptr %0, align 8, !tbaa !85
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !112
  store i64 %14, ptr %6, align 8, !tbaa !112
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !95
  store i64 %16, ptr %8, align 8, !tbaa !95
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  store ptr %18, ptr %10, align 8, !tbaa !96
  store ptr %5, ptr %3, align 8, !tbaa !85
  store i64 %7, ptr %13, align 8, !tbaa !112
  store i64 %9, ptr %15, align 8, !tbaa !95
  store ptr %11, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !92
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #21
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!70}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !{ptr @_ZN11xalanc_1_1014VariablesStackC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 75001}
!37 = !{ptr @_ZN11xalanc_1_1014VariablesStackD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1014VariablesStackD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1014VariablesStackD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1014VariablesStack3popEv, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 22728825}
!42 = !{ptr @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 22728825}
!43 = !{ptr @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 22728825}
!44 = !{ptr @_ZN11xalanc_1_1014VariablesStack16popContextMarkerEv, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 67471566}
!45 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 44742699}
!46 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 44742657}
!47 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 44742657}
!48 = !{ptr @_ZN11xalanc_1_1014VariablesStack10pushParamsERKNS_11XalanVectorINS0_17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE, ptr @_ZN11xalanc_1_1014VariablesStack3popEv, i64 683}
!49 = !{ptr @_ZN11xalanc_1_1014VariablesStack16pushElementFrameEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 22419102}
!50 = !{ptr @_ZN11xalanc_1_1014VariablesStack16pushElementFrameEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 22419102}
!51 = !{ptr @_ZN11xalanc_1_1014VariablesStack16pushElementFrameEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 22419102}
!52 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 95460}
!53 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 95460}
!54 = !{ptr @_ZN11xalanc_1_1014VariablesStack12pushVariableERKNS_10XalanQNameERKNS_10XObjectPtrEPKNS_19ElemTemplateElementE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 95460}
!55 = !{ptr @_ZN11xalanc_1_1014VariablesStack20markGlobalStackFrameEv, ptr @_ZN11xalanc_1_1014VariablesStack17pushContextMarkerEv, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1014VariablesStack22unmarkGlobalStackFrameEv, ptr @_ZN11xalanc_1_1014VariablesStack3popEv, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 536868196}
!58 = !{ptr @_ZN11xalanc_1_1014VariablesStack11findXObjectERKNS_10XalanQNameERNS_26StylesheetExecutionContextEbbRb, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 201452799}
!59 = !{ptr @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 442}
!60 = !{ptr @_ZN11xalanc_1_1014VariablesStack15popElementFrameEv, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 22514562}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 13}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 13}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 75001}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 89986129}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 13}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 13}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 13}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = !{!"function_entry_count", i64 1}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!74 = !{!"any pointer", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C++ TBAA"}
!77 = !{!"long", !75, i64 0}
!78 = !{!79, !77, i64 32}
!79 = !{!"_ZTSN11xalanc_1_1014VariablesStackE", !73, i64 0, !77, i64 32, !80, i64 40, !77, i64 48, !81, i64 56, !82, i64 88}
!80 = !{!"bool", !75, i64 0}
!81 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!82 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!83 = !{!79, !80, i64 40}
!84 = !{!79, !77, i64 48}
!85 = !{!81, !74, i64 0}
!86 = !{!82, !74, i64 0}
!87 = !{!"branch_weights", i32 1, i32 0}
!88 = !{!"function_entry_count", i64 3}
!89 = !{!82, !77, i64 16}
!90 = !{!"branch_weights", i32 2, i32 1}
!91 = !{!82, !74, i64 24}
!92 = !{!93, !93, i64 0}
!93 = !{!"vtable pointer", !76, i64 0}
!94 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!95 = !{!81, !77, i64 16}
!96 = !{!81, !74, i64 24}
!97 = !{!"function_entry_count", i64 28}
!98 = !{!73, !77, i64 16}
!99 = !{!"branch_weights", i32 14, i32 14}
!100 = !{!73, !74, i64 24}
!101 = !{!73, !77, i64 8}
!102 = !{!"branch_weights", i32 1, i32 223}
!103 = !{!104, !74, i64 0}
!104 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !74, i64 0}
!105 = !{!"branch_weights", i32 75001, i32 0}
!106 = !{!"branch_weights", i32 223, i32 1199793}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!"VP", i32 0, i64 14, i64 -7405368087501025645, i64 14}
!111 = distinct !{!111, !108, !109}
!112 = !{!81, !77, i64 8}
!113 = !{!"branch_weights", i32 3, i32 0}
!114 = !{!82, !77, i64 8}
!115 = !{!"branch_weights", i32 89986129, i32 0}
!116 = !{!"function_entry_count", i64 0}
!117 = !{!118, !119, i64 0}
!118 = !{!"_ZTSN11xalanc_1_1014VariablesStack10StackEntryE", !119, i64 0, !74, i64 8, !104, i64 16, !74, i64 24, !74, i64 32}
!119 = !{!"_ZTSN11xalanc_1_1014VariablesStack10StackEntry5eTypeE", !75, i64 0}
!120 = !{!118, !74, i64 32}
!121 = distinct !{!121, !108, !109}
!122 = !{!"function_entry_count", i64 22728825}
!123 = !{!"branch_weights", i32 22728825, i32 0}
!124 = !{i8 0, i8 2}
!125 = !{}
!126 = !{!"branch_weights", i32 1, i32 22728824}
!127 = !{!"branch_weights", i32 0, i32 22728825}
!128 = !{!"function_entry_count", i64 22728824}
!129 = !{!"branch_weights", i32 22728824, i32 44742742}
!130 = !{!131, !74, i64 0}
!131 = !{!"_ZTSN11xalanc_1_1014VariablesStack16PushParamFunctorE", !74, i64 0}
!132 = !{!"branch_weights", i32 0, i32 44742742}
!133 = !{!134, !74, i64 0}
!134 = !{!"_ZTSN11xalanc_1_1014VariablesStack17ParamsVectorEntryE", !74, i64 0, !104, i64 8, !74, i64 16}
!135 = !{!118, !74, i64 8}
!136 = !{!"branch_weights", i32 44742742, i32 0}
!137 = !{!134, !74, i64 16}
!138 = !{!118, !74, i64 24}
!139 = !{!140, !74, i64 0}
!140 = !{!"_ZTSN11xalanc_1_1014VariablesStack16CommitPushParamsE", !74, i64 0, !77, i64 8}
!141 = !{!140, !77, i64 8}
!142 = distinct !{!142, !108, !109}
!143 = !{!"function_entry_count", i64 22419101}
!144 = !{!145, !74, i64 24}
!145 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!146 = !{!145, !77, i64 8}
!147 = !{!"branch_weights", i32 1, i32 22419100}
!148 = !{!"branch_weights", i32 22419100, i32 22323642}
!149 = distinct !{!149, !108, !109}
!150 = !{!"function_entry_count", i64 22419102}
!151 = !{!"branch_weights", i32 22419102, i32 0}
!152 = !{!"branch_weights", i32 1, i32 22419101}
!153 = !{!"branch_weights", i32 0, i32 22419102}
!154 = !{!"function_entry_count", i64 95460}
!155 = !{!"branch_weights", i32 0, i32 1}
!156 = !{!"branch_weights", i32 95460, i32 0}
!157 = !{!"branch_weights", i32 0, i32 95460}
!158 = !{!159, !74, i64 0}
!159 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!160 = !{!159, !77, i64 16}
!161 = !{!159, !74, i64 24}
!162 = distinct !{!162, !108, !109}
!163 = !{!"function_entry_count", i64 201452799}
!164 = !{!"branch_weights", i32 0, i32 536831079}
!165 = !{!"branch_weights", i32 246083716, i32 290747363}
!166 = !{!"VP", i32 0, i64 246083716, i64 1429807492782621726, i64 246083513, i64 6313752753425413918, i64 202}
!167 = !{!"VP", i32 0, i64 246083716, i64 6313752753425413918, i64 147606380, i64 1429807492782621726, i64 98477335}
!168 = !{!"branch_weights", i32 201394622, i32 134079394}
!169 = !{!"VP", i32 0, i64 147731074, i64 8049669377434801377, i64 147731068, i64 7946378714684030190, i64 5}
!170 = !{!"VP", i32 0, i64 147731074, i64 7946378714684030190, i64 82047183, i64 8049669377434801377, i64 65683891}
!171 = !{!"branch_weights", i32 156651872, i32 89431844}
!172 = !{!"branch_weights", i32 201299154, i32 89390024, i32 58185}
!173 = !{!"branch_weights", i32 89390024, i32 0}
!174 = !{!"VP", i32 0, i64 89390024, i64 1429807492782621726, i64 89389950, i64 6313752753425413918, i64 72}
!175 = !{!"VP", i32 0, i64 89390024, i64 6313752753425413918, i64 53618085, i64 1429807492782621726, i64 35771937}
!176 = !{!"VP", i32 0, i64 53663381, i64 8049669377434801377, i64 53663379, i64 7946378714684030190, i64 1}
!177 = !{!"VP", i32 0, i64 53663381, i64 7946378714684030190, i64 29803676, i64 8049669377434801377, i64 23859703}
!178 = !{!"branch_weights", i32 44742742, i32 44647282}
!179 = !{!"branch_weights", i32 335378280, i32 201452799}
!180 = distinct !{!180, !108, !109}
!181 = !{!"branch_weights", i32 201452799, i32 0}
!182 = distinct !{!182, !108, !109}
!183 = !{!"branch_weights", i32 58185, i32 201394614}
!184 = !{!80, !80, i64 0}
!185 = !{!"branch_weights", i32 0, i32 201394614}
!186 = !{!74, !74, i64 0}
!187 = !{!"VP", i32 0, i64 0, i64 1429807492782621726, i64 0, i64 6313752753425413918, i64 0}
!188 = !{!"VP", i32 0, i64 0, i64 6313752753425413918, i64 0, i64 1429807492782621726, i64 0}
!189 = !{!"VP", i32 0, i64 0, i64 8049669377434801377, i64 0, i64 7946378714684030190, i64 0}
!190 = !{!"VP", i32 0, i64 0, i64 7946378714684030190, i64 0, i64 8049669377434801377, i64 0}
!191 = !{!"function_entry_count", i64 276}
!192 = !{!"VP", i32 0, i64 276, i64 1429807492782621726, i64 275, i64 6313752753425413918, i64 0}
!193 = !{!"VP", i32 0, i64 276, i64 6313752753425413918, i64 165, i64 1429807492782621726, i64 110}
!194 = !{!"VP", i32 0, i64 165, i64 8049669377434801377, i64 165, i64 7946378714684030190, i64 0}
!195 = !{!"VP", i32 0, i64 165, i64 7946378714684030190, i64 92, i64 8049669377434801377, i64 73}
!196 = !{!"branch_weights", i32 0, i32 22514562}
!197 = !{!"branch_weights", i32 22419102, i32 95460}
!198 = distinct !{!198, !108, !109}
!199 = !{!"function_entry_count", i64 14}
!200 = !{!"branch_weights", i32 1, i32 13}
!201 = !{!"VP", i32 0, i64 13, i64 8345045103670217670, i64 13}
!202 = !{!"branch_weights", i32 13, i32 0}
!203 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!204 = !{!"function_entry_count", i64 13}
!205 = !{!"branch_weights", i32 0, i32 13}
!206 = !{!"branch_weights", i32 1, i32 207}
!207 = !{!"branch_weights", i32 207, i32 1199809}
!208 = distinct !{!208, !108, !109}
!209 = distinct !{!209, !108, !109}
!210 = distinct !{!210, !108, !109}
!211 = distinct !{!211, !108, !109}
!212 = distinct !{!212, !108, !109}
!213 = distinct !{!213, !108, !109}
!214 = !{!"function_entry_count", i64 89986142}
!215 = !{!"branch_weights", i32 89986129, i32 13}
!216 = distinct !{!216, !108, !109}
!217 = distinct !{!217, !108, !109}
!218 = distinct !{!218, !108, !109}
!219 = distinct !{!219, !108, !109}
!220 = distinct !{!220, !108, !109}
