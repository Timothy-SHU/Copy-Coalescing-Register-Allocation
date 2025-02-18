; ModuleID = 'FunctionKey.cpp'
source_filename = "FunctionKey.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1011FunctionKeyE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011FunctionKeyE, ptr @_ZN11xalanc_1_1011FunctionKeyD2Ev, ptr @_ZN11xalanc_1_1011FunctionKeyD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1011FunctionKey7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1011FunctionKey5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1011FunctionKey8getErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [6 x i8] c"key()\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011FunctionKeyE = dso_local constant [29 x i8] c"N11xalanc_1_1011FunctionKeyE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1011FunctionKeyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011FunctionKeyE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1011FunctionKeyC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011FunctionKeyC2Ev
@_ZN11xalanc_1_1011FunctionKeyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011FunctionKeyD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011FunctionKeyC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1011FunctionKeyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011FunctionKeyD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !42 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011FunctionKeyD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1011FunctionKey7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %8 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %9 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %10 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %11 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %12 = icmp eq ptr %3, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8, !tbaa !39
  %15 = getelementptr inbounds ptr, ptr %14, i64 23
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %17, i32 noundef 5, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %19 unwind label %32

19:                                               ; preds = %13
  %20 = load ptr, ptr %2, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef null, ptr noundef %6)
          to label %23 unwind label %32

23:                                               ; preds = %19
  store ptr null, ptr %0, align 8, !tbaa !44
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
          to label %24 unwind label %32

24:                                               ; preds = %23
  %25 = load ptr, ptr %2, align 8, !tbaa !39
  %26 = getelementptr inbounds ptr, ptr %25, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %17)
          to label %294 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #9
  unreachable

32:                                               ; preds = %23, %19, %13
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %2, align 8, !tbaa !39
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %17)
          to label %295 unwind label %38

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #9
  unreachable

41:                                               ; preds = %7
  %42 = load ptr, ptr %3, align 8, !tbaa !39
  %43 = getelementptr inbounds ptr, ptr %42, i64 4
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %3, align 8, !tbaa !39
  %49 = getelementptr inbounds ptr, ptr %48, i64 12
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %52

52:                                               ; preds = %41, %47
  %53 = phi ptr [ %51, %47 ], [ %3, %41 ]
  %54 = load ptr, ptr %4, align 8, !tbaa !44
  %55 = load ptr, ptr %54, align 8, !tbaa !39
  %56 = getelementptr inbounds ptr, ptr %55, i64 8
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef nonnull align 8 dereferenceable(36) ptr %57(ptr noundef nonnull align 8 dereferenceable(24) %54)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7
  store ptr %2, ptr %11, align 8, !tbaa !48
  %59 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %11, i64 0, i32 1
  %60 = load ptr, ptr %2, align 8, !tbaa !39
  %61 = getelementptr inbounds ptr, ptr %60, i64 21
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr %63, ptr %59, align 8, !tbaa !50
  %64 = load ptr, ptr %5, align 8, !tbaa !44
  %65 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !51
  %67 = icmp eq i32 %66, 5
  %68 = load ptr, ptr %64, align 8, !tbaa !39
  br i1 %67, label %113, label %69

69:                                               ; preds = %52
  %70 = getelementptr inbounds ptr, ptr %68, i64 8
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef nonnull align 8 dereferenceable(36) ptr %71(ptr noundef nonnull align 8 dereferenceable(24) %64)
          to label %73 unwind label %111

73:                                               ; preds = %69
  %74 = load ptr, ptr %59, align 8, !tbaa !50
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %58, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !56
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %58, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !60
  %81 = icmp eq i64 %80, 0
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %58, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = select i1 %81, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %83
  br label %85

85:                                               ; preds = %88, %78
  %86 = phi ptr [ %84, %78 ], [ %89, %88 ]
  %87 = load i16, ptr %86, align 2, !tbaa !61
  switch i16 %87, label %88 [
    i16 58, label %90
    i16 0, label %90
  ]

88:                                               ; preds = %85
  %89 = getelementptr inbounds i16, ptr %86, i64 1
  br label %85, !llvm.loop !63

90:                                               ; preds = %85, %85
  %91 = ptrtoint ptr %86 to i64
  %92 = ptrtoint ptr %84 to i64
  %93 = sub i64 %91, %92
  %94 = lshr exact i64 %93, 1
  %95 = trunc i64 %94 to i32
  br label %96

96:                                               ; preds = %90, %73
  %97 = phi i32 [ %95, %90 ], [ 0, %73 ]
  %98 = icmp ult i32 %97, %76
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load ptr, ptr %2, align 8, !tbaa !39
  %101 = getelementptr inbounds ptr, ptr %100, i64 27
  %102 = load ptr, ptr %101, align 8
  invoke void %102(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %53, ptr noundef nonnull align 8 dereferenceable(36) %58, ptr noundef nonnull align 8 dereferenceable(36) %72, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(44) %74)
          to label %259 unwind label %111

103:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #7
  invoke void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(36) %58)
          to label %104 unwind label %111

104:                                              ; preds = %103
  %105 = load ptr, ptr %2, align 8, !tbaa !39
  %106 = getelementptr inbounds ptr, ptr %105, i64 26
  %107 = load ptr, ptr %106, align 8
  invoke void %107(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %53, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(36) %72, ptr noundef nonnull align 8 dereferenceable(44) %74)
          to label %108 unwind label %109

108:                                              ; preds = %104
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #7
  br label %259

109:                                              ; preds = %104
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #7
  br label %279

111:                                              ; preds = %103, %99, %259, %69
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %279

113:                                              ; preds = %52
  %114 = getelementptr inbounds ptr, ptr %68, i64 13
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef nonnull align 8 dereferenceable(8) ptr %115(ptr noundef nonnull align 8 dereferenceable(24) %64)
          to label %117 unwind label %167

117:                                              ; preds = %113
  %118 = load ptr, ptr %116, align 8, !tbaa !39
  %119 = getelementptr inbounds ptr, ptr %118, i64 3
  %120 = load ptr, ptr %119, align 8
  %121 = invoke noundef i32 %120(ptr noundef nonnull align 8 dereferenceable(8) %116)
          to label %122 unwind label %169

122:                                              ; preds = %117
  switch i32 %121, label %171 [
    i32 1, label %123
    i32 0, label %259
  ]

123:                                              ; preds = %122
  %124 = load ptr, ptr %5, align 8, !tbaa !44
  %125 = load ptr, ptr %124, align 8, !tbaa !39
  %126 = getelementptr inbounds ptr, ptr %125, i64 8
  %127 = load ptr, ptr %126, align 8
  %128 = invoke noundef nonnull align 8 dereferenceable(36) ptr %127(ptr noundef nonnull align 8 dereferenceable(24) %124)
          to label %129 unwind label %169

129:                                              ; preds = %123
  %130 = load ptr, ptr %59, align 8, !tbaa !50
  %131 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %58, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !56
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %152, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %58, i64 0, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !60
  %137 = icmp eq i64 %136, 0
  %138 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %58, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8
  %140 = select i1 %137, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %139
  br label %141

141:                                              ; preds = %144, %134
  %142 = phi ptr [ %140, %134 ], [ %145, %144 ]
  %143 = load i16, ptr %142, align 2, !tbaa !61
  switch i16 %143, label %144 [
    i16 58, label %146
    i16 0, label %146
  ]

144:                                              ; preds = %141
  %145 = getelementptr inbounds i16, ptr %142, i64 1
  br label %141, !llvm.loop !63

146:                                              ; preds = %141, %141
  %147 = ptrtoint ptr %142 to i64
  %148 = ptrtoint ptr %140 to i64
  %149 = sub i64 %147, %148
  %150 = lshr exact i64 %149, 1
  %151 = trunc i64 %150 to i32
  br label %152

152:                                              ; preds = %146, %129
  %153 = phi i32 [ %151, %146 ], [ 0, %129 ]
  %154 = icmp ult i32 %153, %132
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load ptr, ptr %2, align 8, !tbaa !39
  %157 = getelementptr inbounds ptr, ptr %156, i64 27
  %158 = load ptr, ptr %157, align 8
  invoke void %158(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %53, ptr noundef nonnull align 8 dereferenceable(36) %58, ptr noundef nonnull align 8 dereferenceable(36) %128, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(44) %130)
          to label %259 unwind label %169

159:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  invoke void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(36) %58)
          to label %160 unwind label %169

160:                                              ; preds = %159
  %161 = load ptr, ptr %2, align 8, !tbaa !39
  %162 = getelementptr inbounds ptr, ptr %161, i64 26
  %163 = load ptr, ptr %162, align 8
  invoke void %163(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %53, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(36) %128, ptr noundef nonnull align 8 dereferenceable(44) %130)
          to label %164 unwind label %165

164:                                              ; preds = %160
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  br label %259

165:                                              ; preds = %160
  %166 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  br label %279

167:                                              ; preds = %113
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %279

169:                                              ; preds = %159, %155, %123, %117
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %279

171:                                              ; preds = %122
  %172 = load ptr, ptr %2, align 8, !tbaa !39
  %173 = getelementptr inbounds ptr, ptr %172, i64 23
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef nonnull align 8 dereferenceable(36) ptr %174(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %176 unwind label %192

176:                                              ; preds = %171
  %177 = icmp eq i32 %121, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %175, i64 0, i32 1
  %180 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %58, i64 0, i32 1
  %181 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %58, i64 0, i32 1
  %182 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %58, i64 0, i32 3
  %183 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %175, i64 0, i32 1
  br label %194

184:                                              ; preds = %256, %176
  %185 = load ptr, ptr %2, align 8, !tbaa !39
  %186 = getelementptr inbounds ptr, ptr %185, i64 24
  %187 = load ptr, ptr %186, align 8
  %188 = invoke noundef zeroext i1 %187(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %175)
          to label %259 unwind label %189

189:                                              ; preds = %184
  %190 = landingpad { ptr, i32 }
          catch ptr null
  %191 = extractvalue { ptr, i32 } %190, 0
  call void @__clang_call_terminate(ptr %191) #9
  unreachable

192:                                              ; preds = %171
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %279

194:                                              ; preds = %178, %256
  %195 = phi i32 [ 0, %178 ], [ %257, %256 ]
  %196 = load ptr, ptr %116, align 8, !tbaa !39
  %197 = getelementptr inbounds ptr, ptr %196, i64 2
  %198 = load ptr, ptr %197, align 8
  %199 = invoke noundef ptr %198(ptr noundef nonnull align 8 dereferenceable(8) %116, i32 noundef %195)
          to label %200 unwind label %239

200:                                              ; preds = %194
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %199, ptr noundef nonnull align 8 dereferenceable(36) %175)
          to label %201 unwind label %239

201:                                              ; preds = %200
  %202 = load i32, ptr %179, align 8, !tbaa !56
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %250, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %59, align 8, !tbaa !50
  %206 = load i32, ptr %180, align 8, !tbaa !56
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %224, label %208

208:                                              ; preds = %204
  %209 = load i64, ptr %181, align 8, !tbaa !60
  %210 = icmp eq i64 %209, 0
  %211 = load ptr, ptr %182, align 8
  %212 = select i1 %210, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %211
  br label %213

213:                                              ; preds = %216, %208
  %214 = phi ptr [ %212, %208 ], [ %217, %216 ]
  %215 = load i16, ptr %214, align 2, !tbaa !61
  switch i16 %215, label %216 [
    i16 58, label %218
    i16 0, label %218
  ]

216:                                              ; preds = %213
  %217 = getelementptr inbounds i16, ptr %214, i64 1
  br label %213, !llvm.loop !63

218:                                              ; preds = %213, %213
  %219 = ptrtoint ptr %214 to i64
  %220 = ptrtoint ptr %212 to i64
  %221 = sub i64 %219, %220
  %222 = lshr exact i64 %221, 1
  %223 = trunc i64 %222 to i32
  br label %224

224:                                              ; preds = %218, %204
  %225 = phi i32 [ %223, %218 ], [ 0, %204 ]
  %226 = icmp ult i32 %225, %206
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load ptr, ptr %2, align 8, !tbaa !39
  %229 = getelementptr inbounds ptr, ptr %228, i64 27
  %230 = load ptr, ptr %229, align 8
  invoke void %230(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %53, ptr noundef nonnull align 8 dereferenceable(36) %58, ptr noundef nonnull align 8 dereferenceable(36) %175, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(44) %205)
          to label %250 unwind label %239

231:                                              ; preds = %224
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  invoke void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(36) %58)
          to label %232 unwind label %239

232:                                              ; preds = %231
  %233 = load ptr, ptr %2, align 8, !tbaa !39
  %234 = getelementptr inbounds ptr, ptr %233, i64 26
  %235 = load ptr, ptr %234, align 8
  invoke void %235(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %53, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(36) %175, ptr noundef nonnull align 8 dereferenceable(44) %205)
          to label %236 unwind label %237

236:                                              ; preds = %232
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  br label %250

237:                                              ; preds = %232
  %238 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  br label %241

239:                                              ; preds = %231, %227, %200, %194
  %240 = landingpad { ptr, i32 }
          cleanup
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi { ptr, i32 } [ %240, %239 ], [ %238, %237 ]
  %243 = load ptr, ptr %2, align 8, !tbaa !39
  %244 = getelementptr inbounds ptr, ptr %243, i64 24
  %245 = load ptr, ptr %244, align 8
  %246 = invoke noundef zeroext i1 %245(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %175)
          to label %279 unwind label %247

247:                                              ; preds = %241
  %248 = landingpad { ptr, i32 }
          catch ptr null
  %249 = extractvalue { ptr, i32 } %248, 0
  call void @__clang_call_terminate(ptr %249) #9
  unreachable

250:                                              ; preds = %236, %227, %201
  %251 = load i64, ptr %183, align 8, !tbaa !60
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load i64, ptr %183, align 8, !tbaa !60
  %255 = sub i64 %254, %251
  store i64 %255, ptr %183, align 8, !tbaa !60
  br label %256

256:                                              ; preds = %253, %250
  store i32 0, ptr %179, align 8, !tbaa !56
  %257 = add nuw i32 %195, 1
  %258 = icmp eq i32 %257, %121
  br i1 %258, label %184, label %194, !llvm.loop !66

259:                                              ; preds = %99, %184, %164, %155, %108, %122
  %260 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !67
  %262 = load ptr, ptr %261, align 8, !tbaa !39
  %263 = getelementptr inbounds ptr, ptr %262, i64 4
  %264 = load ptr, ptr %263, align 8
  invoke void %264(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %261, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %265 unwind label %111

265:                                              ; preds = %259
  %266 = load ptr, ptr %59, align 8, !tbaa !50
  %267 = icmp eq ptr %266, null
  br i1 %267, label %278, label %268

268:                                              ; preds = %265
  %269 = load ptr, ptr %11, align 8, !tbaa !48
  %270 = load ptr, ptr %269, align 8, !tbaa !39
  %271 = getelementptr inbounds ptr, ptr %270, i64 22
  %272 = load ptr, ptr %271, align 8
  %273 = invoke noundef zeroext i1 %272(ptr noundef nonnull align 8 dereferenceable(24) %269, ptr noundef nonnull %266)
          to label %274 unwind label %275

274:                                              ; preds = %268
  store ptr null, ptr %59, align 8, !tbaa !50
  br label %278

275:                                              ; preds = %268
  %276 = landingpad { ptr, i32 }
          catch ptr null
  %277 = extractvalue { ptr, i32 } %276, 0
  call void @__clang_call_terminate(ptr %277) #9
  unreachable

278:                                              ; preds = %265, %274
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7
  br label %294

279:                                              ; preds = %192, %241, %169, %165, %111, %109, %167
  %280 = phi { ptr, i32 } [ %168, %167 ], [ %112, %111 ], [ %110, %109 ], [ %170, %169 ], [ %166, %165 ], [ %193, %192 ], [ %242, %241 ]
  %281 = load ptr, ptr %59, align 8, !tbaa !50
  %282 = icmp eq ptr %281, null
  br i1 %282, label %293, label %283

283:                                              ; preds = %279
  %284 = load ptr, ptr %11, align 8, !tbaa !48
  %285 = load ptr, ptr %284, align 8, !tbaa !39
  %286 = getelementptr inbounds ptr, ptr %285, i64 22
  %287 = load ptr, ptr %286, align 8
  %288 = invoke noundef zeroext i1 %287(ptr noundef nonnull align 8 dereferenceable(24) %284, ptr noundef nonnull %281)
          to label %289 unwind label %290

289:                                              ; preds = %283
  store ptr null, ptr %59, align 8, !tbaa !50
  br label %293

290:                                              ; preds = %283
  %291 = landingpad { ptr, i32 }
          catch ptr null
  %292 = extractvalue { ptr, i32 } %291, 0
  call void @__clang_call_terminate(ptr %292) #9
  unreachable

293:                                              ; preds = %279, %289
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7
  br label %295

294:                                              ; preds = %24, %278
  ret void

295:                                              ; preds = %32, %293
  %296 = phi { ptr, i32 } [ %280, %293 ], [ %33, %32 ]
  resume { ptr, i32 } %296
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1011FunctionKey5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = load ptr, ptr %1, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !70
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1011FunctionKeyE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !39
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1011FunctionKey8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !43 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 6, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !43 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

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
!35 = !{ptr @_ZN11xalanc_1_1011FunctionKeyC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1011FunctionKeyD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"function_entry_count", i64 2}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !41, i64 0}
!48 = !{!49, !46, i64 0}
!49 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !46, i64 0, !46, i64 8}
!50 = !{!49, !46, i64 8}
!51 = !{!52, !55, i64 12}
!52 = !{!"_ZTSN11xalanc_1_107XObjectE", !53, i64 0, !55, i64 12, !46, i64 16}
!53 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !54, i64 8}
!54 = !{!"int", !47, i64 0}
!55 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !47, i64 0}
!56 = !{!57, !54, i64 32}
!57 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !58, i64 0, !54, i64 32}
!58 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !46, i64 0, !59, i64 8, !59, i64 16, !46, i64 24}
!59 = !{!"long", !47, i64 0}
!60 = !{!58, !59, i64 8}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !47, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !64, !65}
!67 = !{!68, !46, i64 16}
!68 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !69, i64 0, !46, i64 16}
!69 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !46, i64 8}
!70 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
