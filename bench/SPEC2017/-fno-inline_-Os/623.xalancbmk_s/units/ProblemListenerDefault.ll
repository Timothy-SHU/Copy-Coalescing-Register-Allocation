; ModuleID = 'ProblemListenerDefault.cpp'
source_filename = "ProblemListenerDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ProblemListenerDefault" = type { %"class.xalanc_1_10::ProblemListener", ptr, ptr }
%"class.xalanc_1_10::ProblemListener" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }

$_ZN11xalanc_1_1011PrintWriter16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

@_ZTVN11xalanc_1_1022ProblemListenerDefaultE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ProblemListenerDefaultE, ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD2Ev, ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD0Ev, ptr @_ZN11xalanc_1_1022ProblemListenerDefault14setPrintWriterEPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1022ProblemListenerDefault7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ProblemListenerDefaultE = dso_local constant [40 x i8] c"N11xalanc_1_1022ProblemListenerDefaultE\00", align 1
@_ZTIN11xalanc_1_1015ProblemListenerE = external constant ptr
@_ZTIN11xalanc_1_1022ProblemListenerDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ProblemListenerDefaultE, ptr @_ZTIN11xalanc_1_1015ProblemListenerE }, align 8
@_ZN11xalanc_1_10L9xmlHeaderE = internal constant [5 x i16] [i16 88, i16 77, i16 76, i16 32, i16 0], align 2
@_ZN11xalanc_1_10L11xpathHeaderE = internal constant [7 x i16] [i16 88, i16 80, i16 97, i16 116, i16 104, i16 32, i16 0], align 2
@_ZN11xalanc_1_10L10xsltHeaderE = internal constant [6 x i16] [i16 88, i16 83, i16 76, i16 84, i16 32, i16 0], align 2
@_ZN11xalanc_1_10L12locationOpenE = internal constant [3 x i16] [i16 32, i16 40, i16 0], align 2
@_ZN11xalanc_1_10L12uriSeparatorE = internal constant [3 x i16] [i16 44, i16 32, i16 0], align 2
@_ZN11xalanc_1_10L13locationCloseE = internal constant [2 x i16] [i16 41, i16 0], align 2

@_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1022ProblemListenerDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE
@_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefault14setPrintWriterEPNS_11PrintWriterE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !50 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ProblemListenerDefault", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefault7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #2 align 2 !prof !50 {
  %10 = getelementptr inbounds %"class.xalanc_1_10::ProblemListenerDefault", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefault7problemERNS_11PrintWriterENS_15ProblemListener14eProblemSourceENS3_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) #10
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !57 {
  tail call void @_ZN11xalanc_1_1015ProblemListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1022ProblemListenerDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %"class.xalanc_1_10::ProblemListenerDefault", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !60
  %5 = getelementptr inbounds %"class.xalanc_1_10::ProblemListenerDefault", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015ProblemListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !57 {
  tail call void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022ProblemListenerDefault7problemERNS_11PrintWriterENS_15ProblemListener14eProblemSourceENS3_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %11 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %12 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011PrintWriter16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !58
  %15 = getelementptr inbounds ptr, ptr %14, i64 14
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq i32 %1, 3
  %18 = select i1 %17, ptr @_ZN11xalanc_1_10L11xpathHeaderE, ptr @_ZN11xalanc_1_10L10xsltHeaderE
  %19 = icmp eq i32 %1, 1
  %20 = select i1 %19, ptr @_ZN11xalanc_1_10L9xmlHeaderE, ptr %18
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %20, i32 noundef -1) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #11
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %13) #10
  %21 = icmp eq i32 %2, 1
  %22 = select i1 %21, i32 85, i32 86
  %23 = icmp eq i32 %2, 2
  %24 = select i1 %23, i32 84, i32 %22
  %25 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %24, ptr noundef nonnull align 8 dereferenceable(36) %5) #10
          to label %28 unwind label %26

26:                                               ; preds = %9, %68, %64, %58, %54, %52, %47, %41, %39, %34, %28
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %109

28:                                               ; preds = %9
  %29 = load ptr, ptr %0, align 8, !tbaa !58
  %30 = getelementptr inbounds ptr, ptr %29, i64 18
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %10) #10
          to label %32 unwind label %26

32:                                               ; preds = %28
  %33 = icmp eq ptr %4, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %4, align 8, !tbaa !58
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef nonnull align 8 dereferenceable(36) ptr %37(ptr noundef nonnull align 8 dereferenceable(322) %4) #10
          to label %39 unwind label %26

39:                                               ; preds = %34
  %40 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 87, ptr noundef nonnull align 8 dereferenceable(36) %38) #10
          to label %41 unwind label %26

41:                                               ; preds = %39
  %42 = load ptr, ptr %0, align 8, !tbaa !58
  %43 = getelementptr inbounds ptr, ptr %42, i64 18
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %40) #10
          to label %45 unwind label %26

45:                                               ; preds = %41, %32
  %46 = icmp eq ptr %3, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %3, align 8, !tbaa !58
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef nonnull align 8 dereferenceable(36) ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
          to label %52 unwind label %26

52:                                               ; preds = %47
  %53 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 88, ptr noundef nonnull align 8 dereferenceable(36) %51) #10
          to label %54 unwind label %26

54:                                               ; preds = %52
  %55 = load ptr, ptr %0, align 8, !tbaa !58
  %56 = getelementptr inbounds ptr, ptr %55, i64 18
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %53) #10
          to label %58 unwind label %26

58:                                               ; preds = %54, %45
  %59 = load ptr, ptr %0, align 8, !tbaa !58
  %60 = getelementptr inbounds ptr, ptr %59, i64 14
  %61 = load ptr, ptr %60, align 8
  invoke void %61(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @_ZN11xalanc_1_10L12locationOpenE, i32 noundef -1) #10
          to label %62 unwind label %26

62:                                               ; preds = %58
  %63 = icmp eq ptr %6, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %0, align 8, !tbaa !58
  %66 = getelementptr inbounds ptr, ptr %65, i64 14
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6, i32 noundef -1) #10
          to label %68 unwind label %26

68:                                               ; preds = %64
  %69 = load ptr, ptr %0, align 8, !tbaa !58
  %70 = getelementptr inbounds ptr, ptr %69, i64 14
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @_ZN11xalanc_1_10L12uriSeparatorE, i32 noundef -1) #10
          to label %72 unwind label %26

72:                                               ; preds = %68, %62
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #11
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %13) #10
          to label %73 unwind label %95

73:                                               ; preds = %72
  %74 = sext i32 %7 to i64
  %75 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %74, ptr noundef nonnull align 8 dereferenceable(36) %11) #10
          to label %76 unwind label %97

76:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #11
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) #10
          to label %77 unwind label %99

77:                                               ; preds = %76
  %78 = sext i32 %8 to i64
  %79 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %78, ptr noundef nonnull align 8 dereferenceable(36) %12) #10
          to label %80 unwind label %101

80:                                               ; preds = %77
  %81 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 89, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %12) #10
          to label %82 unwind label %101

82:                                               ; preds = %80
  %83 = load ptr, ptr %0, align 8, !tbaa !58
  %84 = getelementptr inbounds ptr, ptr %83, i64 18
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %10) #10
          to label %86 unwind label %101

86:                                               ; preds = %82
  %87 = load ptr, ptr %0, align 8, !tbaa !58
  %88 = getelementptr inbounds ptr, ptr %87, i64 14
  %89 = load ptr, ptr %88, align 8
  invoke void %89(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @_ZN11xalanc_1_10L13locationCloseE, i32 noundef -1) #10
          to label %90 unwind label %101

90:                                               ; preds = %86
  %91 = load ptr, ptr %0, align 8, !tbaa !58
  %92 = getelementptr inbounds ptr, ptr %91, i64 19
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
          to label %94 unwind label %101

94:                                               ; preds = %90
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %12) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #11
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %11) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #11
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %10) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #11
  ret void

95:                                               ; preds = %72
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %107

97:                                               ; preds = %73
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %105

99:                                               ; preds = %76
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %103

101:                                              ; preds = %90, %86, %82, %80, %77
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %12) #8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #11
  br label %105

105:                                              ; preds = %103, %97
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %98, %97 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %11) #8
  br label %107

107:                                              ; preds = %105, %95
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #11
  br label %109

109:                                              ; preds = %107, %26
  %110 = phi { ptr, i32 } [ %108, %107 ], [ %27, %26 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %10) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #11
  resume { ptr, i32 } %110
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011PrintWriter16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !50 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::PrintWriter", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !67
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !70

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #10
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !71
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
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !72 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !73 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !74

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #10
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !75, !llvm.loop !76

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !78 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !79 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !73 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !82 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!49}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!36 = !{ptr @_ZN11xalanc_1_1022ProblemListenerDefaultC2ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1015ProblemListenerC2Ev, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD2Ev, ptr @_ZN11xalanc_1_1015ProblemListenerD2Ev, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !54, i64 16}
!52 = !{!"_ZTSN11xalanc_1_1022ProblemListenerDefaultE", !53, i64 0, !54, i64 8, !54, i64 16}
!53 = !{!"_ZTSN11xalanc_1_1015ProblemListenerE"}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"function_entry_count", i64 2}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !56, i64 0}
!60 = !{!54, !54, i64 0}
!61 = !{!62, !54, i64 16}
!62 = !{!"_ZTSN11xalanc_1_1011PrintWriterE", !63, i64 0, !64, i64 8, !54, i64 16}
!63 = !{!"_ZTSN11xalanc_1_106WriterE"}
!64 = !{!"bool", !55, i64 0}
!65 = !{!"function_entry_count", i64 43398227}
!66 = !{!"function_entry_count", i64 128698679}
!67 = !{!68, !69, i64 16}
!68 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !54, i64 0, !69, i64 8, !69, i64 16, !54, i64 24}
!69 = !{!"long", !55, i64 0}
!70 = !{!"branch_weights", i32 43398290, i32 85300391}
!71 = !{!68, !54, i64 24}
!72 = !{!"function_entry_count", i64 6521798503}
!73 = !{!"function_entry_count", i64 85300390}
!74 = !{!"branch_weights", i32 1, i32 12185770}
!75 = !{!"branch_weights", i32 12185770, i32 -193930395}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"function_entry_count", i64 227375739}
!79 = !{!"function_entry_count", i64 568333389}
!80 = !{!68, !54, i64 0}
!81 = !{!"function_entry_count", i64 30137156670}
!82 = !{!"function_entry_count", i64 825654975}
!83 = !{!68, !69, i64 8}
