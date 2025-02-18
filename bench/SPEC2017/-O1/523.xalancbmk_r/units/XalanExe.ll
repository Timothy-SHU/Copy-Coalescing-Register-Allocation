; ModuleID = 'XalanExe.cpp'
source_filename = "XalanExe.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%class.Params = type { i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %"class.xalanc_1_10::XalanArrayAutoPtr", i64, i64 }
%"class.xalanc_1_10::XalanArrayAutoPtr" = type { ptr }
%"struct.Params::ParamPair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanTransformer" = type { ptr, ptr, %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.5", %"class.xalanc_1_10::XalanVector.0", i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr, ptr, %"class.xalanc_1_10::XalanDOMString", i8, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XSLTInputSource" = type { %"class.xercesc_2_7::InputSource.base", ptr, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xalanc_1_10::XSLTResultTarget" = type { %"class.xalanc_1_10::XalanDOMString", ptr, %"class.xalanc_1_10::XalanDOMString", ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN6Params8addParamEPKcS1_ = comdat any

$_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE = comdat any

$_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params = comdat any

$_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE = comdat any

$_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_ = comdat any

$_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE = comdat any

$_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_RKNS_16XSLTResultTargetE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZTSN11xalanc_1_1014XalanDOMString16TranscodingErrorE = comdat any

$_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [7 x i8] c"1.10.0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"2.7.0\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014XalanDOMString16TranscodingErrorE = linkonce_odr dso_local constant [50 x i8] c"N11xalanc_1_1014XalanDOMString16TranscodingErrorE\00", comdat, align 1
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014XalanDOMString16TranscodingErrorE, ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE }, comdat, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Transcoding error: wrong XalanC or XercesC versions.\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Cannot read help message \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Maximum numbers of stylesheets params has been exceeded!\00", align 1
@_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE = external constant [0 x i8], align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"Source tree parsing time: \00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Transformation time, including stylesheet compilation: \00", align 1
@_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c" milliseconds.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Stylesheet compilation time: \00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Transformation time: \00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanExe.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z5Usagev() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !71 {
  %1 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #20
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 154, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %9 unwind label %93

9:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #20
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %10 unwind label %97

10:                                               ; preds = %9
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 155, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %12 unwind label %101

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  store ptr %7, ptr %3, align 8, !tbaa !72
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %16 unwind label %105

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  store ptr %7, ptr %4, align 8, !tbaa !72
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %4, i64 0, i32 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %4, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %4, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  invoke void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %20 unwind label %107

20:                                               ; preds = %16
  %21 = load ptr, ptr %15, align 8, !tbaa !78
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %25 = getelementptr i8, ptr %24, i64 -24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %26
  %28 = getelementptr inbounds %"class.std::ios_base", ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !81
  %30 = or i32 %29, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %27, i32 noundef %30)
          to label %34 unwind label %107

31:                                               ; preds = %20
  %32 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %21) #20
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %21, i64 noundef %32)
          to label %34 unwind label %107

34:                                               ; preds = %31, %23
  %35 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %36 = getelementptr i8, ptr %35, i64 -24
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %37
  %39 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %38, i8 noundef signext 10)
          to label %40 unwind label %107

40:                                               ; preds = %34
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %39)
          to label %42 unwind label %107

42:                                               ; preds = %40
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %44 unwind label %107

44:                                               ; preds = %42
  %45 = load ptr, ptr %19, align 8, !tbaa !78
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %49 = getelementptr i8, ptr %48, i64 -24
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %50
  %52 = getelementptr inbounds %"class.std::ios_base", ptr %51, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !81
  %54 = or i32 %53, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %51, i32 noundef %54)
          to label %58 unwind label %107

55:                                               ; preds = %44
  %56 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #20
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %45, i64 noundef %56)
          to label %58 unwind label %107

58:                                               ; preds = %55, %47
  %59 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %60 = getelementptr i8, ptr %59, i64 -24
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %61
  %63 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %62, i8 noundef signext 10)
          to label %64 unwind label %107

64:                                               ; preds = %58
  %65 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %63)
          to label %66 unwind label %107

66:                                               ; preds = %64
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %68 unwind label %107

68:                                               ; preds = %66
  %69 = load i64, ptr %18, align 8, !tbaa !88
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %19, align 8, !tbaa !78
  %73 = load ptr, ptr %4, align 8, !tbaa !72
  %74 = load ptr, ptr %73, align 8, !tbaa !79
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef %72)
          to label %80 unwind label %77

77:                                               ; preds = %71
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #21
  unreachable

80:                                               ; preds = %68, %71
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  %81 = load i64, ptr %14, align 8, !tbaa !88
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %15, align 8, !tbaa !78
  %85 = load ptr, ptr %3, align 8, !tbaa !72
  %86 = load ptr, ptr %85, align 8, !tbaa !79
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %84)
          to label %92 unwind label %89

89:                                               ; preds = %83
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #21
  unreachable

92:                                               ; preds = %80, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %163

93:                                               ; preds = %0
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = extractvalue { ptr, i32 } %94, 0
  %96 = extractvalue { ptr, i32 } %94, 1
  br label %365

97:                                               ; preds = %9
  %98 = landingpad { ptr, i32 }
          cleanup
  %99 = extractvalue { ptr, i32 } %98, 0
  %100 = extractvalue { ptr, i32 } %98, 1
  br label %362

101:                                              ; preds = %10
  %102 = landingpad { ptr, i32 }
          cleanup
  %103 = extractvalue { ptr, i32 } %102, 0
  %104 = extractvalue { ptr, i32 } %102, 1
  br label %346

105:                                              ; preds = %12
  %106 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE
  br label %121

107:                                              ; preds = %66, %64, %58, %42, %40, %34, %55, %47, %31, %23, %16
  %108 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE
  %109 = load i64, ptr %18, align 8, !tbaa !88
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %19, align 8, !tbaa !78
  %113 = load ptr, ptr %4, align 8, !tbaa !72
  %114 = load ptr, ptr %113, align 8, !tbaa !79
  %115 = getelementptr inbounds ptr, ptr %114, i64 3
  %116 = load ptr, ptr %115, align 8
  invoke void %116(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef %112)
          to label %120 unwind label %117

117:                                              ; preds = %111
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  call void @__clang_call_terminate(ptr %119) #21
  unreachable

120:                                              ; preds = %111, %107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %121

121:                                              ; preds = %120, %105
  %122 = phi { ptr, i32 } [ %108, %120 ], [ %106, %105 ]
  %123 = load i64, ptr %14, align 8, !tbaa !88
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %15, align 8, !tbaa !78
  %127 = load ptr, ptr %3, align 8, !tbaa !72
  %128 = load ptr, ptr %127, align 8, !tbaa !79
  %129 = getelementptr inbounds ptr, ptr %128, i64 3
  %130 = load ptr, ptr %129, align 8
  invoke void %130(ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef %126)
          to label %134 unwind label %131

131:                                              ; preds = %125
  %132 = landingpad { ptr, i32 }
          catch ptr null
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @__clang_call_terminate(ptr %133) #21
  unreachable

134:                                              ; preds = %125, %121
  %135 = extractvalue { ptr, i32 } %122, 0
  %136 = extractvalue { ptr, i32 } %122, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  %137 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE) #20
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %346

139:                                              ; preds = %134
  %140 = call ptr @__cxa_begin_catch(ptr %135) #20
  %141 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %142 = getelementptr i8, ptr %141, i64 -24
  %143 = load i64, ptr %142, align 8
  %144 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %143
  %145 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %144, i8 noundef signext 10)
          to label %146 unwind label %225

146:                                              ; preds = %139
  %147 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %145)
          to label %148 unwind label %225

148:                                              ; preds = %146
  %149 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %147)
          to label %150 unwind label %225

150:                                              ; preds = %148
  %151 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %149, ptr noundef nonnull @.str.2, i64 noundef 52)
          to label %152 unwind label %225

152:                                              ; preds = %150
  %153 = load ptr, ptr %149, align 8, !tbaa !79
  %154 = getelementptr i8, ptr %153, i64 -24
  %155 = load i64, ptr %154, align 8
  %156 = getelementptr inbounds i8, ptr %149, i64 %155
  %157 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %156, i8 noundef signext 10)
          to label %158 unwind label %225

158:                                              ; preds = %152
  %159 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %149, i8 noundef signext %157)
          to label %160 unwind label %225

160:                                              ; preds = %158
  %161 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %159)
          to label %162 unwind label %225

162:                                              ; preds = %160
  invoke void @__cxa_end_catch()
          to label %163 unwind label %227

163:                                              ; preds = %162, %92
  %164 = phi i1 [ false, %92 ], [ true, %162 ]
  %165 = phi i8 [ 1, %92 ], [ 0, %162 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  store ptr %7, ptr %5, align 8, !tbaa !72
  %166 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  %167 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  %168 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %166, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #20
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %169 unwind label %233

169:                                              ; preds = %163
  br i1 %164, label %170, label %237

170:                                              ; preds = %300, %169
  %171 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %172 = load i64, ptr %171, align 8, !tbaa !89
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %184, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !91
  %177 = load ptr, ptr %6, align 8, !tbaa !92
  %178 = load ptr, ptr %177, align 8, !tbaa !79
  %179 = getelementptr inbounds ptr, ptr %178, i64 3
  %180 = load ptr, ptr %179, align 8
  invoke void %180(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef %176)
          to label %184 unwind label %181

181:                                              ; preds = %174
  %182 = landingpad { ptr, i32 }
          catch ptr null
  %183 = extractvalue { ptr, i32 } %182, 0
  call void @__clang_call_terminate(ptr %183) #21
  unreachable

184:                                              ; preds = %170, %174
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  %185 = load i64, ptr %167, align 8, !tbaa !88
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %184
  %188 = load ptr, ptr %168, align 8, !tbaa !78
  %189 = load ptr, ptr %5, align 8, !tbaa !72
  %190 = load ptr, ptr %189, align 8, !tbaa !79
  %191 = getelementptr inbounds ptr, ptr %190, i64 3
  %192 = load ptr, ptr %191, align 8
  invoke void %192(ptr noundef nonnull align 8 dereferenceable(8) %189, ptr noundef %188)
          to label %196 unwind label %193

193:                                              ; preds = %187
  %194 = landingpad { ptr, i32 }
          catch ptr null
  %195 = extractvalue { ptr, i32 } %194, 0
  call void @__clang_call_terminate(ptr %195) #21
  unreachable

196:                                              ; preds = %184, %187
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  %197 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %198 = load i64, ptr %197, align 8, !tbaa !89
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !91
  %203 = load ptr, ptr %2, align 8, !tbaa !92
  %204 = load ptr, ptr %203, align 8, !tbaa !79
  %205 = getelementptr inbounds ptr, ptr %204, i64 3
  %206 = load ptr, ptr %205, align 8
  invoke void %206(ptr noundef nonnull align 8 dereferenceable(8) %203, ptr noundef %202)
          to label %210 unwind label %207

207:                                              ; preds = %200
  %208 = landingpad { ptr, i32 }
          catch ptr null
  %209 = extractvalue { ptr, i32 } %208, 0
  call void @__clang_call_terminate(ptr %209) #21
  unreachable

210:                                              ; preds = %196, %200
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #20
  %211 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %212 = load i64, ptr %211, align 8, !tbaa !89
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !91
  %217 = load ptr, ptr %1, align 8, !tbaa !92
  %218 = load ptr, ptr %217, align 8, !tbaa !79
  %219 = getelementptr inbounds ptr, ptr %218, i64 3
  %220 = load ptr, ptr %219, align 8
  invoke void %220(ptr noundef nonnull align 8 dereferenceable(8) %217, ptr noundef %216)
          to label %224 unwind label %221

221:                                              ; preds = %214
  %222 = landingpad { ptr, i32 }
          catch ptr null
  %223 = extractvalue { ptr, i32 } %222, 0
  call void @__clang_call_terminate(ptr %223) #21
  unreachable

224:                                              ; preds = %210, %214
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #20
  ret void

225:                                              ; preds = %160, %158, %152, %148, %146, %139, %150
  %226 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %229 unwind label %384

227:                                              ; preds = %162
  %228 = landingpad { ptr, i32 }
          cleanup
  br label %229

229:                                              ; preds = %225, %227
  %230 = phi { ptr, i32 } [ %228, %227 ], [ %226, %225 ]
  %231 = extractvalue { ptr, i32 } %230, 0
  %232 = extractvalue { ptr, i32 } %230, 1
  br label %346

233:                                              ; preds = %163
  %234 = landingpad { ptr, i32 }
          cleanup
  %235 = extractvalue { ptr, i32 } %234, 0
  %236 = extractvalue { ptr, i32 } %234, 1
  br label %331

237:                                              ; preds = %169, %300
  %238 = phi i8 [ %301, %300 ], [ %165, %169 ]
  %239 = phi i32 [ %302, %300 ], [ 156, %169 ]
  %240 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %239)
          to label %241 unwind label %266

241:                                              ; preds = %237
  invoke void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %242 unwind label %266

242:                                              ; preds = %241
  %243 = load ptr, ptr %168, align 8, !tbaa !78
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %247 = getelementptr i8, ptr %246, i64 -24
  %248 = load i64, ptr %247, align 8
  %249 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %248
  %250 = getelementptr inbounds %"class.std::ios_base", ptr %249, i64 0, i32 5
  %251 = load i32, ptr %250, align 8, !tbaa !81
  %252 = or i32 %251, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %249, i32 noundef %252)
          to label %256 unwind label %266

253:                                              ; preds = %242
  %254 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %243) #20
  %255 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %243, i64 noundef %254)
          to label %256 unwind label %266

256:                                              ; preds = %253, %245
  %257 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %258 = getelementptr i8, ptr %257, i64 -24
  %259 = load i64, ptr %258, align 8
  %260 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %259
  %261 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %260, i8 noundef signext 10)
          to label %262 unwind label %266

262:                                              ; preds = %256
  %263 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %261)
          to label %264 unwind label %266

264:                                              ; preds = %262
  %265 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %263)
          to label %300 unwind label %266

266:                                              ; preds = %264, %262, %256, %253, %245, %241, %237
  %267 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE
  %268 = extractvalue { ptr, i32 } %267, 0
  %269 = extractvalue { ptr, i32 } %267, 1
  %270 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1014XalanDOMString16TranscodingErrorE) #20
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %315

272:                                              ; preds = %266
  %273 = call ptr @__cxa_begin_catch(ptr %268) #20
  %274 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %275 = getelementptr i8, ptr %274, i64 -24
  %276 = load i64, ptr %275, align 8
  %277 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %276
  %278 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %277, i8 noundef signext 10)
          to label %279 unwind label %307

279:                                              ; preds = %272
  %280 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %278)
          to label %281 unwind label %307

281:                                              ; preds = %279
  %282 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %280)
          to label %283 unwind label %307

283:                                              ; preds = %281
  %284 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %282, ptr noundef nonnull @.str.3, i64 noundef 25)
          to label %285 unwind label %307

285:                                              ; preds = %283
  %286 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %282, i32 noundef %239)
          to label %287 unwind label %307

287:                                              ; preds = %285
  %288 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %286, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %289 unwind label %307

289:                                              ; preds = %287
  %290 = load ptr, ptr %286, align 8, !tbaa !79
  %291 = getelementptr i8, ptr %290, i64 -24
  %292 = load i64, ptr %291, align 8
  %293 = getelementptr inbounds i8, ptr %286, i64 %292
  %294 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %293, i8 noundef signext 10)
          to label %295 unwind label %307

295:                                              ; preds = %289
  %296 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %286, i8 noundef signext %294)
          to label %297 unwind label %307

297:                                              ; preds = %295
  %298 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %296)
          to label %299 unwind label %307

299:                                              ; preds = %297
  invoke void @__cxa_end_catch()
          to label %300 unwind label %309

300:                                              ; preds = %264, %299
  %301 = phi i8 [ 0, %299 ], [ %238, %264 ]
  %302 = add nuw nsw i32 %239, 1
  %303 = and i8 %301, 1
  %304 = icmp ne i8 %303, 0
  %305 = icmp ult i32 %239, 169
  %306 = and i1 %304, %305
  br i1 %306, label %237, label %170, !llvm.loop !93

307:                                              ; preds = %297, %295, %289, %281, %279, %272, %287, %283, %285
  %308 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %311 unwind label %384

309:                                              ; preds = %299
  %310 = landingpad { ptr, i32 }
          cleanup
  br label %311

311:                                              ; preds = %307, %309
  %312 = phi { ptr, i32 } [ %310, %309 ], [ %308, %307 ]
  %313 = extractvalue { ptr, i32 } %312, 0
  %314 = extractvalue { ptr, i32 } %312, 1
  br label %315

315:                                              ; preds = %266, %311
  %316 = phi i32 [ %314, %311 ], [ %269, %266 ]
  %317 = phi ptr [ %313, %311 ], [ %268, %266 ]
  %318 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %319 = load i64, ptr %318, align 8, !tbaa !89
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %331, label %321

321:                                              ; preds = %315
  %322 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %323 = load ptr, ptr %322, align 8, !tbaa !91
  %324 = load ptr, ptr %6, align 8, !tbaa !92
  %325 = load ptr, ptr %324, align 8, !tbaa !79
  %326 = getelementptr inbounds ptr, ptr %325, i64 3
  %327 = load ptr, ptr %326, align 8
  invoke void %327(ptr noundef nonnull align 8 dereferenceable(8) %324, ptr noundef %323)
          to label %331 unwind label %328

328:                                              ; preds = %321
  %329 = landingpad { ptr, i32 }
          catch ptr null
  %330 = extractvalue { ptr, i32 } %329, 0
  call void @__clang_call_terminate(ptr %330) #21
  unreachable

331:                                              ; preds = %321, %315, %233
  %332 = phi i32 [ %236, %233 ], [ %316, %315 ], [ %316, %321 ]
  %333 = phi ptr [ %235, %233 ], [ %317, %315 ], [ %317, %321 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  %334 = load i64, ptr %167, align 8, !tbaa !88
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %345, label %336

336:                                              ; preds = %331
  %337 = load ptr, ptr %168, align 8, !tbaa !78
  %338 = load ptr, ptr %5, align 8, !tbaa !72
  %339 = load ptr, ptr %338, align 8, !tbaa !79
  %340 = getelementptr inbounds ptr, ptr %339, i64 3
  %341 = load ptr, ptr %340, align 8
  invoke void %341(ptr noundef nonnull align 8 dereferenceable(8) %338, ptr noundef %337)
          to label %345 unwind label %342

342:                                              ; preds = %336
  %343 = landingpad { ptr, i32 }
          catch ptr null
  %344 = extractvalue { ptr, i32 } %343, 0
  call void @__clang_call_terminate(ptr %344) #21
  unreachable

345:                                              ; preds = %336, %331
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %346

346:                                              ; preds = %345, %229, %134, %101
  %347 = phi i32 [ %332, %345 ], [ %232, %229 ], [ %136, %134 ], [ %104, %101 ]
  %348 = phi ptr [ %333, %345 ], [ %231, %229 ], [ %135, %134 ], [ %103, %101 ]
  %349 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %350 = load i64, ptr %349, align 8, !tbaa !89
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %362, label %352

352:                                              ; preds = %346
  %353 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %354 = load ptr, ptr %353, align 8, !tbaa !91
  %355 = load ptr, ptr %2, align 8, !tbaa !92
  %356 = load ptr, ptr %355, align 8, !tbaa !79
  %357 = getelementptr inbounds ptr, ptr %356, i64 3
  %358 = load ptr, ptr %357, align 8
  invoke void %358(ptr noundef nonnull align 8 dereferenceable(8) %355, ptr noundef %354)
          to label %362 unwind label %359

359:                                              ; preds = %352
  %360 = landingpad { ptr, i32 }
          catch ptr null
  %361 = extractvalue { ptr, i32 } %360, 0
  call void @__clang_call_terminate(ptr %361) #21
  unreachable

362:                                              ; preds = %352, %346, %97
  %363 = phi i32 [ %100, %97 ], [ %347, %346 ], [ %347, %352 ]
  %364 = phi ptr [ %99, %97 ], [ %348, %346 ], [ %348, %352 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #20
  br label %365

365:                                              ; preds = %362, %93
  %366 = phi i32 [ %363, %362 ], [ %96, %93 ]
  %367 = phi ptr [ %364, %362 ], [ %95, %93 ]
  %368 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %369 = load i64, ptr %368, align 8, !tbaa !89
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %381, label %371

371:                                              ; preds = %365
  %372 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %373 = load ptr, ptr %372, align 8, !tbaa !91
  %374 = load ptr, ptr %1, align 8, !tbaa !92
  %375 = load ptr, ptr %374, align 8, !tbaa !79
  %376 = getelementptr inbounds ptr, ptr %375, i64 3
  %377 = load ptr, ptr %376, align 8
  invoke void %377(ptr noundef nonnull align 8 dereferenceable(8) %374, ptr noundef %373)
          to label %381 unwind label %378

378:                                              ; preds = %371
  %379 = landingpad { ptr, i32 }
          catch ptr null
  %380 = extractvalue { ptr, i32 } %379, 0
  call void @__clang_call_terminate(ptr %380) #21
  unreachable

381:                                              ; preds = %365, %371
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #20
  %382 = insertvalue { ptr, i32 } poison, ptr %367, 0
  %383 = insertvalue { ptr, i32 } %382, i32 %366, 1
  resume { ptr, i32 } %383

384:                                              ; preds = %307, %225
  %385 = landingpad { ptr, i32 }
          catch ptr null
  %386 = extractvalue { ptr, i32 } %385, 0
  call void @__clang_call_terminate(ptr %386) #21
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !71 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_Z7getArgsiPPcR6Params(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #3 !prof !96 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %5, label %11, !prof !97

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 6
  %7 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 7
  %8 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 6
  %9 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 7
  %10 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 1
  br label %17

11:                                               ; preds = %128, %3
  %12 = phi i1 [ true, %3 ], [ %134, %128 ]
  %13 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = select i1 %12, i1 %15, i1 false, !prof !98
  br i1 %16, label %148, label %136, !prof !99

17:                                               ; preds = %5, %128
  %18 = phi i8 [ 1, %5 ], [ %130, %128 ]
  %19 = phi i32 [ 1, %5 ], [ %131, %128 ]
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %1, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 45
  br i1 %24, label %25, label %107, !prof !101

25:                                               ; preds = %17
  %26 = getelementptr inbounds i8, ptr %22, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !102
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %107, label %29, !prof !99

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %22, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !102
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %128, !prof !98

33:                                               ; preds = %29
  %34 = load ptr, ptr %6, align 8, !tbaa !103
  %35 = icmp eq ptr %34, null
  %36 = load ptr, ptr %7, align 8
  %37 = icmp eq ptr %36, null
  %38 = select i1 %35, i1 %37, i1 false, !prof !98
  br i1 %38, label %39, label %128, !prof !98

39:                                               ; preds = %33
  switch i8 %27, label %128 [
    i8 97, label %40
    i8 101, label %42
    i8 105, label %52
    i8 109, label %64
    i8 111, label %66
    i8 112, label %76
    i8 116, label %102
    i8 117, label %104
    i8 118, label %106
  ], !prof !107

40:                                               ; preds = %39
  %41 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 1
  store i8 1, ptr %41, align 1, !tbaa !108
  br label %128

42:                                               ; preds = %39
  %43 = add nsw i32 %19, 1
  %44 = icmp slt i32 %43, %0
  br i1 %44, label %45, label %128

45:                                               ; preds = %42
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds ptr, ptr %1, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = load i8, ptr %48, align 1
  switch i8 %49, label %50 [
    i8 45, label %128
    i8 0, label %128
  ]

50:                                               ; preds = %45
  %51 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 9
  store ptr %48, ptr %51, align 8, !tbaa !109
  br label %128

52:                                               ; preds = %39
  %53 = add nsw i32 %19, 1
  %54 = icmp slt i32 %53, %0
  br i1 %54, label %55, label %128

55:                                               ; preds = %52
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds ptr, ptr %1, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !100
  %59 = load i8, ptr %58, align 1
  switch i8 %59, label %60 [
    i8 45, label %128
    i8 0, label %128
  ]

60:                                               ; preds = %55
  %61 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 5
  %62 = tail call i64 @strtol(ptr nocapture noundef nonnull %58, ptr noundef null, i32 noundef 10) #20
  %63 = trunc i64 %62 to i32
  store i32 %63, ptr %61, align 8, !tbaa !110
  br label %128

64:                                               ; preds = %39
  %65 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 2
  store i8 1, ptr %65, align 2, !tbaa !111
  br label %128

66:                                               ; preds = %39
  %67 = add nsw i32 %19, 1
  %68 = icmp slt i32 %67, %0
  br i1 %68, label %69, label %128

69:                                               ; preds = %66
  %70 = sext i32 %67 to i64
  %71 = getelementptr inbounds ptr, ptr %1, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !100
  %73 = load i8, ptr %72, align 1
  switch i8 %73, label %74 [
    i8 45, label %128
    i8 0, label %128
  ]

74:                                               ; preds = %69
  %75 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 8
  store ptr %72, ptr %75, align 8, !tbaa !112
  br label %128

76:                                               ; preds = %39
  %77 = add nsw i32 %19, 1
  %78 = icmp slt i32 %77, %0
  br i1 %78, label %79, label %128

79:                                               ; preds = %76
  %80 = sext i32 %77 to i64
  %81 = getelementptr inbounds ptr, ptr %1, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !100
  %83 = load i8, ptr %82, align 1, !tbaa !102
  %84 = icmp eq i8 %83, 45
  br i1 %84, label %128, label %85

85:                                               ; preds = %79
  %86 = add nsw i32 %19, 2
  %87 = icmp slt i32 %86, %0
  br i1 %87, label %88, label %128

88:                                               ; preds = %85
  %89 = sext i32 %86 to i64
  %90 = getelementptr inbounds ptr, ptr %1, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !100
  %92 = tail call noundef zeroext i1 @_ZN6Params8addParamEPKcS1_(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %82, ptr noundef %91)
  br i1 %92, label %128, label %93

93:                                               ; preds = %88
  %94 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.5, i64 noundef 56)
  %95 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %96 = getelementptr i8, ptr %95, i64 -24
  %97 = load i64, ptr %96, align 8
  %98 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %97
  %99 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %98, i8 noundef signext 10)
  %100 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %99)
  %101 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %100)
  br label %128

102:                                              ; preds = %39
  %103 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 4
  store i8 1, ptr %103, align 4, !tbaa !113
  br label %128

104:                                              ; preds = %39
  %105 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 3
  store i8 1, ptr %105, align 1, !tbaa !114
  br label %128

106:                                              ; preds = %39
  store i8 1, ptr %2, align 8, !tbaa !115
  br label %128

107:                                              ; preds = %25, %17
  %108 = load ptr, ptr %8, align 8, !tbaa !103
  %109 = icmp ne ptr %108, null
  %110 = icmp eq i8 %23, 0
  %111 = or i1 %110, %109
  br i1 %111, label %116, label %112, !prof !116

112:                                              ; preds = %107
  store ptr %22, ptr %8, align 8, !tbaa !103
  %113 = load i8, ptr %22, align 1
  %114 = icmp eq i8 %113, 0
  %115 = select i1 %114, i8 0, i8 %18, !prof !99
  br label %128

116:                                              ; preds = %107
  %117 = load ptr, ptr %9, align 8, !tbaa !117
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %128, !prof !98

119:                                              ; preds = %116
  %120 = icmp ne i8 %23, 0
  %121 = load i8, ptr %10, align 1, !range !118
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %120, i1 %122, i1 false, !prof !98
  br i1 %123, label %124, label %128, !prof !98

124:                                              ; preds = %119
  store ptr %22, ptr %9, align 8, !tbaa !117
  %125 = load i8, ptr %22, align 1
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i8 0, i8 %18, !prof !99
  br label %128

128:                                              ; preds = %69, %55, %45, %69, %55, %45, %124, %112, %116, %119, %39, %85, %93, %88, %76, %79, %66, %52, %42, %33, %29, %50, %64, %104, %106, %102, %74, %60, %40
  %129 = phi i32 [ %19, %40 ], [ %43, %50 ], [ %53, %60 ], [ %19, %64 ], [ %67, %74 ], [ %19, %102 ], [ %19, %104 ], [ %19, %106 ], [ %19, %29 ], [ %19, %33 ], [ %43, %42 ], [ %53, %52 ], [ %67, %66 ], [ %77, %79 ], [ %77, %76 ], [ %86, %88 ], [ %86, %93 ], [ %86, %85 ], [ %19, %39 ], [ %19, %112 ], [ %19, %124 ], [ %19, %119 ], [ %19, %116 ], [ %43, %45 ], [ %53, %55 ], [ %67, %69 ], [ %43, %45 ], [ %53, %55 ], [ %67, %69 ]
  %130 = phi i8 [ %18, %40 ], [ %18, %50 ], [ %18, %60 ], [ %18, %64 ], [ %18, %74 ], [ %18, %102 ], [ %18, %104 ], [ %18, %106 ], [ 0, %29 ], [ 0, %33 ], [ 0, %42 ], [ 0, %52 ], [ 0, %66 ], [ 0, %79 ], [ 0, %76 ], [ %18, %88 ], [ 0, %93 ], [ 0, %85 ], [ 0, %39 ], [ %115, %112 ], [ %127, %124 ], [ 0, %119 ], [ 0, %116 ], [ 0, %45 ], [ 0, %55 ], [ 0, %69 ], [ 0, %45 ], [ 0, %55 ], [ 0, %69 ]
  %131 = add nsw i32 %129, 1
  %132 = icmp slt i32 %131, %0
  %133 = and i8 %130, 1
  %134 = icmp ne i8 %133, 0
  %135 = select i1 %132, i1 %134, i1 false, !prof !119
  br i1 %135, label %17, label %11, !prof !120, !llvm.loop !121

136:                                              ; preds = %11
  %137 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 7
  %138 = load ptr, ptr %137, align 8, !tbaa !117
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %144, !prof !99

140:                                              ; preds = %136
  %141 = getelementptr inbounds %class.Params, ptr %2, i64 0, i32 1
  %142 = load i8, ptr %141, align 1, !tbaa !108, !range !118, !noundef !122
  %143 = icmp ne i8 %142, 0
  br label %148

144:                                              ; preds = %136
  %145 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %138, ptr noundef nonnull dereferenceable(1) %14) #22
  %146 = icmp ne i32 %145, 0
  %147 = and i1 %146, %12
  br label %148

148:                                              ; preds = %144, %11, %140
  %149 = phi i1 [ %143, %140 ], [ false, %11 ], [ %147, %144 ]
  ret i1 %149
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6Params8addParamEPKcS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %4 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 12
  %5 = load i64, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 11
  %7 = load i64, ptr %6, align 8, !tbaa !124
  %8 = icmp ne i64 %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = icmp ugt i64 %7, 1152921504606846975
  %15 = shl i64 %7, 4
  %16 = select i1 %14, i64 -1, i64 %15
  %17 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %16) #23
  %18 = icmp eq i64 %7, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = shl i64 %7, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %17, i8 0, i64 %20, i1 false), !tbaa !100
  br label %21

21:                                               ; preds = %19, %13
  store ptr %17, ptr %10, align 8, !tbaa !125
  br label %22

22:                                               ; preds = %21, %9
  %23 = load i64, ptr %4, align 8, !tbaa !123
  %24 = load ptr, ptr %10, align 8, !tbaa !125
  %25 = getelementptr inbounds %"struct.Params::ParamPair", ptr %24, i64 %23
  store ptr %1, ptr %25, align 8, !tbaa !126
  %26 = getelementptr inbounds %"struct.Params::ParamPair", ptr %24, i64 %23, i32 1
  store ptr %2, ptr %26, align 8, !tbaa !128
  %27 = add i64 %23, 1
  store i64 %27, ptr %4, align 8, !tbaa !123
  br label %28

28:                                               ; preds = %3, %22
  ret i1 %8
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z24writeElapsedMillisecondsllRSo(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 !prof !71 {
  %4 = sub nsw i64 %1, %0
  %5 = sitofp i64 %4 to double
  %6 = fdiv double %5, 1.000000e+06
  %7 = fmul double %6, 1.000000e+03
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %7)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z8xsltMainiPPc(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = alloca %class.Params, align 8
  %4 = alloca %"class.xalanc_1_10::XalanTransformer", align 8
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgXercescDefaultLocaleE, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  tail call void @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #20
  %6 = add nsw i32 %0, -1
  %7 = sdiv i32 %6, 2
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.Params, ptr %3, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %3, i8 0, i64 5, i1 false)
  store i32 -1, ptr %10, align 8, !tbaa !110
  %11 = getelementptr inbounds %class.Params, ptr %3, i64 0, i32 6
  %12 = getelementptr inbounds %class.Params, ptr %3, i64 0, i32 10
  %13 = getelementptr inbounds %class.Params, ptr %3, i64 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 40, i1 false)
  store i64 %9, ptr %13, align 8, !tbaa !124
  %14 = getelementptr inbounds %class.Params, ptr %3, i64 0, i32 12
  store i64 0, ptr %14, align 8, !tbaa !123
  %15 = invoke noundef zeroext i1 @_Z7getArgsiPPcR6Params(i32 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %16 unwind label %18, !prof !98

16:                                               ; preds = %2
  br i1 %15, label %20, label %17, !prof !98

17:                                               ; preds = %16
  invoke void @_Z5Usagev()
          to label %60 unwind label %18

18:                                               ; preds = %17, %2
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %66

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %4) #20
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
          to label %22 unwind label %53, !prof !98

22:                                               ; preds = %20
  invoke void @_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %23 unwind label %53, !prof !98

23:                                               ; preds = %22
  invoke void @_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(384) %4)
          to label %24 unwind label %55, !prof !98

24:                                               ; preds = %23
  %25 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params(ptr noundef nonnull align 8 dereferenceable(384) %4, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %26 unwind label %55, !prof !98

26:                                               ; preds = %24
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %57, label %28, !prof !98

28:                                               ; preds = %26
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %4, i64 0, i32 7, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !78
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %34 = getelementptr i8, ptr %33, i64 -24
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %35
  %37 = getelementptr inbounds %"class.std::ios_base", ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !81
  %39 = or i32 %38, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %36, i32 noundef %39)
          to label %43 unwind label %55

40:                                               ; preds = %28
  %41 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #20
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %30, i64 noundef %41)
          to label %43 unwind label %55

43:                                               ; preds = %40, %32
  %44 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !79
  %45 = getelementptr i8, ptr %44, i64 -24
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %46
  %48 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %47, i8 noundef signext 10)
          to label %49 unwind label %55

49:                                               ; preds = %43
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %48)
          to label %51 unwind label %55

51:                                               ; preds = %49
  %52 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %57 unwind label %55

53:                                               ; preds = %22, %20
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %58

55:                                               ; preds = %51, %49, %43, %40, %32, %24, %23
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XalanTransformerD1Ev(ptr noundef nonnull align 8 dereferenceable(384) %4) #20
  br label %58

57:                                               ; preds = %51, %26
  call void @_ZN11xalanc_1_1016XalanTransformerD1Ev(ptr noundef nonnull align 8 dereferenceable(384) %4) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #20
  br label %60

58:                                               ; preds = %55, %53
  %59 = phi { ptr, i32 } [ %56, %55 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #20
  br label %66

60:                                               ; preds = %17, %57
  %61 = phi i32 [ -1, %17 ], [ %25, %57 ]
  %62 = load ptr, ptr %12, align 8, !tbaa !125
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64, !prof !98

64:                                               ; preds = %60
  call void @_ZdaPv(ptr noundef %62) #24
  br label %65

65:                                               ; preds = %60, %64
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #20
  call void @_ZN11xalanc_1_1016XalanTransformer9terminateEv()
  call void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv()
  call void @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv()
  ret i32 %61

66:                                               ; preds = %58, %18
  %67 = phi { ptr, i32 } [ %19, %18 ], [ %59, %58 ]
  %68 = load ptr, ptr %12, align 8, !tbaa !125
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void @_ZdaPv(ptr noundef %68) #24
  br label %71

71:                                               ; preds = %66, %70
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #20
  resume { ptr, i32 } %67
}

declare void @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(384) %1) local_unnamed_addr #3 comdat align 2 !prof !96 {
  %3 = load i8, ptr %0, align 8, !tbaa !115, !range !118, !noundef !122
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %1, i64 0, i32 8
  store i8 %3, ptr %4, align 8, !tbaa !129
  %5 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 2, !tbaa !111, !range !118, !noundef !122
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !98

8:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1016XalanTransformer14setOmitMETATagENS0_12eOmitMETATagE(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef 2)
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !114, !range !118, !noundef !122
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !98

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1016XalanTransformer13setEscapeURLsENS0_11eEscapeURLsE(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef 1)
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !110
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %19, !prof !99

18:                                               ; preds = %14
  tail call void @_ZN11xalanc_1_1016XalanTransformer9setIndentEi(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %16)
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 12
  %21 = load i64, ptr %20, align 8, !tbaa !123
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24, !prof !98

23:                                               ; preds = %24, %19
  ret void

24:                                               ; preds = %19, %24
  %25 = phi i64 [ %32, %24 ], [ 0, %19 ]
  %26 = getelementptr inbounds %class.Params, ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !125
  %28 = getelementptr inbounds %"struct.Params::ParamPair", ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !126
  %30 = getelementptr inbounds %"struct.Params::ParamPair", ptr %27, i64 %25, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !128
  tail call void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_(ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef %29, ptr noundef %31)
  %32 = add nuw i64 %25, 1
  %33 = load i64, ptr %20, align 8, !tbaa !123
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %24, label %23, !prof !99, !llvm.loop !137
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %4 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %5 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = load i8, ptr %6, align 1, !tbaa !102
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %19, !prof !99

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !102
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %15 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %25

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %27

19:                                               ; preds = %9, %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %21 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %22 unwind label %23, !prof !98

22:                                               ; preds = %19
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  br label %25

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  br label %27

25:                                               ; preds = %22, %16
  %26 = phi i32 [ %15, %16 ], [ %21, %22 ]
  ret i32 %26

27:                                               ; preds = %23, %17
  %28 = phi { ptr, i32 } [ %18, %17 ], [ %24, %23 ]
  resume { ptr, i32 } %28
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016XalanTransformerD1Ev(ptr noundef nonnull align 8 dereferenceable(384)) unnamed_addr #1

declare void @_ZN11xalanc_1_1016XalanTransformer9terminateEv() local_unnamed_addr #0

declare void @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv() local_unnamed_addr #0

; Function Attrs: cold mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !96 {
  %3 = tail call noundef i32 @_Z8xsltMainiPPc(i32 noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

declare void @_ZN11xalanc_1_1016XalanTransformer14setOmitMETATagENS0_12eOmitMETATagE(ptr noundef nonnull align 8 dereferenceable(384), i32 noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1016XalanTransformer13setEscapeURLsENS0_11eEscapeURLsE(ptr noundef nonnull align 8 dereferenceable(384), i32 noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1016XalanTransformer9setIndentEi(ptr noundef nonnull align 8 dereferenceable(384), i32 noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 !prof !96 {
  %4 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %5 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %6 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 1, !tbaa !108, !range !118, !noundef !122
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18, !prof !98

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = load i8, ptr %11, align 1, !tbaa !102
  %13 = icmp eq i8 %12, 45
  br i1 %13, label %14, label %24, !prof !99

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !102
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %19)
  %20 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %21 unwind label %22

21:                                               ; preds = %18
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  br label %30

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  br label %32

24:                                               ; preds = %14, %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv()
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(8) %25)
  %26 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %27 unwind label %28, !prof !98

27:                                               ; preds = %24
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  br label %30

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  br label %32

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %20, %21 ], [ %26, %27 ]
  ret i32 %31

32:                                               ; preds = %28, %22
  %33 = phi { ptr, i32 } [ %23, %22 ], [ %29, %28 ]
  resume { ptr, i32 } %33
}

declare void @_ZN11xalanc_1_1015XSLTInputSourceC1EPSiRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #1

declare void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 !prof !96 {
  %5 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #20
  call void @_ZN11xalanc_1_1016XSLTResultTargetC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12, !prof !98

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #20
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %10, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef -1)
          to label %13 unwind label %34

13:                                               ; preds = %12
  %14 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %5, i64 0, i32 2
  %15 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %16 unwind label %36

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !139
  %19 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %5, i64 0, i32 2, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !139
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !89
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  %26 = load ptr, ptr %6, align 8, !tbaa !92
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %25)
          to label %33 unwind label %30

30:                                               ; preds = %23
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  call void @__clang_call_terminate(ptr %32) #21
  unreachable

33:                                               ; preds = %16, %23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  br label %53

34:                                               ; preds = %12
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %51

36:                                               ; preds = %13
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !89
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !91
  %44 = load ptr, ptr %6, align 8, !tbaa !92
  %45 = load ptr, ptr %44, align 8, !tbaa !79
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %43)
          to label %51 unwind label %48

48:                                               ; preds = %41
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #21
  unreachable

51:                                               ; preds = %41, %36, %34
  %52 = phi { ptr, i32 } [ %35, %34 ], [ %37, %36 ], [ %37, %41 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  br label %76

53:                                               ; preds = %33, %4
  %54 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !112
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57, !prof !98

57:                                               ; preds = %53
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 0, i32 noundef -1)
          to label %58 unwind label %62

58:                                               ; preds = %57
  %59 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %55)
          to label %60 unwind label %62

60:                                               ; preds = %58
  %61 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull %55, i32 noundef %59)
          to label %66 unwind label %62

62:                                               ; preds = %60, %58, %57, %72, %70
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %76

64:                                               ; preds = %53
  %65 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %5, i64 0, i32 1
  store ptr @_ZSt4cout, ptr %65, align 8, !tbaa !140
  br label %66

66:                                               ; preds = %60, %64
  %67 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 1
  %68 = load i8, ptr %67, align 1, !tbaa !108, !range !118, !noundef !122
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70, !prof !98

70:                                               ; preds = %66
  %71 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %74 unwind label %62

72:                                               ; preds = %66
  %73 = invoke noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %74 unwind label %62, !prof !98

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #20
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #20
  ret i32 %75

76:                                               ; preds = %62, %51
  %77 = phi { ptr, i32 } [ %63, %62 ], [ %52, %51 ]
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #20
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #20
  resume { ptr, i32 } %77
}

declare void @_ZN11xalanc_1_1016XSLTResultTargetC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 !prof !71 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 4
  %7 = load i8, ptr %6, align 4, !tbaa !113, !range !118, !noundef !122
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !100
  %11 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(112) %3)
  br label %55

12:                                               ; preds = %4
  %13 = tail call noundef i64 @clock() #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !100
  %14 = call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = call noundef i64 @clock() #20
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 26)
  %19 = sub nsw i64 %17, %13
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 1.000000e+06
  %22 = fmul double %21, 1.000000e+03
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, double noundef %22)
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 15)
  %25 = load ptr, ptr %5, align 8, !tbaa !100
  %26 = call noundef i64 @clock() #20
  %27 = load ptr, ptr %5, align 8, !tbaa !100
  %28 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !100
  %29 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %27, ptr noundef null, ptr noundef nonnull %28, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %30 unwind label %46

30:                                               ; preds = %16
  %31 = call noundef i64 @clock() #20
  %32 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 55)
          to label %33 unwind label %46

33:                                               ; preds = %30
  %34 = sub nsw i64 %31, %26
  %35 = sitofp i64 %34 to double
  %36 = fdiv double %35, 1.000000e+06
  %37 = fmul double %36, 1.000000e+03
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, double noundef %37)
          to label %39 unwind label %46

39:                                               ; preds = %33
  %40 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 15)
          to label %41 unwind label %46

41:                                               ; preds = %39
  %42 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %25)
          to label %53 unwind label %43

43:                                               ; preds = %41
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #21
  unreachable

46:                                               ; preds = %39, %33, %30, %16
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %25)
          to label %52 unwind label %49

49:                                               ; preds = %46
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #21
  unreachable

52:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  resume { ptr, i32 } %47

53:                                               ; preds = %41, %12
  %54 = phi i32 [ %14, %12 ], [ %29, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br label %55

55:                                               ; preds = %53, %9
  %56 = phi i32 [ %11, %9 ], [ %54, %53 ]
  ret i32 %56
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(112) %4) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 !prof !96 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %class.Params, ptr %1, i64 0, i32 4
  %9 = load i8, ptr %8, align 4, !tbaa !113, !range !118, !noundef !122
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13, !prof !98

11:                                               ; preds = %5
  %12 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(112) %4)
  br label %87

13:                                               ; preds = %5
  %14 = tail call noundef i64 @clock() #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  store ptr null, ptr %6, align 8, !tbaa !100
  %15 = call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext false)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %85

17:                                               ; preds = %13
  %18 = call noundef i64 @clock() #20
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 26)
  %20 = sub nsw i64 %18, %14
  %21 = sitofp i64 %20 to double
  %22 = fdiv double %21, 1.000000e+06
  %23 = fmul double %22, 1.000000e+03
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, double noundef %23)
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 15)
  %26 = load ptr, ptr %6, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !100
  %27 = call noundef i64 @clock() #20
  %28 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %29 unwind label %64

29:                                               ; preds = %17
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %29
  %32 = call noundef i64 @clock() #20
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 29)
          to label %34 unwind label %64

34:                                               ; preds = %31
  %35 = sub nsw i64 %32, %27
  %36 = sitofp i64 %35 to double
  %37 = fdiv double %36, 1.000000e+06
  %38 = fmul double %37, 1.000000e+03
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, double noundef %38)
          to label %40 unwind label %64

40:                                               ; preds = %34
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 15)
          to label %42 unwind label %64

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !tbaa !100
  %44 = call noundef i64 @clock() #20
  %45 = load ptr, ptr %6, align 8, !tbaa !100
  %46 = load ptr, ptr %7, align 8, !tbaa !100
  %47 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 1 %45, ptr noundef %46, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %48 unwind label %66

48:                                               ; preds = %42
  %49 = call noundef i64 @clock() #20
  %50 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.10, i64 noundef 21)
          to label %51 unwind label %66

51:                                               ; preds = %48
  %52 = sub nsw i64 %49, %44
  %53 = sitofp i64 %52 to double
  %54 = fdiv double %53, 1.000000e+06
  %55 = fmul double %54, 1.000000e+03
  %56 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, double noundef %55)
          to label %57 unwind label %66

57:                                               ; preds = %51
  %58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 15)
          to label %59 unwind label %66

59:                                               ; preds = %57
  %60 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %43)
          to label %72 unwind label %61

61:                                               ; preds = %59
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  call void @__clang_call_terminate(ptr %63) #21
  unreachable

64:                                               ; preds = %40, %34, %31, %17
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %78

66:                                               ; preds = %57, %51, %48, %42
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %43)
          to label %78 unwind label %69

69:                                               ; preds = %66
  %70 = landingpad { ptr, i32 }
          catch ptr null
  %71 = extractvalue { ptr, i32 } %70, 0
  call void @__clang_call_terminate(ptr %71) #21
  unreachable

72:                                               ; preds = %59, %29
  %73 = phi i32 [ %28, %29 ], [ %47, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  %74 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %26)
          to label %85 unwind label %75

75:                                               ; preds = %72
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  call void @__clang_call_terminate(ptr %77) #21
  unreachable

78:                                               ; preds = %66, %64
  %79 = phi { ptr, i32 } [ %65, %64 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  %80 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %26)
          to label %84 unwind label %81

81:                                               ; preds = %78
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  call void @__clang_call_terminate(ptr %83) #21
  unreachable

84:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  resume { ptr, i32 } %79

85:                                               ; preds = %72, %13
  %86 = phi i32 [ %15, %13 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  br label %87

87:                                               ; preds = %85, %11
  %88 = phi i32 [ %12, %11 ], [ %86, %85 ]
  ret i32 %88
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !142 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !143

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !89
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !144
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !145

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !92
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !92
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !144
  %16 = load i64, ptr %6, align 8, !tbaa !89
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = load ptr, ptr %3, align 8, !tbaa !92
  store ptr %19, ptr %0, align 8, !tbaa !92
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !144
  store i64 %21, ptr %14, align 8, !tbaa !144
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !89
  store i64 %23, ptr %6, align 8, !tbaa !89
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  store ptr %25, ptr %17, align 8, !tbaa !91
  store ptr %13, ptr %3, align 8, !tbaa !92
  store i64 %15, ptr %20, align 8, !tbaa !144
  store i64 %16, ptr %22, align 8, !tbaa !89
  store ptr %18, ptr %24, align 8, !tbaa !91
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !146

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !79
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !147

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #21
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !91
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !144
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !148

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !149

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !91
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !144
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !144
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !91
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !150

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !91
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !151
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !92
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !144
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !153

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !92
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !144
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !89
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !79
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !154
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !91
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = load i64, ptr %9, align 8, !tbaa !144
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !155

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !92
  %28 = load i64, ptr %6, align 8, !tbaa !144
  %29 = load i64, ptr %7, align 8, !tbaa !89
  %30 = load ptr, ptr %8, align 8, !tbaa !91
  %31 = load ptr, ptr %5, align 8, !tbaa !92
  store ptr %31, ptr %0, align 8, !tbaa !92
  %32 = load i64, ptr %14, align 8, !tbaa !144
  store i64 %32, ptr %6, align 8, !tbaa !144
  %33 = load i64, ptr %15, align 8, !tbaa !89
  store i64 %33, ptr %7, align 8, !tbaa !89
  %34 = load ptr, ptr %21, align 8, !tbaa !91
  store ptr %34, ptr %8, align 8, !tbaa !91
  store ptr %27, ptr %5, align 8, !tbaa !92
  store i64 %28, ptr %14, align 8, !tbaa !144
  store i64 %29, ptr %15, align 8, !tbaa !89
  store ptr %30, ptr %21, align 8, !tbaa !91
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !155

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !79
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !89
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !91
  %50 = load ptr, ptr %5, align 8, !tbaa !92
  %51 = load ptr, ptr %50, align 8, !tbaa !79
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #21
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !156

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !79
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !157
  store ptr %65, ptr %8, align 8, !tbaa !91
  store i64 %3, ptr %7, align 8, !tbaa !89
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !158 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !159

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !144
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !89
  br i1 %18, label %21, label %39, !prof !160

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !161

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !162

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !91
  %28 = load i64, ptr %12, align 8, !tbaa !144
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !163
  store i16 %34, ptr %32, align 2, !tbaa !163
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !165, !llvm.loop !166

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !167

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %42 = load ptr, ptr %0, align 8, !tbaa !92
  store ptr %42, ptr %5, align 8, !tbaa !92
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !144
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !89
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !79
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !168
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !91
  %51 = load i64, ptr %43, align 8, !tbaa !144
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !91
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !169

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !91
  %56 = load i64, ptr %43, align 8, !tbaa !144
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !169

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !91
  %60 = load i64, ptr %43, align 8, !tbaa !144
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !91
  %63 = load i64, ptr %12, align 8, !tbaa !144
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !169

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !92
  %67 = load i64, ptr %12, align 8, !tbaa !144
  %68 = load i64, ptr %19, align 8, !tbaa !89
  %69 = load ptr, ptr %15, align 8, !tbaa !91
  %70 = load ptr, ptr %5, align 8, !tbaa !92
  store ptr %70, ptr %0, align 8, !tbaa !92
  %71 = load i64, ptr %43, align 8, !tbaa !144
  store i64 %71, ptr %12, align 8, !tbaa !144
  %72 = load i64, ptr %44, align 8, !tbaa !89
  store i64 %72, ptr %19, align 8, !tbaa !89
  %73 = load ptr, ptr %50, align 8, !tbaa !91
  store ptr %73, ptr %15, align 8, !tbaa !91
  store ptr %66, ptr %5, align 8, !tbaa !92
  store i64 %67, ptr %43, align 8, !tbaa !144
  store i64 %68, ptr %44, align 8, !tbaa !89
  store ptr %69, ptr %50, align 8, !tbaa !91
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !170

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !79
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !171

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #21
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !89
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !91
  %89 = load ptr, ptr %5, align 8, !tbaa !92
  %90 = load ptr, ptr %89, align 8, !tbaa !79
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #21
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !172

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !173

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !173

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !174, !llvm.loop !175

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !176, !llvm.loop !177

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !178
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
  br i1 %123, label %124, label %120, !llvm.loop !179

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
  store i64 %36, ptr %12, align 8, !tbaa !144
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !144
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !89
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !181

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !163
  store i16 %13, ptr %12, align 2, !tbaa !163
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !144
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !92
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !92
  %24 = load i64, ptr %4, align 8, !tbaa !144
  %25 = load i64, ptr %6, align 8, !tbaa !89
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !91
  %28 = load ptr, ptr %3, align 8, !tbaa !92
  store ptr %28, ptr %0, align 8, !tbaa !92
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !144
  store i64 %30, ptr %4, align 8, !tbaa !144
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !89
  store i64 %32, ptr %6, align 8, !tbaa !89
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !91
  store ptr %34, ptr %26, align 8, !tbaa !91
  store ptr %23, ptr %3, align 8, !tbaa !92
  store i64 %24, ptr %29, align 8, !tbaa !144
  store i64 %25, ptr %31, align 8, !tbaa !89
  store ptr %27, ptr %33, align 8, !tbaa !91
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !79
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #21
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !89
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !91
  %52 = load ptr, ptr %3, align 8, !tbaa !92
  %53 = load ptr, ptr %52, align 8, !tbaa !79
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !92
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !144
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !153

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !144
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !89
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !79
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !183
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !91
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !91
  %20 = load i64, ptr %5, align 8, !tbaa !144
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !155

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !92
  %24 = load i64, ptr %10, align 8, !tbaa !144
  %25 = load i64, ptr %11, align 8, !tbaa !89
  %26 = load ptr, ptr %17, align 8, !tbaa !91
  store ptr %4, ptr %3, align 8, !tbaa !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !89
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !91
  %33 = load ptr, ptr %3, align 8, !tbaa !92
  %34 = load ptr, ptr %33, align 8, !tbaa !79
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #21
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !156

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !79
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !184
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !92
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !89
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !91
  store ptr %53, ptr %0, align 8, !tbaa !92
  store i64 %52, ptr %5, align 8, !tbaa !144
  store i64 %51, ptr %55, align 8, !tbaa !89
  store ptr %50, ptr %57, align 8, !tbaa !91
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !185

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !79
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !186

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #21
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 1, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanExe.cpp() #17 section ".text.startup" !prof !96 !PGOFuncName !187 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!70}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !{ptr @_Z7getArgsiPPcR6Params, ptr @strcmp, i64 1}
!36 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xercesc_2_716XMLPlatformUtils10InitializeEPKcS2_PNS_12PanicHandlerEPNS_13MemoryManagerEb, i64 1}
!37 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv, i64 2}
!38 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_Z8xsltMainiPPc, ptr @_Z7getArgsiPPcR6Params, i64 1}
!40 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_Z8xsltMainiPPc, ptr @_ZNK6Params9setParamsERN11xalanc_1_1016XalanTransformerE, i64 1}
!42 = !{ptr @_Z8xsltMainiPPc, ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params, i64 1}
!43 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1016XalanTransformerD1Ev, i64 1}
!44 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1016XalanTransformer9terminateEv, i64 1}
!45 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xercesc_2_716XMLPlatformUtils9TerminateEv, i64 1}
!46 = !{ptr @_Z8xsltMainiPPc, ptr @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv, i64 1}
!47 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params, ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv, i64 1}
!48 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params, ptr @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE, i64 1}
!49 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params, ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE, i64 1}
!50 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6Params, ptr @_ZN11xercesc_2_711InputSourceD2Ev, i64 1}
!51 = !{ptr @main, ptr @_Z8xsltMainiPPc, i64 1}
!52 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1012XalanMemMgrs22getDefaultXercesMemMgrEv, i64 1}
!53 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1015XSLTInputSourceC1EPKcRN11xercesc_2_713MemoryManagerE, i64 1}
!54 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE, ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_, i64 1}
!55 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceE, ptr @_ZN11xercesc_2_711InputSourceD2Ev, i64 1}
!56 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_, ptr @_ZN11xalanc_1_1016XSLTResultTargetC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!57 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_, ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_RKNS_16XSLTResultTargetE, i64 1}
!58 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_, ptr @_ZN11xalanc_1_1016XSLTResultTargetD1Ev, i64 1}
!59 = !{ptr @_Z9transformRN11xalanc_1_1016XalanTransformerERK6ParamsRKNS_15XSLTInputSourceES7_RKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!68 = !{ptr @_GLOBAL__sub_I_XalanExe.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!69 = !{ptr @_GLOBAL__sub_I_XalanExe.cpp, ptr @__cxa_atexit, i64 1}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = !{!"function_entry_count", i64 0}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!74 = !{!"any pointer", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C++ TBAA"}
!77 = !{!"long", !75, i64 0}
!78 = !{!73, !74, i64 24}
!79 = !{!80, !80, i64 0}
!80 = !{!"vtable pointer", !76, i64 0}
!81 = !{!82, !84, i64 32}
!82 = !{!"_ZTSSt8ios_base", !77, i64 8, !77, i64 16, !83, i64 24, !84, i64 28, !84, i64 32, !74, i64 40, !85, i64 48, !75, i64 64, !86, i64 192, !74, i64 200, !87, i64 208}
!83 = !{!"_ZTSSt13_Ios_Fmtflags", !75, i64 0}
!84 = !{!"_ZTSSt12_Ios_Iostate", !75, i64 0}
!85 = !{!"_ZTSNSt8ios_base6_WordsE", !74, i64 0, !77, i64 8}
!86 = !{!"int", !75, i64 0}
!87 = !{!"_ZTSSt6locale", !74, i64 0}
!88 = !{!73, !77, i64 16}
!89 = !{!90, !77, i64 16}
!90 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!91 = !{!90, !74, i64 24}
!92 = !{!90, !74, i64 0}
!93 = distinct !{!93, !94, !95}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!"function_entry_count", i64 1}
!97 = !{!"branch_weights", i32 127, i32 1}
!98 = !{!"branch_weights", i32 1, i32 0}
!99 = !{!"branch_weights", i32 0, i32 1}
!100 = !{!74, !74, i64 0}
!101 = !{!"branch_weights", i32 1, i32 2}
!102 = !{!75, !75, i64 0}
!103 = !{!104, !74, i64 16}
!104 = !{!"_ZTS6Params", !105, i64 0, !105, i64 1, !105, i64 2, !105, i64 3, !105, i64 4, !86, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !106, i64 48, !77, i64 56, !77, i64 64}
!105 = !{!"bool", !75, i64 0}
!106 = !{!"_ZTSN11xalanc_1_1017XalanArrayAutoPtrIN6Params9ParamPairEEE", !74, i64 0}
!107 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!108 = !{!104, !105, i64 1}
!109 = !{!104, !74, i64 40}
!110 = !{!104, !86, i64 8}
!111 = !{!104, !105, i64 2}
!112 = !{!104, !74, i64 32}
!113 = !{!104, !105, i64 4}
!114 = !{!104, !105, i64 3}
!115 = !{!104, !105, i64 0}
!116 = !{!"branch_weights", i32 1, i32 1}
!117 = !{!104, !74, i64 24}
!118 = !{i8 0, i8 2}
!119 = !{!"branch_weights", i32 3, i32 1}
!120 = !{!"branch_weights", i32 257, i32 127}
!121 = distinct !{!121, !94, !95}
!122 = !{}
!123 = !{!104, !77, i64 64}
!124 = !{!104, !77, i64 56}
!125 = !{!106, !74, i64 0}
!126 = !{!127, !74, i64 0}
!127 = !{!"_ZTSN6Params9ParamPairE", !74, i64 0, !74, i64 8}
!128 = !{!127, !74, i64 8}
!129 = !{!130, !105, i64 208}
!130 = !{!"_ZTSN11xalanc_1_1016XalanTransformerE", !74, i64 8, !131, i64 16, !132, i64 48, !133, i64 80, !134, i64 112, !135, i64 144, !73, i64 176, !105, i64 208, !74, i64 216, !74, i64 224, !136, i64 232, !136, i64 272, !74, i64 312, !74, i64 320, !136, i64 328, !105, i64 368, !74, i64 376}
!131 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!132 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!133 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!134 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!135 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEE", !74, i64 0, !77, i64 8, !77, i64 16, !74, i64 24}
!136 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !90, i64 0, !86, i64 32}
!137 = distinct !{!137, !94, !95}
!138 = !{!130, !74, i64 8}
!139 = !{!136, !86, i64 32}
!140 = !{!141, !74, i64 40}
!141 = !{!"_ZTSN11xalanc_1_1016XSLTResultTargetE", !136, i64 0, !74, i64 40, !136, i64 48, !74, i64 88, !74, i64 96, !74, i64 104}
!142 = !{!"function_entry_count", i64 41614}
!143 = !{!"branch_weights", i32 0, i32 41614}
!144 = !{!90, !77, i64 8}
!145 = !{!"branch_weights", i32 12, i32 41602}
!146 = !{!"branch_weights", i32 5, i32 7}
!147 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!148 = !{!"branch_weights", i32 354, i32 41248}
!149 = !{!"branch_weights", i32 40889, i32 359}
!150 = !{!"branch_weights", i32 40581, i32 1021}
!151 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!152 = !{!"function_entry_count", i64 22}
!153 = !{!"branch_weights", i32 64551590, i32 18}
!154 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!155 = !{!"branch_weights", i32 18, i32 0}
!156 = !{!"branch_weights", i32 4, i32 64551586}
!157 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!158 = !{!"function_entry_count", i64 155828046}
!159 = !{!"branch_weights", i32 0, i32 155828046}
!160 = !{!"branch_weights", i32 133170777, i32 22657269}
!161 = !{!"branch_weights", i32 20, i32 133170757}
!162 = !{!"branch_weights", i32 1, i32 19024395}
!163 = !{!164, !164, i64 0}
!164 = !{!"short", !75, i64 0}
!165 = !{!"branch_weights", i32 19024395, i32 -26420601}
!166 = distinct !{!166, !94, !95}
!167 = !{!"branch_weights", i32 20748786, i32 1908483}
!168 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!169 = !{!"branch_weights", i32 20748786, i32 0}
!170 = !{!"branch_weights", i32 0, i32 20748786}
!171 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!172 = !{!"branch_weights", i32 0, i32 1908483}
!173 = !{!"branch_weights", i32 1, i32 1908482}
!174 = !{!"branch_weights", i32 1908482, i32 49797853}
!175 = distinct !{!175, !94, !95}
!176 = !{!"branch_weights", i32 1908482, i32 1}
!177 = distinct !{!177, !94, !95}
!178 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!179 = distinct !{!179, !94, !95}
!180 = !{!"function_entry_count", i64 124150652}
!181 = !{!"branch_weights", i32 124150652, i32 0}
!182 = !{!"function_entry_count", i64 64551586}
!183 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!184 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!185 = !{!"branch_weights", i32 42418193, i32 22133393}
!186 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!187 = !{!"XalanExe.cpp;_GLOBAL__sub_I_XalanExe.cpp"}
