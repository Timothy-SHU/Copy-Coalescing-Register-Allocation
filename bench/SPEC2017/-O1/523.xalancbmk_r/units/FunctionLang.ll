; ModuleID = 'FunctionLang.cpp'
source_filename = "FunctionLang.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

@_ZTVN11xalanc_1_1012FunctionLangE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1012FunctionLangE, ptr @_ZN11xalanc_1_1012FunctionLangD2Ev, ptr @_ZN11xalanc_1_1012FunctionLangD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1012FunctionLang7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1012FunctionLang5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1012FunctionLang8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1012FunctionLang15s_attributeNameE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L13s_localStringE, align 8
@.str = private unnamed_addr constant [7 x i8] c"lang()\00", align 1
@_ZN11xalanc_1_10L13s_localStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L12s_langStringE = internal global [5 x i16] [i16 108, i16 97, i16 110, i16 103, i16 0], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1012FunctionLangE = dso_local constant [30 x i8] c"N11xalanc_1_1012FunctionLangE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1012FunctionLangE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1012FunctionLangE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FunctionLang.cpp, ptr null }]

@_ZN11xalanc_1_1012FunctionLangC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1012FunctionLangC2Ev
@_ZN11xalanc_1_1012FunctionLangD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1012FunctionLangD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012FunctionLangC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1012FunctionLangE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1012FunctionLangD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !49 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1012FunctionLangD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1012FunctionLang7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture readnone %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %7 = load ptr, ptr %4, align 8, !tbaa !51
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds ptr, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %7)
  %12 = icmp eq ptr %3, null
  br i1 %12, label %137, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 0, i32 1
  br label %16

16:                                               ; preds = %13, %120
  %17 = phi ptr [ %3, %13 ], [ %131, %120 ]
  %18 = phi i8 [ 0, %13 ], [ %121, %120 ]
  %19 = load ptr, ptr %17, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %120

24:                                               ; preds = %16
  %25 = load ptr, ptr %17, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 36
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_localStringE)
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !55
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %116, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %2, align 8, !tbaa !46
  %34 = getelementptr inbounds ptr, ptr %33, i64 23
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef nonnull align 8 dereferenceable(36) ptr %35(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %37 = load ptr, ptr %2, align 8, !tbaa !46
  %38 = getelementptr inbounds ptr, ptr %37, i64 23
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef nonnull align 8 dereferenceable(36) ptr %39(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %41 unwind label %77

41:                                               ; preds = %32
  %42 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toLowerCaseASCIIERKNS_14XalanDOMStringERS0_(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(36) %36)
          to label %43 unwind label %79

43:                                               ; preds = %41
  %44 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toLowerCaseASCIIERKNS_14XalanDOMStringERS0_(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %40)
          to label %45 unwind label %79

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %42, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !60
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %42, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = select i1 %48, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %50
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %42, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !55
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %44, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !60
  %56 = icmp eq i64 %55, 0
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %44, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = select i1 %56, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %58
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %44, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !55
  %62 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %51, i32 noundef %53, ptr noundef %59, i32 noundef %61)
          to label %63 unwind label %79

63:                                               ; preds = %45
  br i1 %62, label %64, label %85

64:                                               ; preds = %63
  %65 = load i32, ptr %15, align 8, !tbaa !55
  %66 = load i32, ptr %29, align 8, !tbaa !55
  %67 = icmp eq i32 %66, %65
  br i1 %67, label %85, label %68

68:                                               ; preds = %64
  %69 = zext i32 %65 to i64
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %28, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !61
  %72 = getelementptr inbounds i16, ptr %71, i64 %69
  %73 = load i16, ptr %72, align 2, !tbaa !62
  %74 = icmp eq i16 %73, 45
  %75 = select i1 %74, i8 1, i8 %18
  %76 = select i1 %74, i32 3, i32 0
  br label %85

77:                                               ; preds = %32
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %106

79:                                               ; preds = %45, %43, %41
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = load ptr, ptr %2, align 8, !tbaa !46
  %82 = getelementptr inbounds ptr, ptr %81, i64 24
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef zeroext i1 %83(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %40)
          to label %106 unwind label %103

85:                                               ; preds = %68, %64, %63
  %86 = phi i8 [ %18, %63 ], [ 1, %64 ], [ %75, %68 ]
  %87 = phi i32 [ 0, %63 ], [ 3, %64 ], [ %76, %68 ]
  %88 = load ptr, ptr %2, align 8, !tbaa !46
  %89 = getelementptr inbounds ptr, ptr %88, i64 24
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef zeroext i1 %90(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %40)
          to label %95 unwind label %92

92:                                               ; preds = %85
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  tail call void @__clang_call_terminate(ptr %94) #12
  unreachable

95:                                               ; preds = %85
  %96 = load ptr, ptr %2, align 8, !tbaa !46
  %97 = getelementptr inbounds ptr, ptr %96, i64 24
  %98 = load ptr, ptr %97, align 8
  %99 = invoke noundef zeroext i1 %98(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %36)
          to label %116 unwind label %100

100:                                              ; preds = %95
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = extractvalue { ptr, i32 } %101, 0
  tail call void @__clang_call_terminate(ptr %102) #12
  unreachable

103:                                              ; preds = %79
  %104 = landingpad { ptr, i32 }
          catch ptr null
  %105 = extractvalue { ptr, i32 } %104, 0
  tail call void @__clang_call_terminate(ptr %105) #12
  unreachable

106:                                              ; preds = %77, %79
  %107 = phi { ptr, i32 } [ %78, %77 ], [ %80, %79 ]
  %108 = load ptr, ptr %2, align 8, !tbaa !46
  %109 = getelementptr inbounds ptr, ptr %108, i64 24
  %110 = load ptr, ptr %109, align 8
  %111 = invoke noundef zeroext i1 %110(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %36)
          to label %115 unwind label %112

112:                                              ; preds = %106
  %113 = landingpad { ptr, i32 }
          catch ptr null
  %114 = extractvalue { ptr, i32 } %113, 0
  tail call void @__clang_call_terminate(ptr %114) #12
  unreachable

115:                                              ; preds = %106
  resume { ptr, i32 } %107

116:                                              ; preds = %95, %24
  %117 = phi i8 [ %18, %24 ], [ %86, %95 ]
  %118 = phi i32 [ 0, %24 ], [ %87, %95 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %116, %16
  %121 = phi i8 [ %117, %116 ], [ %18, %16 ]
  %122 = load ptr, ptr %17, align 8, !tbaa !46
  %123 = getelementptr inbounds ptr, ptr %122, i64 4
  %124 = load ptr, ptr %123, align 8
  %125 = tail call noundef i32 %124(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %126 = icmp eq i32 %125, 2
  %127 = load ptr, ptr %17, align 8, !tbaa !46
  %128 = select i1 %126, i64 32, i64 5
  %129 = getelementptr inbounds ptr, ptr %127, i64 %128
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %16, !llvm.loop !64

133:                                              ; preds = %116, %120
  %134 = phi i8 [ %121, %120 ], [ %117, %116 ]
  %135 = and i8 %134, 1
  %136 = icmp ne i8 %135, 0
  br label %137

137:                                              ; preds = %133, %6
  %138 = phi i1 [ false, %6 ], [ %136, %133 ]
  %139 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !67
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  %142 = getelementptr inbounds ptr, ptr %141, i64 3
  %143 = load ptr, ptr %142, align 8
  tail call void %143(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %140, i1 noundef zeroext %138)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1016toLowerCaseASCIIERKNS_14XalanDOMStringERS0_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1012FunctionLang5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = load ptr, ptr %1, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !70
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1012FunctionLangE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !46
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012FunctionLang8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !50 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 83, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012FunctionLang10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_localStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L12s_langStringE)
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1012FunctionLang9terminateEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %1 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %3 = load ptr, ptr %1, align 8, !tbaa !71
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr @_ZN11xalanc_1_10L13s_localStringE, align 8, !tbaa !71
  store ptr %10, ptr %1, align 8, !tbaa !71
  %11 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L13s_localStringE, i64 0, i32 0, i32 1), align 8, !tbaa !60
  store i64 %11, ptr %4, align 8, !tbaa !60
  %12 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L13s_localStringE, i64 0, i32 0, i32 2), align 8, !tbaa !72
  store i64 %12, ptr %6, align 8, !tbaa !72
  %13 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L13s_localStringE, i64 0, i32 0, i32 3), align 8, !tbaa !61
  store ptr %13, ptr %8, align 8, !tbaa !61
  store ptr %3, ptr @_ZN11xalanc_1_10L13s_localStringE, align 8, !tbaa !71
  store i64 %5, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L13s_localStringE, i64 0, i32 0, i32 1), align 8, !tbaa !60
  store i64 %7, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L13s_localStringE, i64 0, i32 0, i32 2), align 8, !tbaa !72
  store ptr %9, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L13s_localStringE, i64 0, i32 0, i32 3), align 8, !tbaa !61
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !73
  %16 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L13s_localStringE, i64 0, i32 1), align 8, !tbaa !73
  store i32 %16, ptr %14, align 8, !tbaa !73
  store i32 %15, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L13s_localStringE, i64 0, i32 1), align 8, !tbaa !73
  %17 = icmp eq i64 %12, 0
  br i1 %17, label %25, label %18, !prof !74

18:                                               ; preds = %0
  %19 = load ptr, ptr %10, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %13)
          to label %25 unwind label %22, !prof !75

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #12
  unreachable

25:                                               ; preds = %0, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #10
  ret void
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !50 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !72
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !77

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = load ptr, ptr %0, align 8, !tbaa !71
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !78

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #12
  unreachable
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_FunctionLang.cpp() #9 section ".text.startup" !prof !45 !PGOFuncName !79 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_localStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_localStringE, ptr nonnull @__dso_handle) #10
  ret void
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xalanc_1_1012FunctionLangC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1012FunctionLangD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1012FunctionLang10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1012FunctionLang9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1012FunctionLang9terminateEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!41 = !{ptr @_GLOBAL__sub_I_FunctionLang.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!42 = !{ptr @_GLOBAL__sub_I_FunctionLang.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!43 = !{ptr @_GLOBAL__sub_I_FunctionLang.cpp, ptr @__cxa_atexit, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"function_entry_count", i64 2}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !48, i64 0}
!55 = !{!56, !59, i64 32}
!56 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !57, i64 0, !59, i64 32}
!57 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !53, i64 0, !58, i64 8, !58, i64 16, !53, i64 24}
!58 = !{!"long", !54, i64 0}
!59 = !{!"int", !54, i64 0}
!60 = !{!57, !58, i64 8}
!61 = !{!57, !53, i64 24}
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !54, i64 0}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!68, !53, i64 16}
!68 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !69, i64 0, !53, i64 16}
!69 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !53, i64 8}
!70 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!71 = !{!57, !53, i64 0}
!72 = !{!57, !58, i64 16}
!73 = !{!59, !59, i64 0}
!74 = !{!"branch_weights", i32 0, i32 1}
!75 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!76 = !{!"function_entry_count", i64 42470003}
!77 = !{!"branch_weights", i32 52000, i32 42418003}
!78 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!79 = !{!"FunctionLang.cpp;_GLOBAL__sub_I_FunctionLang.cpp"}
