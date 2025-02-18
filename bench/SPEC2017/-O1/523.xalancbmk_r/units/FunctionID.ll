; ModuleID = 'FunctionID.cpp'
source_filename = "FunctionID.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback" = type { %"class.xalanc_1_10::XObjectTypeCallback", ptr, ptr }
%"class.xalanc_1_10::XObjectTypeCallback" = type { ptr, ptr }
%"class.xalanc_1_10::StringTokenizer" = type { ptr, ptr, i8, i32, i32, i32 }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }

$_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

@_ZTVN11xalanc_1_1010FunctionIDE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1010FunctionIDE, ptr @_ZN11xalanc_1_1010FunctionIDD2Ev, ptr @_ZN11xalanc_1_1010FunctionIDD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1010FunctionID7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1010FunctionID5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1010FunctionID8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZN11xalanc_1_1015StringTokenizer15s_defaultTokensE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [5 x i8] c"id()\00", align 1
@_ZTVN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackE, ptr @_ZN11xalanc_1_1019XObjectTypeCallbackD2Ev, ptr @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackD0Ev, ptr @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback6NumberERKNS_7XObjectEd, ptr @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback7BooleanERKNS_7XObjectEb, ptr @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback6StringERKNS_7XObjectERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback18ResultTreeFragmentERKNS_7XObjectERKNS_21XalanDocumentFragmentE, ptr @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback18ResultTreeFragmentERKNS_7XObjectERNS_21XalanDocumentFragmentE, ptr @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback7NodeSetERKNS_7XObjectERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback7UnknownERKNS_7XObjectERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback4NullERKNS_7XObjectE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1010FunctionIDE = dso_local constant [28 x i8] c"N11xalanc_1_1010FunctionIDE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1010FunctionIDE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010FunctionIDE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTSN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackE = dso_local constant [59 x i8] c"N11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackE\00", align 1
@_ZTIN11xalanc_1_1019XObjectTypeCallbackE = external constant ptr
@_ZTIN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackE, ptr @_ZTIN11xalanc_1_1019XObjectTypeCallbackE }, align 8

@_ZN11xalanc_1_1010FunctionIDC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1010FunctionIDC2Ev
@_ZN11xalanc_1_1010FunctionIDD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1010FunctionIDD2Ev
@_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackC1ERNS_21XPathExecutionContextERNS_14XalanDOMStringE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackC2ERNS_21XPathExecutionContextERNS_14XalanDOMStringE

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionIDC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !46 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1010FunctionIDE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionIDD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionIDD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1010FunctionID7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture readnone %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %7 = alloca %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", align 8
  %8 = alloca %"class.xalanc_1_10::StringTokenizer", align 8
  %9 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %10 = load ptr, ptr %2, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  %14 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  invoke void @_ZN11xalanc_1_1019XObjectTypeCallbackC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %16 unwind label %46

16:                                               ; preds = %6
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !47
  %17 = getelementptr inbounds %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", ptr %7, i64 0, i32 1
  store ptr %13, ptr %17, align 8, !tbaa !56
  %18 = getelementptr inbounds %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", ptr %7, i64 0, i32 2
  store ptr %2, ptr %18, align 8, !tbaa !56
  %19 = load ptr, ptr %4, align 8, !tbaa !57
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds ptr, ptr %20, i64 15
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %23 unwind label %48

23:                                               ; preds = %16
  %24 = load ptr, ptr %3, align 8, !tbaa !47
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %28 unwind label %50

28:                                               ; preds = %23
  %29 = icmp eq i32 %27, 9
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %3, align 8, !tbaa !47
  %32 = getelementptr inbounds ptr, ptr %31, i64 12
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %35 unwind label %50

35:                                               ; preds = %28, %30
  %36 = phi ptr [ %34, %30 ], [ %3, %28 ]
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !59
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !64
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = getelementptr inbounds ptr, ptr %43, i64 5
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef null)
          to label %173 unwind label %50

46:                                               ; preds = %6
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %184

48:                                               ; preds = %16
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %182

50:                                               ; preds = %40, %30, %23
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %182

52:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15
  invoke void @_ZN11xalanc_1_1015StringTokenizerC1ERKNS_14XalanDOMStringEPKtb(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull @_ZN11xalanc_1_1015StringTokenizer15s_defaultTokensE, i1 noundef zeroext false)
          to label %53 unwind label %74

53:                                               ; preds = %52
  %54 = load ptr, ptr %2, align 8, !tbaa !47
  %55 = getelementptr inbounds ptr, ptr %54, i64 23
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef nonnull align 8 dereferenceable(36) ptr %56(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %58 unwind label %76

58:                                               ; preds = %53
  %59 = invoke noundef i64 @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %60 unwind label %78

60:                                               ; preds = %58
  %61 = icmp eq i64 %59, 1
  br i1 %61, label %62, label %80

62:                                               ; preds = %60
  invoke void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %63 unwind label %78

63:                                               ; preds = %62
  %64 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !64
  %66 = load ptr, ptr %36, align 8, !tbaa !47
  %67 = getelementptr inbounds ptr, ptr %66, i64 44
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %70 unwind label %78

70:                                               ; preds = %63
  %71 = load ptr, ptr %65, align 8, !tbaa !47
  %72 = getelementptr inbounds ptr, ptr %71, i64 5
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef %69)
          to label %151 unwind label %78

74:                                               ; preds = %52
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %171

76:                                               ; preds = %53
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %169

78:                                               ; preds = %70, %63, %62, %58
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %160

80:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  store ptr %2, ptr %9, align 8, !tbaa !66
  %81 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %9, i64 0, i32 1
  %82 = load ptr, ptr %2, align 8, !tbaa !47
  %83 = getelementptr inbounds ptr, ptr %82, i64 21
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %86 unwind label %105

86:                                               ; preds = %80
  store ptr %85, ptr %81, align 8, !tbaa !68
  %87 = icmp eq i64 %59, 0
  br i1 %87, label %115, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %57, i64 0, i32 1
  br label %90

90:                                               ; preds = %88, %113
  %91 = phi i64 [ %59, %88 ], [ %92, %113 ]
  %92 = add i64 %91, -1
  invoke void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %93 unwind label %107

93:                                               ; preds = %90
  %94 = load i32, ptr %89, align 8, !tbaa !59
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %36, align 8, !tbaa !47
  %98 = getelementptr inbounds ptr, ptr %97, i64 44
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %101 unwind label %111

101:                                              ; preds = %96
  %102 = icmp eq ptr %100, null
  br i1 %102, label %113, label %103

103:                                              ; preds = %101
  %104 = load ptr, ptr %81, align 8, !tbaa !68
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %104, ptr noundef nonnull %100, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %113 unwind label %111

105:                                              ; preds = %80
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %149

107:                                              ; preds = %90
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %135

109:                                              ; preds = %115
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %135

111:                                              ; preds = %103, %96
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %135

113:                                              ; preds = %101, %103, %93
  %114 = icmp eq i64 %92, 0
  br i1 %114, label %115, label %90, !llvm.loop !69

115:                                              ; preds = %113, %86
  %116 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !64
  %118 = load ptr, ptr %117, align 8, !tbaa !47
  %119 = getelementptr inbounds ptr, ptr %118, i64 4
  %120 = load ptr, ptr %119, align 8
  invoke void %120(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %117, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %121 unwind label %109

121:                                              ; preds = %115
  %122 = load ptr, ptr %81, align 8, !tbaa !68
  %123 = icmp eq ptr %122, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %9, align 8, !tbaa !66
  %126 = load ptr, ptr %125, align 8, !tbaa !47
  %127 = getelementptr inbounds ptr, ptr %126, i64 22
  %128 = load ptr, ptr %127, align 8
  %129 = invoke noundef zeroext i1 %128(ptr noundef nonnull align 8 dereferenceable(24) %125, ptr noundef nonnull %122)
          to label %130 unwind label %131

130:                                              ; preds = %124
  store ptr null, ptr %81, align 8, !tbaa !68
  br label %134

131:                                              ; preds = %124
  %132 = landingpad { ptr, i32 }
          catch ptr null
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @__clang_call_terminate(ptr %133) #17
  unreachable

134:                                              ; preds = %121, %130
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %151

135:                                              ; preds = %107, %109, %111
  %136 = phi { ptr, i32 } [ %112, %111 ], [ %108, %107 ], [ %110, %109 ]
  %137 = load ptr, ptr %81, align 8, !tbaa !68
  %138 = icmp eq ptr %137, null
  br i1 %138, label %149, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %9, align 8, !tbaa !66
  %141 = load ptr, ptr %140, align 8, !tbaa !47
  %142 = getelementptr inbounds ptr, ptr %141, i64 22
  %143 = load ptr, ptr %142, align 8
  %144 = invoke noundef zeroext i1 %143(ptr noundef nonnull align 8 dereferenceable(24) %140, ptr noundef nonnull %137)
          to label %145 unwind label %146

145:                                              ; preds = %139
  store ptr null, ptr %81, align 8, !tbaa !68
  br label %149

146:                                              ; preds = %139
  %147 = landingpad { ptr, i32 }
          catch ptr null
  %148 = extractvalue { ptr, i32 } %147, 0
  call void @__clang_call_terminate(ptr %148) #17
  unreachable

149:                                              ; preds = %145, %135, %105
  %150 = phi { ptr, i32 } [ %106, %105 ], [ %136, %135 ], [ %136, %145 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %160

151:                                              ; preds = %134, %70
  %152 = load ptr, ptr %2, align 8, !tbaa !47
  %153 = getelementptr inbounds ptr, ptr %152, i64 24
  %154 = load ptr, ptr %153, align 8
  %155 = invoke noundef zeroext i1 %154(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %159 unwind label %156

156:                                              ; preds = %151
  %157 = landingpad { ptr, i32 }
          catch ptr null
  %158 = extractvalue { ptr, i32 } %157, 0
  call void @__clang_call_terminate(ptr %158) #17
  unreachable

159:                                              ; preds = %151
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  br label %173

160:                                              ; preds = %78, %149
  %161 = phi { ptr, i32 } [ %79, %78 ], [ %150, %149 ]
  %162 = load ptr, ptr %2, align 8, !tbaa !47
  %163 = getelementptr inbounds ptr, ptr %162, i64 24
  %164 = load ptr, ptr %163, align 8
  %165 = invoke noundef zeroext i1 %164(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %169 unwind label %166

166:                                              ; preds = %160
  %167 = landingpad { ptr, i32 }
          catch ptr null
  %168 = extractvalue { ptr, i32 } %167, 0
  call void @__clang_call_terminate(ptr %168) #17
  unreachable

169:                                              ; preds = %160, %76
  %170 = phi { ptr, i32 } [ %77, %76 ], [ %161, %160 ]
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #15
  br label %171

171:                                              ; preds = %169, %74
  %172 = phi { ptr, i32 } [ %170, %169 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15
  br label %182

173:                                              ; preds = %40, %159
  call void @_ZN11xalanc_1_1019XObjectTypeCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  %174 = load ptr, ptr %2, align 8, !tbaa !47
  %175 = getelementptr inbounds ptr, ptr %174, i64 24
  %176 = load ptr, ptr %175, align 8
  %177 = invoke noundef zeroext i1 %176(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %181 unwind label %178

178:                                              ; preds = %173
  %179 = landingpad { ptr, i32 }
          catch ptr null
  %180 = extractvalue { ptr, i32 } %179, 0
  call void @__clang_call_terminate(ptr %180) #17
  unreachable

181:                                              ; preds = %173
  ret void

182:                                              ; preds = %50, %171, %48
  %183 = phi { ptr, i32 } [ %49, %48 ], [ %51, %50 ], [ %172, %171 ]
  call void @_ZN11xalanc_1_1019XObjectTypeCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #15
  br label %184

184:                                              ; preds = %182, %46
  %185 = phi { ptr, i32 } [ %183, %182 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  %186 = load ptr, ptr %2, align 8, !tbaa !47
  %187 = getelementptr inbounds ptr, ptr %186, i64 24
  %188 = load ptr, ptr %187, align 8
  %189 = invoke noundef zeroext i1 %188(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %193 unwind label %190

190:                                              ; preds = %184
  %191 = landingpad { ptr, i32 }
          catch ptr null
  %192 = extractvalue { ptr, i32 } %191, 0
  call void @__clang_call_terminate(ptr %192) #17
  unreachable

193:                                              ; preds = %184
  resume { ptr, i32 } %185
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback15processCallbackERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !51 {
  %3 = load ptr, ptr %1, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 15
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

declare void @_ZN11xalanc_1_1015StringTokenizerC1ERKNS_14XalanDOMStringEPKtb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare noundef i64 @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XObjectTypeCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1010FunctionID5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = load ptr, ptr %1, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !72
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1010FunctionIDE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !47
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1010FunctionID8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !51 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 83, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackC2ERNS_21XPathExecutionContextERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !51 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  tail call void @_ZN11xalanc_1_1019XObjectTypeCallbackC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !56
  ret void
}

declare void @_ZN11xalanc_1_1019XObjectTypeCallbackC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback6NumberERKNS_7XObjectEd(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double %2) unnamed_addr #0 align 2 !prof !51 {
  %4 = load ptr, ptr %1, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %8 = getelementptr inbounds %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  store i32 %14, ptr %15, align 8, !tbaa !59
  br label %16

16:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback7BooleanERKNS_7XObjectEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 zeroext %2) unnamed_addr #0 align 2 !prof !51 {
  %4 = load ptr, ptr %1, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %8 = getelementptr inbounds %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  store i32 %14, ptr %15, align 8, !tbaa !59
  br label %16

16:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback6StringERKNS_7XObjectERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #0 align 2 !prof !51 {
  %4 = load ptr, ptr %1, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %8 = getelementptr inbounds %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  store i32 %14, ptr %15, align 8, !tbaa !59
  br label %16

16:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback18ResultTreeFragmentERKNS_7XObjectERKNS_21XalanDocumentFragmentE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nocapture nonnull readnone align 1 %2) unnamed_addr #0 align 2 !prof !51 {
  %4 = load ptr, ptr %1, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %8 = getelementptr inbounds %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  store i32 %14, ptr %15, align 8, !tbaa !59
  br label %16

16:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback18ResultTreeFragmentERKNS_7XObjectERNS_21XalanDocumentFragmentE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nocapture nonnull readnone align 1 %2) unnamed_addr #0 align 2 !prof !51 {
  %4 = load ptr, ptr %1, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %8 = getelementptr inbounds %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  store i32 %14, ptr %15, align 8, !tbaa !59
  br label %16

16:                                               ; preds = %3, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback7NodeSetERKNS_7XObjectERKNS_15NodeRefListBaseE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !51 {
  %4 = load ptr, ptr %2, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::FunctionID::FunctionIDXObjectTypeCallback", ptr %0, i64 0, i32 1
  br label %12

11:                                               ; preds = %12, %3
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i32 [ 0, %9 ], [ %21, %12 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !47
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %13)
  %18 = load ptr, ptr %10, align 8, !tbaa !73
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(36) %18)
  %19 = load ptr, ptr %10, align 8, !tbaa !73
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 1, i16 noundef zeroext 32)
  %21 = add nuw i32 %13, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %11, label %12, !llvm.loop !76
}

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback7UnknownERKNS_7XObjectERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #6 align 2 !prof !51 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallback4NullERKNS_7XObjectE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #6 align 2 !prof !51 {
  ret void
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_1019XObjectTypeCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !51 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !78

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !80
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !81

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %12 = load ptr, ptr %0, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !82
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !80
  %16 = load i64, ptr %6, align 8, !tbaa !79
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !83
  %19 = load ptr, ptr %3, align 8, !tbaa !82
  store ptr %19, ptr %0, align 8, !tbaa !82
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !80
  store i64 %21, ptr %14, align 8, !tbaa !80
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !79
  store i64 %23, ptr %6, align 8, !tbaa !79
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  store ptr %25, ptr %17, align 8, !tbaa !83
  store ptr %13, ptr %3, align 8, !tbaa !82
  store i64 %15, ptr %20, align 8, !tbaa !80
  store i64 %16, ptr %22, align 8, !tbaa !79
  store ptr %18, ptr %24, align 8, !tbaa !83
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !84

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !85

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #17
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !80
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !86

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !87

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !83
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !80
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !80
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !83
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !88

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !83
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !89
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !80
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !91

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !82
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !80
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !79
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !92
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !83
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !83
  %24 = load i64, ptr %9, align 8, !tbaa !80
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !93

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !82
  %28 = load i64, ptr %6, align 8, !tbaa !80
  %29 = load i64, ptr %7, align 8, !tbaa !79
  %30 = load ptr, ptr %8, align 8, !tbaa !83
  %31 = load ptr, ptr %5, align 8, !tbaa !82
  store ptr %31, ptr %0, align 8, !tbaa !82
  %32 = load i64, ptr %14, align 8, !tbaa !80
  store i64 %32, ptr %6, align 8, !tbaa !80
  %33 = load i64, ptr %15, align 8, !tbaa !79
  store i64 %33, ptr %7, align 8, !tbaa !79
  %34 = load ptr, ptr %21, align 8, !tbaa !83
  store ptr %34, ptr %8, align 8, !tbaa !83
  store ptr %27, ptr %5, align 8, !tbaa !82
  store i64 %28, ptr %14, align 8, !tbaa !80
  store i64 %29, ptr %15, align 8, !tbaa !79
  store ptr %30, ptr %21, align 8, !tbaa !83
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !93

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !79
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !83
  %50 = load ptr, ptr %5, align 8, !tbaa !82
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !94

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !47
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !95
  store ptr %65, ptr %8, align 8, !tbaa !83
  store i64 %3, ptr %7, align 8, !tbaa !79
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !97

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !80
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !79
  br i1 %18, label %21, label %39, !prof !98

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !99

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !100

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !83
  %28 = load i64, ptr %12, align 8, !tbaa !80
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !101
  store i16 %34, ptr %32, align 2, !tbaa !101
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !103, !llvm.loop !104

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !105

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %42 = load ptr, ptr %0, align 8, !tbaa !82
  store ptr %42, ptr %5, align 8, !tbaa !82
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !80
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !79
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !47
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !106
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !83
  %51 = load i64, ptr %43, align 8, !tbaa !80
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !83
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !107

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !83
  %56 = load i64, ptr %43, align 8, !tbaa !80
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !107

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !83
  %60 = load i64, ptr %43, align 8, !tbaa !80
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !83
  %63 = load i64, ptr %12, align 8, !tbaa !80
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !107

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !82
  %67 = load i64, ptr %12, align 8, !tbaa !80
  %68 = load i64, ptr %19, align 8, !tbaa !79
  %69 = load ptr, ptr %15, align 8, !tbaa !83
  %70 = load ptr, ptr %5, align 8, !tbaa !82
  store ptr %70, ptr %0, align 8, !tbaa !82
  %71 = load i64, ptr %43, align 8, !tbaa !80
  store i64 %71, ptr %12, align 8, !tbaa !80
  %72 = load i64, ptr %44, align 8, !tbaa !79
  store i64 %72, ptr %19, align 8, !tbaa !79
  %73 = load ptr, ptr %50, align 8, !tbaa !83
  store ptr %73, ptr %15, align 8, !tbaa !83
  store ptr %66, ptr %5, align 8, !tbaa !82
  store i64 %67, ptr %43, align 8, !tbaa !80
  store i64 %68, ptr %44, align 8, !tbaa !79
  store ptr %69, ptr %50, align 8, !tbaa !83
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !108

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !47
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !109

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !79
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !83
  %89 = load ptr, ptr %5, align 8, !tbaa !82
  %90 = load ptr, ptr %89, align 8, !tbaa !47
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !110

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !111

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !112, !llvm.loop !113

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !114, !llvm.loop !115

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !116
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i16, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %121)
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !117

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 1
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i16, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %131, ptr align 2 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !80
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !119

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !101
  store i16 %13, ptr %12, align 2, !tbaa !101
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !80
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %21 = load ptr, ptr %0, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !82
  %24 = load i64, ptr %4, align 8, !tbaa !80
  %25 = load i64, ptr %6, align 8, !tbaa !79
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !83
  %28 = load ptr, ptr %3, align 8, !tbaa !82
  store ptr %28, ptr %0, align 8, !tbaa !82
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !80
  store i64 %30, ptr %4, align 8, !tbaa !80
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !79
  store i64 %32, ptr %6, align 8, !tbaa !79
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !83
  store ptr %34, ptr %26, align 8, !tbaa !83
  store ptr %23, ptr %3, align 8, !tbaa !82
  store i64 %24, ptr %29, align 8, !tbaa !80
  store i64 %25, ptr %31, align 8, !tbaa !79
  store ptr %27, ptr %33, align 8, !tbaa !83
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !79
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !83
  %52 = load ptr, ptr %3, align 8, !tbaa !82
  %53 = load ptr, ptr %52, align 8, !tbaa !47
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !82
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !80
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !91

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !82
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !80
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !79
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !121
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !83
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = load i64, ptr %5, align 8, !tbaa !80
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !93

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !82
  %24 = load i64, ptr %10, align 8, !tbaa !80
  %25 = load i64, ptr %11, align 8, !tbaa !79
  %26 = load ptr, ptr %17, align 8, !tbaa !83
  store ptr %4, ptr %3, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !79
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !83
  %33 = load ptr, ptr %3, align 8, !tbaa !82
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #17
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !94

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !47
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !122
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !82
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !79
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !83
  store ptr %53, ptr %0, align 8, !tbaa !82
  store i64 %52, ptr %5, align 8, !tbaa !80
  store i64 %51, ptr %55, align 8, !tbaa !79
  store ptr %50, ptr %57, align 8, !tbaa !83
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !123

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !47
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !124

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xalanc_1_1010FunctionIDC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1010FunctionIDD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"function_entry_count", i64 2}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!53, !54, i64 8}
!53 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !54, i64 8}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !49, i64 0}
!56 = !{!54, !54, i64 0}
!57 = !{!58, !54, i64 0}
!58 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !54, i64 0}
!59 = !{!60, !63, i64 32}
!60 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !61, i64 0, !63, i64 32}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !54, i64 0, !62, i64 8, !62, i64 16, !54, i64 24}
!62 = !{!"long", !55, i64 0}
!63 = !{!"int", !55, i64 0}
!64 = !{!65, !54, i64 16}
!65 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !53, i64 0, !54, i64 16}
!66 = !{!67, !54, i64 0}
!67 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !54, i64 0, !54, i64 8}
!68 = !{!67, !54, i64 8}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!73 = !{!74, !54, i64 16}
!74 = !{!"_ZTSN11xalanc_1_1010FunctionID29FunctionIDXObjectTypeCallbackE", !75, i64 0, !54, i64 16, !54, i64 24}
!75 = !{!"_ZTSN11xalanc_1_1019XObjectTypeCallbackE", !54, i64 8}
!76 = distinct !{!76, !70, !71}
!77 = !{!"function_entry_count", i64 41614}
!78 = !{!"branch_weights", i32 0, i32 41614}
!79 = !{!61, !62, i64 16}
!80 = !{!61, !62, i64 8}
!81 = !{!"branch_weights", i32 12, i32 41602}
!82 = !{!61, !54, i64 0}
!83 = !{!61, !54, i64 24}
!84 = !{!"branch_weights", i32 5, i32 7}
!85 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!86 = !{!"branch_weights", i32 354, i32 41248}
!87 = !{!"branch_weights", i32 40889, i32 359}
!88 = !{!"branch_weights", i32 40581, i32 1021}
!89 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!90 = !{!"function_entry_count", i64 22}
!91 = !{!"branch_weights", i32 64551590, i32 18}
!92 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!93 = !{!"branch_weights", i32 18, i32 0}
!94 = !{!"branch_weights", i32 4, i32 64551586}
!95 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!96 = !{!"function_entry_count", i64 155828046}
!97 = !{!"branch_weights", i32 0, i32 155828046}
!98 = !{!"branch_weights", i32 133170777, i32 22657269}
!99 = !{!"branch_weights", i32 20, i32 133170757}
!100 = !{!"branch_weights", i32 1, i32 19024395}
!101 = !{!102, !102, i64 0}
!102 = !{!"short", !55, i64 0}
!103 = !{!"branch_weights", i32 19024395, i32 -26420601}
!104 = distinct !{!104, !70, !71}
!105 = !{!"branch_weights", i32 20748786, i32 1908483}
!106 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!107 = !{!"branch_weights", i32 20748786, i32 0}
!108 = !{!"branch_weights", i32 0, i32 20748786}
!109 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!110 = !{!"branch_weights", i32 0, i32 1908483}
!111 = !{!"branch_weights", i32 1, i32 1908482}
!112 = !{!"branch_weights", i32 1908482, i32 49797853}
!113 = distinct !{!113, !70, !71}
!114 = !{!"branch_weights", i32 1908482, i32 1}
!115 = distinct !{!115, !70, !71}
!116 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!117 = distinct !{!117, !70, !71}
!118 = !{!"function_entry_count", i64 124150652}
!119 = !{!"branch_weights", i32 124150652, i32 0}
!120 = !{!"function_entry_count", i64 64551586}
!121 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!122 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!123 = !{!"branch_weights", i32 42418193, i32 22133393}
!124 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
