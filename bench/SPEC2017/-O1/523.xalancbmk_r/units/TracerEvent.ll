; ModuleID = 'TracerEvent.cpp'
source_filename = "TracerEvent.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::TracerEvent" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKcj = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1011TracerEventE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1011TracerEventE, ptr @_ZN11xalanc_1_1011TracerEventD2Ev, ptr @_ZN11xalanc_1_1011TracerEventD0Ev] }, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1011TracerEventE = dso_local constant [29 x i8] c"N11xalanc_1_1011TracerEventE\00", align 1
@_ZTIN11xalanc_1_1011TracerEventE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1011TracerEventE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1011TracerEventC1ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1011TracerEventC2ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE
@_ZN11xalanc_1_1011TracerEventD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1011TracerEventD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1011TracerEventC2ERKNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1011TracerEventE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::TracerEvent", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::TracerEvent", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1011TracerEventD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1011TracerEventD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZdlPv(ptr noundef %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011TracerEvent9printNodeERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018PointerToDOMStringEPKvRNS_14XalanDOMStringE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str, i32 noundef -1)
  %10 = load ptr, ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %220

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %16 = load ptr, ptr %1, align 8, !tbaa !41
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef -1)
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !44
  %19 = icmp eq i64 %18, 0
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = select i1 %19, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %21
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !45
  %25 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %22, i32 noundef %24)
          to label %26 unwind label %106

26:                                               ; preds = %15
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !48
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %20, align 8, !tbaa !49
  %32 = load ptr, ptr %3, align 8, !tbaa !41
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %39 unwind label %36

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #11
  unreachable

39:                                               ; preds = %26, %30
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  %40 = load ptr, ptr %0, align 8, !tbaa !35
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef nonnull align 8 dereferenceable(36) ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %43, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !44
  %46 = icmp eq i64 %45, 0
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %43, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = select i1 %46, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %48
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %43, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !45
  %52 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %49, i32 noundef %51)
  %53 = load ptr, ptr %0, align 8, !tbaa !35
  %54 = getelementptr inbounds ptr, ptr %53, i64 7
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %57 = load ptr, ptr %1, align 8, !tbaa !41
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %57)
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  br label %65

65:                                               ; preds = %141, %39
  %66 = phi ptr [ %56, %39 ], [ %145, %141 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %146, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !35
  %70 = getelementptr inbounds ptr, ptr %69, i64 4
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef i32 %71(ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %73 unwind label %121

73:                                               ; preds = %68
  %74 = icmp eq i32 %72, 2
  br i1 %74, label %75, label %141

75:                                               ; preds = %73
  %76 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011TracerEvent9printNodeERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %77 unwind label %121

77:                                               ; preds = %75
  %78 = load i64, ptr %58, align 8, !tbaa !44
  %79 = icmp eq i64 %78, 0
  %80 = load ptr, ptr %59, align 8
  %81 = select i1 %79, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %80
  %82 = load i32, ptr %60, align 8, !tbaa !45
  %83 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %81, i32 noundef %82)
          to label %84 unwind label %121

84:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %85 = load ptr, ptr %1, align 8, !tbaa !41
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %85, i32 noundef -1)
          to label %86 unwind label %123

86:                                               ; preds = %84
  %87 = load i64, ptr %61, align 8, !tbaa !44
  %88 = icmp eq i64 %87, 0
  %89 = load ptr, ptr %62, align 8
  %90 = select i1 %88, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %89
  %91 = load i32, ptr %63, align 8, !tbaa !45
  %92 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %90, i32 noundef %91)
          to label %93 unwind label %125

93:                                               ; preds = %86
  %94 = load i64, ptr %64, align 8, !tbaa !48
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %62, align 8, !tbaa !49
  %98 = load ptr, ptr %5, align 8, !tbaa !41
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = getelementptr inbounds ptr, ptr %99, i64 3
  %101 = load ptr, ptr %100, align 8
  invoke void %101(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef %97)
          to label %105 unwind label %102

102:                                              ; preds = %96
  %103 = landingpad { ptr, i32 }
          catch ptr null
  %104 = extractvalue { ptr, i32 } %103, 0
  call void @__clang_call_terminate(ptr %104) #11
  unreachable

105:                                              ; preds = %93, %96
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  br label %141

106:                                              ; preds = %15
  %107 = landingpad { ptr, i32 }
          cleanup
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !48
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr %20, align 8, !tbaa !49
  %113 = load ptr, ptr %3, align 8, !tbaa !41
  %114 = load ptr, ptr %113, align 8, !tbaa !35
  %115 = getelementptr inbounds ptr, ptr %114, i64 3
  %116 = load ptr, ptr %115, align 8
  invoke void %116(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef %112)
          to label %120 unwind label %117

117:                                              ; preds = %111
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  call void @__clang_call_terminate(ptr %119) #11
  unreachable

120:                                              ; preds = %106, %111
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %293

121:                                              ; preds = %77, %141, %75, %68
  %122 = landingpad { ptr, i32 }
          cleanup
  br label %204

123:                                              ; preds = %84
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %139

125:                                              ; preds = %86
  %126 = landingpad { ptr, i32 }
          cleanup
  %127 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %128 = load i64, ptr %127, align 8, !tbaa !48
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %62, align 8, !tbaa !49
  %132 = load ptr, ptr %5, align 8, !tbaa !41
  %133 = load ptr, ptr %132, align 8, !tbaa !35
  %134 = getelementptr inbounds ptr, ptr %133, i64 3
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef %131)
          to label %139 unwind label %136

136:                                              ; preds = %130
  %137 = landingpad { ptr, i32 }
          catch ptr null
  %138 = extractvalue { ptr, i32 } %137, 0
  call void @__clang_call_terminate(ptr %138) #11
  unreachable

139:                                              ; preds = %130, %125, %123
  %140 = phi { ptr, i32 } [ %124, %123 ], [ %126, %125 ], [ %126, %130 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  br label %204

141:                                              ; preds = %105, %73
  %142 = load ptr, ptr %66, align 8, !tbaa !35
  %143 = getelementptr inbounds ptr, ptr %142, i64 10
  %144 = load ptr, ptr %143, align 8
  %145 = invoke noundef ptr %144(ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %65 unwind label %121, !llvm.loop !50

146:                                              ; preds = %65
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  %147 = load ptr, ptr %1, align 8, !tbaa !41
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %147, i32 noundef -1)
          to label %148 unwind label %186

148:                                              ; preds = %146
  %149 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa !44
  %151 = icmp eq i64 %150, 0
  %152 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8
  %154 = select i1 %151, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %153
  %155 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !45
  %157 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %154, i32 noundef %156)
          to label %158 unwind label %188

158:                                              ; preds = %148
  %159 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %160 = load i64, ptr %159, align 8, !tbaa !48
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %152, align 8, !tbaa !49
  %164 = load ptr, ptr %6, align 8, !tbaa !41
  %165 = load ptr, ptr %164, align 8, !tbaa !35
  %166 = getelementptr inbounds ptr, ptr %165, i64 3
  %167 = load ptr, ptr %166, align 8
  invoke void %167(ptr noundef nonnull align 8 dereferenceable(8) %164, ptr noundef %163)
          to label %171 unwind label %168

168:                                              ; preds = %162
  %169 = landingpad { ptr, i32 }
          catch ptr null
  %170 = extractvalue { ptr, i32 } %169, 0
  call void @__clang_call_terminate(ptr %170) #11
  unreachable

171:                                              ; preds = %158, %162
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  %172 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %173 = load i64, ptr %172, align 8, !tbaa !48
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !49
  %178 = load ptr, ptr %4, align 8, !tbaa !41
  %179 = load ptr, ptr %178, align 8, !tbaa !35
  %180 = getelementptr inbounds ptr, ptr %179, i64 3
  %181 = load ptr, ptr %180, align 8
  invoke void %181(ptr noundef nonnull align 8 dereferenceable(8) %178, ptr noundef %177)
          to label %185 unwind label %182

182:                                              ; preds = %175
  %183 = landingpad { ptr, i32 }
          catch ptr null
  %184 = extractvalue { ptr, i32 } %183, 0
  call void @__clang_call_terminate(ptr %184) #11
  unreachable

185:                                              ; preds = %171, %175
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %292

186:                                              ; preds = %146
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %202

188:                                              ; preds = %148
  %189 = landingpad { ptr, i32 }
          cleanup
  %190 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !48
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %202, label %193

193:                                              ; preds = %188
  %194 = load ptr, ptr %152, align 8, !tbaa !49
  %195 = load ptr, ptr %6, align 8, !tbaa !41
  %196 = load ptr, ptr %195, align 8, !tbaa !35
  %197 = getelementptr inbounds ptr, ptr %196, i64 3
  %198 = load ptr, ptr %197, align 8
  invoke void %198(ptr noundef nonnull align 8 dereferenceable(8) %195, ptr noundef %194)
          to label %202 unwind label %199

199:                                              ; preds = %193
  %200 = landingpad { ptr, i32 }
          catch ptr null
  %201 = extractvalue { ptr, i32 } %200, 0
  call void @__clang_call_terminate(ptr %201) #11
  unreachable

202:                                              ; preds = %193, %188, %186
  %203 = phi { ptr, i32 } [ %187, %186 ], [ %189, %188 ], [ %189, %193 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  br label %204

204:                                              ; preds = %202, %139, %121
  %205 = phi { ptr, i32 } [ %122, %121 ], [ %140, %139 ], [ %203, %202 ]
  %206 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %207 = load i64, ptr %206, align 8, !tbaa !48
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !49
  %212 = load ptr, ptr %4, align 8, !tbaa !41
  %213 = load ptr, ptr %212, align 8, !tbaa !35
  %214 = getelementptr inbounds ptr, ptr %213, i64 3
  %215 = load ptr, ptr %214, align 8
  invoke void %215(ptr noundef nonnull align 8 dereferenceable(8) %212, ptr noundef %211)
          to label %219 unwind label %216

216:                                              ; preds = %209
  %217 = landingpad { ptr, i32 }
          catch ptr null
  %218 = extractvalue { ptr, i32 } %217, 0
  call void @__clang_call_terminate(ptr %218) #11
  unreachable

219:                                              ; preds = %204, %209
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %293

220:                                              ; preds = %2
  %221 = load ptr, ptr %0, align 8, !tbaa !35
  %222 = getelementptr inbounds ptr, ptr %221, i64 4
  %223 = load ptr, ptr %222, align 8
  %224 = tail call noundef i32 %223(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %225 = icmp eq i32 %224, 2
  %226 = load ptr, ptr %0, align 8, !tbaa !35
  %227 = getelementptr inbounds ptr, ptr %226, i64 2
  %228 = load ptr, ptr %227, align 8
  %229 = tail call noundef nonnull align 8 dereferenceable(36) ptr %228(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %230 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %229, i64 0, i32 1
  %231 = load i64, ptr %230, align 8, !tbaa !44
  %232 = icmp eq i64 %231, 0
  %233 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %229, i64 0, i32 3
  %234 = load ptr, ptr %233, align 8
  %235 = select i1 %232, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %234
  %236 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %229, i64 0, i32 1
  %237 = load i32, ptr %236, align 8, !tbaa !45
  %238 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %235, i32 noundef %237)
  br i1 %225, label %239, label %292

239:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #10
  %240 = load ptr, ptr %1, align 8, !tbaa !41
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %240, i32 noundef -1)
  %241 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 1
  %242 = load i64, ptr %241, align 8, !tbaa !44
  %243 = icmp eq i64 %242, 0
  %244 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8
  %246 = select i1 %243, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %245
  %247 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %248 = load i32, ptr %247, align 8, !tbaa !45
  %249 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %246, i32 noundef %248)
          to label %250 unwind label %277

250:                                              ; preds = %239
  %251 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %252 = load i64, ptr %251, align 8, !tbaa !48
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %263, label %254

254:                                              ; preds = %250
  %255 = load ptr, ptr %244, align 8, !tbaa !49
  %256 = load ptr, ptr %7, align 8, !tbaa !41
  %257 = load ptr, ptr %256, align 8, !tbaa !35
  %258 = getelementptr inbounds ptr, ptr %257, i64 3
  %259 = load ptr, ptr %258, align 8
  invoke void %259(ptr noundef nonnull align 8 dereferenceable(8) %256, ptr noundef %255)
          to label %263 unwind label %260

260:                                              ; preds = %254
  %261 = landingpad { ptr, i32 }
          catch ptr null
  %262 = extractvalue { ptr, i32 } %261, 0
  call void @__clang_call_terminate(ptr %262) #11
  unreachable

263:                                              ; preds = %250, %254
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  %264 = load ptr, ptr %0, align 8, !tbaa !35
  %265 = getelementptr inbounds ptr, ptr %264, i64 3
  %266 = load ptr, ptr %265, align 8
  %267 = call noundef nonnull align 8 dereferenceable(36) ptr %266(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %268 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %267, i64 0, i32 1
  %269 = load i64, ptr %268, align 8, !tbaa !44
  %270 = icmp eq i64 %269, 0
  %271 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %267, i64 0, i32 3
  %272 = load ptr, ptr %271, align 8
  %273 = select i1 %270, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %272
  %274 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %267, i64 0, i32 1
  %275 = load i32, ptr %274, align 8, !tbaa !45
  %276 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %273, i32 noundef %275)
  br label %292

277:                                              ; preds = %239
  %278 = landingpad { ptr, i32 }
          cleanup
  %279 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %280 = load i64, ptr %279, align 8, !tbaa !48
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %291, label %282

282:                                              ; preds = %277
  %283 = load ptr, ptr %244, align 8, !tbaa !49
  %284 = load ptr, ptr %7, align 8, !tbaa !41
  %285 = load ptr, ptr %284, align 8, !tbaa !35
  %286 = getelementptr inbounds ptr, ptr %285, i64 3
  %287 = load ptr, ptr %286, align 8
  invoke void %287(ptr noundef nonnull align 8 dereferenceable(8) %284, ptr noundef %283)
          to label %291 unwind label %288

288:                                              ; preds = %282
  %289 = landingpad { ptr, i32 }
          catch ptr null
  %290 = extractvalue { ptr, i32 } %289, 0
  call void @__clang_call_terminate(ptr %290) #11
  unreachable

291:                                              ; preds = %277, %282
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  br label %293

292:                                              ; preds = %220, %263, %185
  ret ptr %1

293:                                              ; preds = %291, %219, %120
  %294 = phi { ptr, i32 } [ %205, %219 ], [ %107, %120 ], [ %278, %291 ]
  resume { ptr, i32 } %294
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018PointerToDOMStringEPKvRNS_14XalanDOMStringE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !41
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 0, i32 noundef -1)
          to label %6 unwind label %32

6:                                                ; preds = %3
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, i32 noundef %2)
          to label %8 unwind label %32

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !44
  %11 = icmp eq i64 %10, 0
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = select i1 %11, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !45
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %14, i32 noundef %16)
          to label %18 unwind label %32

18:                                               ; preds = %8
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !48
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %12, align 8, !tbaa !49
  %24 = load ptr, ptr %4, align 8, !tbaa !41
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %23)
          to label %31 unwind label %28

28:                                               ; preds = %22
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #11
  unreachable

31:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret ptr %0

32:                                               ; preds = %8, %6, %3
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !48
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = load ptr, ptr %4, align 8, !tbaa !41
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef %39)
          to label %47 unwind label %44

44:                                               ; preds = %37
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #11
  unreachable

47:                                               ; preds = %32, %37
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011TracerEvent13printNodeListERKNS_13XalanNodeListERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull returned align 8 dereferenceable(36) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018PointerToDOMStringEPKvRNS_14XalanDOMStringE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  %8 = load ptr, ptr %1, align 8, !tbaa !41
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef -1)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !44
  %11 = icmp eq i64 %10, 0
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = select i1 %11, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !45
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %14, i32 noundef %16)
          to label %18 unwind label %88

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !48
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %12, align 8, !tbaa !49
  %24 = load ptr, ptr %3, align 8, !tbaa !41
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %23)
          to label %31 unwind label %28

28:                                               ; preds = %22
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #11
  unreachable

31:                                               ; preds = %18, %22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  %32 = load ptr, ptr %0, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  %36 = load ptr, ptr %1, align 8, !tbaa !41
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %36)
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %126, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %42 = add i32 %35, -1
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  br label %47

47:                                               ; preds = %38, %123
  %48 = phi i32 [ 0, %38 ], [ %124, %123 ]
  %49 = load ptr, ptr %0, align 8, !tbaa !35
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %48)
          to label %53 unwind label %103

53:                                               ; preds = %47
  %54 = icmp eq ptr %52, null
  br i1 %54, label %123, label %55

55:                                               ; preds = %53
  %56 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011TracerEvent9printNodeERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %57 unwind label %103

57:                                               ; preds = %55
  %58 = load i64, ptr %39, align 8, !tbaa !44
  %59 = icmp eq i64 %58, 0
  %60 = load ptr, ptr %40, align 8
  %61 = select i1 %59, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %60
  %62 = load i32, ptr %41, align 8, !tbaa !45
  %63 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %61, i32 noundef %62)
          to label %64 unwind label %103

64:                                               ; preds = %57
  %65 = icmp eq i32 %48, %42
  br i1 %65, label %123, label %66

66:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %67 = load ptr, ptr %1, align 8, !tbaa !41
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(8) %67, i32 noundef -1)
          to label %68 unwind label %105

68:                                               ; preds = %66
  %69 = load i64, ptr %43, align 8, !tbaa !44
  %70 = icmp eq i64 %69, 0
  %71 = load ptr, ptr %44, align 8
  %72 = select i1 %70, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %71
  %73 = load i32, ptr %45, align 8, !tbaa !45
  %74 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %72, i32 noundef %73)
          to label %75 unwind label %107

75:                                               ; preds = %68
  %76 = load i64, ptr %46, align 8, !tbaa !48
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %44, align 8, !tbaa !49
  %80 = load ptr, ptr %5, align 8, !tbaa !41
  %81 = load ptr, ptr %80, align 8, !tbaa !35
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(8) %80, ptr noundef %79)
          to label %87 unwind label %84

84:                                               ; preds = %78
  %85 = landingpad { ptr, i32 }
          catch ptr null
  %86 = extractvalue { ptr, i32 } %85, 0
  call void @__clang_call_terminate(ptr %86) #11
  unreachable

87:                                               ; preds = %75, %78
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  br label %123

88:                                               ; preds = %2
  %89 = landingpad { ptr, i32 }
          cleanup
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !48
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %12, align 8, !tbaa !49
  %95 = load ptr, ptr %3, align 8, !tbaa !41
  %96 = load ptr, ptr %95, align 8, !tbaa !35
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %94)
          to label %102 unwind label %99

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #11
  unreachable

102:                                              ; preds = %88, %93
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %200

103:                                              ; preds = %57, %55, %47
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %184

105:                                              ; preds = %66
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %121

107:                                              ; preds = %68
  %108 = landingpad { ptr, i32 }
          cleanup
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !48
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %44, align 8, !tbaa !49
  %114 = load ptr, ptr %5, align 8, !tbaa !41
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = getelementptr inbounds ptr, ptr %115, i64 3
  %117 = load ptr, ptr %116, align 8
  invoke void %117(ptr noundef nonnull align 8 dereferenceable(8) %114, ptr noundef %113)
          to label %121 unwind label %118

118:                                              ; preds = %112
  %119 = landingpad { ptr, i32 }
          catch ptr null
  %120 = extractvalue { ptr, i32 } %119, 0
  call void @__clang_call_terminate(ptr %120) #11
  unreachable

121:                                              ; preds = %112, %107, %105
  %122 = phi { ptr, i32 } [ %106, %105 ], [ %108, %107 ], [ %108, %112 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  br label %184

123:                                              ; preds = %64, %87, %53
  %124 = add nuw i32 %48, 1
  %125 = icmp eq i32 %124, %35
  br i1 %125, label %126, label %47, !llvm.loop !53

126:                                              ; preds = %123, %31
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  %127 = load ptr, ptr %1, align 8, !tbaa !41
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %127, i32 noundef -1)
          to label %128 unwind label %166

128:                                              ; preds = %126
  %129 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %130 = load i64, ptr %129, align 8, !tbaa !44
  %131 = icmp eq i64 %130, 0
  %132 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8
  %134 = select i1 %131, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %133
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !45
  %137 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %134, i32 noundef %136)
          to label %138 unwind label %168

138:                                              ; preds = %128
  %139 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %140 = load i64, ptr %139, align 8, !tbaa !48
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %132, align 8, !tbaa !49
  %144 = load ptr, ptr %6, align 8, !tbaa !41
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  %146 = getelementptr inbounds ptr, ptr %145, i64 3
  %147 = load ptr, ptr %146, align 8
  invoke void %147(ptr noundef nonnull align 8 dereferenceable(8) %144, ptr noundef %143)
          to label %151 unwind label %148

148:                                              ; preds = %142
  %149 = landingpad { ptr, i32 }
          catch ptr null
  %150 = extractvalue { ptr, i32 } %149, 0
  call void @__clang_call_terminate(ptr %150) #11
  unreachable

151:                                              ; preds = %138, %142
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  %152 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %153 = load i64, ptr %152, align 8, !tbaa !48
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !49
  %158 = load ptr, ptr %4, align 8, !tbaa !41
  %159 = load ptr, ptr %158, align 8, !tbaa !35
  %160 = getelementptr inbounds ptr, ptr %159, i64 3
  %161 = load ptr, ptr %160, align 8
  invoke void %161(ptr noundef nonnull align 8 dereferenceable(8) %158, ptr noundef %157)
          to label %165 unwind label %162

162:                                              ; preds = %155
  %163 = landingpad { ptr, i32 }
          catch ptr null
  %164 = extractvalue { ptr, i32 } %163, 0
  call void @__clang_call_terminate(ptr %164) #11
  unreachable

165:                                              ; preds = %151, %155
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  ret ptr %1

166:                                              ; preds = %126
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %182

168:                                              ; preds = %128
  %169 = landingpad { ptr, i32 }
          cleanup
  %170 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %171 = load i64, ptr %170, align 8, !tbaa !48
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %168
  %174 = load ptr, ptr %132, align 8, !tbaa !49
  %175 = load ptr, ptr %6, align 8, !tbaa !41
  %176 = load ptr, ptr %175, align 8, !tbaa !35
  %177 = getelementptr inbounds ptr, ptr %176, i64 3
  %178 = load ptr, ptr %177, align 8
  invoke void %178(ptr noundef nonnull align 8 dereferenceable(8) %175, ptr noundef %174)
          to label %182 unwind label %179

179:                                              ; preds = %173
  %180 = landingpad { ptr, i32 }
          catch ptr null
  %181 = extractvalue { ptr, i32 } %180, 0
  call void @__clang_call_terminate(ptr %181) #11
  unreachable

182:                                              ; preds = %173, %168, %166
  %183 = phi { ptr, i32 } [ %167, %166 ], [ %169, %168 ], [ %169, %173 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  br label %184

184:                                              ; preds = %103, %121, %182
  %185 = phi { ptr, i32 } [ %183, %182 ], [ %122, %121 ], [ %104, %103 ]
  %186 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %187 = load i64, ptr %186, align 8, !tbaa !48
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !49
  %192 = load ptr, ptr %4, align 8, !tbaa !41
  %193 = load ptr, ptr %192, align 8, !tbaa !35
  %194 = getelementptr inbounds ptr, ptr %193, i64 3
  %195 = load ptr, ptr %194, align 8
  invoke void %195(ptr noundef nonnull align 8 dereferenceable(8) %192, ptr noundef %191)
          to label %199 unwind label %196

196:                                              ; preds = %189
  %197 = landingpad { ptr, i32 }
          catch ptr null
  %198 = extractvalue { ptr, i32 } %197, 0
  call void @__clang_call_terminate(ptr %198) #11
  unreachable

199:                                              ; preds = %184, %189
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %200

200:                                              ; preds = %199, %102
  %201 = phi { ptr, i32 } [ %185, %199 ], [ %89, %102 ]
  resume { ptr, i32 } %201
}

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { builtin nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

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
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = !{!42, !39, i64 0}
!42 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !39, i64 0, !43, i64 8, !43, i64 16, !39, i64 24}
!43 = !{!"long", !40, i64 0}
!44 = !{!42, !43, i64 8}
!45 = !{!46, !47, i64 32}
!46 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !42, i64 0, !47, i64 32}
!47 = !{!"int", !40, i64 0}
!48 = !{!42, !43, i64 16}
!49 = !{!42, !39, i64 24}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !51, !52}
