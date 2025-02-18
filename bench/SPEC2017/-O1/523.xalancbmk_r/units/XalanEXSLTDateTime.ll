; ModuleID = 'XalanEXSLTDateTime.cpp'
source_filename = "XalanEXSLTDateTime.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanEXSLTFunctionDateTime" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::Function" = type { ptr }
%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" = type { ptr, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }

$_ZN11xalanc_1_1026XalanEXSLTFunctionDateTimeD0Ev = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionDateTime5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_10L18s_dateTimeFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionDateTime" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H:%M:%S\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%2.2d:00\00", align 1
@_ZN11xalanc_1_10L22s_dateTimeFunctionNameE = internal constant [10 x i16] [i16 100, i16 97, i16 116, i16 101, i16 45, i16 116, i16 105, i16 109, i16 101, i16 0], align 16
@_ZN11xalanc_1_10L19s_dateTimeNamespaceE = internal constant [33 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 101, i16 120, i16 115, i16 108, i16 116, i16 46, i16 111, i16 114, i16 103, i16 47, i16 100, i16 97, i16 116, i16 101, i16 115, i16 45, i16 97, i16 110, i16 100, i16 45, i16 116, i16 105, i16 109, i16 101, i16 115, i16 0], align 16
@_ZN11xalanc_1_10L16theFunctionTableE = internal constant [2 x %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry"] [%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_dateTimeFunctionNameE, ptr @_ZN11xalanc_1_10L18s_dateTimeFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" zeroinitializer], align 16
@_ZTVN11xalanc_1_1026XalanEXSLTFunctionDateTimeE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1026XalanEXSLTFunctionDateTimeE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionDateTimeD0Ev, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDateTime7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDateTime5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDateTime8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1026XalanEXSLTFunctionDateTimeE = dso_local constant [44 x i8] c"N11xalanc_1_1026XalanEXSLTFunctionDateTimeE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1026XalanEXSLTFunctionDateTimeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1026XalanEXSLTFunctionDateTimeE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanEXSLTDateTime.cpp, ptr null }]

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1026XalanEXSLTFunctionDateTime7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm, align 8
  %10 = alloca %struct.tm, align 8
  %11 = alloca [1001 x i8], align 16
  %12 = alloca [1001 x i8], align 16
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !41
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #10
  %17 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %19 = load ptr, ptr %1, align 8, !tbaa !49
  %20 = getelementptr inbounds ptr, ptr %19, i64 8
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef nonnull align 8 dereferenceable(36) ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %23 unwind label %42

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef %3, ptr noundef %5)
          to label %27 unwind label %42

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !51
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  %34 = load ptr, ptr %7, align 8, !tbaa !54
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %33)
          to label %41 unwind label %38

38:                                               ; preds = %31
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #11
  unreachable

41:                                               ; preds = %27, %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  br label %58

42:                                               ; preds = %23, %16
  %43 = landingpad { ptr, i32 }
          cleanup
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !51
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = load ptr, ptr %7, align 8, !tbaa !54
  %51 = load ptr, ptr %50, align 8, !tbaa !49
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %47
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #11
  unreachable

57:                                               ; preds = %42, %47
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  br label %172

58:                                               ; preds = %41, %6
  %59 = load ptr, ptr %2, align 8, !tbaa !49
  %60 = getelementptr inbounds ptr, ptr %59, i64 23
  %61 = load ptr, ptr %60, align 8
  %62 = call noundef nonnull align 8 dereferenceable(36) ptr %61(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %62, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !55
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i64, ptr %63, align 8, !tbaa !55
  %68 = sub i64 %67, %64
  store i64 %68, ptr %63, align 8, !tbaa !55
  br label %69

69:                                               ; preds = %66, %58
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %62, i64 0, i32 1
  store i32 0, ptr %70, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %71 = call i64 @time(ptr noundef nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #10
  %72 = call ptr @localtime_r(ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %146, label %74

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #10
  %75 = call ptr @gmtime_r(ptr noundef nonnull %8, ptr noundef nonnull %10) #10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %145, label %77

77:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 1001, ptr nonnull %11) #10
  %78 = call i64 @strftime(ptr noundef nonnull %11, i64 noundef 1000, ptr noundef nonnull @.str, ptr noundef nonnull %75) #10
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %142, label %80

80:                                               ; preds = %77
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %62, i32 noundef 0, i32 noundef -1)
          to label %81 unwind label %115

81:                                               ; preds = %80
  %82 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %11)
          to label %83 unwind label %115

83:                                               ; preds = %81
  %84 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %62, ptr noundef nonnull %11, i32 noundef %82)
          to label %85 unwind label %115

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.tm, ptr %9, i64 0, i32 5
  %87 = load i32, ptr %86, align 4, !tbaa !59
  %88 = mul nsw i32 %87, 10000
  %89 = getelementptr inbounds %struct.tm, ptr %9, i64 0, i32 4
  %90 = load i32, ptr %89, align 8, !tbaa !61
  %91 = mul nsw i32 %90, 100
  %92 = add nsw i32 %91, %88
  %93 = getelementptr inbounds %struct.tm, ptr %9, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !62
  %95 = add nsw i32 %92, %94
  %96 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !59
  %98 = mul nsw i32 %97, 10000
  %99 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !61
  %101 = mul nsw i32 %100, 100
  %102 = add nsw i32 %101, %98
  %103 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 3
  %104 = load i32, ptr %103, align 4, !tbaa !62
  %105 = add nsw i32 %102, %104
  call void @llvm.lifetime.start.p0(i64 1001, ptr nonnull %12) #10
  %106 = icmp eq i32 %95, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %85
  %108 = getelementptr inbounds %struct.tm, ptr %9, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !63
  %110 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !63
  %112 = icmp eq i32 %109, %111
  %113 = sub nsw i32 %109, %111
  %114 = select i1 %112, i32 100, i32 %113
  br label %129

115:                                              ; preds = %83, %81, %80
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %143

117:                                              ; preds = %85
  %118 = icmp slt i32 %95, %105
  %119 = getelementptr inbounds %struct.tm, ptr %9, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !63
  %121 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 2
  %122 = load i32, ptr %121, align 8, !tbaa !63
  br i1 %118, label %123, label %126

123:                                              ; preds = %117
  %124 = add i32 %120, -24
  %125 = sub i32 %124, %122
  br label %129

126:                                              ; preds = %117
  %127 = add i32 %120, 24
  %128 = sub i32 %127, %122
  br label %129

129:                                              ; preds = %107, %123, %126
  %130 = phi i32 [ %125, %123 ], [ %128, %126 ], [ %114, %107 ]
  %131 = icmp eq i32 %130, 100
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i16 122, ptr %12, align 16
  br label %135

133:                                              ; preds = %129
  %134 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %130) #10
  br label %135

135:                                              ; preds = %133, %132
  %136 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %12)
          to label %137 unwind label %140

137:                                              ; preds = %135
  %138 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %62, ptr noundef nonnull %12, i32 noundef %136)
          to label %139 unwind label %140

139:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 1001, ptr nonnull %12) #10
  br label %142

140:                                              ; preds = %137, %135
  %141 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1001, ptr nonnull %12) #10
  br label %143

142:                                              ; preds = %139, %77
  call void @llvm.lifetime.end.p0(i64 1001, ptr nonnull %11) #10
  br label %145

143:                                              ; preds = %140, %115
  %144 = phi { ptr, i32 } [ %141, %140 ], [ %116, %115 ]
  call void @llvm.lifetime.end.p0(i64 1001, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #10
  br label %163

145:                                              ; preds = %142, %74
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #10
  br label %146

146:                                              ; preds = %145, %69
  %147 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !64
  %149 = load ptr, ptr %148, align 8, !tbaa !49
  %150 = getelementptr inbounds ptr, ptr %149, i64 9
  %151 = load ptr, ptr %150, align 8
  invoke void %151(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %148, ptr noundef nonnull align 8 dereferenceable(36) %62)
          to label %152 unwind label %161

152:                                              ; preds = %146
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  %153 = load ptr, ptr %2, align 8, !tbaa !49
  %154 = getelementptr inbounds ptr, ptr %153, i64 24
  %155 = load ptr, ptr %154, align 8
  %156 = invoke noundef zeroext i1 %155(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %62)
          to label %160 unwind label %157

157:                                              ; preds = %152
  %158 = landingpad { ptr, i32 }
          catch ptr null
  %159 = extractvalue { ptr, i32 } %158, 0
  call void @__clang_call_terminate(ptr %159) #11
  unreachable

160:                                              ; preds = %152
  ret void

161:                                              ; preds = %146
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %163

163:                                              ; preds = %161, %143
  %164 = phi { ptr, i32 } [ %162, %161 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  %165 = load ptr, ptr %2, align 8, !tbaa !49
  %166 = getelementptr inbounds ptr, ptr %165, i64 24
  %167 = load ptr, ptr %166, align 8
  %168 = invoke noundef zeroext i1 %167(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %62)
          to label %172 unwind label %169

169:                                              ; preds = %163
  %170 = landingpad { ptr, i32 }
          catch ptr null
  %171 = extractvalue { ptr, i32 } %170, 0
  call void @__clang_call_terminate(ptr %171) #11
  unreachable

172:                                              ; preds = %163, %57
  %173 = phi { ptr, i32 } [ %43, %57 ], [ %164, %163 ]
  resume { ptr, i32 } %173
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDateTime8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L22s_dateTimeFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller12installLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 1 %0) local_unnamed_addr #2 align 2 !prof !40 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L19s_dateTimeNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 1 %0)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 !prof !66 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L19s_dateTimeNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller14uninstallLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 1 %0) local_unnamed_addr #2 align 2 !prof !40 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L19s_dateTimeNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 1 %0)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 !prof !66 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L19s_dateTimeNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionDateTimeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !40 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDateTime5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !67
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionDateTimeE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !49
  ret ptr %6
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanEXSLTDateTime.cpp() #9 section ".text.startup" !prof !66 !PGOFuncName !68 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_dateTimeFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionDateTimeE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L18s_dateTimeFunctionE, align 8, !tbaa !49
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_dateTimeFunctionE, ptr nonnull @__dso_handle) #10
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!37 = !{ptr @_GLOBAL__sub_I_XalanEXSLTDateTime.cpp, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!38 = !{ptr @_GLOBAL__sub_I_XalanEXSLTDateTime.cpp, ptr @__cxa_atexit, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !46, i64 8}
!42 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !43, i64 0, !46, i64 8, !46, i64 16, !43, i64 24}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"long", !44, i64 0}
!47 = !{!48, !43, i64 8}
!48 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !43, i64 8}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !45, i64 0}
!51 = !{!52, !46, i64 16}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !43, i64 0, !46, i64 8, !46, i64 16, !43, i64 24}
!53 = !{!52, !43, i64 24}
!54 = !{!52, !43, i64 0}
!55 = !{!52, !46, i64 8}
!56 = !{!57, !58, i64 32}
!57 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !52, i64 0, !58, i64 32}
!58 = !{!"int", !44, i64 0}
!59 = !{!60, !58, i64 20}
!60 = !{!"_ZTS2tm", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !46, i64 40, !43, i64 48}
!61 = !{!60, !58, i64 16}
!62 = !{!60, !58, i64 12}
!63 = !{!60, !58, i64 8}
!64 = !{!65, !43, i64 16}
!65 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !48, i64 0, !43, i64 16}
!66 = !{!"function_entry_count", i64 1}
!67 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!68 = !{!"XalanEXSLTDateTime.cpp;_GLOBAL__sub_I_XalanEXSLTDateTime.cpp"}
