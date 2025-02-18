; ModuleID = 'FunctionDifference.cpp'
source_filename = "FunctionDifference.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.1" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1018FunctionDifferenceE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1018FunctionDifferenceE, ptr @_ZN11xalanc_1_1018FunctionDifferenceD2Ev, ptr @_ZN11xalanc_1_1018FunctionDifferenceD0Ev, ptr @_ZNK11xalanc_1_1018FunctionDifference7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1018FunctionDifference5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1018FunctionDifference8getErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [11 x i8] c"difference\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1018FunctionDifferenceE = dso_local constant [36 x i8] c"N11xalanc_1_1018FunctionDifferenceE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1018FunctionDifferenceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1018FunctionDifferenceE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8

@_ZN11xalanc_1_1018FunctionDifferenceC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018FunctionDifferenceC2Ev
@_ZN11xalanc_1_1018FunctionDifferenceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018FunctionDifferenceD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018FunctionDifferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1018FunctionDifferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018FunctionDifferenceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018FunctionDifferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1018FunctionDifference7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !43
  %10 = icmp eq i64 %9, 2
  br i1 %10, label %41, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 23
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %16 = load ptr, ptr %1, align 8, !tbaa !39
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %20 unwind label %32

20:                                               ; preds = %11
  %21 = load ptr, ptr %2, align 8, !tbaa !39
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef %3, ptr noundef %5)
          to label %24 unwind label %32

24:                                               ; preds = %20
  %25 = load ptr, ptr %2, align 8, !tbaa !39
  %26 = getelementptr inbounds ptr, ptr %25, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %41 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #9
  unreachable

32:                                               ; preds = %20, %11
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %2, align 8, !tbaa !39
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %126 unwind label %38

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #9
  unreachable

41:                                               ; preds = %24, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = load ptr, ptr %43, align 8, !tbaa !49
  %45 = load ptr, ptr %44, align 8, !tbaa !39
  %46 = getelementptr inbounds ptr, ptr %45, i64 13
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr %47(ptr noundef nonnull align 8 dereferenceable(24) %44)
  %49 = load ptr, ptr %42, align 8, !tbaa !48
  %50 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !49
  %52 = load ptr, ptr %51, align 8, !tbaa !39
  %53 = getelementptr inbounds ptr, ptr %52, i64 13
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef nonnull align 8 dereferenceable(8) ptr %54(ptr noundef nonnull align 8 dereferenceable(24) %51)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  store ptr %2, ptr %7, align 8, !tbaa !51
  %56 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %7, i64 0, i32 1
  %57 = load ptr, ptr %2, align 8, !tbaa !39
  %58 = getelementptr inbounds ptr, ptr %57, i64 21
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr %60, ptr %56, align 8, !tbaa !53
  %61 = load ptr, ptr %48, align 8, !tbaa !39
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef i32 %63(ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %65 unwind label %75

65:                                               ; preds = %41
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %94, %65
  %68 = load ptr, ptr %56, align 8, !tbaa !53
  %69 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %68, i64 0, i32 1
  store i32 1, ptr %69, align 8, !tbaa !54
  %70 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !60
  %72 = load ptr, ptr %71, align 8, !tbaa !39
  %73 = getelementptr inbounds ptr, ptr %72, i64 4
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %71, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %97 unwind label %75

75:                                               ; preds = %67, %41
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %111

77:                                               ; preds = %65, %94
  %78 = phi i32 [ %95, %94 ], [ 0, %65 ]
  %79 = load ptr, ptr %48, align 8, !tbaa !39
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef %78)
          to label %83 unwind label %92

83:                                               ; preds = %77
  %84 = load ptr, ptr %55, align 8, !tbaa !39
  %85 = getelementptr inbounds ptr, ptr %84, i64 4
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef i32 %86(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %82)
          to label %88 unwind label %92

88:                                               ; preds = %83
  %89 = icmp eq i32 %87, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = load ptr, ptr %56, align 8, !tbaa !53
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %91, ptr noundef %82, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %94 unwind label %92

92:                                               ; preds = %90, %83, %77
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %111

94:                                               ; preds = %90, %88
  %95 = add nuw i32 %78, 1
  %96 = icmp eq i32 %95, %64
  br i1 %96, label %67, label %77, !llvm.loop !63

97:                                               ; preds = %67
  %98 = load ptr, ptr %56, align 8, !tbaa !53
  %99 = icmp eq ptr %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %7, align 8, !tbaa !51
  %102 = load ptr, ptr %101, align 8, !tbaa !39
  %103 = getelementptr inbounds ptr, ptr %102, i64 22
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef zeroext i1 %104(ptr noundef nonnull align 8 dereferenceable(24) %101, ptr noundef nonnull %98)
          to label %106 unwind label %107

106:                                              ; preds = %100
  store ptr null, ptr %56, align 8, !tbaa !53
  br label %110

107:                                              ; preds = %100
  %108 = landingpad { ptr, i32 }
          catch ptr null
  %109 = extractvalue { ptr, i32 } %108, 0
  call void @__clang_call_terminate(ptr %109) #9
  unreachable

110:                                              ; preds = %97, %106
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret void

111:                                              ; preds = %92, %75
  %112 = phi { ptr, i32 } [ %93, %92 ], [ %76, %75 ]
  %113 = load ptr, ptr %56, align 8, !tbaa !53
  %114 = icmp eq ptr %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %7, align 8, !tbaa !51
  %117 = load ptr, ptr %116, align 8, !tbaa !39
  %118 = getelementptr inbounds ptr, ptr %117, i64 22
  %119 = load ptr, ptr %118, align 8
  %120 = invoke noundef zeroext i1 %119(ptr noundef nonnull align 8 dereferenceable(24) %116, ptr noundef nonnull %113)
          to label %121 unwind label %122

121:                                              ; preds = %115
  store ptr null, ptr %56, align 8, !tbaa !53
  br label %125

122:                                              ; preds = %115
  %123 = landingpad { ptr, i32 }
          catch ptr null
  %124 = extractvalue { ptr, i32 } %123, 0
  call void @__clang_call_terminate(ptr %124) #9
  unreachable

125:                                              ; preds = %111, %121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %126

126:                                              ; preds = %32, %125
  %127 = phi { ptr, i32 } [ %112, %125 ], [ %33, %32 ]
  resume { ptr, i32 } %127
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1018FunctionDifference5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = load ptr, ptr %1, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !67
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1018FunctionDifferenceE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !39
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1018FunctionDifference8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 138, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !42 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }
attributes #9 = { noreturn nounwind }

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
!35 = !{ptr @_ZN11xalanc_1_1018FunctionDifferenceC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1018FunctionDifferenceD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 2}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !47, i64 8}
!44 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !45, i64 0, !47, i64 8, !47, i64 16, !45, i64 24}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"long", !46, i64 0}
!48 = !{!44, !45, i64 24}
!49 = !{!50, !45, i64 0}
!50 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !45, i64 0}
!51 = !{!52, !45, i64 0}
!52 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !45, i64 0, !45, i64 8}
!53 = !{!52, !45, i64 8}
!54 = !{!55, !59, i64 40}
!55 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !56, i64 0, !59, i64 40}
!56 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !57, i64 0, !58, i64 8}
!57 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!58 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !45, i64 0, !47, i64 8, !47, i64 16, !45, i64 24}
!59 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !46, i64 0}
!60 = !{!61, !45, i64 16}
!61 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !62, i64 0, !45, i64 16}
!62 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !45, i64 8}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!"function_entry_count", i64 1}
!67 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
