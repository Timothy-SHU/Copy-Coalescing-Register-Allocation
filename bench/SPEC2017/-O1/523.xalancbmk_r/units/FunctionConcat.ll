; ModuleID = 'FunctionConcat.cpp'
source_filename = "FunctionConcat.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1014FunctionConcatE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014FunctionConcatE, ptr @_ZN11xalanc_1_1014FunctionConcatD2Ev, ptr @_ZN11xalanc_1_1014FunctionConcatD0Ev, ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1014FunctionConcat5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1014FunctionConcat8getErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [9 x i8] c"concat()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014FunctionConcatE = dso_local constant [32 x i8] c"N11xalanc_1_1014FunctionConcatE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1014FunctionConcatE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014FunctionConcatE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8

@_ZN11xalanc_1_1014FunctionConcatC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014FunctionConcatC2Ev
@_ZN11xalanc_1_1014FunctionConcatD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014FunctionConcatD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FunctionConcatC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1014FunctionConcatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014FunctionConcatD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014FunctionConcatD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  tail call void @_ZdlPv(ptr noundef %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture readnone %6) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  store ptr %2, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %2, align 8, !tbaa !39
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %2), !prof !49
  store ptr %13, ptr %9, align 8, !tbaa !50
  %14 = load ptr, ptr %4, align 8, !tbaa !51
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 11
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %18 unwind label %42, !prof !53

18:                                               ; preds = %7
  %19 = load ptr, ptr %5, align 8, !tbaa !51
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 11
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %23 unwind label %42, !prof !54

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = getelementptr inbounds ptr, ptr %26, i64 15
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %29 unwind label %42, !prof !58

29:                                               ; preds = %23
  %30 = load ptr, ptr %9, align 8, !tbaa !50
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32, !prof !59

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !tbaa !45
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(36) %30)
          to label %41 unwind label %38

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #10
  unreachable

41:                                               ; preds = %29, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  ret void

42:                                               ; preds = %23, %18, %7
  %43 = landingpad { ptr, i32 }
          cleanup
  %44 = load ptr, ptr %9, align 8, !tbaa !50
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %8, align 8, !tbaa !45
  %48 = load ptr, ptr %47, align 8, !tbaa !39
  %49 = getelementptr inbounds ptr, ptr %48, i64 24
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(36) %44)
          to label %55 unwind label %52

52:                                               ; preds = %46
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #10
  unreachable

55:                                               ; preds = %42, %46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  resume { ptr, i32 } %43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture readnone %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %9 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  store ptr %2, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %2, align 8, !tbaa !39
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr %14, ptr %10, align 8, !tbaa !50
  %15 = load ptr, ptr %4, align 8, !tbaa !51
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds ptr, ptr %16, i64 11
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %48

19:                                               ; preds = %8
  %20 = load ptr, ptr %5, align 8, !tbaa !51
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds ptr, ptr %21, i64 11
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %24 unwind label %48

24:                                               ; preds = %19
  %25 = load ptr, ptr %6, align 8, !tbaa !51
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = getelementptr inbounds ptr, ptr %26, i64 11
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %29 unwind label %48

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  %33 = getelementptr inbounds ptr, ptr %32, i64 15
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %35 unwind label %48

35:                                               ; preds = %29
  %36 = load ptr, ptr %10, align 8, !tbaa !50
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %9, align 8, !tbaa !45
  %40 = load ptr, ptr %39, align 8, !tbaa !39
  %41 = getelementptr inbounds ptr, ptr %40, i64 24
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(36) %36)
          to label %47 unwind label %44

44:                                               ; preds = %38
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #10
  unreachable

47:                                               ; preds = %35, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  ret void

48:                                               ; preds = %29, %24, %19, %8
  %49 = landingpad { ptr, i32 }
          cleanup
  %50 = load ptr, ptr %10, align 8, !tbaa !50
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %9, align 8, !tbaa !45
  %54 = load ptr, ptr %53, align 8, !tbaa !39
  %55 = getelementptr inbounds ptr, ptr %54, i64 24
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef zeroext i1 %56(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(36) %50)
          to label %61 unwind label %58

58:                                               ; preds = %52
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @__clang_call_terminate(ptr %60) #10
  unreachable

61:                                               ; preds = %48, %52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  resume { ptr, i32 } %49
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014FunctionConcat7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr nocapture readnone %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %4, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %9, i64 %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  store ptr %2, ptr %7, align 8, !tbaa !45
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %2, align 8, !tbaa !39
  %15 = getelementptr inbounds ptr, ptr %14, i64 23
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr %17, ptr %13, align 8, !tbaa !50
  %18 = load ptr, ptr %8, align 8, !tbaa !60
  %19 = icmp eq ptr %18, %12
  br i1 %19, label %47, label %20

20:                                               ; preds = %6, %26
  %21 = phi ptr [ %27, %26 ], [ %18, %6 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = getelementptr inbounds ptr, ptr %23, i64 11
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(36) %17)
          to label %26 unwind label %29

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %21, i64 1
  %28 = icmp eq ptr %27, %12
  br i1 %28, label %47, label %20, !llvm.loop !64

29:                                               ; preds = %20
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %33

31:                                               ; preds = %47
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ]
  %35 = load ptr, ptr %13, align 8, !tbaa !50
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 8, !tbaa !45
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  %40 = getelementptr inbounds ptr, ptr %39, i64 24
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(36) %35)
          to label %46 unwind label %43

43:                                               ; preds = %37
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #10
  unreachable

46:                                               ; preds = %33, %37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  resume { ptr, i32 } %34

47:                                               ; preds = %26, %6
  %48 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  %51 = getelementptr inbounds ptr, ptr %50, i64 15
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %53 unwind label %31

53:                                               ; preds = %47
  %54 = load ptr, ptr %13, align 8, !tbaa !50
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %7, align 8, !tbaa !45
  %58 = load ptr, ptr %57, align 8, !tbaa !39
  %59 = getelementptr inbounds ptr, ptr %58, i64 24
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef zeroext i1 %60(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr noundef nonnull align 8 dereferenceable(36) %54)
          to label %65 unwind label %62

62:                                               ; preds = %56
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  call void @__clang_call_terminate(ptr %64) #10
  unreachable

65:                                               ; preds = %53, %56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014FunctionConcat5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = load ptr, ptr %1, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !67
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1014FunctionConcatE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !39
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FunctionConcat8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !43 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 44, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !43 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_1014FunctionConcatC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014FunctionConcatD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"function_entry_count", i64 2}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!"function_entry_count", i64 22344551}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !47, i64 0, !47, i64 8}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !41, i64 0}
!49 = !{!"VP", i32 0, i64 22344551, i64 513632834810131310, i64 22344551}
!50 = !{!46, !47, i64 8}
!51 = !{!52, !47, i64 0}
!52 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !47, i64 0}
!53 = !{!"VP", i32 0, i64 22344551, i64 593248325516517966, i64 22323641, i64 -3724521653842953382, i64 20910}
!54 = !{!"VP", i32 0, i64 22344551, i64 593248325516517966, i64 22311145, i64 5681272631081451029, i64 33406}
!55 = !{!56, !47, i64 16}
!56 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !57, i64 0, !47, i64 16}
!57 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !47, i64 8}
!58 = !{!"VP", i32 0, i64 22344551, i64 -7816232719051370402, i64 22344551}
!59 = !{!"branch_weights", i32 22344551, i32 0}
!60 = !{!61, !47, i64 24}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !47, i64 0, !62, i64 8, !62, i64 16, !47, i64 24}
!62 = !{!"long", !48, i64 0}
!63 = !{!61, !62, i64 8}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
