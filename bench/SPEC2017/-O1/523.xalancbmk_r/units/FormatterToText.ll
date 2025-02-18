; ModuleID = 'FormatterToText.cpp'
source_filename = "FormatterToText.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::FormatterToText" = type <{ %"class.xalanc_1_10::FormatterListener", ptr, i16, [6 x i8], %"class.xalanc_1_10::XalanDOMString", i8, i8, i8, [5 x i8], ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanOutputStream" = type { ptr, i32, ptr, i32, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1015FormatterToText9getWriterEv = comdat any

$_ZNK11xalanc_1_1015FormatterToText11getEncodingEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

@_ZTVN11xalanc_1_1015FormatterToTextE = dso_local unnamed_addr constant { [23 x ptr] } { [23 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015FormatterToTextE, ptr @_ZN11xalanc_1_1015FormatterToTextD2Ev, ptr @_ZN11xalanc_1_1015FormatterToTextD0Ev, ptr @_ZN11xalanc_1_1015FormatterToText10charactersEPKtj, ptr @_ZN11xalanc_1_1015FormatterToText11endDocumentEv, ptr @_ZN11xalanc_1_1015FormatterToText10endElementEPKt, ptr @_ZN11xalanc_1_1015FormatterToText19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1015FormatterToText21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1015FormatterToText13resetDocumentEv, ptr @_ZN11xalanc_1_1015FormatterToText18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1015FormatterToText13startDocumentEv, ptr @_ZN11xalanc_1_1015FormatterToText12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1015FormatterToText13charactersRawEPKtj, ptr @_ZN11xalanc_1_1015FormatterToText7commentEPKt, ptr @_ZN11xalanc_1_1015FormatterToText5cdataEPKtj, ptr @_ZN11xalanc_1_1015FormatterToText15entityReferenceEPKt, ptr @_ZNK11xalanc_1_1015FormatterToText9getWriterEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv, ptr @_ZNK11xalanc_1_1015FormatterToText11getEncodingEv, ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv, ptr @_ZNK11xalanc_1_1017FormatterListener9getIndentEv] }, align 8
@_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE = external constant [0 x i16], align 2
@_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015FormatterToTextE = dso_local constant [33 x i8] c"N11xalanc_1_1015FormatterToTextE\00", align 1
@_ZTIN11xalanc_1_1017FormatterListenerE = external constant ptr
@_ZTIN11xalanc_1_1015FormatterToTextE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015FormatterToTextE, ptr @_ZTIN11xalanc_1_1017FormatterListenerE }, align 8
@_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE = external constant [0 x i16], align 2

@_ZN11xalanc_1_1015FormatterToTextC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1015FormatterToTextC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015FormatterToTextC1ERNS_6WriterEbbRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i1, i1, ptr), ptr @_ZN11xalanc_1_1015FormatterToTextC2ERNS_6WriterEbbRN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015FormatterToTextC1ERNS_6WriterERKNS_14XalanDOMStringEbbRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1, i1, ptr), ptr @_ZN11xalanc_1_1015FormatterToTextC2ERNS_6WriterERKNS_14XalanDOMStringEbbRN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015FormatterToTextD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015FormatterToTextD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToTextC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 3)
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1015FormatterToTextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 2
  store i16 -1, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %12, !prof !69

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 5
  store i8 0, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 6
  store i8 1, ptr %8, align 1, !tbaa !71
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 7
  store i8 1, ptr %9, align 2, !tbaa !72
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 9
  store ptr null, ptr %10, align 8, !tbaa !73
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 10
  store i32 0, ptr %11, align 8, !tbaa !74
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  resume { ptr, i32 } %13
}

declare void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToTextC2ERNS_6WriterEbbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 3)
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1015FormatterToTextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 2
  store i16 -1, ptr %7, align 8, !tbaa !68
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %9 unwind label %18

9:                                                ; preds = %5
  %10 = zext i1 %3 to i8
  %11 = zext i1 %2 to i8
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 5
  store i8 0, ptr %12, align 8, !tbaa !70
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 6
  store i8 %11, ptr %13, align 1, !tbaa !71
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 7
  store i8 %10, ptr %14, align 2, !tbaa !72
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 9
  store ptr null, ptr %15, align 8, !tbaa !73
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 10
  store i32 0, ptr %16, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1015FormatterToText6updateEb(ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext true)
          to label %17 unwind label %20

17:                                               ; preds = %9
  ret void

18:                                               ; preds = %5
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %9
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  resume { ptr, i32 } %23
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText6updateEb(ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5), !prof !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %26, !prof !69

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 9
  store ptr @_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE, ptr %12, align 8, !tbaa !73
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ @_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE, %11 ], [ %17, %13 ]
  %15 = load i16, ptr %14, align 2, !tbaa !77
  %16 = icmp eq i16 %15, 0
  %17 = getelementptr inbounds i16, ptr %14, i64 1
  br i1 %16, label %18, label %13, !prof !78, !llvm.loop !79

18:                                               ; preds = %13
  %19 = ptrtoint ptr %14 to i64
  %20 = sub i64 %19, ptrtoint (ptr @_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE to i64)
  %21 = lshr exact i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 10
  store i32 %22, ptr %23, align 8, !tbaa !74
  br i1 %1, label %105, label %24, !prof !82

24:                                               ; preds = %18
  %25 = tail call noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueEv()
  br label %102

26:                                               ; preds = %2
  %27 = load ptr, ptr %9, align 8, !tbaa !51
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(144) %9)
  %31 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 9
  store ptr %30, ptr %31, align 8, !tbaa !73
  br label %32

32:                                               ; preds = %32, %26
  %33 = phi ptr [ %30, %26 ], [ %36, %32 ]
  %34 = load i16, ptr %33, align 2, !tbaa !77
  %35 = icmp eq i16 %34, 0
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  br i1 %35, label %37, label %32, !llvm.loop !79

37:                                               ; preds = %32
  %38 = ptrtoint ptr %33 to i64
  %39 = ptrtoint ptr %30 to i64
  %40 = sub i64 %38, %39
  %41 = lshr exact i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 10
  store i32 %42, ptr %43, align 8, !tbaa !74
  br i1 %1, label %105, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(36) %45)
          to label %80 unwind label %46

46:                                               ; preds = %44
  %47 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE
  %48 = extractvalue { ptr, i32 } %47, 1
  %49 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE) #18
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %106

51:                                               ; preds = %46
  %52 = extractvalue { ptr, i32 } %47, 0
  %53 = tail call ptr @__cxa_begin_catch(ptr %52) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  %54 = load ptr, ptr %45, align 8, !tbaa !83
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE, ptr noundef nonnull align 8 dereferenceable(8) %54, i32 noundef -1)
          to label %55 unwind label %83

55:                                               ; preds = %51
  invoke void @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %56 unwind label %85

56:                                               ; preds = %55
  %57 = icmp eq ptr %3, %45
  br i1 %57, label %64, label %58

58:                                               ; preds = %56
  %59 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %60 unwind label %85

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !84
  %63 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4, i32 1
  store i32 %62, ptr %63, align 8, !tbaa !84
  br label %64

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 5
  store i8 1, ptr %65, align 8, !tbaa !70
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !85
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !86
  %72 = load ptr, ptr %3, align 8, !tbaa !83
  %73 = load ptr, ptr %72, align 8, !tbaa !51
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %71)
          to label %79 unwind label %76

76:                                               ; preds = %69
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #19
  unreachable

79:                                               ; preds = %64, %69
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  call void @__cxa_end_catch()
  br label %80

80:                                               ; preds = %44, %79
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %9, i64 0, i32 5
  %82 = call noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %81)
  br label %102

83:                                               ; preds = %51
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %100

85:                                               ; preds = %58, %55
  %86 = landingpad { ptr, i32 }
          cleanup
  %87 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !85
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !86
  %93 = load ptr, ptr %3, align 8, !tbaa !83
  %94 = load ptr, ptr %93, align 8, !tbaa !51
  %95 = getelementptr inbounds ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8
  invoke void %96(ptr noundef nonnull align 8 dereferenceable(8) %93, ptr noundef %92)
          to label %100 unwind label %97

97:                                               ; preds = %90
  %98 = landingpad { ptr, i32 }
          catch ptr null
  %99 = extractvalue { ptr, i32 } %98, 0
  call void @__clang_call_terminate(ptr %99) #19
  unreachable

100:                                              ; preds = %85, %90, %83
  %101 = phi { ptr, i32 } [ %84, %83 ], [ %86, %90 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  invoke void @__cxa_end_catch()
          to label %106 unwind label %108

102:                                              ; preds = %24, %80
  %103 = phi i16 [ %82, %80 ], [ %25, %24 ]
  %104 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 2
  store i16 %103, ptr %104, align 8, !tbaa !68
  br label %105

105:                                              ; preds = %102, %37, %18
  ret void

106:                                              ; preds = %100, %46
  %107 = phi { ptr, i32 } [ %47, %46 ], [ %101, %100 ]
  resume { ptr, i32 } %107

108:                                              ; preds = %100
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  call void @__clang_call_terminate(ptr %110) #19
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToTextC2ERNS_6WriterERKNS_14XalanDOMStringEbbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 3)
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1015FormatterToTextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 2
  store i16 0, ptr %9, align 8, !tbaa !68
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %11 unwind label %29

11:                                               ; preds = %6
  %12 = zext i1 %4 to i8
  %13 = zext i1 %3 to i8
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 5
  store i8 1, ptr %14, align 8, !tbaa !70
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 6
  store i8 %13, ptr %15, align 1, !tbaa !71
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 7
  store i8 %12, ptr %16, align 2, !tbaa !72
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 9
  store ptr null, ptr %17, align 8, !tbaa !73
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 10
  store i32 0, ptr %18, align 8, !tbaa !74
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !84
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %11
  %23 = icmp eq ptr %10, %2
  br i1 %23, label %76, label %24

24:                                               ; preds = %22
  %25 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %26 unwind label %31

26:                                               ; preds = %24
  %27 = load i32, ptr %19, align 8, !tbaa !84
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4, i32 1
  store i32 %27, ptr %28, align 8, !tbaa !84
  br label %76

29:                                               ; preds = %6
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %80

31:                                               ; preds = %24, %76
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %78

33:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef -1)
          to label %34 unwind label %57

34:                                               ; preds = %33
  %35 = icmp eq ptr %7, %10
  br i1 %35, label %42, label %36

36:                                               ; preds = %34
  %37 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %38 unwind label %59

38:                                               ; preds = %36
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !84
  %41 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4, i32 1
  store i32 %40, ptr %41, align 8, !tbaa !84
  br label %42

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !85
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !86
  %49 = load ptr, ptr %7, align 8, !tbaa !83
  %50 = load ptr, ptr %49, align 8, !tbaa !51
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %46
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #19
  unreachable

56:                                               ; preds = %42, %46
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  br label %76

57:                                               ; preds = %33
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %74

59:                                               ; preds = %36
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !85
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !86
  %67 = load ptr, ptr %7, align 8, !tbaa !83
  %68 = load ptr, ptr %67, align 8, !tbaa !51
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef %66)
          to label %74 unwind label %71

71:                                               ; preds = %64
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #19
  unreachable

74:                                               ; preds = %64, %59, %57
  %75 = phi { ptr, i32 } [ %58, %57 ], [ %60, %59 ], [ %60, %64 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  br label %78

76:                                               ; preds = %26, %22, %56
  invoke void @_ZN11xalanc_1_1015FormatterToText6updateEb(ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext false)
          to label %77 unwind label %31

77:                                               ; preds = %76
  ret void

78:                                               ; preds = %74, %31
  %79 = phi { ptr, i32 } [ %32, %31 ], [ %75, %74 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  br label %80

80:                                               ; preds = %78, %29
  %81 = phi { ptr, i32 } [ %79, %78 ], [ %30, %29 ]
  call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  resume { ptr, i32 } %81
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1015FormatterToText6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringEbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 104)
  invoke void @_ZN11xalanc_1_1015FormatterToTextC2ERNS_6WriterERKNS_14XalanDOMStringEbbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(100) %9, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %10 unwind label %11

10:                                               ; preds = %5
  ret ptr %9

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = icmp eq ptr %9, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !51
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %9)
          to label %21 unwind label %18

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #19
  unreachable

21:                                               ; preds = %11, %14
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToTextD2Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #4 align 2 !prof !50 {
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1015FormatterToTextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToTextD0Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #4 align 2 !prof !75 {
  store ptr getelementptr inbounds ({ [23 x ptr] }, ptr @_ZTVN11xalanc_1_1015FormatterToTextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText13clearEncodingEv(ptr nocapture noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #6 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4, i32 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !87
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %2, align 8, !tbaa !87
  %7 = sub i64 %6, %3
  store i64 %7, ptr %2, align 8, !tbaa !87
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4, i32 1
  store i32 0, ptr %9, align 8, !tbaa !84
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 2
  store i16 -1, ptr %10, align 8, !tbaa !68
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 5
  store i8 0, ptr %11, align 8, !tbaa !70
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 !prof !75 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText13startDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !88 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText11endDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(100) %0) unnamed_addr #9 align 2 !prof !88 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3), !prof !89
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText12startElementEPKtRN11xercesc_2_713AttributeListE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 1 %2) unnamed_addr #7 align 2 !prof !75 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText10endElementEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 !prof !75 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText10charactersEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 align 2 !prof !88 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !71, !range !90, !noundef !91
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 8, !range !90
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %6, i1 %9, i1 false, !prof !92
  br i1 %10, label %16, label %11, !prof !92

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 1
  %15 = zext i32 %2 to i64
  br label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = getelementptr inbounds ptr, ptr %19, i64 7
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, i32 noundef 0, i32 noundef %2), !prof !93
  br label %32

22:                                               ; preds = %13, %22
  %23 = phi i64 [ 0, %13 ], [ %30, %22 ]
  %24 = getelementptr inbounds i16, ptr %1, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !77
  %26 = load ptr, ptr %14, align 8, !tbaa !54
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, i16 noundef zeroext %25)
  %30 = add nuw nsw i64 %23, 1
  %31 = icmp eq i64 %30, %15
  br i1 %31, label %32, label %22, !llvm.loop !94

32:                                               ; preds = %22, %11, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText13charactersRawEPKtj(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !75 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText15entityReferenceEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 !prof !75 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 2, !tbaa !72, !range !90, !noundef !91
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !51
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2)
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText21processingInstructionEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 !prof !75 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText13resetDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !75 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText7commentEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 !prof !75 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToText5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !75 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2)
  ret void
}

declare noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !75 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1015FormatterToText9getWriterEv(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #4 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypeSystemEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener16getDoctypePublicEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1015FormatterToText11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #4 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToText", ptr %0, i64 0, i32 4
  ret ptr %2
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_1017FormatterListener9getIndentEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !85
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !96

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = load ptr, ptr %0, align 8, !tbaa !83
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !97

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !99

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !87
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !100

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !83
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !83
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !87
  %16 = load i64, ptr %6, align 8, !tbaa !85
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = load ptr, ptr %3, align 8, !tbaa !83
  store ptr %19, ptr %0, align 8, !tbaa !83
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !87
  store i64 %21, ptr %14, align 8, !tbaa !87
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !85
  store i64 %23, ptr %6, align 8, !tbaa !85
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  store ptr %25, ptr %17, align 8, !tbaa !86
  store ptr %13, ptr %3, align 8, !tbaa !83
  store i64 %15, ptr %20, align 8, !tbaa !87
  store i64 %16, ptr %22, align 8, !tbaa !85
  store ptr %18, ptr %24, align 8, !tbaa !86
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !101

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !51
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !102

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #19
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !86
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !87
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !103

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !104

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !86
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !87
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !87
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !86
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !105

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !86
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !106
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !87
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !108

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !83
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !87
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !85
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !51
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !109
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !86
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = load i64, ptr %9, align 8, !tbaa !87
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !110

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !83
  %28 = load i64, ptr %6, align 8, !tbaa !87
  %29 = load i64, ptr %7, align 8, !tbaa !85
  %30 = load ptr, ptr %8, align 8, !tbaa !86
  %31 = load ptr, ptr %5, align 8, !tbaa !83
  store ptr %31, ptr %0, align 8, !tbaa !83
  %32 = load i64, ptr %14, align 8, !tbaa !87
  store i64 %32, ptr %6, align 8, !tbaa !87
  %33 = load i64, ptr %15, align 8, !tbaa !85
  store i64 %33, ptr %7, align 8, !tbaa !85
  %34 = load ptr, ptr %21, align 8, !tbaa !86
  store ptr %34, ptr %8, align 8, !tbaa !86
  store ptr %27, ptr %5, align 8, !tbaa !83
  store i64 %28, ptr %14, align 8, !tbaa !87
  store i64 %29, ptr %15, align 8, !tbaa !85
  store ptr %30, ptr %21, align 8, !tbaa !86
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !110

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !51
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !85
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !86
  %50 = load ptr, ptr %5, align 8, !tbaa !83
  %51 = load ptr, ptr %50, align 8, !tbaa !51
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #19
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !111

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !51
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !112
  store ptr %65, ptr %8, align 8, !tbaa !86
  store i64 %3, ptr %7, align 8, !tbaa !85
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !114

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !87
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !85
  br i1 %18, label %21, label %39, !prof !115

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !116

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !117

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !86
  %28 = load i64, ptr %12, align 8, !tbaa !87
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !77
  store i16 %34, ptr %32, align 2, !tbaa !77
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !118, !llvm.loop !119

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !120

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %42 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %42, ptr %5, align 8, !tbaa !83
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !87
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !85
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !51
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !121
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !86
  %51 = load i64, ptr %43, align 8, !tbaa !87
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !86
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !122

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !86
  %56 = load i64, ptr %43, align 8, !tbaa !87
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !122

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !86
  %60 = load i64, ptr %43, align 8, !tbaa !87
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !86
  %63 = load i64, ptr %12, align 8, !tbaa !87
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !122

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !83
  %67 = load i64, ptr %12, align 8, !tbaa !87
  %68 = load i64, ptr %19, align 8, !tbaa !85
  %69 = load ptr, ptr %15, align 8, !tbaa !86
  %70 = load ptr, ptr %5, align 8, !tbaa !83
  store ptr %70, ptr %0, align 8, !tbaa !83
  %71 = load i64, ptr %43, align 8, !tbaa !87
  store i64 %71, ptr %12, align 8, !tbaa !87
  %72 = load i64, ptr %44, align 8, !tbaa !85
  store i64 %72, ptr %19, align 8, !tbaa !85
  %73 = load ptr, ptr %50, align 8, !tbaa !86
  store ptr %73, ptr %15, align 8, !tbaa !86
  store ptr %66, ptr %5, align 8, !tbaa !83
  store i64 %67, ptr %43, align 8, !tbaa !87
  store i64 %68, ptr %44, align 8, !tbaa !85
  store ptr %69, ptr %50, align 8, !tbaa !86
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !123

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !51
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !124

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #19
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !85
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !86
  %89 = load ptr, ptr %5, align 8, !tbaa !83
  %90 = load ptr, ptr %89, align 8, !tbaa !51
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #19
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !125

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !126

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !126

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !127, !llvm.loop !128

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !129, !llvm.loop !130

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !131
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
  br i1 %123, label %124, label %120, !llvm.loop !132

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
  store i64 %36, ptr %12, align 8, !tbaa !87
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !87
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !85
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !134

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !77
  store i16 %13, ptr %12, align 2, !tbaa !77
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !87
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %21 = load ptr, ptr %0, align 8, !tbaa !83
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !83
  %24 = load i64, ptr %4, align 8, !tbaa !87
  %25 = load i64, ptr %6, align 8, !tbaa !85
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = load ptr, ptr %3, align 8, !tbaa !83
  store ptr %28, ptr %0, align 8, !tbaa !83
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !87
  store i64 %30, ptr %4, align 8, !tbaa !87
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !85
  store i64 %32, ptr %6, align 8, !tbaa !85
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  store ptr %34, ptr %26, align 8, !tbaa !86
  store ptr %23, ptr %3, align 8, !tbaa !83
  store i64 %24, ptr %29, align 8, !tbaa !87
  store i64 %25, ptr %31, align 8, !tbaa !85
  store ptr %27, ptr %33, align 8, !tbaa !86
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !51
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #19
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
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
  %51 = load ptr, ptr %50, align 8, !tbaa !86
  %52 = load ptr, ptr %3, align 8, !tbaa !83
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #19
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !87
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !108

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !83
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !87
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !85
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !51
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !136
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !86
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = load i64, ptr %5, align 8, !tbaa !87
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !110

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !83
  %24 = load i64, ptr %10, align 8, !tbaa !87
  %25 = load i64, ptr %11, align 8, !tbaa !85
  %26 = load ptr, ptr %17, align 8, !tbaa !86
  store ptr %4, ptr %3, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !85
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !86
  %33 = load ptr, ptr %3, align 8, !tbaa !83
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #19
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !111

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !51
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !137
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !83
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !85
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !86
  store ptr %53, ptr %0, align 8, !tbaa !83
  store i64 %52, ptr %5, align 8, !tbaa !87
  store i64 %51, ptr %55, align 8, !tbaa !85
  store ptr %50, ptr %57, align 8, !tbaa !86
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !138

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !51
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !139

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #19
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @_ZN11xalanc_1_1015FormatterToTextC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1015FormatterToTextC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1015FormatterToText6updateEb, ptr @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueEv, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1015FormatterToTextD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1015FormatterToTextD2Ev, ptr @_ZN11xalanc_1_1017FormatterListenerD2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 1}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = !{!55, !58, i64 24}
!55 = !{!"_ZTSN11xalanc_1_1015FormatterToTextE", !56, i64 0, !58, i64 24, !62, i64 32, !63, i64 40, !67, i64 80, !67, i64 81, !67, i64 82, !58, i64 88, !66, i64 96}
!56 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !57, i64 0, !58, i64 8, !60, i64 16, !61, i64 20}
!57 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !53, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !59, i64 0}
!61 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !59, i64 0}
!62 = !{!"short", !59, i64 0}
!63 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !64, i64 0, !66, i64 32}
!64 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !58, i64 0, !65, i64 8, !65, i64 16, !58, i64 24}
!65 = !{!"long", !59, i64 0}
!66 = !{!"int", !59, i64 0}
!67 = !{!"bool", !59, i64 0}
!68 = !{!55, !62, i64 32}
!69 = !{!"branch_weights", i32 1, i32 0}
!70 = !{!55, !67, i64 80}
!71 = !{!55, !67, i64 81}
!72 = !{!55, !67, i64 82}
!73 = !{!55, !58, i64 88}
!74 = !{!55, !66, i64 96}
!75 = !{!"function_entry_count", i64 0}
!76 = !{!"VP", i32 0, i64 1, i64 2018537942120783466, i64 1}
!77 = !{!62, !62, i64 0}
!78 = !{!"branch_weights", i32 1, i32 1}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!"branch_weights", i32 0, i32 1}
!83 = !{!64, !58, i64 0}
!84 = !{!63, !66, i64 32}
!85 = !{!64, !65, i64 16}
!86 = !{!64, !58, i64 24}
!87 = !{!64, !65, i64 8}
!88 = !{!"function_entry_count", i64 40062}
!89 = !{!"VP", i32 0, i64 40062, i64 -4103975023566274577, i64 40062}
!90 = !{i8 0, i8 2}
!91 = !{}
!92 = !{!"branch_weights", i32 40062, i32 0}
!93 = !{!"VP", i32 0, i64 40062, i64 -8276805650390334834, i64 40062}
!94 = distinct !{!94, !80, !81}
!95 = !{!"function_entry_count", i64 42470003}
!96 = !{!"branch_weights", i32 52000, i32 42418003}
!97 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!98 = !{!"function_entry_count", i64 41614}
!99 = !{!"branch_weights", i32 0, i32 41614}
!100 = !{!"branch_weights", i32 12, i32 41602}
!101 = !{!"branch_weights", i32 5, i32 7}
!102 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!103 = !{!"branch_weights", i32 354, i32 41248}
!104 = !{!"branch_weights", i32 40889, i32 359}
!105 = !{!"branch_weights", i32 40581, i32 1021}
!106 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!107 = !{!"function_entry_count", i64 22}
!108 = !{!"branch_weights", i32 64551590, i32 18}
!109 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!110 = !{!"branch_weights", i32 18, i32 0}
!111 = !{!"branch_weights", i32 4, i32 64551586}
!112 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!113 = !{!"function_entry_count", i64 155828046}
!114 = !{!"branch_weights", i32 0, i32 155828046}
!115 = !{!"branch_weights", i32 133170777, i32 22657269}
!116 = !{!"branch_weights", i32 20, i32 133170757}
!117 = !{!"branch_weights", i32 1, i32 19024395}
!118 = !{!"branch_weights", i32 19024395, i32 -26420601}
!119 = distinct !{!119, !80, !81}
!120 = !{!"branch_weights", i32 20748786, i32 1908483}
!121 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!122 = !{!"branch_weights", i32 20748786, i32 0}
!123 = !{!"branch_weights", i32 0, i32 20748786}
!124 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!125 = !{!"branch_weights", i32 0, i32 1908483}
!126 = !{!"branch_weights", i32 1, i32 1908482}
!127 = !{!"branch_weights", i32 1908482, i32 49797853}
!128 = distinct !{!128, !80, !81}
!129 = !{!"branch_weights", i32 1908482, i32 1}
!130 = distinct !{!130, !80, !81}
!131 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!132 = distinct !{!132, !80, !81}
!133 = !{!"function_entry_count", i64 124150652}
!134 = !{!"branch_weights", i32 124150652, i32 0}
!135 = !{!"function_entry_count", i64 64551586}
!136 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!137 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!138 = !{!"branch_weights", i32 42418193, i32 22133393}
!139 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
