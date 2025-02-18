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
%struct.anon = type { i32, i32 }

$_ZN11xalanc_1_1010XObjectPtrD2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

@_ZN11xalanc_1_1017FunctionSubstring16s_nullXObjectPtrE = dso_local global %"class.xalanc_1_10::XObjectPtr" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1017FunctionSubstringE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017FunctionSubstringE, ptr @_ZN11xalanc_1_1017FunctionSubstringD2Ev, ptr @_ZN11xalanc_1_1017FunctionSubstringD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1017FunctionSubstring5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1017FunctionSubstring8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZN11xalanc_1_10L14theEmptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"substring()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017FunctionSubstringE = dso_local constant [35 x i8] c"N11xalanc_1_1017FunctionSubstringE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1017FunctionSubstringE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017FunctionSubstringE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FunctionSubstring.cpp, ptr null }]

@_ZN11xalanc_1_1017FunctionSubstringC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017FunctionSubstringC2Ev
@_ZN11xalanc_1_1017FunctionSubstringD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017FunctionSubstringD2Ev

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %2)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #13
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017FunctionSubstringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 !prof !56 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1017FunctionSubstringE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017FunctionSubstringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !59 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017FunctionSubstringD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #3

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %11 = load ptr, ptr %4, align 8, !tbaa !51
  store ptr %11, ptr %8, align 8, !tbaa !51
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %11)
  %12 = load ptr, ptr %5, align 8, !tbaa !51
  store ptr %12, ptr %9, align 8, !tbaa !51
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %12)
          to label %13 unwind label %35, !prof !61

13:                                               ; preds = %7
  %14 = load ptr, ptr @_ZN11xalanc_1_1017FunctionSubstring16s_nullXObjectPtrE, align 8, !tbaa !51
  store ptr %14, ptr %10, align 8, !tbaa !51
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %14)
          to label %15 unwind label %37, !prof !61

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 8, !tbaa !57
  %17 = getelementptr inbounds ptr, ptr %16, i64 6
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %6)
          to label %19 unwind label %39, !prof !62

19:                                               ; preds = %15
  %20 = load ptr, ptr %10, align 8, !tbaa !51
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %20)
          to label %24 unwind label %21, !prof !61

21:                                               ; preds = %19
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #13
  unreachable

24:                                               ; preds = %19
  %25 = load ptr, ptr %9, align 8, !tbaa !51
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %25)
          to label %29 unwind label %26, !prof !61

26:                                               ; preds = %24
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #13
  unreachable

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !tbaa !51
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %30)
          to label %34 unwind label %31, !prof !61

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #13
  unreachable

34:                                               ; preds = %29
  ret void

35:                                               ; preds = %7
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %51

37:                                               ; preds = %13
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %45

39:                                               ; preds = %15
  %40 = landingpad { ptr, i32 }
          cleanup
  %41 = load ptr, ptr %10, align 8, !tbaa !51
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %41)
          to label %45 unwind label %42

42:                                               ; preds = %39
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #13
  unreachable

45:                                               ; preds = %39, %37
  %46 = phi { ptr, i32 } [ %38, %37 ], [ %40, %39 ]
  %47 = load ptr, ptr %9, align 8, !tbaa !51
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %47)
          to label %51 unwind label %48

48:                                               ; preds = %45
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #13
  unreachable

51:                                               ; preds = %45, %35
  %52 = phi { ptr, i32 } [ %36, %35 ], [ %46, %45 ]
  %53 = load ptr, ptr %8, align 8, !tbaa !51
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %53)
          to label %57 unwind label %54

54:                                               ; preds = %51
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #13
  unreachable

57:                                               ; preds = %51
  resume { ptr, i32 } %52
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture readnone %7) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %9 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %10 = load ptr, ptr %4, align 8, !tbaa !51
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %10), !prof !64
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !65
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24, !prof !70

18:                                               ; preds = %8
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !71, !noalias !74
  %21 = load ptr, ptr %20, align 8, !tbaa !57, !noalias !74
  %22 = getelementptr inbounds ptr, ptr %21, i64 13
  %23 = load ptr, ptr %22, align 8, !noalias !74
  tail call void %23(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE)
  br label %181

24:                                               ; preds = %8
  %25 = load ptr, ptr %5, align 8, !tbaa !51
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = getelementptr inbounds ptr, ptr %26, i64 6
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef double %28(ptr noundef nonnull align 8 dereferenceable(24) %25), !prof !77
  %30 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %29)
  %31 = fcmp ugt double %30, 1.000000e+00
  br i1 %31, label %32, label %52, !prof !78

32:                                               ; preds = %24
  %33 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !79
  %34 = bitcast double %30 to i64
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %33, %35
  %37 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %38 = lshr i64 %34, 32
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %37, %39
  %41 = select i1 %36, i1 %40, i1 false, !prof !80
  br i1 %41, label %52, label %42, !prof !81

42:                                               ; preds = %32
  %43 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, align 8, !tbaa !79
  %44 = icmp eq i32 %43, %35
  %45 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, i64 0, i32 1), align 4
  %46 = icmp eq i32 %45, %39
  %47 = select i1 %44, i1 %46, i1 false, !prof !80
  br i1 %47, label %52, label %48, !prof !81

48:                                               ; preds = %42
  %49 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %30)
  %50 = fptoui double %49 to i32
  %51 = add i32 %50, -1
  br label %52

52:                                               ; preds = %24, %32, %42, %48
  %53 = phi i32 [ %51, %48 ], [ 0, %32 ], [ 0, %24 ], [ %16, %42 ]
  %54 = icmp ult i32 %53, %16
  br i1 %54, label %61, label %55, !prof !82

55:                                               ; preds = %52
  %56 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !71, !noalias !83
  %58 = load ptr, ptr %57, align 8, !tbaa !57, !noalias !83
  %59 = getelementptr inbounds ptr, ptr %58, i64 13
  %60 = load ptr, ptr %59, align 8, !noalias !83
  tail call void %60(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE), !prof !86
  br label %181

61:                                               ; preds = %52
  %62 = load ptr, ptr %6, align 8, !tbaa !51
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67, !prof !87

64:                                               ; preds = %61
  %65 = add i32 %16, 1
  %66 = uitofp i32 %65 to double
  br label %86

67:                                               ; preds = %61
  %68 = load ptr, ptr %62, align 8, !tbaa !57
  %69 = getelementptr inbounds ptr, ptr %68, i64 6
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef double %70(ptr noundef nonnull align 8 dereferenceable(24) %62), !prof !88
  %72 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef %30, double noundef %71)
  %73 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef %72)
  %74 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, align 8, !tbaa !79
  %75 = bitcast double %73 to i64
  %76 = trunc i64 %75 to i32
  %77 = icmp eq i32 %74, %76
  %78 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_positiveInfinityE, i64 0, i32 1), align 4
  %79 = lshr i64 %75, 32
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %78, %80
  %82 = select i1 %77, i1 %81, i1 false, !prof !89
  %83 = add i32 %16, 1
  %84 = uitofp i32 %83 to double
  %85 = select i1 %82, double %84, double %73, !prof !90
  br label %86

86:                                               ; preds = %64, %67
  %87 = phi double [ %66, %64 ], [ %85, %67 ]
  %88 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !79
  %89 = bitcast double %30 to i64
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %88, %90
  %92 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %93 = lshr i64 %89, 32
  %94 = trunc i64 %93 to i32
  %95 = icmp eq i32 %92, %94
  %96 = select i1 %91, i1 %95, i1 false, !prof !91
  br i1 %96, label %116, label %97, !prof !92

97:                                               ; preds = %86
  %98 = bitcast double %87 to i64
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %88, %99
  %101 = lshr i64 %98, 32
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %92, %102
  %104 = select i1 %100, i1 %103, i1 false, !prof !91
  br i1 %104, label %116, label %105, !prof !92

105:                                              ; preds = %97
  %106 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, align 8, !tbaa !79
  %107 = icmp eq i32 %106, %99
  %108 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport18s_negativeInfinityE, i64 0, i32 1), align 4
  %109 = icmp eq i32 %108, %102
  %110 = select i1 %107, i1 %109, i1 false, !prof !91
  %111 = fcmp oeq double %87, 0.000000e+00
  %112 = or i1 %111, %110
  %113 = uitofp i32 %53 to double
  %114 = fcmp olt double %87, %113
  %115 = or i1 %114, %112
  br i1 %115, label %116, label %122, !prof !92

116:                                              ; preds = %105, %97, %86
  %117 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !71, !noalias !93
  %119 = load ptr, ptr %118, align 8, !tbaa !57, !noalias !93
  %120 = getelementptr inbounds ptr, ptr %119, i64 13
  %121 = load ptr, ptr %120, align 8, !noalias !93
  tail call void %121(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %118, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE)
  br label %181

122:                                              ; preds = %105
  %123 = fadd double %87, -1.000000e+00
  %124 = fptoui double %123 to i32
  %125 = tail call i32 @llvm.umin.i32(i32 %124, i32 %16)
  %126 = sub i32 %125, %53
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  store ptr %2, ptr %9, align 8, !tbaa !96
  %127 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %9, i64 0, i32 1
  %128 = load ptr, ptr %2, align 8, !tbaa !57
  %129 = getelementptr inbounds ptr, ptr %128, i64 23
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef nonnull align 8 dereferenceable(36) ptr %130(ptr noundef nonnull align 8 dereferenceable(24) %2), !prof !98
  store ptr %131, ptr %127, align 8, !tbaa !99
  %132 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %14, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !100
  %134 = icmp eq i64 %133, 0
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %14, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8
  %137 = select i1 %134, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %136, !prof !92
  %138 = zext i32 %53 to i64
  %139 = getelementptr inbounds i16, ptr %137, i64 %138
  %140 = icmp eq i32 %126, -1
  br i1 %140, label %141, label %144, !prof !92

141:                                              ; preds = %122
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %131, i32 noundef 0, i32 noundef -1)
          to label %142 unwind label %167

142:                                              ; preds = %141
  %143 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %139)
          to label %145 unwind label %167

144:                                              ; preds = %122
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %131, i32 noundef 0, i32 noundef -1)
          to label %145 unwind label %167, !prof !91

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ %126, %144 ]
  %147 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %131, ptr noundef %139, i32 noundef %146)
          to label %148 unwind label %167, !prof !91

148:                                              ; preds = %145
  %149 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !71
  %151 = load ptr, ptr %150, align 8, !tbaa !57
  %152 = getelementptr inbounds ptr, ptr %151, i64 15
  %153 = load ptr, ptr %152, align 8
  invoke void %153(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %150, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %154 unwind label %167, !prof !101

154:                                              ; preds = %148
  %155 = load ptr, ptr %127, align 8, !tbaa !99
  %156 = icmp eq ptr %155, null
  br i1 %156, label %166, label %157, !prof !91

157:                                              ; preds = %154
  %158 = load ptr, ptr %9, align 8, !tbaa !96
  %159 = load ptr, ptr %158, align 8, !tbaa !57
  %160 = getelementptr inbounds ptr, ptr %159, i64 24
  %161 = load ptr, ptr %160, align 8
  %162 = invoke noundef zeroext i1 %161(ptr noundef nonnull align 8 dereferenceable(24) %158, ptr noundef nonnull align 8 dereferenceable(36) %155)
          to label %166 unwind label %163

163:                                              ; preds = %157
  %164 = landingpad { ptr, i32 }
          catch ptr null
  %165 = extractvalue { ptr, i32 } %164, 0
  call void @__clang_call_terminate(ptr %165) #13
  unreachable

166:                                              ; preds = %154, %157
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  br label %181

167:                                              ; preds = %145, %144, %142, %141, %148
  %168 = landingpad { ptr, i32 }
          cleanup
  %169 = load ptr, ptr %127, align 8, !tbaa !99
  %170 = icmp eq ptr %169, null
  br i1 %170, label %180, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %9, align 8, !tbaa !96
  %173 = load ptr, ptr %172, align 8, !tbaa !57
  %174 = getelementptr inbounds ptr, ptr %173, i64 24
  %175 = load ptr, ptr %174, align 8
  %176 = invoke noundef zeroext i1 %175(ptr noundef nonnull align 8 dereferenceable(24) %172, ptr noundef nonnull align 8 dereferenceable(36) %169)
          to label %180 unwind label %177

177:                                              ; preds = %171
  %178 = landingpad { ptr, i32 }
          catch ptr null
  %179 = extractvalue { ptr, i32 } %178, 0
  call void @__clang_call_terminate(ptr %179) #13
  unreachable

180:                                              ; preds = %167, %171
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  resume { ptr, i32 } %168

181:                                              ; preds = %55, %166, %116, %18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

declare noundef double @_ZN11xalanc_1_1013DoubleSupport5roundEd(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017FunctionSubstring5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = load ptr, ptr %1, align 8, !tbaa !57
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !102
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1017FunctionSubstringE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !57
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FunctionSubstring8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #2 align 2 !prof !50 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 8, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #3

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #3

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !50 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !104
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !105

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = load ptr, ptr %0, align 8, !tbaa !107
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !108

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

declare noundef double @_ZN11xalanc_1_1013DoubleSupport3addEdd(double noundef, double noundef) local_unnamed_addr #3

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_FunctionSubstring.cpp() #11 section ".text.startup" !prof !56 !PGOFuncName !109 {
  store ptr null, ptr @_ZN11xalanc_1_1017FunctionSubstring16s_nullXObjectPtrE, align 8, !tbaa !51
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1010XObjectPtrD2Ev, ptr nonnull @_ZN11xalanc_1_1017FunctionSubstring16s_nullXObjectPtrE, ptr nonnull @__dso_handle) #14
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L14theEmptyStringE, ptr nonnull @__dso_handle) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @_ZN11xalanc_1_1017FunctionSubstringC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1017FunctionSubstringD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 38250}
!38 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, i64 12750}
!39 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_, i64 38250}
!40 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1013DoubleSupport5roundEd, i64 111819755}
!41 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1013DoubleSupport3addEdd, i64 44693794}
!42 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 44706544}
!43 = !{ptr @_ZNK11xalanc_1_1017FunctionSubstring7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 44706544}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!45 = !{ptr @_GLOBAL__sub_I_FunctionSubstring.cpp, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 1}
!46 = !{ptr @_GLOBAL__sub_I_FunctionSubstring.cpp, ptr @__cxa_atexit, i64 2}
!47 = !{ptr @_GLOBAL__sub_I_FunctionSubstring.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!48 = !{ptr @_GLOBAL__sub_I_FunctionSubstring.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!"function_entry_count", i64 1}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !55, i64 0}
!59 = !{!"function_entry_count", i64 2}
!60 = !{!"function_entry_count", i64 12750}
!61 = !{!"branch_weights", i32 12750, i32 0}
!62 = !{!"VP", i32 0, i64 12750, i64 -3897829112359548222, i64 12750}
!63 = !{!"function_entry_count", i64 44739950}
!64 = !{!"VP", i32 0, i64 44739950, i64 -8415801386834130730, i64 44580470, i64 395431303520872022, i64 159480}
!65 = !{!66, !69, i64 32}
!66 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !67, i64 0, !69, i64 32}
!67 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !53, i64 0, !68, i64 8, !68, i64 16, !53, i64 24}
!68 = !{!"long", !54, i64 0}
!69 = !{!"int", !54, i64 0}
!70 = !{!"branch_weights", i32 0, i32 44739950}
!71 = !{!72, !53, i64 16}
!72 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !73, i64 0, !53, i64 16}
!73 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !53, i64 8}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE: argument 0"}
!76 = distinct !{!76, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE"}
!77 = !{!"VP", i32 0, i64 44739950, i64 3197589958826752107, i64 44739950}
!78 = !{!"branch_weights", i32 22386011, i32 22353939}
!79 = !{!54, !54, i64 0}
!80 = !{!"branch_weights", i32 22386011, i32 0}
!81 = !{!"branch_weights", i32 0, i32 22386011}
!82 = !{!"branch_weights", i32 44706544, i32 33406}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE: argument 0"}
!85 = distinct !{!85, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE"}
!86 = !{!"VP", i32 0, i64 33406, i64 -2838106452021343700, i64 33406}
!87 = !{!"branch_weights", i32 12750, i32 44693794}
!88 = !{!"VP", i32 0, i64 44693794, i64 3197589958826752107, i64 22403559, i64 4069796776158877571, i64 22290235}
!89 = !{!"branch_weights", i32 44693794, i32 0}
!90 = !{!"branch_weights", i32 0, i32 44693794}
!91 = !{!"branch_weights", i32 44706544, i32 0}
!92 = !{!"branch_weights", i32 0, i32 44706544}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE: argument 0"}
!95 = distinct !{!95, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE"}
!96 = !{!97, !53, i64 0}
!97 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !53, i64 0, !53, i64 8}
!98 = !{!"VP", i32 0, i64 44706544, i64 513632834810131310, i64 44706544}
!99 = !{!97, !53, i64 8}
!100 = !{!67, !68, i64 8}
!101 = !{!"VP", i32 0, i64 44706544, i64 -7816232719051370402, i64 44706544}
!102 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!103 = !{!"function_entry_count", i64 42470003}
!104 = !{!67, !68, i64 16}
!105 = !{!"branch_weights", i32 52000, i32 42418003}
!106 = !{!67, !53, i64 24}
!107 = !{!67, !53, i64 0}
!108 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!109 = !{!"FunctionSubstring.cpp;_GLOBAL__sub_I_FunctionSubstring.cpp"}
