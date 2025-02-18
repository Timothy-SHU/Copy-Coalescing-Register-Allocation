; ModuleID = 'Function.cpp'
source_filename = "Function.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_108FunctionE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_108FunctionE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_108FunctionD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_108FunctionE = dso_local constant [25 x i8] c"N11xalanc_1_108FunctionE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_108FunctionE }, align 8

@_ZN11xalanc_1_108FunctionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_108FunctionD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_108FunctionC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_108FunctionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_108FunctionD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_108FunctionD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !39 {
  tail call void @llvm.trap() #8
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %7 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %8 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %11 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %12 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %13 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !40
  switch i64 %15, label %125 [
    i64 0, label %16
    i64 1, label %20
    i64 2, label %38
    i64 3, label %73
  ]

16:                                               ; preds = %6
  %17 = load ptr, ptr %1, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %5)
  br label %168

20:                                               ; preds = %6
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  store ptr %23, ptr %7, align 8, !tbaa !46
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %23)
  %24 = load ptr, ptr %1, align 8, !tbaa !35
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %5)
          to label %27 unwind label %32

27:                                               ; preds = %20
  %28 = load ptr, ptr %7, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %28)
          to label %168 unwind label %29

29:                                               ; preds = %27
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  call void @__clang_call_terminate(ptr %31) #8
  unreachable

32:                                               ; preds = %20
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %7, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %34)
          to label %169 unwind label %35

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #8
  unreachable

38:                                               ; preds = %6
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  store ptr %41, ptr %8, align 8, !tbaa !46
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %41)
  %42 = load ptr, ptr %39, align 8, !tbaa !45
  %43 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  store ptr %44, ptr %9, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %44)
          to label %45 unwind label %59

45:                                               ; preds = %38
  %46 = load ptr, ptr %1, align 8, !tbaa !35
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %5)
          to label %49 unwind label %61

49:                                               ; preds = %45
  %50 = load ptr, ptr %9, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %50)
          to label %54 unwind label %51

51:                                               ; preds = %49
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  call void @__clang_call_terminate(ptr %53) #8
  unreachable

54:                                               ; preds = %49
  %55 = load ptr, ptr %8, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %55)
          to label %168 unwind label %56

56:                                               ; preds = %54
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #8
  unreachable

59:                                               ; preds = %38
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %67

61:                                               ; preds = %45
  %62 = landingpad { ptr, i32 }
          cleanup
  %63 = load ptr, ptr %9, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %63)
          to label %67 unwind label %64

64:                                               ; preds = %61
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #8
  unreachable

67:                                               ; preds = %61, %59
  %68 = phi { ptr, i32 } [ %60, %59 ], [ %62, %61 ]
  %69 = load ptr, ptr %8, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %69)
          to label %169 unwind label %70

70:                                               ; preds = %67
  %71 = landingpad { ptr, i32 }
          catch ptr null
  %72 = extractvalue { ptr, i32 } %71, 0
  call void @__clang_call_terminate(ptr %72) #8
  unreachable

73:                                               ; preds = %6
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !45
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  store ptr %76, ptr %10, align 8, !tbaa !46
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %76)
  %77 = load ptr, ptr %74, align 8, !tbaa !45
  %78 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %77, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  store ptr %79, ptr %11, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %79)
          to label %80 unwind label %103

80:                                               ; preds = %73
  %81 = load ptr, ptr %74, align 8, !tbaa !45
  %82 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !46
  store ptr %83, ptr %12, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %83)
          to label %84 unwind label %105

84:                                               ; preds = %80
  %85 = load ptr, ptr %1, align 8, !tbaa !35
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %5)
          to label %88 unwind label %107

88:                                               ; preds = %84
  %89 = load ptr, ptr %12, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %89)
          to label %93 unwind label %90

90:                                               ; preds = %88
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #8
  unreachable

93:                                               ; preds = %88
  %94 = load ptr, ptr %11, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %94)
          to label %98 unwind label %95

95:                                               ; preds = %93
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = extractvalue { ptr, i32 } %96, 0
  call void @__clang_call_terminate(ptr %97) #8
  unreachable

98:                                               ; preds = %93
  %99 = load ptr, ptr %10, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %99)
          to label %168 unwind label %100

100:                                              ; preds = %98
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = extractvalue { ptr, i32 } %101, 0
  call void @__clang_call_terminate(ptr %102) #8
  unreachable

103:                                              ; preds = %73
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %119

105:                                              ; preds = %80
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %113

107:                                              ; preds = %84
  %108 = landingpad { ptr, i32 }
          cleanup
  %109 = load ptr, ptr %12, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %109)
          to label %113 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { ptr, i32 }
          catch ptr null
  %112 = extractvalue { ptr, i32 } %111, 0
  call void @__clang_call_terminate(ptr %112) #8
  unreachable

113:                                              ; preds = %107, %105
  %114 = phi { ptr, i32 } [ %106, %105 ], [ %108, %107 ]
  %115 = load ptr, ptr %11, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %115)
          to label %119 unwind label %116

116:                                              ; preds = %113
  %117 = landingpad { ptr, i32 }
          catch ptr null
  %118 = extractvalue { ptr, i32 } %117, 0
  call void @__clang_call_terminate(ptr %118) #8
  unreachable

119:                                              ; preds = %113, %103
  %120 = phi { ptr, i32 } [ %104, %103 ], [ %114, %113 ]
  %121 = load ptr, ptr %10, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %121)
          to label %169 unwind label %122

122:                                              ; preds = %119
  %123 = landingpad { ptr, i32 }
          catch ptr null
  %124 = extractvalue { ptr, i32 } %123, 0
  call void @__clang_call_terminate(ptr %124) #8
  unreachable

125:                                              ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #9
  %126 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !48
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(8) %127)
  %128 = load ptr, ptr %1, align 8, !tbaa !35
  %129 = getelementptr inbounds ptr, ptr %128, i64 8
  %130 = load ptr, ptr %129, align 8
  %131 = invoke noundef nonnull align 8 dereferenceable(36) ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %132 unwind label %152

132:                                              ; preds = %125
  %133 = load ptr, ptr %2, align 8, !tbaa !35
  %134 = getelementptr inbounds ptr, ptr %133, i64 2
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %131, ptr noundef %3, ptr noundef %5)
          to label %136 unwind label %152

136:                                              ; preds = %132
  store ptr null, ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %137 unwind label %152

137:                                              ; preds = %136
  %138 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %13, i64 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !50
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %13, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !52
  %144 = load ptr, ptr %13, align 8, !tbaa !53
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  %146 = getelementptr inbounds ptr, ptr %145, i64 3
  %147 = load ptr, ptr %146, align 8
  invoke void %147(ptr noundef nonnull align 8 dereferenceable(8) %144, ptr noundef %143)
          to label %151 unwind label %148

148:                                              ; preds = %141
  %149 = landingpad { ptr, i32 }
          catch ptr null
  %150 = extractvalue { ptr, i32 } %149, 0
  call void @__clang_call_terminate(ptr %150) #8
  unreachable

151:                                              ; preds = %137, %141
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #9
  br label %168

152:                                              ; preds = %136, %132, %125
  %153 = landingpad { ptr, i32 }
          cleanup
  %154 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %13, i64 0, i32 2
  %155 = load i64, ptr %154, align 8, !tbaa !50
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %167, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %13, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !52
  %160 = load ptr, ptr %13, align 8, !tbaa !53
  %161 = load ptr, ptr %160, align 8, !tbaa !35
  %162 = getelementptr inbounds ptr, ptr %161, i64 3
  %163 = load ptr, ptr %162, align 8
  invoke void %163(ptr noundef nonnull align 8 dereferenceable(8) %160, ptr noundef %159)
          to label %167 unwind label %164

164:                                              ; preds = %157
  %165 = landingpad { ptr, i32 }
          catch ptr null
  %166 = extractvalue { ptr, i32 } %165, 0
  call void @__clang_call_terminate(ptr %166) #8
  unreachable

167:                                              ; preds = %152, %157
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #9
  br label %169

168:                                              ; preds = %98, %54, %27, %151, %16
  ret void

169:                                              ; preds = %119, %67, %32, %167
  %170 = phi { ptr, i32 } [ %153, %167 ], [ %33, %32 ], [ %68, %67 ], [ %120, %119 ]
  resume { ptr, i32 } %170
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #9
  %7 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %13 unwind label %33

13:                                               ; preds = %5
  %14 = load ptr, ptr %2, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef %3, ptr noundef %4)
          to label %17 unwind label %33

17:                                               ; preds = %13
  store ptr null, ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %18 unwind label %33

18:                                               ; preds = %17
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %6, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !50
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %6, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = load ptr, ptr %6, align 8, !tbaa !53
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %24)
          to label %32 unwind label %29

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  call void @__clang_call_terminate(ptr %31) #8
  unreachable

32:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  ret void

33:                                               ; preds = %17, %13, %5
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %6, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !50
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %6, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  %41 = load ptr, ptr %6, align 8, !tbaa !53
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %38
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #8
  unreachable

48:                                               ; preds = %33, %38
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  resume { ptr, i32 } %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture readnone %4, ptr noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #9
  %8 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %10 = load ptr, ptr %1, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %14 unwind label %34

14:                                               ; preds = %6
  %15 = load ptr, ptr %2, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef %3, ptr noundef %5)
          to label %18 unwind label %34

18:                                               ; preds = %14
  store ptr null, ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %19 unwind label %34

19:                                               ; preds = %18
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = load ptr, ptr %7, align 8, !tbaa !53
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %25)
          to label %33 unwind label %30

30:                                               ; preds = %23
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  call void @__clang_call_terminate(ptr %32) #8
  unreachable

33:                                               ; preds = %19, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  ret void

34:                                               ; preds = %18, %14, %6
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !50
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = load ptr, ptr %7, align 8, !tbaa !53
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %41)
          to label %49 unwind label %46

46:                                               ; preds = %39
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #8
  unreachable

49:                                               ; preds = %34, %39
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  resume { ptr, i32 } %35
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture readnone %4, ptr nocapture readnone %5, ptr noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #9
  %9 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %11 = load ptr, ptr %1, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %15 unwind label %35

15:                                               ; preds = %7
  %16 = load ptr, ptr %2, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef %3, ptr noundef %6)
          to label %19 unwind label %35

19:                                               ; preds = %15
  store ptr null, ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %20 unwind label %35

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %8, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !50
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %8, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = load ptr, ptr %8, align 8, !tbaa !53
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %24
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #8
  unreachable

34:                                               ; preds = %20, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #9
  ret void

35:                                               ; preds = %19, %15, %7
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %8, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !50
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %8, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !52
  %43 = load ptr, ptr %8, align 8, !tbaa !53
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %50 unwind label %47

47:                                               ; preds = %40
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #8
  unreachable

50:                                               ; preds = %35, %40
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #9
  resume { ptr, i32 } %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture readnone %4, ptr nocapture readnone %5, ptr nocapture readnone %6, ptr noundef %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #9
  %10 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %12 = load ptr, ptr %1, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %16 unwind label %36

16:                                               ; preds = %8
  %17 = load ptr, ptr %2, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef %3, ptr noundef %7)
          to label %20 unwind label %36

20:                                               ; preds = %16
  store ptr null, ptr %0, align 8, !tbaa !46
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %21 unwind label %36

21:                                               ; preds = %20
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %9, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !50
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %9, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = load ptr, ptr %9, align 8, !tbaa !53
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %27)
          to label %35 unwind label %32

32:                                               ; preds = %25
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #8
  unreachable

35:                                               ; preds = %21, %25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #9
  ret void

36:                                               ; preds = %20, %16, %8
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %9, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !50
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %9, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = load ptr, ptr %9, align 8, !tbaa !53
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %43)
          to label %51 unwind label %48

48:                                               ; preds = %41
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #8
  unreachable

51:                                               ; preds = %36, %41
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #9
  resume { ptr, i32 } %37
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #6

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !39 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 109}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!"function_entry_count", i64 130}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !44, i64 8}
!41 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !42, i64 0, !44, i64 8, !44, i64 16, !42, i64 24}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !37, i64 0}
!44 = !{!"long", !43, i64 0}
!45 = !{!41, !42, i64 24}
!46 = !{!47, !42, i64 0}
!47 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !42, i64 0}
!48 = !{!49, !42, i64 8}
!49 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !42, i64 8}
!50 = !{!51, !44, i64 16}
!51 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !42, i64 0, !44, i64 8, !44, i64 16, !42, i64 24}
!52 = !{!51, !42, i64 24}
!53 = !{!51, !42, i64 0}
