; ModuleID = 'CountersTable.cpp'
source_filename = "CountersTable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ElemNumber" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.4", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::Counter" = type { i64, %"class.xalanc_1_10::XalanVector.0", ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::CountersTable" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0" }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager" = type { %"struct.xalanc_1_10::Counter" }

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_ = comdat any

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZN11xalanc_1_1013CountersTable9countNodeERNS_26StylesheetExecutionContextERKNS_10ElemNumberEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !40 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::ElemNumber", ptr %2, i64 0, i32 10
  %7 = load i64, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %9, i64 %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %9, i64 %7, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %13 = tail call noundef ptr @_ZNK11xalanc_1_1010ElemNumber13getTargetNodeERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3)
  store ptr %13, ptr %5, align 8, !tbaa !68
  %14 = icmp eq ptr %13, null
  br i1 %14, label %176, label %15

15:                                               ; preds = %4
  %16 = icmp ne i64 %12, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %9, i64 %7, i32 3
  br label %23

19:                                               ; preds = %55
  %20 = add nuw i64 %26, 1
  %21 = icmp ult i64 %20, %12
  %22 = icmp eq i64 %20, %12
  br i1 %22, label %59, label %23, !llvm.loop !69

23:                                               ; preds = %17, %19
  %24 = phi i1 [ %16, %17 ], [ %21, %19 ]
  %25 = phi i64 [ undef, %17 ], [ %58, %19 ]
  %26 = phi i64 [ 0, %17 ], [ %20, %19 ]
  %27 = load ptr, ptr %18, align 8, !tbaa !72
  %28 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %27, i64 %26
  %29 = load ptr, ptr %5, align 8, !tbaa !68
  %30 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %27, i64 %26, i32 1, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !73
  %32 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %27, i64 %26, i32 1, i32 3
  br label %33

33:                                               ; preds = %52, %23
  %34 = phi i64 [ %31, %23 ], [ %38, %52 ]
  %35 = phi i64 [ 0, %23 ], [ %54, %52 ]
  %36 = icmp eq i64 %34, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = add i64 %34, -1
  %39 = load ptr, ptr %32, align 8, !tbaa !75
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !68
  %42 = icmp eq ptr %41, %29
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, ptr %28, align 8, !tbaa !76
  %45 = add i64 %44, %34
  br label %52

46:                                               ; preds = %37
  %47 = load ptr, ptr %1, align 8, !tbaa !78
  %48 = getelementptr inbounds ptr, ptr %47, i64 9
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %29)
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  %54 = phi i64 [ %45, %43 ], [ %35, %46 ]
  br i1 %53, label %33, label %55, !llvm.loop !80

55:                                               ; preds = %52, %33
  %56 = phi i64 [ %35, %33 ], [ %54, %52 ]
  %57 = icmp eq i64 %56, 0
  %58 = select i1 %57, i64 %25, i64 %56
  br i1 %57, label %19, label %59

59:                                               ; preds = %55, %19, %15
  %60 = phi i1 [ %16, %15 ], [ %24, %55 ], [ %21, %19 ]
  %61 = phi i64 [ undef, %15 ], [ %58, %19 ], [ %58, %55 ]
  br i1 %60, label %176, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %5, align 8, !tbaa !68
  %64 = icmp eq ptr %63, null
  br i1 %64, label %140, label %65

65:                                               ; preds = %62
  %66 = icmp ne i64 %12, 0
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %9, i64 %7, i32 3
  %68 = getelementptr inbounds %"class.xalanc_1_10::CountersTable", ptr %0, i64 0, i32 1, i32 1
  %69 = getelementptr inbounds %"class.xalanc_1_10::CountersTable", ptr %0, i64 0, i32 1, i32 3
  %70 = getelementptr inbounds %"class.xalanc_1_10::CountersTable", ptr %0, i64 0, i32 1
  br label %71

71:                                               ; preds = %65, %133
  %72 = phi i64 [ %61, %65 ], [ %135, %133 ]
  %73 = phi i64 [ 0, %65 ], [ %136, %133 ]
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %133, label %75

75:                                               ; preds = %71
  br i1 %66, label %80, label %129

76:                                               ; preds = %125
  %77 = add nuw i64 %84, 1
  %78 = icmp ult i64 %77, %12
  %79 = icmp eq i64 %77, %12
  br i1 %79, label %129, label %80, !llvm.loop !81

80:                                               ; preds = %75, %76
  %81 = phi i1 [ %78, %76 ], [ %66, %75 ]
  %82 = phi i64 [ %128, %76 ], [ %72, %75 ]
  %83 = phi i64 [ %127, %76 ], [ %73, %75 ]
  %84 = phi i64 [ %77, %76 ], [ 0, %75 ]
  %85 = load ptr, ptr %67, align 8, !tbaa !72
  %86 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %85, i64 %84
  %87 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %85, i64 %84, i32 1
  %88 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %85, i64 %84, i32 1, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !73
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %125, label %91

91:                                               ; preds = %80
  %92 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %85, i64 %84, i32 1, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !75
  %94 = getelementptr ptr, ptr %93, i64 %89
  %95 = getelementptr ptr, ptr %94, i64 -1
  %96 = load ptr, ptr %95, align 8, !tbaa !68
  %97 = load ptr, ptr %5, align 8, !tbaa !68
  %98 = icmp eq ptr %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %91
  %100 = load i64, ptr %86, align 8, !tbaa !76
  %101 = add i64 %89, %83
  %102 = add i64 %101, %100
  %103 = load i64, ptr %68, align 8, !tbaa !73
  %104 = add i64 %103, %89
  %105 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %85, i64 %84, i32 1, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !82
  %107 = icmp ult i64 %106, %104
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %87, i64 noundef %104)
  br label %109

109:                                              ; preds = %108, %99
  %110 = load i64, ptr %68, align 8, !tbaa !73, !noalias !83
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load ptr, ptr %69, align 8, !tbaa !75, !noalias !86
  %114 = getelementptr inbounds ptr, ptr %113, i64 %110
  br label %115

115:                                              ; preds = %112, %115
  %116 = phi i64 [ %119, %115 ], [ %110, %112 ]
  %117 = phi ptr [ %118, %115 ], [ %114, %112 ]
  %118 = getelementptr inbounds ptr, ptr %117, i64 -1
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull align 8 dereferenceable(8) %118)
  %119 = add nsw i64 %116, -1
  %120 = icmp sgt i64 %116, 1
  br i1 %120, label %115, label %121, !llvm.loop !87

121:                                              ; preds = %115, %109
  %122 = load i64, ptr %68, align 8, !tbaa !73
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store i64 0, ptr %68, align 8, !tbaa !73
  br label %125

125:                                              ; preds = %124, %121, %80, %91
  %126 = phi i1 [ true, %91 ], [ true, %80 ], [ false, %121 ], [ false, %124 ]
  %127 = phi i64 [ %83, %91 ], [ %83, %80 ], [ %102, %121 ], [ %102, %124 ]
  %128 = phi i64 [ %82, %91 ], [ %82, %80 ], [ %102, %121 ], [ %102, %124 ]
  br i1 %126, label %76, label %129

129:                                              ; preds = %125, %76, %75
  %130 = phi i1 [ %66, %75 ], [ %81, %125 ], [ %78, %76 ]
  %131 = phi i64 [ %73, %75 ], [ %127, %76 ], [ %127, %125 ]
  %132 = phi i64 [ %72, %75 ], [ %128, %76 ], [ %128, %125 ]
  br i1 %130, label %176, label %133

133:                                              ; preds = %129, %71
  %134 = phi i64 [ %131, %129 ], [ 0, %71 ]
  %135 = phi i64 [ %132, %129 ], [ %72, %71 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %136 = add i64 %134, 1
  %137 = load ptr, ptr %5, align 8, !tbaa !68
  %138 = call noundef ptr @_ZNK11xalanc_1_1010ElemNumber15getPreviousNodeERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %137)
  store ptr %138, ptr %5, align 8, !tbaa !68
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %71, !llvm.loop !88

140:                                              ; preds = %133, %62
  %141 = phi i64 [ 0, %62 ], [ %136, %133 ]
  %142 = load i64, ptr %11, align 8, !tbaa !66
  %143 = add i64 %142, 1
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %143)
  %144 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %9, i64 %7, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !72
  %146 = load i64, ptr %11, align 8, !tbaa !66
  %147 = getelementptr %"struct.xalanc_1_10::Counter", ptr %145, i64 %146
  %148 = getelementptr %"struct.xalanc_1_10::Counter", ptr %147, i64 -1, i32 3
  store ptr %2, ptr %148, align 8, !tbaa !89
  %149 = getelementptr %"struct.xalanc_1_10::Counter", ptr %147, i64 -1, i32 1
  %150 = getelementptr %"struct.xalanc_1_10::Counter", ptr %147, i64 -1, i32 1, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !73
  %152 = getelementptr inbounds %"class.xalanc_1_10::CountersTable", ptr %0, i64 0, i32 1, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !73
  %154 = add i64 %153, %151
  %155 = getelementptr %"struct.xalanc_1_10::Counter", ptr %147, i64 -1, i32 1, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !82
  %157 = icmp ult i64 %156, %154
  br i1 %157, label %158, label %159

158:                                              ; preds = %140
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %149, i64 noundef %154)
  br label %159

159:                                              ; preds = %158, %140
  %160 = load i64, ptr %152, align 8, !tbaa !73, !noalias !90
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = getelementptr inbounds %"class.xalanc_1_10::CountersTable", ptr %0, i64 0, i32 1, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !75, !noalias !86
  %165 = getelementptr inbounds ptr, ptr %164, i64 %160
  br label %166

166:                                              ; preds = %162, %166
  %167 = phi i64 [ %170, %166 ], [ %160, %162 ]
  %168 = phi ptr [ %169, %166 ], [ %165, %162 ]
  %169 = getelementptr inbounds ptr, ptr %168, i64 -1
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %149, ptr noundef nonnull align 8 dereferenceable(8) %169)
  %170 = add nsw i64 %167, -1
  %171 = icmp sgt i64 %167, 1
  br i1 %171, label %166, label %172, !llvm.loop !87

172:                                              ; preds = %166, %159
  %173 = load i64, ptr %152, align 8, !tbaa !73
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  store i64 0, ptr %152, align 8, !tbaa !73
  br label %176

176:                                              ; preds = %129, %175, %172, %59, %4
  %177 = phi i64 [ 0, %4 ], [ %61, %59 ], [ %141, %172 ], [ %141, %175 ], [ %132, %129 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret i64 %177
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noundef ptr @_ZNK11xalanc_1_1010ElemNumber13getTargetNodeERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_107Counter20getPreviouslyCountedERNS_26StylesheetExecutionContextEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !40 {
  %4 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %0, i64 0, i32 1, i32 3
  br label %7

7:                                                ; preds = %26, %3
  %8 = phi i64 [ %5, %3 ], [ %12, %26 ]
  %9 = phi i64 [ 0, %3 ], [ %28, %26 ]
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = add i64 %8, -1
  %13 = load ptr, ptr %6, align 8, !tbaa !75
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i64, ptr %0, align 8, !tbaa !76
  %19 = add i64 %18, %8
  br label %26

20:                                               ; preds = %11
  %21 = load ptr, ptr %1, align 8, !tbaa !78
  %22 = getelementptr inbounds ptr, ptr %21, i64 9
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  %28 = phi i64 [ %19, %17 ], [ %9, %20 ]
  br i1 %27, label %7, label %29, !llvm.loop !80

29:                                               ; preds = %26, %7
  %30 = phi i64 [ %9, %7 ], [ %28, %26 ]
  ret i64 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare noundef ptr @_ZNK11xalanc_1_1010ElemNumber15getPreviousNodeERNS_26StylesheetExecutionContextEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #11
  %4 = load ptr, ptr %0, align 8, !tbaa !93
  store i64 0, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %3, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %3, i64 0, i32 1, i32 1
  %7 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %3, i64 0, i32 1, i32 2
  %8 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %3, i64 0, i32 1, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %9 unwind label %22

9:                                                ; preds = %2
  %10 = load i64, ptr %7, align 8, !tbaa !82
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 8, !tbaa !75
  %14 = load ptr, ptr %5, align 8, !tbaa !94
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %13)
          to label %21 unwind label %18

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #12
  unreachable

21:                                               ; preds = %9, %12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  ret void

22:                                               ; preds = %2
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load i64, ptr %7, align 8, !tbaa !82
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 8, !tbaa !75
  %28 = load ptr, ptr %5, align 8, !tbaa !94
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %27)
          to label %35 unwind label %32

32:                                               ; preds = %26
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #12
  unreachable

35:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #11
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %4 = load ptr, ptr %0, align 8, !tbaa !94
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !94
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = load ptr, ptr %3, align 8, !tbaa !94
  store ptr %12, ptr %0, align 8, !tbaa !94
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !73
  store i64 %14, ptr %6, align 8, !tbaa !73
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !82
  store i64 %16, ptr %8, align 8, !tbaa !82
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  store ptr %18, ptr %10, align 8, !tbaa !75
  store ptr %5, ptr %3, align 8, !tbaa !94
  store i64 %7, ptr %13, align 8, !tbaa !73
  store i64 %9, ptr %15, align 8, !tbaa !82
  store ptr %11, ptr %17, align 8, !tbaa !75
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !96

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !78
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24, !prof !97

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #12
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !94
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !73
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !99

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !94
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !73
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !82
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !78
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !100
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !75
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = load i64, ptr %9, align 8, !tbaa !73
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !101

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !94
  %28 = load i64, ptr %6, align 8, !tbaa !73
  %29 = load i64, ptr %7, align 8, !tbaa !82
  %30 = load ptr, ptr %8, align 8, !tbaa !75
  %31 = load ptr, ptr %5, align 8, !tbaa !94
  store ptr %31, ptr %0, align 8, !tbaa !94
  %32 = load i64, ptr %14, align 8, !tbaa !73
  store i64 %32, ptr %6, align 8, !tbaa !73
  %33 = load i64, ptr %15, align 8, !tbaa !82
  store i64 %33, ptr %7, align 8, !tbaa !82
  %34 = load ptr, ptr %21, align 8, !tbaa !75
  store ptr %34, ptr %8, align 8, !tbaa !75
  store ptr %27, ptr %5, align 8, !tbaa !94
  store i64 %28, ptr %14, align 8, !tbaa !73
  store i64 %29, ptr %15, align 8, !tbaa !82
  store ptr %30, ptr %21, align 8, !tbaa !75
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !101

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !78
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #12
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !82
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !75
  %50 = load ptr, ptr %5, align 8, !tbaa !94
  %51 = load ptr, ptr %50, align 8, !tbaa !78
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #12
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !102

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !78
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !103
  store ptr %65, ptr %8, align 8, !tbaa !75
  store i64 %3, ptr %7, align 8, !tbaa !82
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !82
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !105

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = load ptr, ptr %0, align 8, !tbaa !94
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !106

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #12
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !108

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !73
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !82
  br i1 %18, label %21, label %39, !prof !101

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !108

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !109

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !75
  %28 = load i64, ptr %12, align 8, !tbaa !73
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !68
  store ptr %34, ptr %32, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !110, !llvm.loop !111

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %42 = load ptr, ptr %0, align 8, !tbaa !94
  store ptr %42, ptr %5, align 8, !tbaa !94
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !73
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !82
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !78
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !75
  %51 = load i64, ptr %43, align 8, !tbaa !73
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !75
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !75
  %56 = load i64, ptr %43, align 8, !tbaa !73
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !75
  %60 = load i64, ptr %43, align 8, !tbaa !73
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !75
  %63 = load i64, ptr %12, align 8, !tbaa !73
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !94
  %67 = load i64, ptr %12, align 8, !tbaa !73
  %68 = load i64, ptr %19, align 8, !tbaa !82
  %69 = load ptr, ptr %15, align 8, !tbaa !75
  %70 = load ptr, ptr %5, align 8, !tbaa !94
  store ptr %70, ptr %0, align 8, !tbaa !94
  %71 = load i64, ptr %43, align 8, !tbaa !73
  store i64 %71, ptr %12, align 8, !tbaa !73
  %72 = load i64, ptr %44, align 8, !tbaa !82
  store i64 %72, ptr %19, align 8, !tbaa !82
  %73 = load ptr, ptr %50, align 8, !tbaa !75
  store ptr %73, ptr %15, align 8, !tbaa !75
  store ptr %66, ptr %5, align 8, !tbaa !94
  store i64 %67, ptr %43, align 8, !tbaa !73
  store i64 %68, ptr %44, align 8, !tbaa !82
  store ptr %69, ptr %50, align 8, !tbaa !75
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !78
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #12
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !82
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !75
  %89 = load ptr, ptr %5, align 8, !tbaa !94
  %90 = load ptr, ptr %89, align 8, !tbaa !78
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #12
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !112

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !113

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !114

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
  store i64 %36, ptr %12, align 8, !tbaa !73
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !82
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !116

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !68
  store ptr %13, ptr %12, align 8, !tbaa !68
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !73
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !117
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %21 = load ptr, ptr %0, align 8, !tbaa !94
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !118

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !94
  %24 = load i64, ptr %4, align 8, !tbaa !73
  %25 = load i64, ptr %6, align 8, !tbaa !82
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = load ptr, ptr %3, align 8, !tbaa !94
  store ptr %28, ptr %0, align 8, !tbaa !94
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !73
  store i64 %30, ptr %4, align 8, !tbaa !73
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !82
  store i64 %32, ptr %6, align 8, !tbaa !82
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  store ptr %34, ptr %26, align 8, !tbaa !75
  store ptr %23, ptr %3, align 8, !tbaa !94
  store i64 %24, ptr %29, align 8, !tbaa !73
  store i64 %25, ptr %31, align 8, !tbaa !82
  store ptr %27, ptr %33, align 8, !tbaa !75
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !117

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !78
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !119

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #12
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !82
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !75
  %52 = load ptr, ptr %3, align 8, !tbaa !94
  %53 = load ptr, ptr %52, align 8, !tbaa !78
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #12
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6resizeEmRKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !66
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %9
  %10 = load i64, ptr %4, align 8, !tbaa !66
  %11 = add i64 %10, -1
  store i64 %11, ptr %4, align 8, !tbaa !66
  %12 = load ptr, ptr %8, align 8, !tbaa !72
  %13 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %12, i64 %11, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #11
  %14 = load i64, ptr %4, align 8, !tbaa !66
  %15 = icmp ugt i64 %14, %1
  br i1 %15, label %9, label %47, !llvm.loop !120

16:                                               ; preds = %3
  %17 = icmp ult i64 %5, %1
  br i1 %17, label %18, label %47

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !121
  %21 = icmp ult i64 %20, %1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %25, i64 %1
  %27 = load i64, ptr %4, align 8, !tbaa !66
  %28 = icmp eq i64 %27, %1
  br i1 %28, label %47, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %25, i64 %27
  %31 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %2, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %2, i64 0, i32 2
  %33 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %2, i64 0, i32 3
  br label %34

34:                                               ; preds = %29, %34
  %35 = phi ptr [ %30, %29 ], [ %43, %34 ]
  %36 = load ptr, ptr %0, align 8, !tbaa !93
  %37 = load i64, ptr %2, align 8, !tbaa !76
  store i64 %37, ptr %35, align 8, !tbaa !76
  %38 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %35, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef 0)
  %39 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %32, align 8, !tbaa !122
  store ptr %40, ptr %39, align 8, !tbaa !122
  %41 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %35, i64 0, i32 3
  %42 = load ptr, ptr %33, align 8, !tbaa !89
  store ptr %42, ptr %41, align 8, !tbaa !89
  %43 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %35, i64 1
  %44 = load i64, ptr %4, align 8, !tbaa !66
  %45 = add i64 %44, 1
  store i64 %45, ptr %4, align 8, !tbaa !66
  %46 = icmp eq ptr %43, %26
  br i1 %46, label %47, label %34, !llvm.loop !123

47:                                               ; preds = %34, %9, %23, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %4 = load ptr, ptr %0, align 8, !tbaa !93
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !93
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !121
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = load ptr, ptr %3, align 8, !tbaa !93
  store ptr %12, ptr %0, align 8, !tbaa !93
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !66
  store i64 %14, ptr %6, align 8, !tbaa !66
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !121
  store i64 %16, ptr %8, align 8, !tbaa !121
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  store ptr %18, ptr %10, align 8, !tbaa !72
  store ptr %5, ptr %3, align 8, !tbaa !93
  store i64 %7, ptr %13, align 8, !tbaa !66
  store i64 %9, ptr %15, align 8, !tbaa !121
  store ptr %11, ptr %17, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  store ptr %2, ptr %0, align 8, !tbaa !93
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !66
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12, !prof !125

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !93
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !66
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !121
  %16 = mul i64 %13, 56
  %17 = load ptr, ptr %2, align 8, !tbaa !78
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !72
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = load i64, ptr %9, align 8, !tbaa !66
  %25 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !93
  %28 = load i64, ptr %6, align 8, !tbaa !66
  %29 = load i64, ptr %7, align 8, !tbaa !121
  %30 = load ptr, ptr %8, align 8, !tbaa !72
  %31 = load ptr, ptr %5, align 8, !tbaa !93
  store ptr %31, ptr %0, align 8, !tbaa !93
  %32 = load i64, ptr %14, align 8, !tbaa !66
  store i64 %32, ptr %6, align 8, !tbaa !66
  %33 = load i64, ptr %15, align 8, !tbaa !121
  store i64 %33, ptr %7, align 8, !tbaa !121
  %34 = load ptr, ptr %21, align 8, !tbaa !72
  store ptr %34, ptr %8, align 8, !tbaa !72
  store ptr %27, ptr %5, align 8, !tbaa !93
  store i64 %28, ptr %14, align 8, !tbaa !66
  store i64 %29, ptr %15, align 8, !tbaa !121
  store ptr %30, ptr %21, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39, !prof !125

39:                                               ; preds = %37
  %40 = mul i64 %3, 56
  %41 = load ptr, ptr %2, align 8, !tbaa !78
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !72
  store i64 %3, ptr %7, align 8, !tbaa !121
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !121
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %23, label %5, !prof !127

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %15, %12 ], [ %7, %5 ]
  %14 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %13, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #11
  %15 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %13, i64 1
  %16 = icmp eq ptr %15, %10
  br i1 %16, label %17, label %12, !llvm.loop !128

17:                                               ; preds = %12, %5
  %18 = load ptr, ptr %6, align 8, !tbaa !72
  %19 = load ptr, ptr %0, align 8, !tbaa !93
  %20 = load ptr, ptr %19, align 8, !tbaa !78
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %18)
          to label %23 unwind label %24

23:                                               ; preds = %17, %1
  ret void

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #12
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 56
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %165, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !66
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !121
  br i1 %18, label %21, label %48

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %165, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !72
  %28 = load i64, ptr %12, align 8, !tbaa !66
  %29 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %46, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %43, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !93
  %34 = load i64, ptr %31, align 8, !tbaa !76
  store i64 %34, ptr %32, align 8, !tbaa !76
  %35 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %32, i64 0, i32 1
  %36 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %31, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %37 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %32, i64 0, i32 2
  %38 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %31, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !122
  store ptr %39, ptr %37, align 8, !tbaa !122
  %40 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %32, i64 0, i32 3
  %41 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %31, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !89
  store ptr %42, ptr %40, align 8, !tbaa !89
  %43 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %32, i64 1
  %44 = load i64, ptr %12, align 8, !tbaa !66
  %45 = add i64 %44, 1
  store i64 %45, ptr %12, align 8, !tbaa !66
  %46 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %31, i64 1
  %47 = icmp eq ptr %46, %3
  br i1 %47, label %165, label %30, !llvm.loop !129

48:                                               ; preds = %11
  %49 = icmp ugt i64 %14, %20
  br i1 %49, label %50, label %85

50:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %51 = load ptr, ptr %0, align 8, !tbaa !93
  store ptr %51, ptr %5, align 8, !tbaa !93
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  store i64 0, ptr %52, align 8, !tbaa !66
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  store i64 %14, ptr %53, align 8, !tbaa !121
  %54 = mul i64 %14, 56
  %55 = load ptr, ptr %51, align 8, !tbaa !78
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %54)
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  store ptr %58, ptr %59, align 8, !tbaa !72
  %60 = load i64, ptr %52, align 8, !tbaa !66
  %61 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %58, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !72
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %62, ptr noundef %1)
          to label %63 unwind label %83

63:                                               ; preds = %50
  %64 = load ptr, ptr %59, align 8, !tbaa !72
  %65 = load i64, ptr %52, align 8, !tbaa !66
  %66 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %64, i64 %65
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %66, ptr noundef %2, ptr noundef %3)
          to label %67 unwind label %83

67:                                               ; preds = %63
  %68 = load ptr, ptr %59, align 8, !tbaa !72
  %69 = load i64, ptr %52, align 8, !tbaa !66
  %70 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %68, i64 %69
  %71 = load ptr, ptr %15, align 8, !tbaa !72
  %72 = load i64, ptr %12, align 8, !tbaa !66
  %73 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %71, i64 %72
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %70, ptr noundef %1, ptr noundef %73)
          to label %74 unwind label %83

74:                                               ; preds = %67
  %75 = load ptr, ptr %0, align 8, !tbaa !93
  %76 = load i64, ptr %12, align 8, !tbaa !66
  %77 = load i64, ptr %19, align 8, !tbaa !121
  %78 = load ptr, ptr %15, align 8, !tbaa !72
  %79 = load ptr, ptr %5, align 8, !tbaa !93
  store ptr %79, ptr %0, align 8, !tbaa !93
  %80 = load i64, ptr %52, align 8, !tbaa !66
  store i64 %80, ptr %12, align 8, !tbaa !66
  %81 = load i64, ptr %53, align 8, !tbaa !121
  store i64 %81, ptr %19, align 8, !tbaa !121
  %82 = load ptr, ptr %59, align 8, !tbaa !72
  store ptr %82, ptr %15, align 8, !tbaa !72
  store ptr %75, ptr %5, align 8, !tbaa !93
  store i64 %76, ptr %52, align 8, !tbaa !66
  store i64 %77, ptr %53, align 8, !tbaa !121
  store ptr %78, ptr %59, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %165

83:                                               ; preds = %67, %63, %50
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  resume { ptr, i32 } %84

85:                                               ; preds = %48
  %86 = ptrtoint ptr %17 to i64
  %87 = ptrtoint ptr %1 to i64
  %88 = sub i64 %86, %87
  %89 = icmp ugt i64 %88, %8
  br i1 %89, label %121, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, ptr %2, i64 %88
  %92 = icmp eq ptr %91, %3
  br i1 %92, label %93, label %95

93:                                               ; preds = %95, %90
  %94 = icmp eq ptr %17, %1
  br i1 %94, label %103, label %99

95:                                               ; preds = %90, %95
  %96 = phi ptr [ %97, %95 ], [ %91, %90 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %96)
  %97 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %96, i64 1
  %98 = icmp eq ptr %97, %3
  br i1 %98, label %93, label %95, !llvm.loop !130

99:                                               ; preds = %93, %99
  %100 = phi ptr [ %101, %99 ], [ %1, %93 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %100)
  %101 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %100, i64 1
  %102 = icmp eq ptr %101, %17
  br i1 %102, label %103, label %99, !llvm.loop !131

103:                                              ; preds = %99, %93
  %104 = icmp sgt i64 %88, 0
  br i1 %104, label %105, label %165

105:                                              ; preds = %103
  %106 = udiv exact i64 %88, 56
  br label %107

107:                                              ; preds = %105, %107
  %108 = phi i64 [ %119, %107 ], [ %106, %105 ]
  %109 = phi ptr [ %118, %107 ], [ %1, %105 ]
  %110 = phi ptr [ %117, %107 ], [ %2, %105 ]
  %111 = load i64, ptr %110, align 8, !tbaa !76
  store i64 %111, ptr %109, align 8, !tbaa !76
  %112 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %109, i64 0, i32 1
  %113 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %110, i64 0, i32 1
  %114 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %112, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %115 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %109, i64 0, i32 2
  %116 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %110, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %115, ptr noundef nonnull align 8 dereferenceable(16) %116, i64 16, i1 false)
  %117 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %110, i64 1
  %118 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %109, i64 1
  %119 = add nsw i64 %108, -1
  %120 = icmp sgt i64 %108, 1
  br i1 %120, label %107, label %165, !llvm.loop !132

121:                                              ; preds = %85
  %122 = sub nsw i64 0, %9
  %123 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %17, i64 %122
  %124 = icmp eq ptr %3, %2
  br i1 %124, label %129, label %125

125:                                              ; preds = %121, %125
  %126 = phi ptr [ %127, %125 ], [ %123, %121 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %126)
  %127 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %126, i64 1
  %128 = icmp eq ptr %127, %17
  br i1 %128, label %129, label %125, !llvm.loop !133

129:                                              ; preds = %125, %121
  %130 = ptrtoint ptr %123 to i64
  %131 = sub i64 %130, %87
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = udiv exact i64 %131, 56
  br label %137

135:                                              ; preds = %137, %129
  %136 = icmp sgt i64 %8, 0
  br i1 %136, label %151, label %165

137:                                              ; preds = %133, %137
  %138 = phi i64 [ %149, %137 ], [ %134, %133 ]
  %139 = phi ptr [ %142, %137 ], [ %17, %133 ]
  %140 = phi ptr [ %141, %137 ], [ %123, %133 ]
  %141 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %140, i64 -1
  %142 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %139, i64 -1
  %143 = load i64, ptr %141, align 8, !tbaa !76
  store i64 %143, ptr %142, align 8, !tbaa !76
  %144 = getelementptr %"struct.xalanc_1_10::Counter", ptr %139, i64 -1, i32 1
  %145 = getelementptr %"struct.xalanc_1_10::Counter", ptr %140, i64 -1, i32 1
  %146 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %144, ptr noundef nonnull align 8 dereferenceable(32) %145)
  %147 = getelementptr %"struct.xalanc_1_10::Counter", ptr %139, i64 -1, i32 2
  %148 = getelementptr %"struct.xalanc_1_10::Counter", ptr %140, i64 -1, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %147, ptr noundef nonnull align 8 dereferenceable(16) %148, i64 16, i1 false)
  %149 = add nsw i64 %138, -1
  %150 = icmp sgt i64 %138, 1
  br i1 %150, label %137, label %135, !llvm.loop !134

151:                                              ; preds = %135, %151
  %152 = phi i64 [ %163, %151 ], [ %9, %135 ]
  %153 = phi ptr [ %162, %151 ], [ %1, %135 ]
  %154 = phi ptr [ %161, %151 ], [ %2, %135 ]
  %155 = load i64, ptr %154, align 8, !tbaa !76
  store i64 %155, ptr %153, align 8, !tbaa !76
  %156 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %153, i64 0, i32 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %154, i64 0, i32 1
  %158 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %156, ptr noundef nonnull align 8 dereferenceable(32) %157)
  %159 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %153, i64 0, i32 2
  %160 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %154, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %159, ptr noundef nonnull align 8 dereferenceable(16) %160, i64 16, i1 false)
  %161 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %154, i64 1
  %162 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %153, i64 1
  %163 = add nsw i64 %152, -1
  %164 = icmp sgt i64 %152, 1
  br i1 %164, label %151, label %165, !llvm.loop !132

165:                                              ; preds = %107, %151, %30, %103, %135, %24, %74, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !121
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !93
  %14 = load i64, ptr %1, align 8, !tbaa !76
  store i64 %14, ptr %12, align 8, !tbaa !76
  %15 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %11, i64 %5, i32 1
  %16 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %1, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %17 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %11, i64 %5, i32 2
  %18 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  store ptr %19, ptr %17, align 8, !tbaa !122
  %20 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %11, i64 %5, i32 3
  %21 = getelementptr inbounds %"struct.xalanc_1_10::Counter", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !89
  store ptr %22, ptr %20, align 8, !tbaa !89
  %23 = load i64, ptr %4, align 8, !tbaa !66
  %24 = add i64 %23, 1
  store i64 %24, ptr %4, align 8, !tbaa !66
  br label %47

25:                                               ; preds = %2
  %26 = icmp eq i64 %5, 0
  %27 = uitofp i64 %5 to double
  %28 = tail call double @llvm.fmuladd.f64(double %27, double 1.600000e+00, double 5.000000e-01)
  %29 = fptoui double %28 to i64
  %30 = select i1 %26, i64 1, i64 %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %31 = load ptr, ptr %0, align 8, !tbaa !93
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef %30)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %32 unwind label %45

32:                                               ; preds = %25
  %33 = load ptr, ptr %0, align 8, !tbaa !93
  %34 = load i64, ptr %4, align 8, !tbaa !66
  %35 = load i64, ptr %6, align 8, !tbaa !121
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = load ptr, ptr %3, align 8, !tbaa !93
  store ptr %38, ptr %0, align 8, !tbaa !93
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !66
  store i64 %40, ptr %4, align 8, !tbaa !66
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !121
  store i64 %42, ptr %6, align 8, !tbaa !121
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  store ptr %44, ptr %36, align 8, !tbaa !72
  store ptr %33, ptr %3, align 8, !tbaa !93
  store i64 %34, ptr %39, align 8, !tbaa !66
  store i64 %35, ptr %41, align 8, !tbaa !121
  store ptr %37, ptr %43, align 8, !tbaa !72
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %47

45:                                               ; preds = %25
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  resume { ptr, i32 } %46

47:                                               ; preds = %32, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !82
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !73
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %12 = load ptr, ptr %0, align 8, !tbaa !94
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !94
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !73
  %16 = load i64, ptr %6, align 8, !tbaa !82
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = load ptr, ptr %3, align 8, !tbaa !94
  store ptr %19, ptr %0, align 8, !tbaa !94
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !73
  store i64 %21, ptr %14, align 8, !tbaa !73
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !82
  store i64 %23, ptr %6, align 8, !tbaa !82
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  store ptr %25, ptr %17, align 8, !tbaa !75
  store ptr %13, ptr %3, align 8, !tbaa !94
  store i64 %15, ptr %20, align 8, !tbaa !73
  store i64 %16, ptr %22, align 8, !tbaa !82
  store ptr %18, ptr %24, align 8, !tbaa !75
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !78
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #12
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  %38 = getelementptr inbounds ptr, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !73
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds ptr, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = getelementptr inbounds ptr, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !73
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !73
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !75
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !75
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %62, ptr align 8 %55, i64 %60, i1 false)
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 52494}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 52643}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 179}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 179}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !50, i64 400}
!42 = !{!"_ZTSN11xalanc_1_1010ElemNumberE", !43, i64 0, !45, i64 328, !45, i64 336, !45, i64 344, !50, i64 352, !45, i64 360, !45, i64 368, !45, i64 376, !45, i64 384, !45, i64 392, !50, i64 400}
!43 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElementE", !44, i64 0, !45, i64 8, !48, i64 16, !59, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !46, i64 280, !60, i64 288, !63, i64 320}
!44 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !49, i64 0, !51, i64 32, !52, i64 64, !53, i64 96}
!49 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !45, i64 0, !50, i64 8, !50, i64 16, !45, i64 24}
!50 = !{!"long", !46, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !45, i64 0, !50, i64 8, !50, i64 16, !45, i64 24}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !45, i64 0, !50, i64 8, !50, i64 16, !45, i64 24}
!53 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !54, i64 0, !55, i64 1, !45, i64 8, !56, i64 16, !50, i64 24, !50, i64 32, !57, i64 40, !57, i64 64, !58, i64 88, !50, i64 120, !50, i64 128}
!54 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!55 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!56 = !{!"float", !46, i64 0}
!57 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !45, i64 0, !45, i64 8, !45, i64 16}
!58 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !45, i64 0, !50, i64 8, !50, i64 16, !45, i64 24}
!59 = !{!"int", !46, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1019ElemTemplateElement12LocatorProxyE", !61, i64 0, !50, i64 8, !50, i64 16, !45, i64 24}
!61 = !{!"_ZTSN11xalanc_1_1012XalanLocatorE", !62, i64 0}
!62 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!63 = !{!"short", !46, i64 0}
!64 = !{!65, !45, i64 24}
!65 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEE", !45, i64 0, !50, i64 8, !50, i64 16, !45, i64 24}
!66 = !{!67, !50, i64 8}
!67 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !45, i64 0, !50, i64 8, !50, i64 16, !45, i64 24}
!68 = !{!45, !45, i64 0}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!67, !45, i64 24}
!73 = !{!74, !50, i64 8}
!74 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !45, i64 0, !50, i64 8, !50, i64 16, !45, i64 24}
!75 = !{!74, !45, i64 24}
!76 = !{!77, !50, i64 0}
!77 = !{!"_ZTSN11xalanc_1_107CounterE", !50, i64 0, !74, i64 8, !45, i64 40, !45, i64 48}
!78 = !{!79, !79, i64 0}
!79 = !{!"vtable pointer", !47, i64 0}
!80 = distinct !{!80, !70, !71}
!81 = distinct !{!81, !70, !71}
!82 = !{!74, !50, i64 16}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv: argument 0"}
!85 = distinct !{!85, !"_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv"}
!86 = !{}
!87 = distinct !{!87, !70, !71}
!88 = distinct !{!88, !70, !71}
!89 = !{!77, !45, i64 48}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv: argument 0"}
!92 = distinct !{!92, !"_ZNK11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEE6rbeginEv"}
!93 = !{!67, !45, i64 0}
!94 = !{!74, !45, i64 0}
!95 = !{!"function_entry_count", i64 52494}
!96 = !{!"branch_weights", i32 4, i32 52490}
!97 = !{!"VP", i32 0, i64 52490, i64 -7405368087501025645, i64 52490}
!98 = !{!"function_entry_count", i64 52673}
!99 = !{!"branch_weights", i32 30, i32 52643}
!100 = !{!"VP", i32 0, i64 52643, i64 8345045103670217670, i64 52643}
!101 = !{!"branch_weights", i32 52643, i32 0}
!102 = !{!"branch_weights", i32 0, i32 30}
!103 = !{!"VP", i32 0, i64 30, i64 8345045103670217670, i64 30}
!104 = !{!"function_entry_count", i64 21}
!105 = !{!"branch_weights", i32 1, i32 20}
!106 = !{!"VP", i32 0, i64 20, i64 -7405368087501025645, i64 20}
!107 = !{!"function_entry_count", i64 52643}
!108 = !{!"branch_weights", i32 0, i32 52643}
!109 = !{!"branch_weights", i32 1, i32 52642}
!110 = !{!"branch_weights", i32 52642, i32 298062848}
!111 = distinct !{!111, !70, !71}
!112 = distinct !{!112, !70, !71}
!113 = distinct !{!113, !70, !71}
!114 = distinct !{!114, !70, !71}
!115 = !{!"function_entry_count", i64 3517488}
!116 = !{!"branch_weights", i32 3517309, i32 179}
!117 = !{!"branch_weights", i32 16, i32 163}
!118 = !{!"branch_weights", i32 179, i32 0}
!119 = !{!"VP", i32 0, i64 163, i64 -7405368087501025645, i64 163}
!120 = distinct !{!120, !70, !71}
!121 = !{!67, !50, i64 16}
!122 = !{!77, !45, i64 40}
!123 = distinct !{!123, !70, !71}
!124 = !{!"function_entry_count", i64 5}
!125 = !{!"branch_weights", i32 5, i32 0}
!126 = !{!"function_entry_count", i64 8}
!127 = !{!"branch_weights", i32 8, i32 0}
!128 = distinct !{!128, !70, !71}
!129 = distinct !{!129, !70, !71}
!130 = distinct !{!130, !70, !71}
!131 = distinct !{!131, !70, !71}
!132 = distinct !{!132, !70, !71}
!133 = distinct !{!133, !70, !71}
!134 = distinct !{!134, !70, !71}
