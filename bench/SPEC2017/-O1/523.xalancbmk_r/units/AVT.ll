; ModuleID = 'AVT.cpp'
source_filename = "AVT.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::StringTokenizer" = type { ptr, ptr, i8, i32, i32, i32 }
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

@_ZN11xalanc_1_103AVT13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_103AVTE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_103AVTE, ptr @_ZN11xalanc_1_103AVTD2Ev, ptr @_ZN11xalanc_1_103AVTD0Ev] }, align 8
@_ZN11xalanc_1_10L27theTokenDelimiterCharactersE = internal constant [5 x i16] [i16 123, i16 125, i16 39, i16 34, i16 0], align 2
@_ZN11xalanc_1_10L25theLeftCurlyBracketStringE = internal constant [2 x i16] [i16 123, i16 0], align 2
@_ZN11xalanc_1_10L26theRightCurlyBracketStringE = internal constant [2 x i16] [i16 125, i16 0], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_103AVTE = dso_local constant [20 x i8] c"N11xalanc_1_103AVTE\00", align 1
@_ZTIN11xalanc_1_103AVTE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_103AVTE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_AVT.cpp, ptr null }]

@_ZN11xalanc_1_103AVTC1ERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_103AVTC2ERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE
@_ZN11xalanc_1_103AVTD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_103AVTD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_103AVTC2ERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %7 = alloca %"class.xalanc_1_10::StringTokenizer", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %11 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %12 = alloca [2 x i16], align 2
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_103AVTE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !53
  %13 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 4
  %17 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, i8 0, i64 28, i1 false)
  %18 = load ptr, ptr %1, align 8, !tbaa !53
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr %20(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %3, i32 noundef -1), !prof !56
  store ptr %21, ptr %17, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #17
  call void @_ZN11xalanc_1_1015StringTokenizerC1EPKtS2_b(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %4, ptr noundef nonnull @_ZN11xalanc_1_10L27theTokenDelimiterCharactersE, i1 noundef zeroext true)
  %22 = invoke noundef i64 @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %23 unwind label %41, !prof !60

23:                                               ; preds = %6
  %24 = icmp ult i64 %22, 2
  br i1 %24, label %25, label %43, !prof !60

25:                                               ; preds = %23, %25
  %26 = phi ptr [ %29, %25 ], [ %4, %23 ]
  %27 = load i16, ptr %26, align 2, !tbaa !61
  %28 = icmp eq i16 %27, 0
  %29 = getelementptr inbounds i16, ptr %26, i64 1
  br i1 %28, label %30, label %25, !prof !63, !llvm.loop !64

30:                                               ; preds = %25
  %31 = ptrtoint ptr %26 to i64
  %32 = ptrtoint ptr %4 to i64
  %33 = sub i64 %31, %32
  %34 = lshr exact i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, ptr %16, align 8, !tbaa !67
  %36 = load ptr, ptr %1, align 8, !tbaa !53
  %37 = getelementptr inbounds ptr, ptr %36, i64 34
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %4, i32 noundef %35, i1 noundef zeroext false)
          to label %40 unwind label %41, !prof !71

40:                                               ; preds = %30
  store ptr %39, ptr %15, align 8, !tbaa !72
  br label %502

41:                                               ; preds = %43, %30, %6
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %503

43:                                               ; preds = %23
  %44 = add i64 %22, 1
  %45 = load ptr, ptr %1, align 8, !tbaa !53
  %46 = getelementptr inbounds ptr, ptr %45, i64 39
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %44)
          to label %49 unwind label %41

49:                                               ; preds = %43
  store ptr %48, ptr %13, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #17
  %50 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %52 unwind label %94

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #17
  %53 = load ptr, ptr %50, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %54 unwind label %96

54:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #17
  %55 = load ptr, ptr %50, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %56 unwind label %98

56:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #17
  %57 = load ptr, ptr %50, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %58 unwind label %100

58:                                               ; preds = %56
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 0, i32 1
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 0, i32 1
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 1
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 0, i32 1
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 1
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 1
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 1
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %8, i64 0, i32 1
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 1
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  %75 = getelementptr inbounds i16, ptr %12, i64 1
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  br label %78

78:                                               ; preds = %356, %58
  %79 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %80 unwind label %102

80:                                               ; preds = %78
  br i1 %79, label %81, label %357

81:                                               ; preds = %80
  %82 = load i32, ptr %59, align 8, !tbaa !76
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %106, label %84

84:                                               ; preds = %81
  %85 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %86 unwind label %102

86:                                               ; preds = %84
  %87 = load i32, ptr %59, align 8, !tbaa !76
  store i32 %87, ptr %60, align 8, !tbaa !76
  %88 = load i64, ptr %61, align 8, !tbaa !79
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i64, ptr %61, align 8, !tbaa !79
  %92 = sub i64 %91, %88
  store i64 %92, ptr %61, align 8, !tbaa !79
  br label %93

93:                                               ; preds = %90, %86
  store i32 0, ptr %59, align 8, !tbaa !76
  br label %107

94:                                               ; preds = %49
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %500

96:                                               ; preds = %52
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %485

98:                                               ; preds = %54
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %470

100:                                              ; preds = %56
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %455

102:                                              ; preds = %78, %106, %84, %344
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %440

104:                                              ; preds = %361
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %440

106:                                              ; preds = %81
  invoke void @_ZN11xalanc_1_103AVT9nextTokenERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorERNS_15StringTokenizerERNS_14XalanDOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %107 unwind label %102

107:                                              ; preds = %93, %106
  %108 = load i32, ptr %62, align 8, !tbaa !76
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %344

110:                                              ; preds = %107
  %111 = load ptr, ptr %65, align 8, !tbaa !80
  %112 = load i16, ptr %111, align 2, !tbaa !61
  switch i16 %112, label %342 [
    i16 123, label %117
    i16 125, label %290
  ]

113:                                              ; preds = %266, %172, %178, %180, %189, %255, %260
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %440

115:                                              ; preds = %117, %142, %273, %290, %118, %124, %126, %129, %291, %297, %299, %302, %342
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %440

117:                                              ; preds = %110
  invoke void @_ZN11xalanc_1_103AVT9nextTokenERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorERNS_15StringTokenizerERNS_14XalanDOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %118 unwind label %115

118:                                              ; preds = %117
  %119 = load i64, ptr %68, align 8, !tbaa !79
  %120 = icmp eq i64 %119, 0
  %121 = load ptr, ptr %69, align 8
  %122 = select i1 %120, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %121
  %123 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %122)
          to label %124 unwind label %115

124:                                              ; preds = %118
  %125 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_10L25theLeftCurlyBracketStringE)
          to label %126 unwind label %115

126:                                              ; preds = %124
  %127 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %122, i32 noundef %123, ptr noundef nonnull @_ZN11xalanc_1_10L25theLeftCurlyBracketStringE, i32 noundef %125)
          to label %128 unwind label %115

128:                                              ; preds = %126
  br i1 %127, label %129, label %139

129:                                              ; preds = %128
  %130 = load i64, ptr %68, align 8, !tbaa !79
  %131 = icmp eq i64 %130, 0
  %132 = load ptr, ptr %69, align 8
  %133 = select i1 %131, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %132
  %134 = load i32, ptr %59, align 8, !tbaa !76
  %135 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %133, i32 noundef %134)
          to label %136 unwind label %115

136:                                              ; preds = %129
  %137 = load i64, ptr %68, align 8, !tbaa !79
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %355, label %350

139:                                              ; preds = %128
  %140 = load i32, ptr %70, align 8, !tbaa !76
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %139
  %143 = load i64, ptr %71, align 8, !tbaa !79
  %144 = icmp eq i64 %143, 0
  %145 = load ptr, ptr %72, align 8
  %146 = select i1 %144, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %145
  %147 = load ptr, ptr %1, align 8, !tbaa !53
  %148 = getelementptr inbounds ptr, ptr %147, i64 36
  %149 = load ptr, ptr %148, align 8
  %150 = invoke noundef ptr %149(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %146, i32 noundef %140)
          to label %151 unwind label %115

151:                                              ; preds = %142
  %152 = load ptr, ptr %13, align 8, !tbaa !73
  %153 = load i64, ptr %14, align 8, !tbaa !81
  %154 = add i64 %153, 1
  store i64 %154, ptr %14, align 8, !tbaa !81
  %155 = getelementptr inbounds ptr, ptr %152, i64 %153
  store ptr %150, ptr %155, align 8, !tbaa !57
  %156 = load i64, ptr %71, align 8, !tbaa !79
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %151
  %159 = load i64, ptr %71, align 8, !tbaa !79
  %160 = sub i64 %159, %156
  store i64 %160, ptr %71, align 8, !tbaa !79
  br label %161

161:                                              ; preds = %158, %151
  store i32 0, ptr %70, align 8, !tbaa !76
  br label %162

162:                                              ; preds = %161, %139
  %163 = load i64, ptr %73, align 8, !tbaa !79
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i64, ptr %73, align 8, !tbaa !79
  %167 = sub i64 %166, %163
  store i64 %167, ptr %73, align 8, !tbaa !79
  br label %168

168:                                              ; preds = %165, %162
  store i32 0, ptr %74, align 8, !tbaa !76
  br label %169

169:                                              ; preds = %168, %266
  %170 = load i32, ptr %59, align 8, !tbaa !76
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %267, label %172

172:                                              ; preds = %169
  %173 = load i64, ptr %68, align 8, !tbaa !79
  %174 = icmp eq i64 %173, 0
  %175 = load ptr, ptr %69, align 8
  %176 = select i1 %174, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %175
  %177 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %176)
          to label %178 unwind label %113

178:                                              ; preds = %172
  %179 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_10L26theRightCurlyBracketStringE)
          to label %180 unwind label %113

180:                                              ; preds = %178
  %181 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %176, i32 noundef %177, ptr noundef nonnull @_ZN11xalanc_1_10L26theRightCurlyBracketStringE, i32 noundef %179)
          to label %182 unwind label %113

182:                                              ; preds = %180
  br i1 %181, label %267, label %183

183:                                              ; preds = %182
  %184 = load i32, ptr %59, align 8, !tbaa !76
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %260

186:                                              ; preds = %183
  %187 = load ptr, ptr %69, align 8
  %188 = load i16, ptr %187, align 2, !tbaa !61
  switch i16 %188, label %255 [
    i16 39, label %189
    i16 34, label %189
    i16 123, label %225
  ]

189:                                              ; preds = %186, %186
  %190 = load i64, ptr %68, align 8, !tbaa !79
  %191 = icmp eq i64 %190, 0
  %192 = select i1 %191, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %187
  %193 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull %192, i32 noundef %184)
          to label %194 unwind label %113

194:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  %195 = load ptr, ptr %69, align 8, !tbaa !80
  %196 = load i16, ptr %195, align 2, !tbaa !61
  store i16 %196, ptr %12, align 2, !tbaa !61
  store i16 0, ptr %75, align 2, !tbaa !61
  invoke void @_ZN11xalanc_1_103AVT9nextTokenERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorERNS_15StringTokenizerERNS_14XalanDOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %197 unwind label %218

197:                                              ; preds = %194, %215
  %198 = load i64, ptr %68, align 8, !tbaa !79
  %199 = icmp eq i64 %198, 0
  %200 = load ptr, ptr %69, align 8
  %201 = select i1 %199, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %200
  %202 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %201)
          to label %203 unwind label %216

203:                                              ; preds = %197
  %204 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %12)
          to label %205 unwind label %216

205:                                              ; preds = %203
  %206 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %201, i32 noundef %202, ptr noundef nonnull %12, i32 noundef %204)
          to label %207 unwind label %216

207:                                              ; preds = %205
  %208 = load i64, ptr %68, align 8, !tbaa !79
  %209 = icmp eq i64 %208, 0
  %210 = load ptr, ptr %69, align 8
  %211 = select i1 %209, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %210
  %212 = load i32, ptr %59, align 8, !tbaa !76
  br i1 %206, label %222, label %213

213:                                              ; preds = %207
  %214 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %211, i32 noundef %212)
          to label %215 unwind label %216

215:                                              ; preds = %213
  invoke void @_ZN11xalanc_1_103AVT9nextTokenERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorERNS_15StringTokenizerERNS_14XalanDOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %197 unwind label %216, !llvm.loop !82

216:                                              ; preds = %215, %197, %203, %205, %213
  %217 = landingpad { ptr, i32 }
          cleanup
  br label %220

218:                                              ; preds = %194, %222
  %219 = landingpad { ptr, i32 }
          cleanup
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi { ptr, i32 } [ %217, %216 ], [ %219, %218 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  br label %440

222:                                              ; preds = %207
  %223 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %211, i32 noundef %212)
          to label %224 unwind label %218

224:                                              ; preds = %222
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  br label %266

225:                                              ; preds = %186
  %226 = load ptr, ptr %1, align 8, !tbaa !53
  %227 = getelementptr inbounds ptr, ptr %226, i64 5
  %228 = load ptr, ptr %227, align 8
  %229 = invoke noundef nonnull align 8 dereferenceable(36) ptr %228(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %230 unwind label %244

230:                                              ; preds = %225
  %231 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %229, i32 noundef 56)
          to label %232 unwind label %246

232:                                              ; preds = %230
  %233 = load ptr, ptr %1, align 8, !tbaa !53
  %234 = getelementptr inbounds ptr, ptr %233, i64 7
  %235 = load ptr, ptr %234, align 8
  invoke void %235(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %231, ptr noundef null, ptr noundef %2)
          to label %236 unwind label %246

236:                                              ; preds = %232
  %237 = load ptr, ptr %1, align 8, !tbaa !53
  %238 = getelementptr inbounds ptr, ptr %237, i64 6
  %239 = load ptr, ptr %238, align 8
  %240 = invoke noundef zeroext i1 %239(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %229)
          to label %266 unwind label %241

241:                                              ; preds = %236
  %242 = landingpad { ptr, i32 }
          catch ptr null
  %243 = extractvalue { ptr, i32 } %242, 0
  call void @__clang_call_terminate(ptr %243) #18
  unreachable

244:                                              ; preds = %225
  %245 = landingpad { ptr, i32 }
          cleanup
  br label %440

246:                                              ; preds = %232, %230
  %247 = landingpad { ptr, i32 }
          cleanup
  %248 = load ptr, ptr %1, align 8, !tbaa !53
  %249 = getelementptr inbounds ptr, ptr %248, i64 6
  %250 = load ptr, ptr %249, align 8
  %251 = invoke noundef zeroext i1 %250(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %229)
          to label %440 unwind label %252

252:                                              ; preds = %246
  %253 = landingpad { ptr, i32 }
          catch ptr null
  %254 = extractvalue { ptr, i32 } %253, 0
  call void @__clang_call_terminate(ptr %254) #18
  unreachable

255:                                              ; preds = %186
  %256 = load i64, ptr %68, align 8, !tbaa !79
  %257 = icmp eq i64 %256, 0
  %258 = select i1 %257, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %187
  %259 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull %258, i32 noundef %184)
          to label %266 unwind label %113

260:                                              ; preds = %183
  %261 = load i64, ptr %68, align 8, !tbaa !79
  %262 = icmp eq i64 %261, 0
  %263 = load ptr, ptr %69, align 8
  %264 = select i1 %262, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %263
  %265 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %264, i32 noundef %184)
          to label %266 unwind label %113

266:                                              ; preds = %260, %255, %236, %224
  invoke void @_ZN11xalanc_1_103AVT9nextTokenERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorERNS_15StringTokenizerERNS_14XalanDOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %169 unwind label %113, !llvm.loop !83

267:                                              ; preds = %169, %182
  %268 = load i64, ptr %76, align 8, !tbaa !79
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %267
  %271 = load i64, ptr %76, align 8, !tbaa !79
  %272 = sub i64 %271, %268
  store i64 %272, ptr %76, align 8, !tbaa !79
  br label %273

273:                                              ; preds = %270, %267
  store i32 0, ptr %70, align 8, !tbaa !76
  %274 = load i64, ptr %73, align 8, !tbaa !79
  %275 = icmp eq i64 %274, 0
  %276 = load ptr, ptr %77, align 8
  %277 = select i1 %275, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %276
  %278 = load i32, ptr %74, align 8, !tbaa !76
  %279 = load ptr, ptr %1, align 8, !tbaa !53
  %280 = getelementptr inbounds ptr, ptr %279, i64 37
  %281 = load ptr, ptr %280, align 8
  %282 = invoke noundef ptr %281(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %277, i32 noundef %278, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %283 unwind label %115

283:                                              ; preds = %273
  %284 = load ptr, ptr %13, align 8, !tbaa !73
  %285 = load i64, ptr %14, align 8, !tbaa !81
  %286 = add i64 %285, 1
  store i64 %286, ptr %14, align 8, !tbaa !81
  %287 = getelementptr inbounds ptr, ptr %284, i64 %285
  store ptr %282, ptr %287, align 8, !tbaa !57
  %288 = load i64, ptr %68, align 8, !tbaa !79
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %355, label %350

290:                                              ; preds = %110
  invoke void @_ZN11xalanc_1_103AVT9nextTokenERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorERNS_15StringTokenizerERNS_14XalanDOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %291 unwind label %115

291:                                              ; preds = %290
  %292 = load i64, ptr %66, align 8, !tbaa !79
  %293 = icmp eq i64 %292, 0
  %294 = load ptr, ptr %67, align 8
  %295 = select i1 %293, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %294
  %296 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %295)
          to label %297 unwind label %115

297:                                              ; preds = %291
  %298 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_10L26theRightCurlyBracketStringE)
          to label %299 unwind label %115

299:                                              ; preds = %297
  %300 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %295, i32 noundef %296, ptr noundef nonnull @_ZN11xalanc_1_10L26theRightCurlyBracketStringE, i32 noundef %298)
          to label %301 unwind label %115

301:                                              ; preds = %299
  br i1 %300, label %302, label %312

302:                                              ; preds = %301
  %303 = load i64, ptr %66, align 8, !tbaa !79
  %304 = icmp eq i64 %303, 0
  %305 = load ptr, ptr %67, align 8
  %306 = select i1 %304, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %305
  %307 = load i32, ptr %59, align 8, !tbaa !76
  %308 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %306, i32 noundef %307)
          to label %309 unwind label %115

309:                                              ; preds = %302
  %310 = load i64, ptr %66, align 8, !tbaa !79
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %355, label %350

312:                                              ; preds = %301
  %313 = load ptr, ptr %1, align 8, !tbaa !53
  %314 = getelementptr inbounds ptr, ptr %313, i64 5
  %315 = load ptr, ptr %314, align 8
  %316 = invoke noundef nonnull align 8 dereferenceable(36) ptr %315(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %317 unwind label %331

317:                                              ; preds = %312
  %318 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %316, i32 noundef 132)
          to label %319 unwind label %333

319:                                              ; preds = %317
  %320 = load ptr, ptr %1, align 8, !tbaa !53
  %321 = getelementptr inbounds ptr, ptr %320, i64 7
  %322 = load ptr, ptr %321, align 8
  invoke void %322(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %318, ptr noundef null, ptr noundef %2)
          to label %323 unwind label %333

323:                                              ; preds = %319
  %324 = load ptr, ptr %1, align 8, !tbaa !53
  %325 = getelementptr inbounds ptr, ptr %324, i64 6
  %326 = load ptr, ptr %325, align 8
  %327 = invoke noundef zeroext i1 %326(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %316)
          to label %356 unwind label %328

328:                                              ; preds = %323
  %329 = landingpad { ptr, i32 }
          catch ptr null
  %330 = extractvalue { ptr, i32 } %329, 0
  call void @__clang_call_terminate(ptr %330) #18
  unreachable

331:                                              ; preds = %312
  %332 = landingpad { ptr, i32 }
          cleanup
  br label %440

333:                                              ; preds = %319, %317
  %334 = landingpad { ptr, i32 }
          cleanup
  %335 = load ptr, ptr %1, align 8, !tbaa !53
  %336 = getelementptr inbounds ptr, ptr %335, i64 6
  %337 = load ptr, ptr %336, align 8
  %338 = invoke noundef zeroext i1 %337(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %316)
          to label %440 unwind label %339

339:                                              ; preds = %333
  %340 = landingpad { ptr, i32 }
          catch ptr null
  %341 = extractvalue { ptr, i32 } %340, 0
  call void @__clang_call_terminate(ptr %341) #18
  unreachable

342:                                              ; preds = %110
  %343 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef 1, i16 noundef zeroext %112)
          to label %356 unwind label %115

344:                                              ; preds = %107
  %345 = load i64, ptr %63, align 8, !tbaa !79
  %346 = icmp eq i64 %345, 0
  %347 = load ptr, ptr %64, align 8
  %348 = select i1 %346, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %347
  %349 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %348, i32 noundef %108)
          to label %356 unwind label %102

350:                                              ; preds = %309, %283, %136
  %351 = phi ptr [ %68, %136 ], [ %68, %283 ], [ %66, %309 ]
  %352 = phi i64 [ %137, %136 ], [ %288, %283 ], [ %310, %309 ]
  %353 = load i64, ptr %351, align 8, !tbaa !79
  %354 = sub i64 %353, %352
  store i64 %354, ptr %351, align 8, !tbaa !79
  br label %355

355:                                              ; preds = %350, %309, %283, %136
  store i32 0, ptr %59, align 8, !tbaa !76
  br label %356

356:                                              ; preds = %355, %344, %342, %323
  br label %78, !llvm.loop !84

357:                                              ; preds = %80
  %358 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %8, i64 0, i32 1
  %359 = load i32, ptr %358, align 8, !tbaa !76
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %383, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %363 = load i64, ptr %362, align 8, !tbaa !79
  %364 = icmp eq i64 %363, 0
  %365 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %366 = load ptr, ptr %365, align 8
  %367 = select i1 %364, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %366
  %368 = load ptr, ptr %1, align 8, !tbaa !53
  %369 = getelementptr inbounds ptr, ptr %368, i64 36
  %370 = load ptr, ptr %369, align 8
  %371 = invoke noundef ptr %370(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %367, i32 noundef %359)
          to label %372 unwind label %104

372:                                              ; preds = %361
  %373 = load ptr, ptr %13, align 8, !tbaa !73
  %374 = load i64, ptr %14, align 8, !tbaa !81
  %375 = add i64 %374, 1
  store i64 %375, ptr %14, align 8, !tbaa !81
  %376 = getelementptr inbounds ptr, ptr %373, i64 %374
  store ptr %371, ptr %376, align 8, !tbaa !57
  %377 = load i64, ptr %362, align 8, !tbaa !79
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %372
  %380 = load i64, ptr %362, align 8, !tbaa !79
  %381 = sub i64 %380, %377
  store i64 %381, ptr %362, align 8, !tbaa !79
  br label %382

382:                                              ; preds = %379, %372
  store i32 0, ptr %358, align 8, !tbaa !76
  br label %383

383:                                              ; preds = %382, %357
  %384 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %385 = load i64, ptr %384, align 8, !tbaa !85
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %397, label %387

387:                                              ; preds = %383
  %388 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %389 = load ptr, ptr %388, align 8, !tbaa !80
  %390 = load ptr, ptr %11, align 8, !tbaa !86
  %391 = load ptr, ptr %390, align 8, !tbaa !53
  %392 = getelementptr inbounds ptr, ptr %391, i64 3
  %393 = load ptr, ptr %392, align 8
  invoke void %393(ptr noundef nonnull align 8 dereferenceable(8) %390, ptr noundef %389)
          to label %397 unwind label %394

394:                                              ; preds = %387
  %395 = landingpad { ptr, i32 }
          catch ptr null
  %396 = extractvalue { ptr, i32 } %395, 0
  call void @__clang_call_terminate(ptr %396) #18
  unreachable

397:                                              ; preds = %383, %387
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #17
  %398 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %399 = load i64, ptr %398, align 8, !tbaa !85
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %411, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %403 = load ptr, ptr %402, align 8, !tbaa !80
  %404 = load ptr, ptr %10, align 8, !tbaa !86
  %405 = load ptr, ptr %404, align 8, !tbaa !53
  %406 = getelementptr inbounds ptr, ptr %405, i64 3
  %407 = load ptr, ptr %406, align 8
  invoke void %407(ptr noundef nonnull align 8 dereferenceable(8) %404, ptr noundef %403)
          to label %411 unwind label %408

408:                                              ; preds = %401
  %409 = landingpad { ptr, i32 }
          catch ptr null
  %410 = extractvalue { ptr, i32 } %409, 0
  call void @__clang_call_terminate(ptr %410) #18
  unreachable

411:                                              ; preds = %397, %401
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #17
  %412 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %413 = load i64, ptr %412, align 8, !tbaa !85
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %425, label %415

415:                                              ; preds = %411
  %416 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %417 = load ptr, ptr %416, align 8, !tbaa !80
  %418 = load ptr, ptr %9, align 8, !tbaa !86
  %419 = load ptr, ptr %418, align 8, !tbaa !53
  %420 = getelementptr inbounds ptr, ptr %419, i64 3
  %421 = load ptr, ptr %420, align 8
  invoke void %421(ptr noundef nonnull align 8 dereferenceable(8) %418, ptr noundef %417)
          to label %425 unwind label %422

422:                                              ; preds = %415
  %423 = landingpad { ptr, i32 }
          catch ptr null
  %424 = extractvalue { ptr, i32 } %423, 0
  call void @__clang_call_terminate(ptr %424) #18
  unreachable

425:                                              ; preds = %411, %415
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #17
  %426 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %427 = load i64, ptr %426, align 8, !tbaa !85
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %439, label %429

429:                                              ; preds = %425
  %430 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %431 = load ptr, ptr %430, align 8, !tbaa !80
  %432 = load ptr, ptr %8, align 8, !tbaa !86
  %433 = load ptr, ptr %432, align 8, !tbaa !53
  %434 = getelementptr inbounds ptr, ptr %433, i64 3
  %435 = load ptr, ptr %434, align 8
  invoke void %435(ptr noundef nonnull align 8 dereferenceable(8) %432, ptr noundef %431)
          to label %439 unwind label %436

436:                                              ; preds = %429
  %437 = landingpad { ptr, i32 }
          catch ptr null
  %438 = extractvalue { ptr, i32 } %437, 0
  call void @__clang_call_terminate(ptr %438) #18
  unreachable

439:                                              ; preds = %425, %429
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  br label %502

440:                                              ; preds = %113, %115, %102, %104, %333, %331, %244, %246, %220
  %441 = phi { ptr, i32 } [ %221, %220 ], [ %245, %244 ], [ %247, %246 ], [ %332, %331 ], [ %334, %333 ], [ %103, %102 ], [ %105, %104 ], [ %114, %113 ], [ %116, %115 ]
  %442 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %443 = load i64, ptr %442, align 8, !tbaa !85
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %455, label %445

445:                                              ; preds = %440
  %446 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %447 = load ptr, ptr %446, align 8, !tbaa !80
  %448 = load ptr, ptr %11, align 8, !tbaa !86
  %449 = load ptr, ptr %448, align 8, !tbaa !53
  %450 = getelementptr inbounds ptr, ptr %449, i64 3
  %451 = load ptr, ptr %450, align 8
  invoke void %451(ptr noundef nonnull align 8 dereferenceable(8) %448, ptr noundef %447)
          to label %455 unwind label %452

452:                                              ; preds = %445
  %453 = landingpad { ptr, i32 }
          catch ptr null
  %454 = extractvalue { ptr, i32 } %453, 0
  call void @__clang_call_terminate(ptr %454) #18
  unreachable

455:                                              ; preds = %445, %440, %100
  %456 = phi { ptr, i32 } [ %101, %100 ], [ %441, %440 ], [ %441, %445 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #17
  %457 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %458 = load i64, ptr %457, align 8, !tbaa !85
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %470, label %460

460:                                              ; preds = %455
  %461 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %462 = load ptr, ptr %461, align 8, !tbaa !80
  %463 = load ptr, ptr %10, align 8, !tbaa !86
  %464 = load ptr, ptr %463, align 8, !tbaa !53
  %465 = getelementptr inbounds ptr, ptr %464, i64 3
  %466 = load ptr, ptr %465, align 8
  invoke void %466(ptr noundef nonnull align 8 dereferenceable(8) %463, ptr noundef %462)
          to label %470 unwind label %467

467:                                              ; preds = %460
  %468 = landingpad { ptr, i32 }
          catch ptr null
  %469 = extractvalue { ptr, i32 } %468, 0
  call void @__clang_call_terminate(ptr %469) #18
  unreachable

470:                                              ; preds = %460, %455, %98
  %471 = phi { ptr, i32 } [ %99, %98 ], [ %456, %455 ], [ %456, %460 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #17
  %472 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %473 = load i64, ptr %472, align 8, !tbaa !85
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %485, label %475

475:                                              ; preds = %470
  %476 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %477 = load ptr, ptr %476, align 8, !tbaa !80
  %478 = load ptr, ptr %9, align 8, !tbaa !86
  %479 = load ptr, ptr %478, align 8, !tbaa !53
  %480 = getelementptr inbounds ptr, ptr %479, i64 3
  %481 = load ptr, ptr %480, align 8
  invoke void %481(ptr noundef nonnull align 8 dereferenceable(8) %478, ptr noundef %477)
          to label %485 unwind label %482

482:                                              ; preds = %475
  %483 = landingpad { ptr, i32 }
          catch ptr null
  %484 = extractvalue { ptr, i32 } %483, 0
  call void @__clang_call_terminate(ptr %484) #18
  unreachable

485:                                              ; preds = %475, %470, %96
  %486 = phi { ptr, i32 } [ %97, %96 ], [ %471, %470 ], [ %471, %475 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #17
  %487 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %488 = load i64, ptr %487, align 8, !tbaa !85
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %500, label %490

490:                                              ; preds = %485
  %491 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %492 = load ptr, ptr %491, align 8, !tbaa !80
  %493 = load ptr, ptr %8, align 8, !tbaa !86
  %494 = load ptr, ptr %493, align 8, !tbaa !53
  %495 = getelementptr inbounds ptr, ptr %494, i64 3
  %496 = load ptr, ptr %495, align 8
  invoke void %496(ptr noundef nonnull align 8 dereferenceable(8) %493, ptr noundef %492)
          to label %500 unwind label %497

497:                                              ; preds = %490
  %498 = landingpad { ptr, i32 }
          catch ptr null
  %499 = extractvalue { ptr, i32 } %498, 0
  call void @__clang_call_terminate(ptr %499) #18
  unreachable

500:                                              ; preds = %490, %485, %94
  %501 = phi { ptr, i32 } [ %95, %94 ], [ %486, %485 ], [ %486, %490 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #17
  br label %503

502:                                              ; preds = %439, %40
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #17
  ret void

503:                                              ; preds = %500, %41
  %504 = phi { ptr, i32 } [ %42, %41 ], [ %501, %500 ]
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #17
  resume { ptr, i32 } %504
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1015StringTokenizerC1EPKtS2_b(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare noundef i64 @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_103AVT9nextTokenERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorERNS_15StringTokenizerERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  br i1 %6, label %35, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %1, align 8, !tbaa !53
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %11, i32 noundef 57)
          to label %13 unwind label %25

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 8, !tbaa !53
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef null, ptr noundef %2)
          to label %17 unwind label %25

17:                                               ; preds = %13
  %18 = load ptr, ptr %1, align 8, !tbaa !53
  %19 = getelementptr inbounds ptr, ptr %18, i64 6
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %36 unwind label %22

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %13, %7
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = load ptr, ptr %1, align 8, !tbaa !53
  %28 = getelementptr inbounds ptr, ptr %27, i64 6
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %25
  resume { ptr, i32 } %26

35:                                               ; preds = %5
  tail call void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(36) %4)
  br label %36

36:                                               ; preds = %17, %35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_103AVTD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !52 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_103AVTD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !prof !51 {
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 align 2 !prof !51 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %19, %11 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !73
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %19 = add nuw i64 %12, 1
  %20 = load i64, ptr %6, align 8, !tbaa !81
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %11, label %22, !llvm.loop !87

22:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_103AVT10doEvaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 align 2 !prof !51 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %0, i64 0, i32 1
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %18, %10 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !73
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %18 = add nuw i64 %11, 1
  %19 = load i64, ptr %5, align 8, !tbaa !81
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %10, label %21, !llvm.loop !88

21:                                               ; preds = %10, %4
  ret void
}

declare void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !85
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !90

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = load ptr, ptr %0, align 8, !tbaa !86
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !91

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !51 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !93

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !79
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !94

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !86
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !86
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !79
  %16 = load i64, ptr %6, align 8, !tbaa !85
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !80
  %19 = load ptr, ptr %3, align 8, !tbaa !86
  store ptr %19, ptr %0, align 8, !tbaa !86
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !79
  store i64 %21, ptr %14, align 8, !tbaa !79
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !85
  store i64 %23, ptr %6, align 8, !tbaa !85
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  store ptr %25, ptr %17, align 8, !tbaa !80
  store ptr %13, ptr %3, align 8, !tbaa !86
  store i64 %15, ptr %20, align 8, !tbaa !79
  store i64 %16, ptr %22, align 8, !tbaa !85
  store ptr %18, ptr %24, align 8, !tbaa !80
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !95

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !53
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !96

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !79
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !97

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !98

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !80
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !79
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !79
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !80
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !99

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !100
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !86
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !79
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !102

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !86
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !79
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !85
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !53
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !103
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !80
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = load i64, ptr %9, align 8, !tbaa !79
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !104

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !86
  %28 = load i64, ptr %6, align 8, !tbaa !79
  %29 = load i64, ptr %7, align 8, !tbaa !85
  %30 = load ptr, ptr %8, align 8, !tbaa !80
  %31 = load ptr, ptr %5, align 8, !tbaa !86
  store ptr %31, ptr %0, align 8, !tbaa !86
  %32 = load i64, ptr %14, align 8, !tbaa !79
  store i64 %32, ptr %6, align 8, !tbaa !79
  %33 = load i64, ptr %15, align 8, !tbaa !85
  store i64 %33, ptr %7, align 8, !tbaa !85
  %34 = load ptr, ptr %21, align 8, !tbaa !80
  store ptr %34, ptr %8, align 8, !tbaa !80
  store ptr %27, ptr %5, align 8, !tbaa !86
  store i64 %28, ptr %14, align 8, !tbaa !79
  store i64 %29, ptr %15, align 8, !tbaa !85
  store ptr %30, ptr %21, align 8, !tbaa !80
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !104

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !53
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !85
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !80
  %50 = load ptr, ptr %5, align 8, !tbaa !86
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !105

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !53
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !106
  store ptr %65, ptr %8, align 8, !tbaa !80
  store i64 %3, ptr %7, align 8, !tbaa !85
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !108

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !79
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !85
  br i1 %18, label %21, label %39, !prof !109

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !110

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !111

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !80
  %28 = load i64, ptr %12, align 8, !tbaa !79
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !61
  store i16 %34, ptr %32, align 2, !tbaa !61
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !112, !llvm.loop !113

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !114

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !86
  store ptr %42, ptr %5, align 8, !tbaa !86
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !79
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !85
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !53
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !115
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !80
  %51 = load i64, ptr %43, align 8, !tbaa !79
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !80
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !116

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !80
  %56 = load i64, ptr %43, align 8, !tbaa !79
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !116

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !80
  %60 = load i64, ptr %43, align 8, !tbaa !79
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !80
  %63 = load i64, ptr %12, align 8, !tbaa !79
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !116

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !86
  %67 = load i64, ptr %12, align 8, !tbaa !79
  %68 = load i64, ptr %19, align 8, !tbaa !85
  %69 = load ptr, ptr %15, align 8, !tbaa !80
  %70 = load ptr, ptr %5, align 8, !tbaa !86
  store ptr %70, ptr %0, align 8, !tbaa !86
  %71 = load i64, ptr %43, align 8, !tbaa !79
  store i64 %71, ptr %12, align 8, !tbaa !79
  %72 = load i64, ptr %44, align 8, !tbaa !85
  store i64 %72, ptr %19, align 8, !tbaa !85
  %73 = load ptr, ptr %50, align 8, !tbaa !80
  store ptr %73, ptr %15, align 8, !tbaa !80
  store ptr %66, ptr %5, align 8, !tbaa !86
  store i64 %67, ptr %43, align 8, !tbaa !79
  store i64 %68, ptr %44, align 8, !tbaa !85
  store ptr %69, ptr %50, align 8, !tbaa !80
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !117

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !53
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !118

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !85
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !80
  %89 = load ptr, ptr %5, align 8, !tbaa !86
  %90 = load ptr, ptr %89, align 8, !tbaa !53
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !119

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !120

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !120

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !121, !llvm.loop !122

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !123, !llvm.loop !124

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !125
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
  br i1 %123, label %124, label %120, !llvm.loop !126

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
  store i64 %36, ptr %12, align 8, !tbaa !79
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !85
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !128

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !61
  store i16 %13, ptr %12, align 2, !tbaa !61
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !79
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !86
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !86
  %24 = load i64, ptr %4, align 8, !tbaa !79
  %25 = load i64, ptr %6, align 8, !tbaa !85
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = load ptr, ptr %3, align 8, !tbaa !86
  store ptr %28, ptr %0, align 8, !tbaa !86
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !79
  store i64 %30, ptr %4, align 8, !tbaa !79
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !85
  store i64 %32, ptr %6, align 8, !tbaa !85
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !80
  store ptr %34, ptr %26, align 8, !tbaa !80
  store ptr %23, ptr %3, align 8, !tbaa !86
  store i64 %24, ptr %29, align 8, !tbaa !79
  store i64 %25, ptr %31, align 8, !tbaa !85
  store ptr %27, ptr %33, align 8, !tbaa !80
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !53
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !85
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !80
  %52 = load ptr, ptr %3, align 8, !tbaa !86
  %53 = load ptr, ptr %52, align 8, !tbaa !53
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !86
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !79
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !102

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !86
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !79
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !85
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !53
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !130
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !80
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = load i64, ptr %5, align 8, !tbaa !79
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !104

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !86
  %24 = load i64, ptr %10, align 8, !tbaa !79
  %25 = load i64, ptr %11, align 8, !tbaa !85
  %26 = load ptr, ptr %17, align 8, !tbaa !80
  store ptr %4, ptr %3, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !85
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !80
  %33 = load ptr, ptr %3, align 8, !tbaa !86
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #18
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !105

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !53
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !131
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !86
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !85
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !80
  store ptr %53, ptr %0, align 8, !tbaa !86
  store i64 %52, ptr %5, align 8, !tbaa !79
  store i64 %51, ptr %55, align 8, !tbaa !85
  store ptr %50, ptr %57, align 8, !tbaa !80
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !132

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !53
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !133

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #18
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEjt(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_AVT.cpp() #14 section ".text.startup" !prof !134 !PGOFuncName !135 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_103AVT13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_103AVT13s_emptyStringE, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @_ZN11xalanc_1_103AVTC2ERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1015StringTokenizerC1EPKtS2_b, i64 48}
!36 = !{ptr @_ZN11xalanc_1_103AVTC2ERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE, ptr @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv, i64 48}
!37 = !{ptr @_ZN11xalanc_1_103AVTC2ERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1015StringTokenizerD1Ev, i64 48}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!47 = !{ptr @_GLOBAL__sub_I_AVT.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!48 = !{ptr @_GLOBAL__sub_I_AVT.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!49 = !{ptr @_GLOBAL__sub_I_AVT.cpp, ptr @__cxa_atexit, i64 1}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!"function_entry_count", i64 48}
!53 = !{!54, !54, i64 0}
!54 = !{!"vtable pointer", !55, i64 0}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!"VP", i32 0, i64 48, i64 -5842568502186695876, i64 48}
!57 = !{!58, !58, i64 0}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !55, i64 0}
!60 = !{!"branch_weights", i32 48, i32 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !59, i64 0}
!63 = !{!"branch_weights", i32 48, i32 245}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!68, !70, i64 32}
!68 = !{!"_ZTSN11xalanc_1_103AVTE", !58, i64 8, !69, i64 16, !58, i64 24, !70, i64 32, !58, i64 40}
!69 = !{!"long", !59, i64 0}
!70 = !{!"int", !59, i64 0}
!71 = !{!"VP", i32 0, i64 48, i64 -350309993826949813, i64 48}
!72 = !{!68, !58, i64 24}
!73 = !{!68, !58, i64 8}
!74 = !{!75, !58, i64 8}
!75 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !58, i64 8}
!76 = !{!77, !70, i64 32}
!77 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !78, i64 0, !70, i64 32}
!78 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !58, i64 0, !69, i64 8, !69, i64 16, !58, i64 24}
!79 = !{!78, !69, i64 8}
!80 = !{!78, !58, i64 24}
!81 = !{!68, !69, i64 16}
!82 = distinct !{!82, !65, !66}
!83 = distinct !{!83, !65, !66}
!84 = distinct !{!84, !65, !66}
!85 = !{!78, !69, i64 16}
!86 = !{!78, !58, i64 0}
!87 = distinct !{!87, !65, !66}
!88 = distinct !{!88, !65, !66}
!89 = !{!"function_entry_count", i64 42470003}
!90 = !{!"branch_weights", i32 52000, i32 42418003}
!91 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!92 = !{!"function_entry_count", i64 41614}
!93 = !{!"branch_weights", i32 0, i32 41614}
!94 = !{!"branch_weights", i32 12, i32 41602}
!95 = !{!"branch_weights", i32 5, i32 7}
!96 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!97 = !{!"branch_weights", i32 354, i32 41248}
!98 = !{!"branch_weights", i32 40889, i32 359}
!99 = !{!"branch_weights", i32 40581, i32 1021}
!100 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!101 = !{!"function_entry_count", i64 22}
!102 = !{!"branch_weights", i32 64551590, i32 18}
!103 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!104 = !{!"branch_weights", i32 18, i32 0}
!105 = !{!"branch_weights", i32 4, i32 64551586}
!106 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!107 = !{!"function_entry_count", i64 155828046}
!108 = !{!"branch_weights", i32 0, i32 155828046}
!109 = !{!"branch_weights", i32 133170777, i32 22657269}
!110 = !{!"branch_weights", i32 20, i32 133170757}
!111 = !{!"branch_weights", i32 1, i32 19024395}
!112 = !{!"branch_weights", i32 19024395, i32 -26420601}
!113 = distinct !{!113, !65, !66}
!114 = !{!"branch_weights", i32 20748786, i32 1908483}
!115 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!116 = !{!"branch_weights", i32 20748786, i32 0}
!117 = !{!"branch_weights", i32 0, i32 20748786}
!118 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!119 = !{!"branch_weights", i32 0, i32 1908483}
!120 = !{!"branch_weights", i32 1, i32 1908482}
!121 = !{!"branch_weights", i32 1908482, i32 49797853}
!122 = distinct !{!122, !65, !66}
!123 = !{!"branch_weights", i32 1908482, i32 1}
!124 = distinct !{!124, !65, !66}
!125 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!126 = distinct !{!126, !65, !66}
!127 = !{!"function_entry_count", i64 124150652}
!128 = !{!"branch_weights", i32 124150652, i32 0}
!129 = !{!"function_entry_count", i64 64551586}
!130 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!131 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!132 = !{!"branch_weights", i32 42418193, i32 22133393}
!133 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!134 = !{!"function_entry_count", i64 1}
!135 = !{!"AVT.cpp;_GLOBAL__sub_I_AVT.cpp"}
