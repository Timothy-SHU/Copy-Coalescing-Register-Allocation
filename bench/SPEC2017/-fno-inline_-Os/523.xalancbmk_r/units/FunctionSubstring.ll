; ModuleID = 'FunctionSubstring.cpp'
source_filename = "FunctionSubstring.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }
%struct.anon = type { i32, i32 }

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1013getStartIndexEdj = comdat any

$_ZN11xalanc_1_108getTotalEjdRKNS_10XObjectPtrE = comdat any

$_ZN11xalanc_1_1013DoubleSupport5isNaNEd = comdat any

$_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd = comdat any

$_ZN11xalanc_1_1018getSubstringLengthEjjd = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj = comdat any

$_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_17FunctionSubstringEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd = comdat any

$_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd = comdat any

$_ZNK11xalanc_1_1010XObjectPtr4nullEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKtj = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1017FunctionSubstringC2ERKS0_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_108FunctionC2ERKS0_ = comdat any

@_ZN11xalanc_1_1017FunctionSubstring16s_nullXObjectPtrE = dso_local global %"class.xalanc_1_10::XObjectPtr" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1017FunctionSubstringE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017FunctionSubstringE, ptr @_ZN11xalanc_1_1017FunctionSubstringD2Ev, ptr @_ZN11xalanc_1_1017FunctionSubstringD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1017FunctionSubstring5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1017FunctionSubstring8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZN11xalanc_1_10L14theEmptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"substring()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017FunctionSubstringE = dso_local constant [35 x i8] c"N11xalanc_1_1017FunctionSubstringE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1017FunctionSubstringE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017FunctionSubstringE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE = external global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = external global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZTVN11xalanc_1_108FunctionE = external unnamed_addr constant { [11 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FunctionSubstring.cpp, ptr null }]

@_ZN11xalanc_1_1017FunctionSubstringC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017FunctionSubstringC2Ev
@_ZN11xalanc_1_1017FunctionSubstringD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017FunctionSubstringD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1017FunctionSubstring16s_nullXObjectPtrE, ptr noundef null) #10
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr nonnull @_ZN11xalanc_1_1017FunctionSubstring16s_nullXObjectPtrE, ptr nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !108 {
  store ptr %1, ptr %0, align 8, !tbaa !109
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !114 {
  %2 = load ptr, ptr %0, align 8, !tbaa !109
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2) #10
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #12
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017FunctionSubstringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 !prof !115 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1017FunctionSubstringE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017FunctionSubstringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 !prof !118 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017FunctionSubstringD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xalanc_1_1017FunctionSubstringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #10
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L14theEmptyStringE, ptr nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !119 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
          to label %11 unwind label %17

11:                                               ; preds = %7
  invoke void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1017FunctionSubstring16s_nullXObjectPtrE) #10
          to label %12 unwind label %19

12:                                               ; preds = %11
  %13 = load ptr, ptr %1, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 6
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %6) #10
          to label %16 unwind label %21

16:                                               ; preds = %12
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  ret void

17:                                               ; preds = %7
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %11
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %12
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  call void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !121 {
  %3 = load ptr, ptr %1, align 8, !tbaa !109
  store ptr %3, ptr %0, align 8, !tbaa !109
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #10
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr nocapture readnone %7) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %9 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %10 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %10) #10
  %15 = tail call noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %14) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !123

17:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  br label %57

18:                                               ; preds = %8
  %19 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  %20 = load ptr, ptr %19, align 8, !tbaa !116
  %21 = getelementptr inbounds ptr, ptr %20, i64 6
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef double %22(ptr noundef nonnull align 8 dereferenceable(24) %19) #10
  %24 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %23) #10
  %25 = tail call noundef i32 @_ZN11xalanc_1_1013getStartIndexEdj(double noundef %24, i32 noundef %15) #10
  %26 = icmp ult i32 %25, %15
  br i1 %26, label %28, label %27, !prof !124

27:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  br label %57

28:                                               ; preds = %18
  %29 = tail call noundef double @_ZN11xalanc_1_108getTotalEjdRKNS_10XObjectPtrE(i32 noundef %15, double noundef %24, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  %30 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %24) #10
  br i1 %30, label %40, label %31, !prof !125

31:                                               ; preds = %28
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %29) #10
  br i1 %32, label %40, label %33, !prof !125

33:                                               ; preds = %31
  %34 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd(double noundef %29) #10
  %35 = fcmp oeq double %29, 0.000000e+00
  %36 = or i1 %35, %34
  %37 = uitofp i32 %25 to double
  %38 = fcmp olt double %29, %37
  %39 = or i1 %38, %36
  br i1 %39, label %40, label %41, !prof !126

40:                                               ; preds = %33, %31, %28
  tail call void @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  br label %57

41:                                               ; preds = %33
  %42 = tail call noundef i32 @_ZN11xalanc_1_1018getSubstringLengthEjjd(i32 noundef %15, i32 noundef %25, double noundef %29) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  %43 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #10
  %44 = invoke noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %14) #10
          to label %45 unwind label %55

45:                                               ; preds = %41
  %46 = zext i32 %25 to i64
  %47 = getelementptr inbounds i16, ptr %44, i64 %46
  %48 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %43, ptr noundef %47, i32 noundef %42) #10
          to label %49 unwind label %55

49:                                               ; preds = %45
  %50 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #10
  %51 = load ptr, ptr %50, align 8, !tbaa !116
  %52 = getelementptr inbounds ptr, ptr %51, i64 15
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %9) #10
          to label %54 unwind label %55

54:                                               ; preds = %49
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  br label %57

55:                                               ; preds = %49, %45, %41
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  resume { ptr, i32 } %56

57:                                               ; preds = %27, %54, %40, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !127 {
  %2 = load ptr, ptr %0, align 8, !tbaa !109
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !128 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat !prof !129 {
  %3 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = getelementptr inbounds ptr, ptr %4, i64 13
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE) #10
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1013getStartIndexEdj(double noundef %0, i32 noundef %1) local_unnamed_addr #1 comdat !prof !122 {
  %3 = fcmp ugt double %0, 1.000000e+00
  br i1 %3, label %4, label %12, !prof !130

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) #10
  br i1 %5, label %12, label %6, !prof !131

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd(double noundef %0) #10
  br i1 %7, label %12, label %8, !prof !131

8:                                                ; preds = %6
  %9 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %0) #10
  %10 = fptoui double %9 to i32
  %11 = add i32 %10, -1
  br label %12

12:                                               ; preds = %6, %2, %4, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %4 ], [ 0, %2 ], [ %1, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZN11xalanc_1_108getTotalEjdRKNS_10XObjectPtrE(i32 noundef %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat !prof !132 {
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  br i1 %4, label %5, label %8, !prof !133

5:                                                ; preds = %3
  %6 = add i32 %0, 1
  %7 = uitofp i32 %6 to double
  br label %20

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef double %12(ptr noundef nonnull align 8 dereferenceable(24) %9) #10
  %14 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef %1, double noundef %13) #10
  %15 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %14) #10
  %16 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd(double noundef %15) #10
  br i1 %16, label %17, label %20, !prof !134

17:                                               ; preds = %8
  %18 = add i32 %0, 1
  %19 = uitofp i32 %18 to double
  br label %20

20:                                               ; preds = %17, %8, %5
  %21 = phi double [ %7, %5 ], [ %19, %17 ], [ %15, %8 ]
  ret double %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5isNaNEd(double noundef %0) local_unnamed_addr #2 comdat align 2 !prof !135 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, double noundef %0) #10
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd(double noundef %0) local_unnamed_addr #2 comdat align 2 !prof !136 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, double noundef %0) #10
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1018getSubstringLengthEjjd(i32 noundef %0, i32 noundef %1, double noundef %2) local_unnamed_addr #2 comdat !prof !132 {
  %4 = fadd double %2, -1.000000e+00
  %5 = fptoui double %4 to i32
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %0)
  %7 = sub i32 %6, %1
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !137 {
  store ptr %1, ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !116
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  store ptr %7, ptr %3, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !141 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat !prof !142 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %5, label %7, !prof !143

5:                                                ; preds = %3
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #10
  br label %9

7:                                                ; preds = %3
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #10
  br label %9

9:                                                ; preds = %7, %5
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat !prof !144 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !145 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !146
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !150

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !138
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #10
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017FunctionSubstring5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !115 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_17FunctionSubstringEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_17FunctionSubstringEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !115 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #10
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @_ZN11xalanc_1_1017FunctionSubstringC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FunctionSubstring8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !151 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 8, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #10
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !153
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !156

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #10
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #10
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !158 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !159 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !160

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #10
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !161, !llvm.loop !162

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !164 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !165 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !159 {
  %3 = load ptr, ptr %0, align 8, !tbaa !166
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !167 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !168 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !169
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !170 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !172 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !173
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd(double noundef %0) local_unnamed_addr #1 comdat align 2 !prof !176 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, double noundef %0) #10
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #2 comdat align 2 !prof !177 {
  %3 = load i32, ptr %0, align 8, !tbaa !178
  %4 = bitcast double %1 to i64
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  %7 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i64 %4, 32
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %6, i1 %11, i1 false, !prof !179
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XObjectPtr4nullEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !180 {
  %2 = load ptr, ptr %0, align 8, !tbaa !109
  %3 = icmp eq ptr %2, null
  ret i1 %3
}

; Function Attrs: optsize
declare noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !181 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #10
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !182 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #10
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #10
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !183 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #10
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #10
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 comdat align 2 !prof !184 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br i1 %2, label %5, label %3, !prof !185

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #10
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !186 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !169
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !187 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !188 {
  store ptr %1, ptr %0, align 8, !tbaa !189
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !116
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #10
  store ptr %8, ptr %4, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !188 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1017FunctionSubstringC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1017FunctionSubstringE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !188 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !188 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !192

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !193
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #10
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_108FunctionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_FunctionSubstring.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!107}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!35 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!36 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 1009440147}
!37 = !{ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr @__clang_call_terminate, i64 963}
!38 = !{ptr @_ZN11xalanc_1_1017FunctionSubstringC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1017FunctionSubstringD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!40 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!41 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, i64 38250}
!42 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1010XObjectPtrD2Ev, i64 38250}
!43 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!44 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 89479899}
!45 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 44739950}
!46 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE, i64 33413}
!47 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, i64 44739949}
!48 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1013getStartIndexEdj, i64 44739949}
!49 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_108getTotalEjdRKNS_10XObjectPtrE, i64 44706542}
!50 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 89413083}
!51 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd, i64 44706540}
!52 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1018getSubstringLengthEjjd, i64 44706537}
!53 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_, i64 44706537}
!54 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv, i64 44706537}
!55 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, i64 44706537}
!56 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, i64 44706494}
!57 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv, i64 44706452}
!58 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, i64 44706537}
!59 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708619}
!60 = !{ptr @_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv, i64 33406}
!61 = !{ptr @_ZN11xalanc_1_1013getStartIndexEdj, ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, i64 22386011}
!62 = !{ptr @_ZN11xalanc_1_1013getStartIndexEdj, ptr @_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd, i64 22386010}
!63 = !{ptr @_ZN11xalanc_1_1013getStartIndexEdj, ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, i64 22386009}
!64 = !{ptr @_ZN11xalanc_1_108getTotalEjdRKNS_10XObjectPtrE, ptr @_ZNK11xalanc_1_1010XObjectPtr4nullEv, i64 44706544}
!65 = !{ptr @_ZN11xalanc_1_108getTotalEjdRKNS_10XObjectPtrE, ptr @_ZNK11xalanc_1_1010XObjectPtrptEv, i64 44693793}
!66 = !{ptr @_ZN11xalanc_1_108getTotalEjdRKNS_10XObjectPtrE, ptr @_ZN11xalanc_1_1013DoubleSupport3addEdd, i64 44693793}
!67 = !{ptr @_ZN11xalanc_1_108getTotalEjdRKNS_10XObjectPtrE, ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, i64 44693793}
!68 = !{ptr @_ZN11xalanc_1_108getTotalEjdRKNS_10XObjectPtrE, ptr @_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd, i64 44693793}
!69 = !{ptr @_ZN11xalanc_1_1013DoubleSupport5isNaNEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 404042974}
!70 = !{ptr @_ZN11xalanc_1_1013DoubleSupport18isNegativeInfinityEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 156790587}
!71 = !{ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, i64 159}
!72 = !{ptr @_ZN11xalanc_1_106assignERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, i64 44748363}
!73 = !{ptr @_ZN11xalanc_1_1011toCharArrayERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 45868073}
!74 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!75 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_17FunctionSubstringEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!76 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_17FunctionSubstringEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!77 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_17FunctionSubstringEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_17FunctionSubstringEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1017FunctionSubstringC2ERKS0_, i64 1}
!79 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_17FunctionSubstringEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_17FunctionSubstringEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!83 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!89 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!91 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527004}
!92 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527004}
!93 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337980}
!94 = !{ptr @_ZN11xalanc_1_1013DoubleSupport18isPositiveInfinityEd, ptr @_ZNK11xalanc_1_1013DoubleSupport11NumberUnioneqEd, i64 179163824}
!95 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 2169010}
!96 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1084505}
!97 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1084505}
!98 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 89933972}
!99 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 44966986}
!100 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 44966986}
!101 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!102 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!103 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!104 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!105 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!106 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!107 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!108 = !{!"function_entry_count", i64 292432932}
!109 = !{!110, !111, i64 0}
!110 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !111, i64 0}
!111 = !{!"any pointer", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C++ TBAA"}
!114 = !{!"function_entry_count", i64 1009440147}
!115 = !{!"function_entry_count", i64 1}
!116 = !{!117, !117, i64 0}
!117 = !{!"vtable pointer", !113, i64 0}
!118 = !{!"function_entry_count", i64 2}
!119 = !{!"function_entry_count", i64 43398227}
!120 = !{!"function_entry_count", i64 12750}
!121 = !{!"function_entry_count", i64 717007216}
!122 = !{!"function_entry_count", i64 44739950}
!123 = !{!"branch_weights", i32 1, i32 44739951}
!124 = !{!"branch_weights", i32 44706545, i32 33407}
!125 = !{!"branch_weights", i32 1, i32 44706545}
!126 = !{!"branch_weights", i32 170, i32 -1755377816}
!127 = !{!"function_entry_count", i64 246321862}
!128 = !{!"function_entry_count", i64 66708619}
!129 = !{!"function_entry_count", i64 33406}
!130 = !{!"branch_weights", i32 22386012, i32 22353940}
!131 = !{!"branch_weights", i32 1, i32 22386012}
!132 = !{!"function_entry_count", i64 44706544}
!133 = !{!"branch_weights", i32 12751, i32 44693795}
!134 = !{!"branch_weights", i32 1, i32 44693795}
!135 = !{!"function_entry_count", i64 404042974}
!136 = !{!"function_entry_count", i64 156790587}
!137 = !{!"function_entry_count", i64 67594463}
!138 = !{!139, !111, i64 0}
!139 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !111, i64 0, !111, i64 8}
!140 = !{!139, !111, i64 8}
!141 = !{!"function_entry_count", i64 201578993}
!142 = !{!"function_entry_count", i64 44748522}
!143 = !{!"branch_weights", i32 159, i32 44748365}
!144 = !{!"function_entry_count", i64 45868073}
!145 = !{!"function_entry_count", i64 201666166}
!146 = !{!147, !111, i64 16}
!147 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !148, i64 0, !111, i64 16}
!148 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !111, i64 8}
!149 = !{!"function_entry_count", i64 134708288}
!150 = !{!"branch_weights", i32 67113826, i32 67594464}
!151 = !{!"function_entry_count", i64 0}
!152 = !{!"function_entry_count", i64 128698679}
!153 = !{!154, !155, i64 16}
!154 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !111, i64 0, !155, i64 8, !155, i64 16, !111, i64 24}
!155 = !{!"long", !112, i64 0}
!156 = !{!"branch_weights", i32 43398290, i32 85300391}
!157 = !{!154, !111, i64 24}
!158 = !{!"function_entry_count", i64 6521798493}
!159 = !{!"function_entry_count", i64 85300390}
!160 = !{!"branch_weights", i32 1, i32 12185770}
!161 = !{!"branch_weights", i32 12185770, i32 -193930396}
!162 = distinct !{!162, !163}
!163 = !{!"llvm.loop.mustprogress"}
!164 = !{!"function_entry_count", i64 227375739}
!165 = !{!"function_entry_count", i64 568333389}
!166 = !{!154, !111, i64 0}
!167 = !{!"function_entry_count", i64 30137156660}
!168 = !{!"function_entry_count", i64 825654971}
!169 = !{!154, !155, i64 8}
!170 = !{!"function_entry_count", i64 230527004}
!171 = !{!"function_entry_count", i64 3070433834}
!172 = !{!"function_entry_count", i64 1414337980}
!173 = !{!174, !175, i64 32}
!174 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !154, i64 0, !175, i64 32}
!175 = !{!"int", !112, i64 0}
!176 = !{!"function_entry_count", i64 179163824}
!177 = !{!"function_entry_count", i64 740164859}
!178 = !{!112, !112, i64 0}
!179 = !{!"branch_weights", i32 740024103, i32 140758}
!180 = !{!"function_entry_count", i64 381195133}
!181 = !{!"function_entry_count", i64 1084505}
!182 = !{!"function_entry_count", i64 44966986}
!183 = !{!"function_entry_count", i64 1179818}
!184 = !{!"function_entry_count", i64 967143541}
!185 = !{!"branch_weights", i32 403628487, i32 563515056}
!186 = !{!"function_entry_count", i64 1083116306}
!187 = !{!"function_entry_count", i64 565220908}
!188 = !{!"function_entry_count", i64 50702}
!189 = !{!111, !111, i64 0}
!190 = !{!191, !111, i64 8}
!191 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !111, i64 0, !111, i64 8}
!192 = !{!"branch_weights", i32 50703, i32 1}
!193 = !{!191, !111, i64 0}
