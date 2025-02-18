; ModuleID = 'FunctionIntersection.cpp'
source_filename = "FunctionIntersection.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.1" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1020FunctionIntersectionE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020FunctionIntersectionE, ptr @_ZN11xalanc_1_1020FunctionIntersectionD2Ev, ptr @_ZN11xalanc_1_1020FunctionIntersectionD0Ev, ptr @_ZNK11xalanc_1_1020FunctionIntersection7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1020FunctionIntersection5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1020FunctionIntersection8getErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [13 x i8] c"intersection\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1020FunctionIntersectionE = dso_local constant [38 x i8] c"N11xalanc_1_1020FunctionIntersectionE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1020FunctionIntersectionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020FunctionIntersectionE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8

@_ZN11xalanc_1_1020FunctionIntersectionC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020FunctionIntersectionC2Ev
@_ZN11xalanc_1_1020FunctionIntersectionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020FunctionIntersectionD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1020FunctionIntersectionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1020FunctionIntersectionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020FunctionIntersectionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1020FunctionIntersectionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1020FunctionIntersection7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !43
  %11 = icmp eq i64 %10, 2
  br i1 %11, label %54, label %12

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #7
  %13 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %15 = load ptr, ptr %1, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %19 unwind label %38

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %38

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !50
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = load ptr, ptr %7, align 8, !tbaa !53
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %29)
          to label %37 unwind label %34

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #9
  unreachable

37:                                               ; preds = %23, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7
  br label %54

38:                                               ; preds = %19, %12
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !50
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  %46 = load ptr, ptr %7, align 8, !tbaa !53
  %47 = load ptr, ptr %46, align 8, !tbaa !39
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %53 unwind label %50

50:                                               ; preds = %43
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  call void @__clang_call_terminate(ptr %52) #9
  unreachable

53:                                               ; preds = %38, %43
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7
  br label %139

54:                                               ; preds = %37, %6
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !54
  %57 = load ptr, ptr %56, align 8, !tbaa !55
  %58 = load ptr, ptr %57, align 8, !tbaa !39
  %59 = getelementptr inbounds ptr, ptr %58, i64 13
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef nonnull align 8 dereferenceable(8) ptr %60(ptr noundef nonnull align 8 dereferenceable(24) %57)
  %62 = load ptr, ptr %55, align 8, !tbaa !54
  %63 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %62, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !55
  %65 = load ptr, ptr %64, align 8, !tbaa !39
  %66 = getelementptr inbounds ptr, ptr %65, i64 13
  %67 = load ptr, ptr %66, align 8
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr %67(ptr noundef nonnull align 8 dereferenceable(24) %64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  store ptr %2, ptr %8, align 8, !tbaa !57
  %69 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %8, i64 0, i32 1
  %70 = load ptr, ptr %2, align 8, !tbaa !39
  %71 = getelementptr inbounds ptr, ptr %70, i64 21
  %72 = load ptr, ptr %71, align 8
  %73 = call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr %73, ptr %69, align 8, !tbaa !59
  %74 = load ptr, ptr %61, align 8, !tbaa !39
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef i32 %76(ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %78 unwind label %88

78:                                               ; preds = %54
  %79 = icmp eq i32 %77, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %107, %78
  %81 = load ptr, ptr %69, align 8, !tbaa !59
  %82 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %81, i64 0, i32 1
  store i32 1, ptr %82, align 8, !tbaa !60
  %83 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !66
  %85 = load ptr, ptr %84, align 8, !tbaa !39
  %86 = getelementptr inbounds ptr, ptr %85, i64 4
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %110 unwind label %88

88:                                               ; preds = %80, %54
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %124

90:                                               ; preds = %78, %107
  %91 = phi i32 [ %108, %107 ], [ 0, %78 ]
  %92 = load ptr, ptr %61, align 8, !tbaa !39
  %93 = getelementptr inbounds ptr, ptr %92, i64 2
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %61, i32 noundef %91)
          to label %96 unwind label %105

96:                                               ; preds = %90
  %97 = load ptr, ptr %68, align 8, !tbaa !39
  %98 = getelementptr inbounds ptr, ptr %97, i64 4
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef i32 %99(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef %95)
          to label %101 unwind label %105

101:                                              ; preds = %96
  %102 = icmp eq i32 %100, -1
  br i1 %102, label %107, label %103

103:                                              ; preds = %101
  %104 = load ptr, ptr %69, align 8, !tbaa !59
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %104, ptr noundef %95, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %107 unwind label %105

105:                                              ; preds = %103, %96, %90
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %124

107:                                              ; preds = %103, %101
  %108 = add nuw i32 %91, 1
  %109 = icmp eq i32 %108, %77
  br i1 %109, label %80, label %90, !llvm.loop !68

110:                                              ; preds = %80
  %111 = load ptr, ptr %69, align 8, !tbaa !59
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %8, align 8, !tbaa !57
  %115 = load ptr, ptr %114, align 8, !tbaa !39
  %116 = getelementptr inbounds ptr, ptr %115, i64 22
  %117 = load ptr, ptr %116, align 8
  %118 = invoke noundef zeroext i1 %117(ptr noundef nonnull align 8 dereferenceable(24) %114, ptr noundef nonnull %111)
          to label %119 unwind label %120

119:                                              ; preds = %113
  store ptr null, ptr %69, align 8, !tbaa !59
  br label %123

120:                                              ; preds = %113
  %121 = landingpad { ptr, i32 }
          catch ptr null
  %122 = extractvalue { ptr, i32 } %121, 0
  call void @__clang_call_terminate(ptr %122) #9
  unreachable

123:                                              ; preds = %110, %119
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  ret void

124:                                              ; preds = %105, %88
  %125 = phi { ptr, i32 } [ %106, %105 ], [ %89, %88 ]
  %126 = load ptr, ptr %69, align 8, !tbaa !59
  %127 = icmp eq ptr %126, null
  br i1 %127, label %138, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %8, align 8, !tbaa !57
  %130 = load ptr, ptr %129, align 8, !tbaa !39
  %131 = getelementptr inbounds ptr, ptr %130, i64 22
  %132 = load ptr, ptr %131, align 8
  %133 = invoke noundef zeroext i1 %132(ptr noundef nonnull align 8 dereferenceable(24) %129, ptr noundef nonnull %126)
          to label %134 unwind label %135

134:                                              ; preds = %128
  store ptr null, ptr %69, align 8, !tbaa !59
  br label %138

135:                                              ; preds = %128
  %136 = landingpad { ptr, i32 }
          catch ptr null
  %137 = extractvalue { ptr, i32 } %136, 0
  call void @__clang_call_terminate(ptr %137) #9
  unreachable

138:                                              ; preds = %124, %134
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %139

139:                                              ; preds = %138, %53
  %140 = phi { ptr, i32 } [ %125, %138 ], [ %39, %53 ]
  resume { ptr, i32 } %140
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020FunctionIntersection5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = load ptr, ptr %1, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !72
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1020FunctionIntersectionE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !39
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020FunctionIntersection8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !42 {
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
!35 = !{ptr @_ZN11xalanc_1_1020FunctionIntersectionC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1020FunctionIntersectionD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
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
!48 = !{!49, !45, i64 8}
!49 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !45, i64 8}
!50 = !{!51, !47, i64 16}
!51 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !45, i64 0, !47, i64 8, !47, i64 16, !45, i64 24}
!52 = !{!51, !45, i64 24}
!53 = !{!51, !45, i64 0}
!54 = !{!44, !45, i64 24}
!55 = !{!56, !45, i64 0}
!56 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !45, i64 0}
!57 = !{!58, !45, i64 0}
!58 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !45, i64 0, !45, i64 8}
!59 = !{!58, !45, i64 8}
!60 = !{!61, !65, i64 40}
!61 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !62, i64 0, !65, i64 40}
!62 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !63, i64 0, !64, i64 8}
!63 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!64 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !45, i64 0, !47, i64 8, !47, i64 16, !45, i64 24}
!65 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !46, i64 0}
!66 = !{!67, !45, i64 16}
!67 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !49, i64 0, !45, i64 16}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!"function_entry_count", i64 1}
!72 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
