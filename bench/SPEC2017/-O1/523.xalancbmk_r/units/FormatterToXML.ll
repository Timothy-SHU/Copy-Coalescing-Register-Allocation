; ModuleID = 'FormatterToXML.cpp'
source_filename = "FormatterToXML.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.xalanc_1_10::ConstructValueWithNoMemoryManager" = type { i16 }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::FormatterToXML" = type <{ %"class.xalanc_1_10::FormatterListener", ptr, ptr, i16, [256 x i16], [256 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, i32, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanDOMString", i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector", i32, [4 x i8], %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.0", { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, ptr, i32, i8, [3 x i8] }>
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanOutputStream" = type { ptr, i32, ptr, i32, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.1" }
%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xercesc_2_712SAXExceptionD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xercesc_2_712SAXExceptionD0Ev = comdat any

$_ZNK11xercesc_2_712SAXException10getMessageEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm = comdat any

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

$_ZTVN11xercesc_2_712SAXExceptionE = comdat any

@_ZTVN11xalanc_1_1014FormatterToXMLE = dso_local unnamed_addr constant { [27 x ptr] } { [27 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014FormatterToXMLE, ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1014FormatterToXMLD0Ev, ptr @_ZN11xalanc_1_1014FormatterToXML10charactersEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1014FormatterToXML13resetDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1014FormatterToXML13startDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML13charactersRawEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML7commentEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML5cdataEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML15entityReferenceEPKt, ptr @_ZNK11xalanc_1_1014FormatterToXML9getWriterEv, ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypePublicEv, ptr @_ZNK11xalanc_1_1014FormatterToXML11getEncodingEv, ptr @_ZNK11xalanc_1_1014FormatterToXML12getMediaTypeEv, ptr @_ZNK11xalanc_1_1014FormatterToXML9getIndentEv, ptr @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb, ptr @_ZN11xalanc_1_1014FormatterToXML20writeNormalizedCharsEPKtjjb, ptr @_ZN11xalanc_1_1014FormatterToXML15writeAttrStringEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML16accumCommentDataEPKt] }, align 8
@_ZN11xalanc_1_10L26theDefaultAttrSpecialCharsE = internal constant [7 x i16] [i16 60, i16 62, i16 38, i16 34, i16 13, i16 10, i16 0], align 2
@_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE = external constant [0 x i16], align 2
@_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712SAXExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SAXExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xalanc_1_1017FormatterListener10s_piTargetE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1017FormatterListener8s_piDataE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1014FormatterToXML26s_doctypeHeaderStartStringE = dso_local constant [11 x i16] [i16 60, i16 33, i16 68, i16 79, i16 67, i16 84, i16 89, i16 80, i16 69, i16 32, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML32s_doctypeHeaderStartStringLengthE = dso_local local_unnamed_addr constant i32 10, align 4
@_ZN11xalanc_1_1014FormatterToXML27s_doctypeHeaderPublicStringE = dso_local constant [10 x i16] [i16 32, i16 80, i16 85, i16 66, i16 76, i16 73, i16 67, i16 32, i16 34, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML33s_doctypeHeaderPublicStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1014FormatterToXML27s_doctypeHeaderSystemStringE = dso_local constant [10 x i16] [i16 32, i16 83, i16 89, i16 83, i16 84, i16 69, i16 77, i16 32, i16 34, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML33s_doctypeHeaderSystemStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1014FormatterToXML22s_xmlHeaderStartStringE = dso_local constant [16 x i16] [i16 60, i16 63, i16 120, i16 109, i16 108, i16 32, i16 118, i16 101, i16 114, i16 115, i16 105, i16 111, i16 110, i16 61, i16 34, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML28s_xmlHeaderStartStringLengthE = dso_local local_unnamed_addr constant i32 15, align 4
@_ZN11xalanc_1_1014FormatterToXML25s_xmlHeaderEncodingStringE = dso_local constant [13 x i16] [i16 34, i16 32, i16 101, i16 110, i16 99, i16 111, i16 100, i16 105, i16 110, i16 103, i16 61, i16 34, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML31s_xmlHeaderEncodingStringLengthE = dso_local local_unnamed_addr constant i32 12, align 4
@_ZN11xalanc_1_1014FormatterToXML27s_xmlHeaderStandaloneStringE = dso_local constant [15 x i16] [i16 34, i16 32, i16 115, i16 116, i16 97, i16 110, i16 100, i16 97, i16 108, i16 111, i16 110, i16 101, i16 61, i16 34, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML33s_xmlHeaderStandaloneStringLengthE = dso_local local_unnamed_addr constant i32 14, align 4
@_ZN11xalanc_1_1014FormatterToXML20s_xmlHeaderEndStringE = dso_local constant [4 x i16] [i16 34, i16 63, i16 62, i16 0], align 2
@_ZN11xalanc_1_1014FormatterToXML26s_xmlHeaderEndStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1014FormatterToXML22s_defaultVersionStringE = dso_local constant [4 x i16] [i16 49, i16 46, i16 48, i16 0], align 2
@_ZN11xalanc_1_1014FormatterToXML28s_defaultVersionStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1014FormatterToXML21s_dtdCDATACloseStringE = dso_local constant [4 x i16] [i16 93, i16 93, i16 62, i16 0], align 2
@_ZN11xalanc_1_1014FormatterToXML27s_dtdCDATACloseStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1014FormatterToXML20s_xhtmlDocTypeStringE = dso_local constant [18 x i16] [i16 45, i16 47, i16 47, i16 87, i16 51, i16 67, i16 47, i16 47, i16 68, i16 84, i16 68, i16 32, i16 88, i16 72, i16 84, i16 77, i16 76, i16 0], align 16
@_ZN11xalanc_1_1014FormatterToXML26s_xhtmlDocTypeStringLengthE = dso_local local_unnamed_addr constant i32 17, align 4
@_ZN11xalanc_1_1014FormatterToXML15s_maxBufferSizeE = dso_local local_unnamed_addr constant i32 512, align 4
@_ZTSN11xalanc_1_1014FormatterToXMLE = dso_local constant [32 x i8] c"N11xalanc_1_1014FormatterToXMLE\00", align 1
@_ZTIN11xalanc_1_1017FormatterListenerE = external constant ptr
@_ZTIN11xalanc_1_1014FormatterToXMLE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014FormatterToXMLE, ptr @_ZTIN11xalanc_1_1017FormatterListenerE }, align 8
@_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZTVN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712SAXExceptionE, ptr @_ZN11xercesc_2_712SAXExceptionD2Ev, ptr @_ZN11xercesc_2_712SAXExceptionD0Ev, ptr @_ZNK11xercesc_2_712SAXException10getMessageEv] }, comdat, align 8
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1

@_ZN11xalanc_1_1014FormatterToXMLC1ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1, i32, ptr, ptr, ptr, ptr, i1, ptr, i32, i1, ptr), ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1014FormatterToXMLD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %8, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %11, i1 noundef zeroext %12, ptr noundef nonnull align 8 dereferenceable(8) %13) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %15 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 2
  %16 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 2
  %17 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %18 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %19 = zext i1 %12 to i8
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %11)
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTVN11xalanc_1_1014FormatterToXMLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !76
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %1, align 8, !tbaa !73
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %26 unwind label %80, !prof !92

26:                                               ; preds = %14
  %27 = zext i1 %9 to i8
  %28 = zext i1 %3 to i8
  store ptr %25, ptr %21, align 8, !tbaa !93
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1026) %29, i8 0, i64 1026, i1 false)
  store i8 %27, ptr %30, align 2, !tbaa !94
  %31 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 0, ptr %31, align 1, !tbaa !95
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  store i8 %28, ptr %32, align 4, !tbaa !96
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 0, ptr %33, align 1, !tbaa !97
  %34 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 10
  store i8 1, ptr %34, align 2, !tbaa !98
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %36 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 15
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %35, i8 0, i64 5, i1 false)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %37, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1)
          to label %38 unwind label %80, !prof !99

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %39, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1)
          to label %40 unwind label %84, !prof !99

40:                                               ; preds = %38
  %41 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %42 unwind label %88, !prof !99

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  store i32 0, ptr %43, align 8, !tbaa !100
  %44 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  store i32 %4, ptr %44, align 4, !tbaa !101
  %45 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22
  store ptr %13, ptr %45, align 8, !tbaa !102
  %46 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22, i32 1
  %47 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %47, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %48 unwind label %92, !prof !99

48:                                               ; preds = %42
  %49 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 24
  store i8 0, ptr %49, align 8, !tbaa !103
  %50 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 25
  store i8 %19, ptr %50, align 1, !tbaa !104
  %51 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 26
  store i8 0, ptr %51, align 2, !tbaa !105
  %52 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 27
  store i8 0, ptr %52, align 1, !tbaa !106
  %53 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 29
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %53, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1)
          to label %54 unwind label %96, !prof !99

54:                                               ; preds = %48
  %55 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 30
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %55, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1)
          to label %56 unwind label %100, !prof !99

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 31
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %57, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 0, i32 noundef -1)
          to label %58 unwind label %104, !prof !99

58:                                               ; preds = %56
  %59 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 32
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %59, ptr noundef nonnull @_ZN11xalanc_1_10L26theDefaultAttrSpecialCharsE, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef -1)
          to label %60 unwind label %108, !prof !99

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33
  store ptr %13, ptr %61, align 8, !tbaa !107
  %62 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33, i32 1
  %63 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %62, i8 0, i64 28, i1 false)
  store ptr %13, ptr %63, align 8, !tbaa !108
  %64 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36, i32 1
  %65 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %64, i8 0, i64 24, i1 false)
  store ptr %13, ptr %65, align 8, !tbaa !102
  %66 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37, i32 1
  %67 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %68 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %69 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 49
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(181) %66, i8 0, i64 181, i1 false)
  %71 = load i32, ptr %70, align 8, !tbaa !109
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %116, label %73, !prof !110

73:                                               ; preds = %60
  %74 = icmp eq ptr %41, %5
  br i1 %74, label %161, label %75, !prof !110

75:                                               ; preds = %73
  %76 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %77 unwind label %112, !prof !99

77:                                               ; preds = %75
  %78 = load i32, ptr %70, align 8, !tbaa !109
  %79 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19, i32 1
  store i32 %78, ptr %79, align 8, !tbaa !109
  br label %161

80:                                               ; preds = %26, %14
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = extractvalue { ptr, i32 } %81, 0
  %83 = extractvalue { ptr, i32 } %81, 1
  br label %356

84:                                               ; preds = %38
  %85 = landingpad { ptr, i32 }
          cleanup
  %86 = extractvalue { ptr, i32 } %85, 0
  %87 = extractvalue { ptr, i32 } %85, 1
  br label %353

88:                                               ; preds = %40
  %89 = landingpad { ptr, i32 }
          cleanup
  %90 = extractvalue { ptr, i32 } %89, 0
  %91 = extractvalue { ptr, i32 } %89, 1
  br label %350

92:                                               ; preds = %42
  %93 = landingpad { ptr, i32 }
          cleanup
  %94 = extractvalue { ptr, i32 } %93, 0
  %95 = extractvalue { ptr, i32 } %93, 1
  br label %347

96:                                               ; preds = %48
  %97 = landingpad { ptr, i32 }
          cleanup
  %98 = extractvalue { ptr, i32 } %97, 0
  %99 = extractvalue { ptr, i32 } %97, 1
  br label %344

100:                                              ; preds = %54
  %101 = landingpad { ptr, i32 }
          cleanup
  %102 = extractvalue { ptr, i32 } %101, 0
  %103 = extractvalue { ptr, i32 } %101, 1
  br label %341

104:                                              ; preds = %56
  %105 = landingpad { ptr, i32 }
          cleanup
  %106 = extractvalue { ptr, i32 } %105, 0
  %107 = extractvalue { ptr, i32 } %105, 1
  br label %338

108:                                              ; preds = %58
  %109 = landingpad { ptr, i32 }
          cleanup
  %110 = extractvalue { ptr, i32 } %109, 0
  %111 = extractvalue { ptr, i32 } %109, 1
  br label %335

112:                                              ; preds = %165, %75, %248, %206
  %113 = landingpad { ptr, i32 }
          cleanup
  %114 = extractvalue { ptr, i32 } %113, 0
  %115 = extractvalue { ptr, i32 } %113, 1
  br label %332

116:                                              ; preds = %60
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %17) #20
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef -1)
          to label %117 unwind label %140

117:                                              ; preds = %116
  %118 = icmp eq ptr %17, %41
  br i1 %118, label %125, label %119

119:                                              ; preds = %117
  %120 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %121 unwind label %142

121:                                              ; preds = %119
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %17, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !109
  %124 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19, i32 1
  store i32 %123, ptr %124, align 8, !tbaa !109
  br label %125

125:                                              ; preds = %121, %117
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %17, i64 0, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !111
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %17, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !112
  %132 = load ptr, ptr %17, align 8, !tbaa !107
  %133 = load ptr, ptr %132, align 8, !tbaa !73
  %134 = getelementptr inbounds ptr, ptr %133, i64 3
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef %131)
          to label %139 unwind label %136

136:                                              ; preds = %129
  %137 = landingpad { ptr, i32 }
          catch ptr null
  %138 = extractvalue { ptr, i32 } %137, 0
  call void @__clang_call_terminate(ptr %138) #21
  unreachable

139:                                              ; preds = %125, %129
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %17) #20
  br label %161

140:                                              ; preds = %116
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %157

142:                                              ; preds = %119
  %143 = landingpad { ptr, i32 }
          cleanup
  %144 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %17, i64 0, i32 2
  %145 = load i64, ptr %144, align 8, !tbaa !111
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %17, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !112
  %150 = load ptr, ptr %17, align 8, !tbaa !107
  %151 = load ptr, ptr %150, align 8, !tbaa !73
  %152 = getelementptr inbounds ptr, ptr %151, i64 3
  %153 = load ptr, ptr %152, align 8
  invoke void %153(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef %149)
          to label %157 unwind label %154

154:                                              ; preds = %147
  %155 = landingpad { ptr, i32 }
          catch ptr null
  %156 = extractvalue { ptr, i32 } %155, 0
  call void @__clang_call_terminate(ptr %156) #21
  unreachable

157:                                              ; preds = %147, %142, %140
  %158 = phi { ptr, i32 } [ %141, %140 ], [ %143, %142 ], [ %143, %147 ]
  %159 = extractvalue { ptr, i32 } %158, 0
  %160 = extractvalue { ptr, i32 } %158, 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %17) #20
  br label %332

161:                                              ; preds = %77, %73, %139
  %162 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18, i32 1
  %163 = load i32, ptr %162, align 8, !tbaa !109
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %175, label %165, !prof !99

165:                                              ; preds = %161
  %166 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18, i32 0, i32 3
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18, i32 0, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !113
  %170 = icmp eq i64 %169, 0
  %171 = select i1 %170, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %167
  %172 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %171, i32 noundef %163, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML20s_xhtmlDocTypeStringE, i32 noundef 17)
          to label %173 unwind label %112

173:                                              ; preds = %165
  br i1 %172, label %174, label %175

174:                                              ; preds = %173
  store i8 1, ptr %51, align 2, !tbaa !105
  br label %175

175:                                              ; preds = %173, %174, %161
  %176 = load ptr, ptr %21, align 8, !tbaa !93
  %177 = icmp eq ptr %176, null
  br i1 %177, label %241, label %178, !prof !110

178:                                              ; preds = %175
  invoke void @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %176, ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %206 unwind label %179, !prof !99

179:                                              ; preds = %178
  %180 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE
  %181 = extractvalue { ptr, i32 } %180, 0
  %182 = extractvalue { ptr, i32 } %180, 1
  %183 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1017XalanOutputStream28UnsupportedEncodingExceptionE) #20
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %332

185:                                              ; preds = %179
  %186 = call ptr @__cxa_begin_catch(ptr %181) #20
  %187 = load ptr, ptr %21, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #20
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE, ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef -1)
          to label %188 unwind label %212

188:                                              ; preds = %185
  invoke void @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %187, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %189 unwind label %214

189:                                              ; preds = %188
  %190 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %18, i64 0, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !111
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %203, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %18, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !112
  %196 = load ptr, ptr %18, align 8, !tbaa !107
  %197 = load ptr, ptr %196, align 8, !tbaa !73
  %198 = getelementptr inbounds ptr, ptr %197, i64 3
  %199 = load ptr, ptr %198, align 8
  invoke void %199(ptr noundef nonnull align 8 dereferenceable(8) %196, ptr noundef %195)
          to label %203 unwind label %200

200:                                              ; preds = %193
  %201 = landingpad { ptr, i32 }
          catch ptr null
  %202 = extractvalue { ptr, i32 } %201, 0
  call void @__clang_call_terminate(ptr %202) #21
  unreachable

203:                                              ; preds = %189, %193
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #20
  %204 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE)
          to label %205 unwind label %231

205:                                              ; preds = %203
  invoke void @__cxa_end_catch()
          to label %206 unwind label %233

206:                                              ; preds = %205, %178
  %207 = load ptr, ptr %21, align 8, !tbaa !93
  %208 = load ptr, ptr %207, align 8, !tbaa !73
  %209 = getelementptr inbounds ptr, ptr %208, i64 3
  %210 = load ptr, ptr %209, align 8
  %211 = invoke noundef ptr %210(ptr noundef nonnull align 8 dereferenceable(144) %207)
          to label %241 unwind label %112, !prof !114

212:                                              ; preds = %185
  %213 = landingpad { ptr, i32 }
          cleanup
  br label %229

214:                                              ; preds = %188
  %215 = landingpad { ptr, i32 }
          cleanup
  %216 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %18, i64 0, i32 2
  %217 = load i64, ptr %216, align 8, !tbaa !111
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %229, label %219

219:                                              ; preds = %214
  %220 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %18, i64 0, i32 3
  %221 = load ptr, ptr %220, align 8, !tbaa !112
  %222 = load ptr, ptr %18, align 8, !tbaa !107
  %223 = load ptr, ptr %222, align 8, !tbaa !73
  %224 = getelementptr inbounds ptr, ptr %223, i64 3
  %225 = load ptr, ptr %224, align 8
  invoke void %225(ptr noundef nonnull align 8 dereferenceable(8) %222, ptr noundef %221)
          to label %229 unwind label %226

226:                                              ; preds = %219
  %227 = landingpad { ptr, i32 }
          catch ptr null
  %228 = extractvalue { ptr, i32 } %227, 0
  call void @__clang_call_terminate(ptr %228) #21
  unreachable

229:                                              ; preds = %219, %214, %212
  %230 = phi { ptr, i32 } [ %213, %212 ], [ %215, %214 ], [ %215, %219 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #20
  br label %235

231:                                              ; preds = %203
  %232 = landingpad { ptr, i32 }
          cleanup
  br label %235

233:                                              ; preds = %205
  %234 = landingpad { ptr, i32 }
          cleanup
  br label %237

235:                                              ; preds = %231, %229
  %236 = phi { ptr, i32 } [ %232, %231 ], [ %230, %229 ]
  invoke void @__cxa_end_catch()
          to label %237 unwind label %361

237:                                              ; preds = %235, %233
  %238 = phi { ptr, i32 } [ %234, %233 ], [ %236, %235 ]
  %239 = extractvalue { ptr, i32 } %238, 0
  %240 = extractvalue { ptr, i32 } %238, 1
  br label %332

241:                                              ; preds = %175, %206
  %242 = phi ptr [ %211, %206 ], [ @_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE, %175 ]
  store ptr %242, ptr %67, align 8, !tbaa !115
  br label %243

243:                                              ; preds = %243, %241
  %244 = phi ptr [ %242, %241 ], [ %247, %243 ]
  %245 = load i16, ptr %244, align 2, !tbaa !116
  %246 = icmp eq i16 %245, 0
  %247 = getelementptr inbounds i16, ptr %244, i64 1
  br i1 %246, label %248, label %243, !prof !117, !llvm.loop !118

248:                                              ; preds = %243
  %249 = ptrtoint ptr %244 to i64
  %250 = ptrtoint ptr %242 to i64
  %251 = sub i64 %249, %250
  %252 = lshr exact i64 %251, 1
  %253 = trunc i64 %252 to i32
  store i32 %253, ptr %68, align 8, !tbaa !121
  %254 = invoke noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %255 unwind label %112, !prof !99

255:                                              ; preds = %248
  store i16 %254, ptr %29, align 8, !tbaa !122
  %256 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %257 unwind label %271, !prof !99

257:                                              ; preds = %255
  br i1 %256, label %261, label %258, !prof !99

258:                                              ; preds = %257
  %259 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %260 unwind label %271

260:                                              ; preds = %258
  br i1 %259, label %261, label %265

261:                                              ; preds = %260, %257
  %262 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 30, i32 1
  %263 = load i32, ptr %262, align 8, !tbaa !109
  %264 = icmp eq i32 %263, 0
  br label %265

265:                                              ; preds = %261, %260
  %266 = phi i1 [ false, %260 ], [ %264, %261 ]
  %267 = load i8, ptr %30, align 2, !range !123
  %268 = icmp ne i8 %267, 0
  %269 = select i1 %266, i1 true, i1 %268, !prof !99
  br i1 %269, label %275, label %270, !prof !99

270:                                              ; preds = %265
  store i8 1, ptr %30, align 2, !tbaa !94
  br label %275

271:                                              ; preds = %303, %300, %284, %292, %276, %258, %255
  %272 = landingpad { ptr, i32 }
          cleanup
  %273 = extractvalue { ptr, i32 } %272, 0
  %274 = extractvalue { ptr, i32 } %272, 1
  br label %332

275:                                              ; preds = %270, %265
  br i1 %266, label %278, label %276, !prof !99

276:                                              ; preds = %275
  %277 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF32ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %278 unwind label %271

278:                                              ; preds = %276, %275
  %279 = phi i1 [ true, %275 ], [ %277, %276 ]
  %280 = zext i1 %279 to i8
  store i8 %280, ptr %36, align 1, !tbaa !124
  %281 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 29, i32 1
  %282 = load i32, ptr %281, align 8, !tbaa !109
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %296, label %284, !prof !99

284:                                              ; preds = %278
  %285 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 29, i32 0, i32 1
  %286 = load i64, ptr %285, align 8, !tbaa !113
  %287 = icmp eq i64 %286, 0
  %288 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 29, i32 0, i32 3
  %289 = load ptr, ptr %288, align 8
  %290 = select i1 %287, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %289
  %291 = invoke noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %290, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %292 unwind label %271

292:                                              ; preds = %284
  %293 = invoke noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %291, double noundef 1.100000e+00)
          to label %294 unwind label %271

294:                                              ; preds = %292
  br i1 %293, label %295, label %296

295:                                              ; preds = %294
  store i8 1, ptr %69, align 4, !tbaa !125
  br label %296

296:                                              ; preds = %295, %294, %278
  %297 = load i8, ptr %36, align 1, !tbaa !124, !range !123, !noundef !126
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %302, label %299, !prof !110

299:                                              ; preds = %296
  br i1 %12, label %300, label %305, !prof !99

300:                                              ; preds = %299
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #20
  store i16 0, ptr %16, align 2, !tbaa !127
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %61, i64 noundef 512, ptr noundef nonnull align 2 dereferenceable(2) %16)
          to label %301 unwind label %271, !prof !99

301:                                              ; preds = %300
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #20
  br label %305

302:                                              ; preds = %296
  br i1 %12, label %303, label %305

303:                                              ; preds = %302
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #20
  store i16 0, ptr %15, align 2, !tbaa !127
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %61, i64 noundef 512, ptr noundef nonnull align 2 dereferenceable(2) %15)
          to label %304 unwind label %271

304:                                              ; preds = %303
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #20
  br label %305

305:                                              ; preds = %304, %302, %299, %301
  %306 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt to i64), %301 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumCharUTFDirectEt to i64), %299 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML15accumNameAsCharEt to i64), %304 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML21accumNameAsCharDirectEt to i64), %302 ]
  %307 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt to i64), %301 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumCharUTFDirectEt to i64), %299 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumContentAsCharEt to i64), %304 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML24accumContentAsCharDirectEt to i64), %302 ]
  %308 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML14accumStringUTFEPKt to i64), %301 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML20accumStringUTFDirectEPKt to i64), %299 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML15accumNameStringEPKt to i64), %304 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML15accumNameStringEPKt to i64), %302 ]
  %309 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML14accumStringUTFEPKt to i64), %301 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML20accumStringUTFDirectEPKt to i64), %299 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumContentStringEPKt to i64), %304 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumContentStringEPKt to i64), %302 ]
  %310 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML17accumDOMStringUTFERKNS_14XalanDOMStringE to i64), %301 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML23accumDOMStringUTFDirectERKNS_14XalanDOMStringE to i64), %299 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumNameDOMStringERKNS_14XalanDOMStringE to i64), %304 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML18accumNameDOMStringERKNS_14XalanDOMStringE to i64), %302 ]
  %311 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML17accumDOMStringUTFERKNS_14XalanDOMStringE to i64), %301 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML23accumDOMStringUTFDirectERKNS_14XalanDOMStringE to i64), %299 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML21accumContentDOMStringERKNS_14XalanDOMStringE to i64), %304 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML21accumContentDOMStringERKNS_14XalanDOMStringE to i64), %302 ]
  %312 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj to i64), %301 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML19accumArrayUTFDirectEPKtjj to i64), %299 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML14accumNameArrayEPKtjj to i64), %304 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML14accumNameArrayEPKtjj to i64), %302 ]
  %313 = phi i64 [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj to i64), %301 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML19accumArrayUTFDirectEPKtjj to i64), %299 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML17accumContentArrayEPKtjj to i64), %304 ], [ ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML17accumContentArrayEPKtjj to i64), %302 ]
  %314 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %315 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %316 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  %317 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %318 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 43, i32 1
  %319 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 43
  %320 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %321 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %322 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41, i32 1
  %323 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41
  %324 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40, i32 1
  %325 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40
  %326 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %327 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %328 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %329 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  store i64 %306, ptr %329, align 8, !tbaa !129
  store i64 0, ptr %328, align 8, !tbaa !129
  store i64 %307, ptr %321, align 8, !tbaa !130
  store i64 0, ptr %320, align 8, !tbaa !130
  store i64 %308, ptr %327, align 8, !tbaa !131
  store i64 0, ptr %326, align 8, !tbaa !131
  store i64 %309, ptr %319, align 8, !tbaa !132
  store i64 0, ptr %318, align 8, !tbaa !132
  store i64 %310, ptr %325, align 8, !tbaa !133
  store i64 0, ptr %324, align 8, !tbaa !133
  store i64 %311, ptr %317, align 8, !tbaa !134
  store i64 0, ptr %316, align 8, !tbaa !134
  store i64 %312, ptr %323, align 8, !tbaa !135
  store i64 0, ptr %322, align 8, !tbaa !135
  store i64 %313, ptr %315, align 8, !tbaa !136
  store i64 0, ptr %314, align 8, !tbaa !136
  %330 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 46, i32 1
  %331 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 46
  store i64 ptrtoint (ptr @_ZN11xalanc_1_1014FormatterToXML10flushCharsEv to i64), ptr %331, align 8, !tbaa !137
  store i64 0, ptr %330, align 8, !tbaa !137
  call void @_ZN11xalanc_1_1014FormatterToXML12initCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1709) %0), !prof !138
  ret void

332:                                              ; preds = %271, %237, %179, %157, %112
  %333 = phi i32 [ %274, %271 ], [ %115, %112 ], [ %240, %237 ], [ %182, %179 ], [ %160, %157 ]
  %334 = phi ptr [ %273, %271 ], [ %114, %112 ], [ %239, %237 ], [ %181, %179 ], [ %159, %157 ]
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %65) #20
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %63) #20
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %61) #20
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %59) #20
  br label %335

335:                                              ; preds = %332, %108
  %336 = phi i32 [ %333, %332 ], [ %111, %108 ]
  %337 = phi ptr [ %334, %332 ], [ %110, %108 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %57) #20
  br label %338

338:                                              ; preds = %335, %104
  %339 = phi i32 [ %336, %335 ], [ %107, %104 ]
  %340 = phi ptr [ %337, %335 ], [ %106, %104 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %55) #20
  br label %341

341:                                              ; preds = %338, %100
  %342 = phi i32 [ %339, %338 ], [ %103, %100 ]
  %343 = phi ptr [ %340, %338 ], [ %102, %100 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %53) #20
  br label %344

344:                                              ; preds = %341, %96
  %345 = phi i32 [ %342, %341 ], [ %99, %96 ]
  %346 = phi ptr [ %343, %341 ], [ %98, %96 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %47) #20
  br label %347

347:                                              ; preds = %344, %92
  %348 = phi i32 [ %345, %344 ], [ %95, %92 ]
  %349 = phi ptr [ %346, %344 ], [ %94, %92 ]
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %45) #20
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %41) #20
  br label %350

350:                                              ; preds = %347, %88
  %351 = phi i32 [ %348, %347 ], [ %91, %88 ]
  %352 = phi ptr [ %349, %347 ], [ %90, %88 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %39) #20
  br label %353

353:                                              ; preds = %350, %84
  %354 = phi i32 [ %351, %350 ], [ %87, %84 ]
  %355 = phi ptr [ %352, %350 ], [ %86, %84 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %37) #20
  br label %356

356:                                              ; preds = %353, %80
  %357 = phi i32 [ %354, %353 ], [ %83, %80 ]
  %358 = phi ptr [ %355, %353 ], [ %82, %80 ]
  call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %359 = insertvalue { ptr, i32 } poison, ptr %358, 0
  %360 = insertvalue { ptr, i32 } %359, i32 %357, 1
  resume { ptr, i32 } %360

361:                                              ; preds = %235
  %362 = landingpad { ptr, i32 }
          catch ptr null
  %363 = extractvalue { ptr, i32 } %362, 0
  call void @__clang_call_terminate(ptr %363) #21
  unreachable
}

declare void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !139 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3)
  ret ptr %4
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !139 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF32ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18accumCharUTFDirectEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !139 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3)
  store i16 %1, ptr %3, align 2, !tbaa !116
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %5, i64 0, i32 4, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !140
  %10 = zext i32 %9 to i64
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %5)
  br label %13

13:                                               ; preds = %2, %12
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %5, i64 0, i32 4
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 2 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML20accumStringUTFDirectEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, ptr noundef %1) #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %1, %2 ], [ %9, %5 ]
  %7 = load i16, ptr %6, align 2, !tbaa !116
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds i16, ptr %6, i64 1
  br i1 %8, label %10, label %5, !llvm.loop !118

10:                                               ; preds = %5
  %11 = ptrtoint ptr %6 to i64
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %1, i32 noundef %15)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML23accumDOMStringUTFDirectERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !109
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %10, i32 noundef %12)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML19accumArrayUTFDirectEPKtjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 align 2 !prof !139 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds i16, ptr %1, i64 %7
  tail call void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef %8, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #7 align 2 !prof !142 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %4 = load i32, ptr %3, align 8, !tbaa !143
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !143
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = getelementptr inbounds i16, ptr %8, i64 %6
  store i16 %1, ptr %9, align 2, !tbaa !116
  %10 = icmp eq i32 %5, 512
  br i1 %10, label %11, label %17, !prof !144

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %8, i32 noundef 0, i32 noundef %5), !prof !145
  store i32 0, ptr %3, align 8, !tbaa !143
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML14accumStringUTFEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1) #7 align 2 !prof !146 {
  %3 = load i16, ptr %1, align 2, !tbaa !116
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %27, label %5, !prof !147

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33, i32 3
  br label %8

8:                                                ; preds = %5, %23
  %9 = phi i16 [ %3, %5 ], [ %25, %23 ]
  %10 = phi ptr [ %1, %5 ], [ %24, %23 ]
  %11 = load i32, ptr %6, align 8, !tbaa !143
  %12 = add i32 %11, 1
  store i32 %12, ptr %6, align 8, !tbaa !143
  %13 = zext i32 %11 to i64
  %14 = load ptr, ptr %7, align 8, !tbaa !112
  %15 = getelementptr inbounds i16, ptr %14, i64 %13
  store i16 %9, ptr %15, align 2, !tbaa !116
  %16 = icmp eq i32 %12, 512
  br i1 %16, label %17, label %23, !prof !148

17:                                               ; preds = %8
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds ptr, ptr %20, i64 7
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %14, i32 noundef 0, i32 noundef %12), !prof !149
  store i32 0, ptr %6, align 8, !tbaa !143
  br label %23

23:                                               ; preds = %8, %17
  %24 = getelementptr inbounds i16, ptr %10, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !116
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %8, !prof !150, !llvm.loop !151

27:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML17accumDOMStringUTFERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !113
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !109
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33, i32 3
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %16 = zext i32 %10 to i64
  br label %17

17:                                               ; preds = %12, %32
  %18 = phi i64 [ 0, %12 ], [ %33, %32 ]
  %19 = getelementptr inbounds i16, ptr %8, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !116
  %21 = load i32, ptr %13, align 8, !tbaa !143
  %22 = add i32 %21, 1
  store i32 %22, ptr %13, align 8, !tbaa !143
  %23 = zext i32 %21 to i64
  %24 = load ptr, ptr %14, align 8, !tbaa !112
  %25 = getelementptr inbounds i16, ptr %24, i64 %23
  store i16 %20, ptr %25, align 2, !tbaa !116
  %26 = icmp eq i32 %22, 512
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load ptr, ptr %15, align 8, !tbaa !76
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  %30 = getelementptr inbounds ptr, ptr %29, i64 7
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %24, i32 noundef 0, i32 noundef %22)
  store i32 0, ptr %13, align 8, !tbaa !143
  br label %32

32:                                               ; preds = %27, %17
  %33 = add nuw nsw i64 %18, 1
  %34 = icmp eq i64 %33, %16
  br i1 %34, label %35, label %17, !llvm.loop !152

35:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #7 align 2 !prof !153 {
  %5 = add i32 %3, %2
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %7, label %12, !prof !154

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33, i32 3
  %10 = zext i32 %2 to i64
  %11 = zext i32 %5 to i64
  br label %13

12:                                               ; preds = %29, %4
  ret void

13:                                               ; preds = %7, %29
  %14 = phi i64 [ %10, %7 ], [ %30, %29 ]
  %15 = getelementptr inbounds i16, ptr %1, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !116
  %17 = load i32, ptr %8, align 8, !tbaa !143
  %18 = add i32 %17, 1
  store i32 %18, ptr %8, align 8, !tbaa !143
  %19 = zext i32 %17 to i64
  %20 = load ptr, ptr %9, align 8, !tbaa !112
  %21 = getelementptr inbounds i16, ptr %20, i64 %19
  store i16 %16, ptr %21, align 2, !tbaa !116
  %22 = icmp eq i32 %18, 512
  br i1 %22, label %23, label %29, !prof !155

23:                                               ; preds = %13
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !76
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = getelementptr inbounds ptr, ptr %26, i64 7
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull %20, i32 noundef 0, i32 noundef %18), !prof !156
  store i32 0, ptr %8, align 8, !tbaa !143
  br label %29

29:                                               ; preds = %13, %23
  %30 = add nuw nsw i64 %14, 1
  %31 = icmp eq i64 %30, %11
  br i1 %31, label %12, label %13, !prof !157, !llvm.loop !152
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML21accumNameAsCharDirectEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !139 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !122
  %7 = icmp ult i16 %6, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %9, i64 0, i32 4, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %9, i64 0, i32 3
  br i1 %7, label %12, label %20

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4)
  store i16 63, ptr %4, align 2, !tbaa !116
  %13 = load i64, ptr %10, align 8, !tbaa !113
  %14 = load i32, ptr %11, align 8, !tbaa !140
  %15 = zext i32 %14 to i64
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %9)
  br label %18

18:                                               ; preds = %12, %17
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %9, i64 0, i32 4
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 2 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4)
  br label %28

20:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3)
  store i16 %1, ptr %3, align 2, !tbaa !116
  %21 = load i64, ptr %10, align 8, !tbaa !113
  %22 = load i32, ptr %11, align 8, !tbaa !140
  %23 = zext i32 %22 to i64
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %9)
  br label %26

26:                                               ; preds = %20, %25
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %9, i64 0, i32 4
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 2 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3)
  br label %28

28:                                               ; preds = %26, %18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML24accumContentAsCharDirectEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !139 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !122
  %6 = icmp ult i16 %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = zext i16 %1 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %8)
  br label %21

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3)
  store i16 %1, ptr %3, align 2, !tbaa !116
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %11, i64 0, i32 4, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !113
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !140
  %16 = zext i32 %15 to i64
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144) %11)
  br label %19

19:                                               ; preds = %9, %18
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %11, i64 0, i32 4
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 2 dereferenceable(2) %3)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3)
  br label %21

21:                                               ; preds = %19, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML15accumNameAsCharEt(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !122
  %5 = icmp ult i16 %4, %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !143
  %9 = zext i32 %7 to i64
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = getelementptr inbounds i16, ptr %11, i64 %9
  %13 = select i1 %5, i16 63, i16 %1
  store i16 %13, ptr %12, align 2, !tbaa !116
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %15 = load i32, ptr %14, align 8, !tbaa !143
  %16 = icmp eq i32 %15, 512
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !112
  %22 = load ptr, ptr %19, align 8, !tbaa !73
  %23 = getelementptr inbounds ptr, ptr %22, i64 7
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %21, i32 noundef 0, i32 noundef %15)
  store i32 0, ptr %14, align 8, !tbaa !143
  br label %25

25:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18accumContentAsCharEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !122
  %5 = icmp ult i16 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext i16 %1 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %7)
  br label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %10 = load i32, ptr %9, align 8, !tbaa !143
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !143
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !112
  %15 = getelementptr inbounds i16, ptr %14, i64 %12
  store i16 %1, ptr %15, align 2, !tbaa !116
  br label %16

16:                                               ; preds = %8, %6
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %18 = load i32, ptr %17, align 8, !tbaa !143
  %19 = icmp eq i32 %18, 512
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !112
  %25 = load ptr, ptr %22, align 8, !tbaa !73
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull %24, i32 noundef 0, i32 noundef %18)
  store i32 0, ptr %17, align 8, !tbaa !143
  br label %28

28:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML15accumNameStringEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1) #1 align 2 !prof !139 {
  %3 = load i16, ptr %1, align 2, !tbaa !116
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  br label %8

8:                                                ; preds = %5, %23
  %9 = phi i16 [ %3, %5 ], [ %26, %23 ]
  %10 = phi ptr [ %1, %5 ], [ %25, %23 ]
  %11 = load i64, ptr %6, align 8, !tbaa !129
  %12 = load i64, ptr %7, align 8, !tbaa !129
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = and i64 %11, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %13, align 8, !tbaa !73
  %18 = getelementptr i8, ptr %17, i64 %11
  %19 = getelementptr i8, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !nosanitize !126
  br label %23

21:                                               ; preds = %8
  %22 = inttoptr i64 %11 to ptr
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %20, %16 ], [ %22, %21 ]
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(1709) %13, i16 noundef zeroext %9)
  %25 = getelementptr inbounds i16, ptr %10, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !116
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %8, !llvm.loop !158

28:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18accumContentStringEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1) #1 align 2 !prof !139 {
  %3 = load i16, ptr %1, align 2, !tbaa !116
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  br label %8

8:                                                ; preds = %5, %23
  %9 = phi i16 [ %3, %5 ], [ %26, %23 ]
  %10 = phi ptr [ %1, %5 ], [ %25, %23 ]
  %11 = load i64, ptr %6, align 8, !tbaa !130
  %12 = load i64, ptr %7, align 8, !tbaa !130
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = and i64 %11, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %13, align 8, !tbaa !73
  %18 = getelementptr i8, ptr %17, i64 %11
  %19 = getelementptr i8, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !nosanitize !126
  br label %23

21:                                               ; preds = %8
  %22 = inttoptr i64 %11 to ptr
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %20, %16 ], [ %22, %21 ]
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(1709) %13, i16 noundef zeroext %9)
  %25 = getelementptr inbounds i16, ptr %10, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !116
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %8, !llvm.loop !159

28:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18accumNameDOMStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !113
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !109
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41
  %10 = load i64, ptr %9, align 8, !tbaa !135
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !135
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = and i64 %10, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %13, align 8, !tbaa !73
  %18 = getelementptr i8, ptr %17, i64 %10
  %19 = getelementptr i8, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !nosanitize !126
  br label %23

21:                                               ; preds = %2
  %22 = inttoptr i64 %10 to ptr
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %20, %16 ], [ %22, %21 ]
  %25 = icmp eq i64 %4, 0
  %26 = select i1 %25, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(1709) %13, ptr noundef %26, i32 noundef 0, i32 noundef %8)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML21accumContentDOMStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !113
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !109
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %10 = load i64, ptr %9, align 8, !tbaa !136
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !136
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = and i64 %10, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %13, align 8, !tbaa !73
  %18 = getelementptr i8, ptr %17, i64 %10
  %19 = getelementptr i8, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !nosanitize !126
  br label %23

21:                                               ; preds = %2
  %22 = inttoptr i64 %10 to ptr
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %20, %16 ], [ %22, %21 ]
  %25 = icmp eq i64 %4, 0
  %26 = select i1 %25, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(1709) %13, ptr noundef %26, i32 noundef 0, i32 noundef %8)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML14accumNameArrayEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 align 2 !prof !139 {
  %5 = add i32 %3, %2
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %10 = zext i32 %2 to i64
  %11 = zext i32 %5 to i64
  br label %13

12:                                               ; preds = %29, %4
  ret void

13:                                               ; preds = %7, %29
  %14 = phi i64 [ %10, %7 ], [ %31, %29 ]
  %15 = getelementptr inbounds i16, ptr %1, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !116
  %17 = load i64, ptr %8, align 8, !tbaa !129
  %18 = load i64, ptr %9, align 8, !tbaa !129
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = and i64 %17, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %19, align 8, !tbaa !73
  %24 = getelementptr i8, ptr %23, i64 %17
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !nosanitize !126
  br label %29

27:                                               ; preds = %13
  %28 = inttoptr i64 %17 to ptr
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi ptr [ %26, %22 ], [ %28, %27 ]
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(1709) %19, i16 noundef zeroext %16)
  %31 = add nuw nsw i64 %14, 1
  %32 = icmp eq i64 %31, %11
  br i1 %32, label %12, label %13, !llvm.loop !160
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML17accumContentArrayEPKtjj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #1 align 2 !prof !139 {
  %5 = add i32 %3, %2
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %10 = zext i32 %2 to i64
  %11 = zext i32 %5 to i64
  br label %13

12:                                               ; preds = %29, %4
  ret void

13:                                               ; preds = %7, %29
  %14 = phi i64 [ %10, %7 ], [ %31, %29 ]
  %15 = getelementptr inbounds i16, ptr %1, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !116
  %17 = load i64, ptr %8, align 8, !tbaa !130
  %18 = load i64, ptr %9, align 8, !tbaa !130
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = and i64 %17, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %19, align 8, !tbaa !73
  %24 = getelementptr i8, ptr %23, i64 %17
  %25 = getelementptr i8, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !nosanitize !126
  br label %29

27:                                               ; preds = %13
  %28 = inttoptr i64 %17 to ptr
  br label %29

29:                                               ; preds = %22, %27
  %30 = phi ptr [ %26, %22 ], [ %28, %27 ]
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(1709) %19, i16 noundef zeroext %16)
  %31 = add nuw nsw i64 %14, 1
  %32 = icmp eq i64 %31, %11
  br i1 %32, label %12, label %13, !llvm.loop !161
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML10flushCharsEv(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0) #1 align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = load ptr, ptr %3, align 8, !tbaa !73
  %9 = getelementptr inbounds ptr, ptr %8, i64 7
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %7), !prof !162
  store i32 0, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML12initCharsMapEv(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #8 align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %2, i8 0, i64 512, i1 false)
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 32, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !163

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 32, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = zext i32 %4 to i64
  br label %14

10:                                               ; preds = %14, %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 9
  store i16 83, ptr %11, align 4, !tbaa !116
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 10
  store i16 83, ptr %12, align 2, !tbaa !116
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 13
  store i16 83, ptr %13, align 4, !tbaa !116
  br label %22

14:                                               ; preds = %6, %14
  %15 = phi i64 [ 0, %6 ], [ %20, %14 ]
  %16 = getelementptr inbounds i16, ptr %8, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !116
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %18
  store i16 83, ptr %19, align 2, !tbaa !116
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %10, label %14, !prof !164, !llvm.loop !165

22:                                               ; preds = %10, %22
  %23 = phi i64 [ 1, %10 ], [ %25, %22 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %23
  store i16 83, ptr %24, align 2, !tbaa !116
  %25 = add nuw nsw i64 %23, 1
  %26 = icmp eq i64 %25, 32
  br i1 %26, label %27, label %22, !prof !166, !llvm.loop !167

27:                                               ; preds = %22, %27
  %28 = phi i64 [ %30, %27 ], [ 127, %22 ]
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %28
  store i16 83, ptr %29, align 2, !tbaa !116
  %30 = add nuw nsw i64 %28, 1
  %31 = icmp eq i64 %30, 159
  br i1 %31, label %32, label %27, !prof !168, !llvm.loop !169

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %33, i8 0, i64 512, i1 false)
  %34 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 60
  store i16 83, ptr %34, align 2, !tbaa !116
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 62
  store i16 83, ptr %35, align 2, !tbaa !116
  %36 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 38
  store i16 83, ptr %36, align 2, !tbaa !116
  br label %37

37:                                               ; preds = %32, %37
  %38 = phi i64 [ 1, %32 ], [ %40, %37 ]
  %39 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %38
  store i16 83, ptr %39, align 2, !tbaa !116
  %40 = add nuw nsw i64 %38, 1
  %41 = icmp eq i64 %40, 32
  br i1 %41, label %49, label %37, !prof !166, !llvm.loop !170

42:                                               ; preds = %49
  %43 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 9
  store i16 0, ptr %43, align 4, !tbaa !116
  %44 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %45 = load i16, ptr %44, align 8, !tbaa !122
  %46 = icmp ult i16 %45, 256
  br i1 %46, label %47, label %54, !prof !110

47:                                               ; preds = %42
  %48 = zext nneg i16 %45 to i64
  br label %55

49:                                               ; preds = %37, %49
  %50 = phi i64 [ %52, %49 ], [ 127, %37 ]
  %51 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %50
  store i16 83, ptr %51, align 2, !tbaa !116
  %52 = add nuw nsw i64 %50, 1
  %53 = icmp eq i64 %52, 159
  br i1 %53, label %42, label %49, !prof !168, !llvm.loop !171

54:                                               ; preds = %55, %42
  ret void

55:                                               ; preds = %47, %55
  %56 = phi i64 [ %48, %47 ], [ %58, %55 ]
  %57 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %56
  store i16 83, ptr %57, align 2, !tbaa !116
  %58 = add nuw nsw i64 %56, 1
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 256
  br i1 %60, label %54, label %55, !prof !99, !llvm.loop !172
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !173 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !174
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !175

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !176
  %8 = load ptr, ptr %0, align 8, !tbaa !102
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !177

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #21
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !178 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !179
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !180

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  %8 = load ptr, ptr %0, align 8, !tbaa !108
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !182

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #21
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !183 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !111
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !184

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = load ptr, ptr %0, align 8, !tbaa !107
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !185

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #21
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014FormatterToXML6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringEbiS8_S8_S8_S8_bS8_NS_17FormatterListener7eFormatEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %8, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %11, i1 noundef zeroext %12) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %14 = load ptr, ptr %0, align 8, !tbaa !73
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1712)
  invoke void @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1709) %17, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %8, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef %11, i1 noundef zeroext %12, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %18 unwind label %19

18:                                               ; preds = %13
  ret ptr %17

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = icmp eq ptr %17, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 8, !tbaa !73
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %17)
          to label %29 unwind label %26

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #21
  unreachable

29:                                               ; preds = %19, %22
  resume { ptr, i32 } %20
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1709) %0) unnamed_addr #9 align 2 !prof !72 {
  store ptr getelementptr inbounds ({ [27 x ptr] }, ptr @_ZTVN11xalanc_1_1014FormatterToXMLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 33
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 32
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 31
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 30
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 29
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #20
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXMLD0Ev(ptr noundef nonnull align 8 dereferenceable(1709) %0) unnamed_addr #9 align 2 !prof !139 {
  tail call void @_ZN11xalanc_1_1014FormatterToXMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1709) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #22
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #8 align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %2, i8 0, i64 512, i1 false)
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 32, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !163

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 32, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = zext i32 %4 to i64
  br label %14

10:                                               ; preds = %14, %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 9
  store i16 83, ptr %11, align 4, !tbaa !116
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 10
  store i16 83, ptr %12, align 2, !tbaa !116
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 13
  store i16 83, ptr %13, align 4, !tbaa !116
  br label %22

14:                                               ; preds = %6, %14
  %15 = phi i64 [ 0, %6 ], [ %20, %14 ]
  %16 = getelementptr inbounds i16, ptr %8, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !116
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %18
  store i16 83, ptr %19, align 2, !tbaa !116
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %10, label %14, !prof !164, !llvm.loop !165

22:                                               ; preds = %10, %22
  %23 = phi i64 [ 1, %10 ], [ %25, %22 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %23
  store i16 83, ptr %24, align 2, !tbaa !116
  %25 = add nuw nsw i64 %23, 1
  %26 = icmp eq i64 %25, 32
  br i1 %26, label %28, label %22, !prof !166, !llvm.loop !167

27:                                               ; preds = %28
  ret void

28:                                               ; preds = %22, %28
  %29 = phi i64 [ %31, %28 ], [ 127, %22 ]
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %29
  store i16 83, ptr %30, align 2, !tbaa !116
  %31 = add nuw nsw i64 %29, 1
  %32 = icmp eq i64 %31, 159
  br i1 %32, label %27, label %28, !prof !168, !llvm.loop !169
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML17outputDocTypeDeclEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) local_unnamed_addr #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41
  %4 = load i64, ptr %3, align 8, !tbaa !135
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !135
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !73
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !126
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML26s_doctypeHeaderStartStringE, i32 noundef 0, i32 noundef 10)
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %20 = load i64, ptr %19, align 8, !tbaa !131
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !131
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load ptr, ptr %23, align 8, !tbaa !73
  %28 = getelementptr i8, ptr %27, i64 %20
  %29 = getelementptr i8, ptr %28, i64 -1
  %30 = load ptr, ptr %29, align 8, !nosanitize !126
  br label %33

31:                                               ; preds = %17
  %32 = inttoptr i64 %20 to ptr
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi ptr [ %30, %26 ], [ %32, %31 ]
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(1709) %23, ptr noundef %1)
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18
  %36 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !109
  %38 = icmp eq i32 %37, 0
  %39 = load i64, ptr %3, align 8, !tbaa !135
  %40 = load i64, ptr %5, align 8, !tbaa !135
  %41 = getelementptr inbounds i8, ptr %0, i64 %40
  %42 = and i64 %39, 1
  %43 = icmp eq i64 %42, 0
  br i1 %38, label %114, label %44

44:                                               ; preds = %33
  br i1 %43, label %50, label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %41, align 8, !tbaa !73
  %47 = getelementptr i8, ptr %46, i64 %39
  %48 = getelementptr i8, ptr %47, i64 -1
  %49 = load ptr, ptr %48, align 8, !nosanitize !126
  br label %52

50:                                               ; preds = %44
  %51 = inttoptr i64 %39 to ptr
  br label %52

52:                                               ; preds = %45, %50
  %53 = phi ptr [ %49, %45 ], [ %51, %50 ]
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(1709) %41, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML27s_doctypeHeaderPublicStringE, i32 noundef 0, i32 noundef 9)
  %54 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40
  %55 = load i64, ptr %54, align 8, !tbaa !133
  %56 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !133
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  %59 = and i64 %55, 1
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load ptr, ptr %58, align 8, !tbaa !73
  %63 = getelementptr i8, ptr %62, i64 %55
  %64 = getelementptr i8, ptr %63, i64 -1
  %65 = load ptr, ptr %64, align 8, !nosanitize !126
  br label %68

66:                                               ; preds = %52
  %67 = inttoptr i64 %55 to ptr
  br label %68

68:                                               ; preds = %61, %66
  %69 = phi ptr [ %65, %61 ], [ %67, %66 ]
  tail call void %69(ptr noundef nonnull align 8 dereferenceable(1709) %58, ptr noundef nonnull align 8 dereferenceable(36) %35)
  %70 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %71 = load i64, ptr %70, align 8, !tbaa !129
  %72 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !129
  %74 = getelementptr inbounds i8, ptr %0, i64 %73
  %75 = and i64 %71, 1
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %68
  %78 = load ptr, ptr %74, align 8, !tbaa !73
  %79 = getelementptr i8, ptr %78, i64 %71
  %80 = getelementptr i8, ptr %79, i64 -1
  %81 = load ptr, ptr %80, align 8, !nosanitize !126
  br label %84

82:                                               ; preds = %68
  %83 = inttoptr i64 %71 to ptr
  br label %84

84:                                               ; preds = %77, %82
  %85 = phi ptr [ %81, %77 ], [ %83, %82 ]
  tail call void %85(ptr noundef nonnull align 8 dereferenceable(1709) %74, i16 noundef zeroext 34)
  %86 = load i64, ptr %70, align 8, !tbaa !129
  %87 = load i64, ptr %72, align 8, !tbaa !129
  %88 = getelementptr inbounds i8, ptr %0, i64 %87
  %89 = and i64 %86, 1
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %84
  %92 = load ptr, ptr %88, align 8, !tbaa !73
  %93 = getelementptr i8, ptr %92, i64 %86
  %94 = getelementptr i8, ptr %93, i64 -1
  %95 = load ptr, ptr %94, align 8, !nosanitize !126
  br label %98

96:                                               ; preds = %84
  %97 = inttoptr i64 %86 to ptr
  br label %98

98:                                               ; preds = %91, %96
  %99 = phi ptr [ %95, %91 ], [ %97, %96 ]
  tail call void %99(ptr noundef nonnull align 8 dereferenceable(1709) %88, i16 noundef zeroext 32)
  %100 = load i64, ptr %70, align 8, !tbaa !129
  %101 = load i64, ptr %72, align 8, !tbaa !129
  %102 = getelementptr inbounds i8, ptr %0, i64 %101
  %103 = and i64 %100, 1
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load ptr, ptr %102, align 8, !tbaa !73
  %107 = getelementptr i8, ptr %106, i64 %100
  %108 = getelementptr i8, ptr %107, i64 -1
  %109 = load ptr, ptr %108, align 8, !nosanitize !126
  br label %112

110:                                              ; preds = %98
  %111 = inttoptr i64 %100 to ptr
  br label %112

112:                                              ; preds = %105, %110
  %113 = phi ptr [ %109, %105 ], [ %111, %110 ]
  tail call void %113(ptr noundef nonnull align 8 dereferenceable(1709) %102, i16 noundef zeroext 34)
  br label %124

114:                                              ; preds = %33
  br i1 %43, label %120, label %115

115:                                              ; preds = %114
  %116 = load ptr, ptr %41, align 8, !tbaa !73
  %117 = getelementptr i8, ptr %116, i64 %39
  %118 = getelementptr i8, ptr %117, i64 -1
  %119 = load ptr, ptr %118, align 8, !nosanitize !126
  br label %122

120:                                              ; preds = %114
  %121 = inttoptr i64 %39 to ptr
  br label %122

122:                                              ; preds = %115, %120
  %123 = phi ptr [ %119, %115 ], [ %121, %120 ]
  tail call void %123(ptr noundef nonnull align 8 dereferenceable(1709) %41, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML27s_doctypeHeaderSystemStringE, i32 noundef 0, i32 noundef 9)
  br label %124

124:                                              ; preds = %122, %112
  %125 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  %126 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40
  %127 = load i64, ptr %126, align 8, !tbaa !133
  %128 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !133
  %130 = getelementptr inbounds i8, ptr %0, i64 %129
  %131 = and i64 %127, 1
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %124
  %134 = load ptr, ptr %130, align 8, !tbaa !73
  %135 = getelementptr i8, ptr %134, i64 %127
  %136 = getelementptr i8, ptr %135, i64 -1
  %137 = load ptr, ptr %136, align 8, !nosanitize !126
  br label %140

138:                                              ; preds = %124
  %139 = inttoptr i64 %127 to ptr
  br label %140

140:                                              ; preds = %133, %138
  %141 = phi ptr [ %137, %133 ], [ %139, %138 ]
  tail call void %141(ptr noundef nonnull align 8 dereferenceable(1709) %130, ptr noundef nonnull align 8 dereferenceable(36) %125)
  %142 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %143 = load i64, ptr %142, align 8, !tbaa !129
  %144 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !129
  %146 = getelementptr inbounds i8, ptr %0, i64 %145
  %147 = and i64 %143, 1
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %140
  %150 = load ptr, ptr %146, align 8, !tbaa !73
  %151 = getelementptr i8, ptr %150, i64 %143
  %152 = getelementptr i8, ptr %151, i64 -1
  %153 = load ptr, ptr %152, align 8, !nosanitize !126
  br label %156

154:                                              ; preds = %140
  %155 = inttoptr i64 %143 to ptr
  br label %156

156:                                              ; preds = %149, %154
  %157 = phi ptr [ %153, %149 ], [ %155, %154 ]
  tail call void %157(ptr noundef nonnull align 8 dereferenceable(1709) %146, i16 noundef zeroext 34)
  %158 = load i64, ptr %142, align 8, !tbaa !129
  %159 = load i64, ptr %144, align 8, !tbaa !129
  %160 = getelementptr inbounds i8, ptr %0, i64 %159
  %161 = and i64 %158, 1
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %156
  %164 = load ptr, ptr %160, align 8, !tbaa !73
  %165 = getelementptr i8, ptr %164, i64 %158
  %166 = getelementptr i8, ptr %165, i64 -1
  %167 = load ptr, ptr %166, align 8, !nosanitize !126
  br label %170

168:                                              ; preds = %156
  %169 = inttoptr i64 %158 to ptr
  br label %170

170:                                              ; preds = %163, %168
  %171 = phi ptr [ %167, %163 ], [ %169, %168 ]
  tail call void %171(ptr noundef nonnull align 8 dereferenceable(1709) %160, i16 noundef zeroext 62)
  %172 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %173 = load ptr, ptr %172, align 8, !tbaa !115
  %174 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %175 = load i32, ptr %174, align 8, !tbaa !121
  %176 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %177 = load i64, ptr %176, align 8, !tbaa !136
  %178 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %179 = load i64, ptr %178, align 8, !tbaa !136
  %180 = getelementptr inbounds i8, ptr %0, i64 %179
  %181 = and i64 %177, 1
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %170
  %184 = load ptr, ptr %180, align 8, !tbaa !73
  %185 = getelementptr i8, ptr %184, i64 %177
  %186 = getelementptr i8, ptr %185, i64 -1
  %187 = load ptr, ptr %186, align 8, !nosanitize !126
  br label %190

188:                                              ; preds = %170
  %189 = inttoptr i64 %177 to ptr
  br label %190

190:                                              ; preds = %183, %188
  %191 = phi ptr [ %187, %183 ], [ %189, %188 ]
  tail call void %191(ptr noundef nonnull align 8 dereferenceable(1709) %180, ptr noundef %173, i32 noundef 0, i32 noundef %175)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #7 align 2 !prof !186 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %5 = load i32, ptr %4, align 8, !tbaa !121
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %7 = load i64, ptr %6, align 8, !tbaa !136
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !136
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = and i64 %7, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13, !prof !187

13:                                               ; preds = %1
  %14 = load ptr, ptr %10, align 8, !tbaa !73
  %15 = getelementptr i8, ptr %14, i64 %7
  %16 = getelementptr i8, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !nosanitize !126
  br label %20

18:                                               ; preds = %1
  %19 = inttoptr i64 %7 to ptr
  br label %20

20:                                               ; preds = %13, %18
  %21 = phi ptr [ %17, %13 ], [ %19, %18 ]
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(1709) %10, ptr noundef %3, i32 noundef 0, i32 noundef %5), !prof !188
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML15accumNameAsByteEt(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !122
  %5 = icmp ult i16 %4, %1
  %6 = trunc i16 %1 to i8
  %7 = select i1 %5, i8 63, i8 %6
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %9 = load i32, ptr %8, align 8, !tbaa !143
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !143
  %11 = zext i32 %9 to i64
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  %14 = getelementptr inbounds i8, ptr %13, i64 %11
  store i8 %7, ptr %14, align 1, !tbaa !189
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %16 = load i32, ptr %15, align 8, !tbaa !143
  %17 = icmp eq i32 %16, 512
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !181
  %23 = zext nneg i32 %16 to i64
  %24 = load ptr, ptr %20, align 8, !tbaa !73
  %25 = getelementptr inbounds ptr, ptr %24, i64 6
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %22, i64 noundef 0, i64 noundef %23)
  store i32 0, ptr %15, align 8, !tbaa !143
  br label %27

27:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML10flushBytesEv(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #1 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = zext i32 %7 to i64
  %9 = load ptr, ptr %3, align 8, !tbaa !73
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5, i64 noundef 0, i64 noundef %8)
  store i32 0, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML21accumNameAsByteDirectEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !139 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !122
  %7 = icmp ult i16 %6, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  br i1 %7, label %10, label %14

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 63, ptr %4, align 1, !tbaa !189
  %11 = load ptr, ptr %9, align 8, !tbaa !73
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  call void %13(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %19

14:                                               ; preds = %2
  %15 = trunc i16 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %15, ptr %3, align 1, !tbaa !189
  %16 = load ptr, ptr %9, align 8, !tbaa !73
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %19

19:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18accumContentAsByteEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !122
  %5 = icmp ult i16 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = zext i16 %1 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %7)
  br label %17

8:                                                ; preds = %2
  %9 = trunc i16 %1 to i8
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %11 = load i32, ptr %10, align 8, !tbaa !143
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !143
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = getelementptr inbounds i8, ptr %15, i64 %13
  store i8 %9, ptr %16, align 1, !tbaa !189
  br label %17

17:                                               ; preds = %8, %6
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 34
  %19 = load i32, ptr %18, align 8, !tbaa !143
  %20 = icmp eq i32 %19, 512
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !76
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 36, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !181
  %26 = zext nneg i32 %19 to i64
  %27 = load ptr, ptr %23, align 8, !tbaa !73
  %28 = getelementptr inbounds ptr, ptr %27, i64 6
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %25, i64 noundef 0, i64 noundef %26)
  store i32 0, ptr %18, align 8, !tbaa !143
  br label %30

30:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %1) local_unnamed_addr #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %4 = load i64, ptr %3, align 8, !tbaa !130
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !130
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !73
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !126
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, i16 noundef zeroext 38)
  %19 = load i64, ptr %3, align 8, !tbaa !130
  %20 = load i64, ptr %5, align 8, !tbaa !130
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = and i64 %19, 1
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %21, align 8, !tbaa !73
  %26 = getelementptr i8, ptr %25, i64 %19
  %27 = getelementptr i8, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !nosanitize !126
  br label %31

29:                                               ; preds = %17
  %30 = inttoptr i64 %19 to ptr
  br label %31

31:                                               ; preds = %24, %29
  %32 = phi ptr [ %28, %24 ], [ %30, %29 ]
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(1709) %21, i16 noundef zeroext 35)
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %34 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %33)
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %36 = load i64, ptr %35, align 8, !tbaa !134
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !134
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  %40 = and i64 %36, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %31
  %43 = load ptr, ptr %39, align 8, !tbaa !73
  %44 = getelementptr i8, ptr %43, i64 %36
  %45 = getelementptr i8, ptr %44, i64 -1
  %46 = load ptr, ptr %45, align 8, !nosanitize !126
  br label %49

47:                                               ; preds = %31
  %48 = inttoptr i64 %36 to ptr
  br label %49

49:                                               ; preds = %42, %47
  %50 = phi ptr [ %46, %42 ], [ %48, %47 ]
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(1709) %39, ptr noundef nonnull align 8 dereferenceable(36) %34)
  %51 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !113
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i64, ptr %51, align 8, !tbaa !113
  %56 = sub i64 %55, %52
  store i64 %56, ptr %51, align 8, !tbaa !113
  br label %57

57:                                               ; preds = %54, %49
  %58 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 1
  store i32 0, ptr %58, align 8, !tbaa !109
  %59 = load i64, ptr %3, align 8, !tbaa !130
  %60 = load i64, ptr %5, align 8, !tbaa !130
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  %62 = and i64 %59, 1
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %61, align 8, !tbaa !73
  %66 = getelementptr i8, ptr %65, i64 %59
  %67 = getelementptr i8, ptr %66, i64 -1
  %68 = load ptr, ptr %67, align 8, !nosanitize !126
  br label %71

69:                                               ; preds = %57
  %70 = inttoptr i64 %59 to ptr
  br label %71

71:                                               ; preds = %64, %69
  %72 = phi ptr [ %68, %64 ], [ %70, %69 ]
  tail call void %72(ptr noundef nonnull align 8 dereferenceable(1709) %61, i16 noundef zeroext 59)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML24accumContentAsByteDirectEt(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !139 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !122
  %6 = icmp ult i16 %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = zext i16 %1 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %8)
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = trunc i16 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %12, ptr %3, align 1, !tbaa !189
  %13 = load ptr, ptr %11, align 8, !tbaa !73
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %16

16:                                               ; preds = %9, %7
  ret void
}

declare void @_ZN11xalanc_1_1017XalanOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = zext i16 %0 to i64
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %7 unwind label %44

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #20
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %8 unwind label %46

8:                                                ; preds = %7
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 143, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %10 unwind label %48

10:                                               ; preds = %8
  %11 = call ptr @__cxa_allocate_exception(i64 24) #20
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !113
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = select i1 %14, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %11, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %10
  %20 = load i16, ptr %17, align 2, !tbaa !116
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %24, %22 ], [ %17, %19 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !116
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %22, !llvm.loop !190

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i64
  %29 = ptrtoint ptr %17 to i64
  %30 = sub i64 %28, %29
  %31 = add i64 %30, 2
  %32 = and i64 %31, 8589934590
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi i64 [ %32, %27 ], [ 2, %19 ]
  %35 = load ptr, ptr %1, align 8, !tbaa !73
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %34)
          to label %39 unwind label %50

39:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %38, ptr nonnull align 2 %17, i64 %34, i1 false)
  br label %40

40:                                               ; preds = %10, %39
  %41 = phi ptr [ %38, %39 ], [ null, %10 ]
  %42 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %11, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !191
  %43 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %11, i64 0, i32 2
  store ptr %1, ptr %43, align 8, !tbaa !193
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #23
          to label %85 unwind label %48

44:                                               ; preds = %2
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %69

46:                                               ; preds = %7
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %67

48:                                               ; preds = %40, %8
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %52

50:                                               ; preds = %33
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %11) #20
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %49, %48 ], [ %51, %50 ]
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !111
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !112
  %60 = load ptr, ptr %4, align 8, !tbaa !107
  %61 = load ptr, ptr %60, align 8, !tbaa !73
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %59)
          to label %67 unwind label %64

64:                                               ; preds = %57
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #21
  unreachable

67:                                               ; preds = %57, %52, %46
  %68 = phi { ptr, i32 } [ %47, %46 ], [ %53, %52 ], [ %53, %57 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  br label %69

69:                                               ; preds = %67, %44
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %45, %44 ]
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !111
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !112
  %77 = load ptr, ptr %3, align 8, !tbaa !107
  %78 = load ptr, ptr %77, align 8, !tbaa !73
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef %76)
          to label %84 unwind label %81

81:                                               ; preds = %74
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  call void @__clang_call_terminate(ptr %83) #21
  unreachable

84:                                               ; preds = %69, %74
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  resume { ptr, i32 } %70

85:                                               ; preds = %40
  unreachable
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !193
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  %6 = load ptr, ptr %3, align 8, !tbaa !73
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML30throwInvalidCharacterExceptionEjRN11xercesc_2_713MemoryManagerE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #20
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %5 unwind label %44

5:                                                ; preds = %2
  %6 = zext i32 %0 to i64
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %8 unwind label %46

8:                                                ; preds = %5
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 177, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %10 unwind label %46

10:                                               ; preds = %8
  %11 = call ptr @__cxa_allocate_exception(i64 24) #20
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !113
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = select i1 %14, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %11, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %10
  %20 = load i16, ptr %17, align 2, !tbaa !116
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %24, %22 ], [ %17, %19 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !116
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %22, !llvm.loop !190

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i64
  %29 = ptrtoint ptr %17 to i64
  %30 = sub i64 %28, %29
  %31 = add i64 %30, 2
  %32 = and i64 %31, 8589934590
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi i64 [ %32, %27 ], [ 2, %19 ]
  %35 = load ptr, ptr %1, align 8, !tbaa !73
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %34)
          to label %39 unwind label %48

39:                                               ; preds = %33
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %38, ptr nonnull align 2 %17, i64 %34, i1 false)
  br label %40

40:                                               ; preds = %10, %39
  %41 = phi ptr [ %38, %39 ], [ null, %10 ]
  %42 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %11, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !191
  %43 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %11, i64 0, i32 2
  store ptr %1, ptr %43, align 8, !tbaa !193
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #23
          to label %81 unwind label %46

44:                                               ; preds = %2
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %65

46:                                               ; preds = %40, %8, %5
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %50

48:                                               ; preds = %33
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %11) #20
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi { ptr, i32 } [ %47, %46 ], [ %49, %48 ]
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !111
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !112
  %58 = load ptr, ptr %4, align 8, !tbaa !107
  %59 = load ptr, ptr %58, align 8, !tbaa !73
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  invoke void %61(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %57)
          to label %65 unwind label %62

62:                                               ; preds = %55
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  call void @__clang_call_terminate(ptr %64) #21
  unreachable

65:                                               ; preds = %55, %50, %44
  %66 = phi { ptr, i32 } [ %45, %44 ], [ %51, %50 ], [ %51, %55 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !111
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !112
  %73 = load ptr, ptr %3, align 8, !tbaa !107
  %74 = load ptr, ptr %73, align 8, !tbaa !73
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef %72)
          to label %80 unwind label %77

77:                                               ; preds = %70
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #21
  unreachable

80:                                               ; preds = %65, %70
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  resume { ptr, i32 } %66

81:                                               ; preds = %40
  unreachable
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #20
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #20
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %7 unwind label %50

7:                                                ; preds = %3
  %8 = zext i16 %0 to i64
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %8, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %10 unwind label %52

10:                                               ; preds = %7
  %11 = zext i16 %1 to i64
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %11, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %13 unwind label %52

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #20
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %14 unwind label %54

14:                                               ; preds = %13
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 144, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %16 unwind label %56

16:                                               ; preds = %14
  %17 = call ptr @__cxa_allocate_exception(i64 24) #20
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !113
  %20 = icmp eq i64 %19, 0
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = select i1 %20, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %22
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !73
  %24 = icmp eq ptr %23, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %16
  %26 = load i16, ptr %23, align 2, !tbaa !116
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %30, %28 ], [ %23, %25 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !116
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %28, !llvm.loop !190

33:                                               ; preds = %28
  %34 = ptrtoint ptr %30 to i64
  %35 = ptrtoint ptr %23 to i64
  %36 = sub i64 %34, %35
  %37 = add i64 %36, 2
  %38 = and i64 %37, 8589934590
  br label %39

39:                                               ; preds = %33, %25
  %40 = phi i64 [ %38, %33 ], [ 2, %25 ]
  %41 = load ptr, ptr %2, align 8, !tbaa !73
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
          to label %45 unwind label %58

45:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr nonnull align 2 %23, i64 %40, i1 false)
  br label %46

46:                                               ; preds = %16, %45
  %47 = phi ptr [ %44, %45 ], [ null, %16 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %17, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !191
  %49 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %17, i64 0, i32 2
  store ptr %2, ptr %49, align 8, !tbaa !193
  invoke void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #23
          to label %108 unwind label %56

50:                                               ; preds = %3
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %92

52:                                               ; preds = %10, %7
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %77

54:                                               ; preds = %13
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %75

56:                                               ; preds = %46, %14
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %60

58:                                               ; preds = %39
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %17) #20
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi { ptr, i32 } [ %57, %56 ], [ %59, %58 ]
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !111
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !112
  %68 = load ptr, ptr %6, align 8, !tbaa !107
  %69 = load ptr, ptr %68, align 8, !tbaa !73
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef %67)
          to label %75 unwind label %72

72:                                               ; preds = %65
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @__clang_call_terminate(ptr %74) #21
  unreachable

75:                                               ; preds = %65, %60, %54
  %76 = phi { ptr, i32 } [ %55, %54 ], [ %61, %60 ], [ %61, %65 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  br label %77

77:                                               ; preds = %75, %52
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %53, %52 ]
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !111
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !112
  %85 = load ptr, ptr %5, align 8, !tbaa !107
  %86 = load ptr, ptr %85, align 8, !tbaa !73
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %84)
          to label %92 unwind label %89

89:                                               ; preds = %82
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #21
  unreachable

92:                                               ; preds = %82, %77, %50
  %93 = phi { ptr, i32 } [ %51, %50 ], [ %78, %77 ], [ %78, %82 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !111
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !112
  %100 = load ptr, ptr %4, align 8, !tbaa !107
  %101 = load ptr, ptr %100, align 8, !tbaa !73
  %102 = getelementptr inbounds ptr, ptr %101, i64 3
  %103 = load ptr, ptr %102, align 8
  invoke void %103(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef %99)
          to label %107 unwind label %104

104:                                              ; preds = %97
  %105 = landingpad { ptr, i32 }
          catch ptr null
  %106 = extractvalue { ptr, i32 } %105, 0
  call void @__clang_call_terminate(ptr %106) #21
  unreachable

107:                                              ; preds = %92, %97
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  resume { ptr, i32 } %93

108:                                              ; preds = %46
  unreachable
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEscapeEtjPKtjb(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #1 align 2 !prof !139 {
  %7 = load ptr, ptr %0, align 8, !tbaa !73
  %8 = getelementptr inbounds ptr, ptr %7, i64 21
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1, i1 noundef zeroext %5)
  br i1 %10, label %96, label %11

11:                                               ; preds = %6
  %12 = zext i16 %1 to i32
  %13 = and i16 %1, -1024
  %14 = icmp eq i16 %13, -10240
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = add i32 %2, 1
  %17 = icmp ult i32 %16, %4
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %20 = load ptr, ptr %19, align 8, !tbaa !107
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %20)
  unreachable

21:                                               ; preds = %15
  %22 = zext i32 %16 to i64
  %23 = getelementptr inbounds i16, ptr %3, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !116
  %25 = and i16 %24, -1024
  %26 = icmp eq i16 %25, -9216
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %29 = load ptr, ptr %28, align 8, !tbaa !107
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %1, i16 noundef zeroext %24, ptr noundef nonnull align 8 dereferenceable(8) %29)
  unreachable

30:                                               ; preds = %21
  %31 = zext i16 %24 to i64
  %32 = shl nuw nsw i32 %12, 10
  %33 = add nsw i32 %32, -56613888
  %34 = zext nneg i32 %33 to i64
  %35 = add nuw nsw i64 %34, %31
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %35)
  br label %96

36:                                               ; preds = %11
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %38 = load i16, ptr %37, align 8, !tbaa !122
  %39 = icmp ult i16 %38, %1
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 49
  %42 = load i8, ptr %41, align 4, !tbaa !125, !range !123, !noundef !126
  %43 = icmp eq i8 %42, 0
  %44 = icmp eq i16 %1, 8232
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %48 = load ptr, ptr %47, align 8, !tbaa !107
  tail call void @_ZN11xalanc_1_1014FormatterToXML30throwInvalidCharacterExceptionEjRN11xercesc_2_713MemoryManagerE(i32 noundef 8232, ptr noundef nonnull align 8 dereferenceable(8) %48)
  unreachable

49:                                               ; preds = %40
  %50 = zext i16 %1 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %50)
  br label %96

51:                                               ; preds = %36
  %52 = icmp ult i16 %1, 256
  br i1 %52, label %53, label %79

53:                                               ; preds = %51
  %54 = zext nneg i16 %1 to i64
  %55 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !116
  %57 = icmp eq i16 %56, 83
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = icmp ult i16 %1, 32
  br i1 %59, label %60, label %68

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 49
  %62 = load i8, ptr %61, align 4, !tbaa !125, !range !123, !noundef !126
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %54)
  br label %96

65:                                               ; preds = %60
  %66 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %67 = load ptr, ptr %66, align 8, !tbaa !107
  tail call void @_ZN11xalanc_1_1014FormatterToXML30throwInvalidCharacterExceptionEjRN11xercesc_2_713MemoryManagerE(i32 noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %67)
  unreachable

68:                                               ; preds = %58
  %69 = icmp eq i16 %1, 133
  br i1 %69, label %70, label %78

70:                                               ; preds = %68
  %71 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 49
  %72 = load i8, ptr %71, align 4, !tbaa !125, !range !123, !noundef !126
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %54)
  br label %96

75:                                               ; preds = %70
  %76 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %77 = load ptr, ptr %76, align 8, !tbaa !107
  tail call void @_ZN11xalanc_1_1014FormatterToXML30throwInvalidCharacterExceptionEjRN11xercesc_2_713MemoryManagerE(i32 noundef 133, ptr noundef nonnull align 8 dereferenceable(8) %77)
  unreachable

78:                                               ; preds = %68
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %54)
  br label %96

79:                                               ; preds = %53, %51
  %80 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %81 = load i64, ptr %80, align 8, !tbaa !130
  %82 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !130
  %84 = getelementptr inbounds i8, ptr %0, i64 %83
  %85 = and i64 %81, 1
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %79
  %88 = load ptr, ptr %84, align 8, !tbaa !73
  %89 = getelementptr i8, ptr %88, i64 %81
  %90 = getelementptr i8, ptr %89, i64 -1
  %91 = load ptr, ptr %90, align 8, !nosanitize !126
  br label %94

92:                                               ; preds = %79
  %93 = inttoptr i64 %81 to ptr
  br label %94

94:                                               ; preds = %87, %92
  %95 = phi ptr [ %91, %87 ], [ %93, %92 ]
  tail call void %95(ptr noundef nonnull align 8 dereferenceable(1709) %84, i16 noundef zeroext %1)
  br label %96

96:                                               ; preds = %30, %94, %78, %74, %64, %49, %6
  %97 = phi i32 [ %2, %6 ], [ %16, %30 ], [ %2, %49 ], [ %2, %64 ], [ %2, %74 ], [ %2, %78 ], [ %2, %94 ]
  ret i32 %97
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !72 {
  %4 = icmp ne i16 %1, 10
  %5 = or i1 %4, %2
  br i1 %5, label %27, label %6, !prof !99

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %10 = load i32, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %12 = load i64, ptr %11, align 8, !tbaa !136
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !136
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = and i64 %12, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %6
  %19 = load ptr, ptr %15, align 8, !tbaa !73
  %20 = getelementptr i8, ptr %19, i64 %12
  %21 = getelementptr i8, ptr %20, i64 -1
  %22 = load ptr, ptr %21, align 8, !nosanitize !126
  br label %25

23:                                               ; preds = %6
  %24 = inttoptr i64 %12 to ptr
  br label %25

25:                                               ; preds = %18, %23
  %26 = phi ptr [ %22, %18 ], [ %24, %23 ]
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(1709) %15, ptr noundef %8, i32 noundef 0, i32 noundef %10)
  br label %393

27:                                               ; preds = %3
  switch i16 %1, label %393 [
    i16 60, label %28
    i16 62, label %87
    i16 38, label %146
    i16 34, label %219
    i16 39, label %306
  ], !prof !194

28:                                               ; preds = %27
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %30 = load i64, ptr %29, align 8, !tbaa !130
  %31 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !130
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = and i64 %30, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load ptr, ptr %33, align 8, !tbaa !73
  %38 = getelementptr i8, ptr %37, i64 %30
  %39 = getelementptr i8, ptr %38, i64 -1
  %40 = load ptr, ptr %39, align 8, !nosanitize !126
  br label %43

41:                                               ; preds = %28
  %42 = inttoptr i64 %30 to ptr
  br label %43

43:                                               ; preds = %36, %41
  %44 = phi ptr [ %40, %36 ], [ %42, %41 ]
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(1709) %33, i16 noundef zeroext 38)
  %45 = load i64, ptr %29, align 8, !tbaa !130
  %46 = load i64, ptr %31, align 8, !tbaa !130
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = and i64 %45, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %47, align 8, !tbaa !73
  %52 = getelementptr i8, ptr %51, i64 %45
  %53 = getelementptr i8, ptr %52, i64 -1
  %54 = load ptr, ptr %53, align 8, !nosanitize !126
  br label %57

55:                                               ; preds = %43
  %56 = inttoptr i64 %45 to ptr
  br label %57

57:                                               ; preds = %50, %55
  %58 = phi ptr [ %54, %50 ], [ %56, %55 ]
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(1709) %47, i16 noundef zeroext 108)
  %59 = load i64, ptr %29, align 8, !tbaa !130
  %60 = load i64, ptr %31, align 8, !tbaa !130
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  %62 = and i64 %59, 1
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr %61, align 8, !tbaa !73
  %66 = getelementptr i8, ptr %65, i64 %59
  %67 = getelementptr i8, ptr %66, i64 -1
  %68 = load ptr, ptr %67, align 8, !nosanitize !126
  br label %71

69:                                               ; preds = %57
  %70 = inttoptr i64 %59 to ptr
  br label %71

71:                                               ; preds = %64, %69
  %72 = phi ptr [ %68, %64 ], [ %70, %69 ]
  tail call void %72(ptr noundef nonnull align 8 dereferenceable(1709) %61, i16 noundef zeroext 116)
  %73 = load i64, ptr %29, align 8, !tbaa !130
  %74 = load i64, ptr %31, align 8, !tbaa !130
  %75 = getelementptr inbounds i8, ptr %0, i64 %74
  %76 = and i64 %73, 1
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load ptr, ptr %75, align 8, !tbaa !73
  %80 = getelementptr i8, ptr %79, i64 %73
  %81 = getelementptr i8, ptr %80, i64 -1
  %82 = load ptr, ptr %81, align 8, !nosanitize !126
  br label %85

83:                                               ; preds = %71
  %84 = inttoptr i64 %73 to ptr
  br label %85

85:                                               ; preds = %78, %83
  %86 = phi ptr [ %82, %78 ], [ %84, %83 ]
  tail call void %86(ptr noundef nonnull align 8 dereferenceable(1709) %75, i16 noundef zeroext 59)
  br label %393

87:                                               ; preds = %27
  %88 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %89 = load i64, ptr %88, align 8, !tbaa !130
  %90 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !130
  %92 = getelementptr inbounds i8, ptr %0, i64 %91
  %93 = and i64 %89, 1
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %100, label %95, !prof !99

95:                                               ; preds = %87
  %96 = load ptr, ptr %92, align 8, !tbaa !73
  %97 = getelementptr i8, ptr %96, i64 %89
  %98 = getelementptr i8, ptr %97, i64 -1
  %99 = load ptr, ptr %98, align 8, !nosanitize !126
  br label %102

100:                                              ; preds = %87
  %101 = inttoptr i64 %89 to ptr
  br label %102

102:                                              ; preds = %95, %100
  %103 = phi ptr [ %99, %95 ], [ %101, %100 ]
  tail call void %103(ptr noundef nonnull align 8 dereferenceable(1709) %92, i16 noundef zeroext 38), !prof !195
  %104 = load i64, ptr %88, align 8, !tbaa !130
  %105 = load i64, ptr %90, align 8, !tbaa !130
  %106 = getelementptr inbounds i8, ptr %0, i64 %105
  %107 = and i64 %104, 1
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %114, label %109, !prof !99

109:                                              ; preds = %102
  %110 = load ptr, ptr %106, align 8, !tbaa !73
  %111 = getelementptr i8, ptr %110, i64 %104
  %112 = getelementptr i8, ptr %111, i64 -1
  %113 = load ptr, ptr %112, align 8, !nosanitize !126
  br label %116

114:                                              ; preds = %102
  %115 = inttoptr i64 %104 to ptr
  br label %116

116:                                              ; preds = %109, %114
  %117 = phi ptr [ %113, %109 ], [ %115, %114 ]
  tail call void %117(ptr noundef nonnull align 8 dereferenceable(1709) %106, i16 noundef zeroext 103), !prof !195
  %118 = load i64, ptr %88, align 8, !tbaa !130
  %119 = load i64, ptr %90, align 8, !tbaa !130
  %120 = getelementptr inbounds i8, ptr %0, i64 %119
  %121 = and i64 %118, 1
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %128, label %123, !prof !99

123:                                              ; preds = %116
  %124 = load ptr, ptr %120, align 8, !tbaa !73
  %125 = getelementptr i8, ptr %124, i64 %118
  %126 = getelementptr i8, ptr %125, i64 -1
  %127 = load ptr, ptr %126, align 8, !nosanitize !126
  br label %130

128:                                              ; preds = %116
  %129 = inttoptr i64 %118 to ptr
  br label %130

130:                                              ; preds = %123, %128
  %131 = phi ptr [ %127, %123 ], [ %129, %128 ]
  tail call void %131(ptr noundef nonnull align 8 dereferenceable(1709) %120, i16 noundef zeroext 116), !prof !195
  %132 = load i64, ptr %88, align 8, !tbaa !130
  %133 = load i64, ptr %90, align 8, !tbaa !130
  %134 = getelementptr inbounds i8, ptr %0, i64 %133
  %135 = and i64 %132, 1
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %142, label %137, !prof !99

137:                                              ; preds = %130
  %138 = load ptr, ptr %134, align 8, !tbaa !73
  %139 = getelementptr i8, ptr %138, i64 %132
  %140 = getelementptr i8, ptr %139, i64 -1
  %141 = load ptr, ptr %140, align 8, !nosanitize !126
  br label %144

142:                                              ; preds = %130
  %143 = inttoptr i64 %132 to ptr
  br label %144

144:                                              ; preds = %137, %142
  %145 = phi ptr [ %141, %137 ], [ %143, %142 ]
  tail call void %145(ptr noundef nonnull align 8 dereferenceable(1709) %134, i16 noundef zeroext 59), !prof !195
  br label %393

146:                                              ; preds = %27
  %147 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %148 = load i64, ptr %147, align 8, !tbaa !130
  %149 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa !130
  %151 = getelementptr inbounds i8, ptr %0, i64 %150
  %152 = and i64 %148, 1
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %146
  %155 = load ptr, ptr %151, align 8, !tbaa !73
  %156 = getelementptr i8, ptr %155, i64 %148
  %157 = getelementptr i8, ptr %156, i64 -1
  %158 = load ptr, ptr %157, align 8, !nosanitize !126
  br label %161

159:                                              ; preds = %146
  %160 = inttoptr i64 %148 to ptr
  br label %161

161:                                              ; preds = %154, %159
  %162 = phi ptr [ %158, %154 ], [ %160, %159 ]
  tail call void %162(ptr noundef nonnull align 8 dereferenceable(1709) %151, i16 noundef zeroext 38)
  %163 = load i64, ptr %147, align 8, !tbaa !130
  %164 = load i64, ptr %149, align 8, !tbaa !130
  %165 = getelementptr inbounds i8, ptr %0, i64 %164
  %166 = and i64 %163, 1
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %161
  %169 = load ptr, ptr %165, align 8, !tbaa !73
  %170 = getelementptr i8, ptr %169, i64 %163
  %171 = getelementptr i8, ptr %170, i64 -1
  %172 = load ptr, ptr %171, align 8, !nosanitize !126
  br label %175

173:                                              ; preds = %161
  %174 = inttoptr i64 %163 to ptr
  br label %175

175:                                              ; preds = %168, %173
  %176 = phi ptr [ %172, %168 ], [ %174, %173 ]
  tail call void %176(ptr noundef nonnull align 8 dereferenceable(1709) %165, i16 noundef zeroext 97)
  %177 = load i64, ptr %147, align 8, !tbaa !130
  %178 = load i64, ptr %149, align 8, !tbaa !130
  %179 = getelementptr inbounds i8, ptr %0, i64 %178
  %180 = and i64 %177, 1
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %175
  %183 = load ptr, ptr %179, align 8, !tbaa !73
  %184 = getelementptr i8, ptr %183, i64 %177
  %185 = getelementptr i8, ptr %184, i64 -1
  %186 = load ptr, ptr %185, align 8, !nosanitize !126
  br label %189

187:                                              ; preds = %175
  %188 = inttoptr i64 %177 to ptr
  br label %189

189:                                              ; preds = %182, %187
  %190 = phi ptr [ %186, %182 ], [ %188, %187 ]
  tail call void %190(ptr noundef nonnull align 8 dereferenceable(1709) %179, i16 noundef zeroext 109)
  %191 = load i64, ptr %147, align 8, !tbaa !130
  %192 = load i64, ptr %149, align 8, !tbaa !130
  %193 = getelementptr inbounds i8, ptr %0, i64 %192
  %194 = and i64 %191, 1
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %189
  %197 = load ptr, ptr %193, align 8, !tbaa !73
  %198 = getelementptr i8, ptr %197, i64 %191
  %199 = getelementptr i8, ptr %198, i64 -1
  %200 = load ptr, ptr %199, align 8, !nosanitize !126
  br label %203

201:                                              ; preds = %189
  %202 = inttoptr i64 %191 to ptr
  br label %203

203:                                              ; preds = %196, %201
  %204 = phi ptr [ %200, %196 ], [ %202, %201 ]
  tail call void %204(ptr noundef nonnull align 8 dereferenceable(1709) %193, i16 noundef zeroext 112)
  %205 = load i64, ptr %147, align 8, !tbaa !130
  %206 = load i64, ptr %149, align 8, !tbaa !130
  %207 = getelementptr inbounds i8, ptr %0, i64 %206
  %208 = and i64 %205, 1
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %203
  %211 = load ptr, ptr %207, align 8, !tbaa !73
  %212 = getelementptr i8, ptr %211, i64 %205
  %213 = getelementptr i8, ptr %212, i64 -1
  %214 = load ptr, ptr %213, align 8, !nosanitize !126
  br label %217

215:                                              ; preds = %203
  %216 = inttoptr i64 %205 to ptr
  br label %217

217:                                              ; preds = %210, %215
  %218 = phi ptr [ %214, %210 ], [ %216, %215 ]
  tail call void %218(ptr noundef nonnull align 8 dereferenceable(1709) %207, i16 noundef zeroext 59)
  br label %393

219:                                              ; preds = %27
  %220 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %221 = load i64, ptr %220, align 8, !tbaa !130
  %222 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %223 = load i64, ptr %222, align 8, !tbaa !130
  %224 = getelementptr inbounds i8, ptr %0, i64 %223
  %225 = and i64 %221, 1
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %219
  %228 = load ptr, ptr %224, align 8, !tbaa !73
  %229 = getelementptr i8, ptr %228, i64 %221
  %230 = getelementptr i8, ptr %229, i64 -1
  %231 = load ptr, ptr %230, align 8, !nosanitize !126
  br label %234

232:                                              ; preds = %219
  %233 = inttoptr i64 %221 to ptr
  br label %234

234:                                              ; preds = %227, %232
  %235 = phi ptr [ %231, %227 ], [ %233, %232 ]
  tail call void %235(ptr noundef nonnull align 8 dereferenceable(1709) %224, i16 noundef zeroext 38)
  %236 = load i64, ptr %220, align 8, !tbaa !130
  %237 = load i64, ptr %222, align 8, !tbaa !130
  %238 = getelementptr inbounds i8, ptr %0, i64 %237
  %239 = and i64 %236, 1
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %234
  %242 = load ptr, ptr %238, align 8, !tbaa !73
  %243 = getelementptr i8, ptr %242, i64 %236
  %244 = getelementptr i8, ptr %243, i64 -1
  %245 = load ptr, ptr %244, align 8, !nosanitize !126
  br label %248

246:                                              ; preds = %234
  %247 = inttoptr i64 %236 to ptr
  br label %248

248:                                              ; preds = %241, %246
  %249 = phi ptr [ %245, %241 ], [ %247, %246 ]
  tail call void %249(ptr noundef nonnull align 8 dereferenceable(1709) %238, i16 noundef zeroext 113)
  %250 = load i64, ptr %220, align 8, !tbaa !130
  %251 = load i64, ptr %222, align 8, !tbaa !130
  %252 = getelementptr inbounds i8, ptr %0, i64 %251
  %253 = and i64 %250, 1
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %248
  %256 = load ptr, ptr %252, align 8, !tbaa !73
  %257 = getelementptr i8, ptr %256, i64 %250
  %258 = getelementptr i8, ptr %257, i64 -1
  %259 = load ptr, ptr %258, align 8, !nosanitize !126
  br label %262

260:                                              ; preds = %248
  %261 = inttoptr i64 %250 to ptr
  br label %262

262:                                              ; preds = %255, %260
  %263 = phi ptr [ %259, %255 ], [ %261, %260 ]
  tail call void %263(ptr noundef nonnull align 8 dereferenceable(1709) %252, i16 noundef zeroext 117)
  %264 = load i64, ptr %220, align 8, !tbaa !130
  %265 = load i64, ptr %222, align 8, !tbaa !130
  %266 = getelementptr inbounds i8, ptr %0, i64 %265
  %267 = and i64 %264, 1
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %262
  %270 = load ptr, ptr %266, align 8, !tbaa !73
  %271 = getelementptr i8, ptr %270, i64 %264
  %272 = getelementptr i8, ptr %271, i64 -1
  %273 = load ptr, ptr %272, align 8, !nosanitize !126
  br label %276

274:                                              ; preds = %262
  %275 = inttoptr i64 %264 to ptr
  br label %276

276:                                              ; preds = %269, %274
  %277 = phi ptr [ %273, %269 ], [ %275, %274 ]
  tail call void %277(ptr noundef nonnull align 8 dereferenceable(1709) %266, i16 noundef zeroext 111)
  %278 = load i64, ptr %220, align 8, !tbaa !130
  %279 = load i64, ptr %222, align 8, !tbaa !130
  %280 = getelementptr inbounds i8, ptr %0, i64 %279
  %281 = and i64 %278, 1
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %276
  %284 = load ptr, ptr %280, align 8, !tbaa !73
  %285 = getelementptr i8, ptr %284, i64 %278
  %286 = getelementptr i8, ptr %285, i64 -1
  %287 = load ptr, ptr %286, align 8, !nosanitize !126
  br label %290

288:                                              ; preds = %276
  %289 = inttoptr i64 %278 to ptr
  br label %290

290:                                              ; preds = %283, %288
  %291 = phi ptr [ %287, %283 ], [ %289, %288 ]
  tail call void %291(ptr noundef nonnull align 8 dereferenceable(1709) %280, i16 noundef zeroext 116)
  %292 = load i64, ptr %220, align 8, !tbaa !130
  %293 = load i64, ptr %222, align 8, !tbaa !130
  %294 = getelementptr inbounds i8, ptr %0, i64 %293
  %295 = and i64 %292, 1
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %290
  %298 = load ptr, ptr %294, align 8, !tbaa !73
  %299 = getelementptr i8, ptr %298, i64 %292
  %300 = getelementptr i8, ptr %299, i64 -1
  %301 = load ptr, ptr %300, align 8, !nosanitize !126
  br label %304

302:                                              ; preds = %290
  %303 = inttoptr i64 %292 to ptr
  br label %304

304:                                              ; preds = %297, %302
  %305 = phi ptr [ %301, %297 ], [ %303, %302 ]
  tail call void %305(ptr noundef nonnull align 8 dereferenceable(1709) %294, i16 noundef zeroext 59)
  br label %393

306:                                              ; preds = %27
  %307 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %308 = load i64, ptr %307, align 8, !tbaa !130
  %309 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %310 = load i64, ptr %309, align 8, !tbaa !130
  %311 = getelementptr inbounds i8, ptr %0, i64 %310
  %312 = and i64 %308, 1
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %306
  %315 = load ptr, ptr %311, align 8, !tbaa !73
  %316 = getelementptr i8, ptr %315, i64 %308
  %317 = getelementptr i8, ptr %316, i64 -1
  %318 = load ptr, ptr %317, align 8, !nosanitize !126
  br label %321

319:                                              ; preds = %306
  %320 = inttoptr i64 %308 to ptr
  br label %321

321:                                              ; preds = %314, %319
  %322 = phi ptr [ %318, %314 ], [ %320, %319 ]
  tail call void %322(ptr noundef nonnull align 8 dereferenceable(1709) %311, i16 noundef zeroext 38)
  %323 = load i64, ptr %307, align 8, !tbaa !130
  %324 = load i64, ptr %309, align 8, !tbaa !130
  %325 = getelementptr inbounds i8, ptr %0, i64 %324
  %326 = and i64 %323, 1
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %333, label %328

328:                                              ; preds = %321
  %329 = load ptr, ptr %325, align 8, !tbaa !73
  %330 = getelementptr i8, ptr %329, i64 %323
  %331 = getelementptr i8, ptr %330, i64 -1
  %332 = load ptr, ptr %331, align 8, !nosanitize !126
  br label %335

333:                                              ; preds = %321
  %334 = inttoptr i64 %323 to ptr
  br label %335

335:                                              ; preds = %328, %333
  %336 = phi ptr [ %332, %328 ], [ %334, %333 ]
  tail call void %336(ptr noundef nonnull align 8 dereferenceable(1709) %325, i16 noundef zeroext 97)
  %337 = load i64, ptr %307, align 8, !tbaa !130
  %338 = load i64, ptr %309, align 8, !tbaa !130
  %339 = getelementptr inbounds i8, ptr %0, i64 %338
  %340 = and i64 %337, 1
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %347, label %342

342:                                              ; preds = %335
  %343 = load ptr, ptr %339, align 8, !tbaa !73
  %344 = getelementptr i8, ptr %343, i64 %337
  %345 = getelementptr i8, ptr %344, i64 -1
  %346 = load ptr, ptr %345, align 8, !nosanitize !126
  br label %349

347:                                              ; preds = %335
  %348 = inttoptr i64 %337 to ptr
  br label %349

349:                                              ; preds = %342, %347
  %350 = phi ptr [ %346, %342 ], [ %348, %347 ]
  tail call void %350(ptr noundef nonnull align 8 dereferenceable(1709) %339, i16 noundef zeroext 112)
  %351 = load i64, ptr %307, align 8, !tbaa !130
  %352 = load i64, ptr %309, align 8, !tbaa !130
  %353 = getelementptr inbounds i8, ptr %0, i64 %352
  %354 = and i64 %351, 1
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %361, label %356

356:                                              ; preds = %349
  %357 = load ptr, ptr %353, align 8, !tbaa !73
  %358 = getelementptr i8, ptr %357, i64 %351
  %359 = getelementptr i8, ptr %358, i64 -1
  %360 = load ptr, ptr %359, align 8, !nosanitize !126
  br label %363

361:                                              ; preds = %349
  %362 = inttoptr i64 %351 to ptr
  br label %363

363:                                              ; preds = %356, %361
  %364 = phi ptr [ %360, %356 ], [ %362, %361 ]
  tail call void %364(ptr noundef nonnull align 8 dereferenceable(1709) %353, i16 noundef zeroext 111)
  %365 = load i64, ptr %307, align 8, !tbaa !130
  %366 = load i64, ptr %309, align 8, !tbaa !130
  %367 = getelementptr inbounds i8, ptr %0, i64 %366
  %368 = and i64 %365, 1
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %363
  %371 = load ptr, ptr %367, align 8, !tbaa !73
  %372 = getelementptr i8, ptr %371, i64 %365
  %373 = getelementptr i8, ptr %372, i64 -1
  %374 = load ptr, ptr %373, align 8, !nosanitize !126
  br label %377

375:                                              ; preds = %363
  %376 = inttoptr i64 %365 to ptr
  br label %377

377:                                              ; preds = %370, %375
  %378 = phi ptr [ %374, %370 ], [ %376, %375 ]
  tail call void %378(ptr noundef nonnull align 8 dereferenceable(1709) %367, i16 noundef zeroext 115)
  %379 = load i64, ptr %307, align 8, !tbaa !130
  %380 = load i64, ptr %309, align 8, !tbaa !130
  %381 = getelementptr inbounds i8, ptr %0, i64 %380
  %382 = and i64 %379, 1
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %389, label %384

384:                                              ; preds = %377
  %385 = load ptr, ptr %381, align 8, !tbaa !73
  %386 = getelementptr i8, ptr %385, i64 %379
  %387 = getelementptr i8, ptr %386, i64 -1
  %388 = load ptr, ptr %387, align 8, !nosanitize !126
  br label %391

389:                                              ; preds = %377
  %390 = inttoptr i64 %379 to ptr
  br label %391

391:                                              ; preds = %384, %389
  %392 = phi ptr [ %388, %384 ], [ %390, %389 ]
  tail call void %392(ptr noundef nonnull align 8 dereferenceable(1709) %381, i16 noundef zeroext 59)
  br label %393

393:                                              ; preds = %25, %144, %304, %391, %217, %85, %27
  %394 = phi i1 [ false, %27 ], [ true, %85 ], [ true, %217 ], [ true, %391 ], [ true, %304 ], [ true, %144 ], [ true, %25 ]
  ret i1 %394
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML11flushWriterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0) local_unnamed_addr #1 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #13 align 2 !prof !139 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) unnamed_addr #1 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !113
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %2, align 8, !tbaa !113
  %7 = sub i64 %6, %3
  store i64 %7, ptr %2, align 8, !tbaa !113
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 1
  store i32 0, ptr %9, align 8, !tbaa !109
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 10
  store i8 1, ptr %10, align 2, !tbaa !98
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 0, ptr %11, align 1, !tbaa !97
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 6
  %13 = load i8, ptr %12, align 2, !tbaa !94, !range !123, !noundef !126
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %172, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41
  %17 = load i64, ptr %16, align 8, !tbaa !135
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !135
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = and i64 %17, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %20, align 8, !tbaa !73
  %25 = getelementptr i8, ptr %24, i64 %17
  %26 = getelementptr i8, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !nosanitize !126
  br label %30

28:                                               ; preds = %15
  %29 = inttoptr i64 %17 to ptr
  br label %30

30:                                               ; preds = %23, %28
  %31 = phi ptr [ %27, %23 ], [ %29, %28 ]
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(1709) %20, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML22s_xmlHeaderStartStringE, i32 noundef 0, i32 noundef 15)
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 29
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 29, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !109
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40
  %38 = load i64, ptr %37, align 8, !tbaa !133
  %39 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !133
  %41 = getelementptr inbounds i8, ptr %0, i64 %40
  %42 = and i64 %38, 1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %41, align 8, !tbaa !73
  %46 = getelementptr i8, ptr %45, i64 %38
  %47 = getelementptr i8, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !nosanitize !126
  br label %51

49:                                               ; preds = %36
  %50 = inttoptr i64 %38 to ptr
  br label %51

51:                                               ; preds = %44, %49
  %52 = phi ptr [ %48, %44 ], [ %50, %49 ]
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(1709) %41, ptr noundef nonnull align 8 dereferenceable(36) %32)
  br label %68

53:                                               ; preds = %30
  %54 = load i64, ptr %16, align 8, !tbaa !135
  %55 = load i64, ptr %18, align 8, !tbaa !135
  %56 = getelementptr inbounds i8, ptr %0, i64 %55
  %57 = and i64 %54, 1
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %56, align 8, !tbaa !73
  %61 = getelementptr i8, ptr %60, i64 %54
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load ptr, ptr %62, align 8, !nosanitize !126
  br label %66

64:                                               ; preds = %53
  %65 = inttoptr i64 %54 to ptr
  br label %66

66:                                               ; preds = %59, %64
  %67 = phi ptr [ %63, %59 ], [ %65, %64 ]
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(1709) %56, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML22s_defaultVersionStringE, i32 noundef 0, i32 noundef 3)
  br label %68

68:                                               ; preds = %66, %51
  %69 = load i64, ptr %16, align 8, !tbaa !135
  %70 = load i64, ptr %18, align 8, !tbaa !135
  %71 = getelementptr inbounds i8, ptr %0, i64 %70
  %72 = and i64 %69, 1
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr %71, align 8, !tbaa !73
  %76 = getelementptr i8, ptr %75, i64 %69
  %77 = getelementptr i8, ptr %76, i64 -1
  %78 = load ptr, ptr %77, align 8, !nosanitize !126
  br label %81

79:                                               ; preds = %68
  %80 = inttoptr i64 %69 to ptr
  br label %81

81:                                               ; preds = %74, %79
  %82 = phi ptr [ %78, %74 ], [ %80, %79 ]
  tail call void %82(ptr noundef nonnull align 8 dereferenceable(1709) %71, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML25s_xmlHeaderEncodingStringE, i32 noundef 0, i32 noundef 12)
  %83 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19
  %84 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40
  %85 = load i64, ptr %84, align 8, !tbaa !133
  %86 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !133
  %88 = getelementptr inbounds i8, ptr %0, i64 %87
  %89 = and i64 %85, 1
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %81
  %92 = load ptr, ptr %88, align 8, !tbaa !73
  %93 = getelementptr i8, ptr %92, i64 %85
  %94 = getelementptr i8, ptr %93, i64 -1
  %95 = load ptr, ptr %94, align 8, !nosanitize !126
  br label %98

96:                                               ; preds = %81
  %97 = inttoptr i64 %85 to ptr
  br label %98

98:                                               ; preds = %91, %96
  %99 = phi ptr [ %95, %91 ], [ %97, %96 ]
  tail call void %99(ptr noundef nonnull align 8 dereferenceable(1709) %88, ptr noundef nonnull align 8 dereferenceable(36) %83)
  %100 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 30
  %101 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 30, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !109
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %133, label %104

104:                                              ; preds = %98
  %105 = load i64, ptr %16, align 8, !tbaa !135
  %106 = load i64, ptr %18, align 8, !tbaa !135
  %107 = getelementptr inbounds i8, ptr %0, i64 %106
  %108 = and i64 %105, 1
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %104
  %111 = load ptr, ptr %107, align 8, !tbaa !73
  %112 = getelementptr i8, ptr %111, i64 %105
  %113 = getelementptr i8, ptr %112, i64 -1
  %114 = load ptr, ptr %113, align 8, !nosanitize !126
  br label %117

115:                                              ; preds = %104
  %116 = inttoptr i64 %105 to ptr
  br label %117

117:                                              ; preds = %110, %115
  %118 = phi ptr [ %114, %110 ], [ %116, %115 ]
  tail call void %118(ptr noundef nonnull align 8 dereferenceable(1709) %107, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML27s_xmlHeaderStandaloneStringE, i32 noundef 0, i32 noundef 14)
  %119 = load i64, ptr %84, align 8, !tbaa !133
  %120 = load i64, ptr %86, align 8, !tbaa !133
  %121 = getelementptr inbounds i8, ptr %0, i64 %120
  %122 = and i64 %119, 1
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %117
  %125 = load ptr, ptr %121, align 8, !tbaa !73
  %126 = getelementptr i8, ptr %125, i64 %119
  %127 = getelementptr i8, ptr %126, i64 -1
  %128 = load ptr, ptr %127, align 8, !nosanitize !126
  br label %131

129:                                              ; preds = %117
  %130 = inttoptr i64 %119 to ptr
  br label %131

131:                                              ; preds = %124, %129
  %132 = phi ptr [ %128, %124 ], [ %130, %129 ]
  tail call void %132(ptr noundef nonnull align 8 dereferenceable(1709) %121, ptr noundef nonnull align 8 dereferenceable(36) %100)
  br label %133

133:                                              ; preds = %131, %98
  %134 = load i64, ptr %16, align 8, !tbaa !135
  %135 = load i64, ptr %18, align 8, !tbaa !135
  %136 = getelementptr inbounds i8, ptr %0, i64 %135
  %137 = and i64 %134, 1
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %133
  %140 = load ptr, ptr %136, align 8, !tbaa !73
  %141 = getelementptr i8, ptr %140, i64 %134
  %142 = getelementptr i8, ptr %141, i64 -1
  %143 = load ptr, ptr %142, align 8, !nosanitize !126
  br label %146

144:                                              ; preds = %133
  %145 = inttoptr i64 %134 to ptr
  br label %146

146:                                              ; preds = %139, %144
  %147 = phi ptr [ %143, %139 ], [ %145, %144 ]
  tail call void %147(ptr noundef nonnull align 8 dereferenceable(1709) %136, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML20s_xmlHeaderEndStringE, i32 noundef 0, i32 noundef 3)
  %148 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %149 = load i8, ptr %148, align 4, !tbaa !96, !range !123, !noundef !126
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %172, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %153 = load ptr, ptr %152, align 8, !tbaa !115
  %154 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %155 = load i32, ptr %154, align 8, !tbaa !121
  %156 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %157 = load i64, ptr %156, align 8, !tbaa !136
  %158 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %159 = load i64, ptr %158, align 8, !tbaa !136
  %160 = getelementptr inbounds i8, ptr %0, i64 %159
  %161 = and i64 %157, 1
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %151
  %164 = load ptr, ptr %160, align 8, !tbaa !73
  %165 = getelementptr i8, ptr %164, i64 %157
  %166 = getelementptr i8, ptr %165, i64 -1
  %167 = load ptr, ptr %166, align 8, !nosanitize !126
  br label %170

168:                                              ; preds = %151
  %169 = inttoptr i64 %157 to ptr
  br label %170

170:                                              ; preds = %163, %168
  %171 = phi ptr [ %167, %163 ], [ %169, %168 ]
  tail call void %171(ptr noundef nonnull align 8 dereferenceable(1709) %160, ptr noundef %153, i32 noundef 0, i32 noundef %155)
  br label %172

172:                                              ; preds = %146, %170, %8
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) unnamed_addr #1 align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !96, !range !123, !noundef !126
  %4 = icmp ne i8 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %6 = load i8, ptr %5, align 1, !range !123
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 %7, i1 false, !prof !99
  br i1 %8, label %9, label %30, !prof !99

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %13 = load i32, ptr %12, align 8, !tbaa !121
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %15 = load i64, ptr %14, align 8, !tbaa !136
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !136
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = and i64 %15, 1
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21, !prof !99

21:                                               ; preds = %9
  %22 = load ptr, ptr %18, align 8, !tbaa !73
  %23 = getelementptr i8, ptr %22, i64 %15
  %24 = getelementptr i8, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !nosanitize !126
  br label %28

26:                                               ; preds = %9
  %27 = inttoptr i64 %15 to ptr
  br label %28

28:                                               ; preds = %21, %26
  %29 = phi ptr [ %25, %21 ], [ %27, %26 ]
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(1709) %18, ptr noundef %11, i32 noundef 0, i32 noundef %13), !prof !196
  br label %30

30:                                               ; preds = %28, %1
  %31 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 25
  %32 = load i8, ptr %31, align 1, !tbaa !104, !range !123, !noundef !126
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %51, label %34, !prof !110

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 46
  %36 = load i64, ptr %35, align 8, !tbaa !137
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 46, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !137
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  %40 = and i64 %36, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %47, label %42, !prof !99

42:                                               ; preds = %34
  %43 = load ptr, ptr %39, align 8, !tbaa !73
  %44 = getelementptr i8, ptr %43, i64 %36
  %45 = getelementptr i8, ptr %44, i64 -1
  %46 = load ptr, ptr %45, align 8, !nosanitize !126
  br label %49

47:                                               ; preds = %34
  %48 = inttoptr i64 %36 to ptr
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi ptr [ %46, %42 ], [ %48, %47 ]
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(1709) %39), !prof !197
  br label %51

51:                                               ; preds = %49, %30
  %52 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !76
  %54 = load ptr, ptr %53, align 8, !tbaa !73
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef nonnull align 8 dereferenceable(8) %53), !prof !198
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !139 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 2, !tbaa !98, !range !123, !noundef !126
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %7, i1 true, i1 %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML17outputDocTypeDeclEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1)
  store i8 0, ptr %5, align 2, !tbaa !98
  br label %13

13:                                               ; preds = %12, %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 0, ptr %14, align 1, !tbaa !95
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %16 = load i8, ptr %15, align 4, !tbaa !96, !range !123, !noundef !126
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %19 = load i8, ptr %18, align 1, !range !123
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %17, i1 true, i1 %20
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  %23 = load i8, ptr %22, align 1, !range !123
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %21, i1 true, i1 %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %28 = load i32, ptr %27, align 8, !tbaa !100
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %28)
  br label %29

29:                                               ; preds = %26, %13
  store i8 1, ptr %22, align 1, !tbaa !97
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %31 = load i64, ptr %30, align 8, !tbaa !129
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !129
  %34 = getelementptr inbounds i8, ptr %0, i64 %33
  %35 = and i64 %31, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load ptr, ptr %34, align 8, !tbaa !73
  %39 = getelementptr i8, ptr %38, i64 %31
  %40 = getelementptr i8, ptr %39, i64 -1
  %41 = load ptr, ptr %40, align 8, !nosanitize !126
  br label %44

42:                                               ; preds = %29
  %43 = inttoptr i64 %31 to ptr
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi ptr [ %41, %37 ], [ %43, %42 ]
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(1709) %34, i16 noundef zeroext 60)
  %46 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %47 = load i64, ptr %46, align 8, !tbaa !131
  %48 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !131
  %50 = getelementptr inbounds i8, ptr %0, i64 %49
  %51 = and i64 %47, 1
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = load ptr, ptr %50, align 8, !tbaa !73
  %55 = getelementptr i8, ptr %54, i64 %47
  %56 = getelementptr i8, ptr %55, i64 -1
  %57 = load ptr, ptr %56, align 8, !nosanitize !126
  br label %60

58:                                               ; preds = %44
  %59 = inttoptr i64 %47 to ptr
  br label %60

60:                                               ; preds = %53, %58
  %61 = phi ptr [ %57, %53 ], [ %59, %58 ]
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(1709) %50, ptr noundef %1)
  %62 = load ptr, ptr %2, align 8, !tbaa !73
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef i32 %64(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %74, %60
  %68 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  store i8 0, ptr %4, align 1, !tbaa !199
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  %69 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  %70 = load i32, ptr %69, align 4, !tbaa !101
  %71 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %72 = load i32, ptr %71, align 8, !tbaa !100
  %73 = add nsw i32 %72, %70
  store i32 %73, ptr %71, align 8, !tbaa !100
  store i8 0, ptr %18, align 1, !tbaa !200
  ret void

74:                                               ; preds = %60, %74
  %75 = phi i32 [ %84, %74 ], [ 0, %60 ]
  %76 = load ptr, ptr %2, align 8, !tbaa !73
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %75)
  %80 = load ptr, ptr %2, align 8, !tbaa !73
  %81 = getelementptr inbounds ptr, ptr %80, i64 5
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %75)
  tail call void @_ZN11xalanc_1_1014FormatterToXML16processAttributeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %79, ptr noundef %83)
  %84 = add nuw i32 %75, 1
  %85 = icmp eq i32 %84, %65
  br i1 %85, label %67, label %74, !llvm.loop !201
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #7 align 2 !prof !202 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !203
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %36, label %5, !prof !204

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !176
  %8 = getelementptr i8, ptr %7, i64 %3
  %9 = getelementptr i8, ptr %8, i64 -1
  %10 = load i8, ptr %9, align 1, !tbaa !199, !range !123, !noundef !126
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %36, !prof !205

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %14 = load i64, ptr %13, align 8, !tbaa !130
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !130
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = and i64 %14, 1
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %25, label %20, !prof !206

20:                                               ; preds = %12
  %21 = load ptr, ptr %17, align 8, !tbaa !73
  %22 = getelementptr i8, ptr %21, i64 %14
  %23 = getelementptr i8, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !nosanitize !126
  br label %27

25:                                               ; preds = %12
  %26 = inttoptr i64 %14 to ptr
  br label %27

27:                                               ; preds = %20, %25
  %28 = phi ptr [ %24, %20 ], [ %26, %25 ]
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(1709) %17, i16 noundef zeroext 62), !prof !207
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  store i8 0, ptr %29, align 1, !tbaa !200
  %30 = load ptr, ptr %6, align 8, !tbaa !176
  %31 = load i64, ptr %2, align 8, !tbaa !203
  %32 = getelementptr i8, ptr %30, i64 %31
  %33 = getelementptr i8, ptr %32, i64 -1
  store i8 1, ptr %33, align 1, !tbaa !199
  %34 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 1 dereferenceable(1) %35)
  br label %36

36:                                               ; preds = %5, %27, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !208 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 1, !tbaa !97, !range !123, !noundef !126
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %27, label %6, !prof !209

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %10 = load i32, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %12 = load i64, ptr %11, align 8, !tbaa !136
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !136
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = and i64 %12, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18, !prof !210

18:                                               ; preds = %6
  %19 = load ptr, ptr %15, align 8, !tbaa !73
  %20 = getelementptr i8, ptr %19, i64 %12
  %21 = getelementptr i8, ptr %20, i64 -1
  %22 = load ptr, ptr %21, align 8, !nosanitize !126
  br label %25

23:                                               ; preds = %6
  %24 = inttoptr i64 %12 to ptr
  br label %25

25:                                               ; preds = %18, %23
  %26 = phi ptr [ %22, %18 ], [ %24, %23 ]
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(1709) %15, ptr noundef %8, i32 noundef 0, i32 noundef %10), !prof !211
  br label %27

27:                                               ; preds = %25, %2
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %29 = load i8, ptr %28, align 4, !tbaa !96, !range !123, !noundef !126
  %30 = icmp ne i8 %29, 0
  %31 = icmp sgt i32 %1, 0
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %53, !prof !209

33:                                               ; preds = %27, %49
  %34 = phi i32 [ %51, %49 ], [ 0, %27 ]
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %36 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %37 = load i64, ptr %35, align 8, !tbaa !130
  %38 = load i64, ptr %36, align 8, !tbaa !130
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  %40 = and i64 %37, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load ptr, ptr %39, align 8, !tbaa !73
  %44 = getelementptr i8, ptr %43, i64 %37
  %45 = getelementptr i8, ptr %44, i64 -1
  %46 = load ptr, ptr %45, align 8, !nosanitize !126
  br label %49

47:                                               ; preds = %33
  %48 = inttoptr i64 %37 to ptr
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi ptr [ %46, %42 ], [ %48, %47 ]
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(1709) %39, i16 noundef zeroext 32)
  %51 = add nuw nsw i32 %34, 1
  %52 = icmp eq i32 %51, %1
  br i1 %52, label %53, label %33, !prof !99, !llvm.loop !212

53:                                               ; preds = %49, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML16processAttributeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !139 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %5 = load i64, ptr %4, align 8, !tbaa !130
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !130
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = and i64 %5, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %8, align 8, !tbaa !73
  %13 = getelementptr i8, ptr %12, i64 %5
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !nosanitize !126
  br label %18

16:                                               ; preds = %3
  %17 = inttoptr i64 %5 to ptr
  br label %18

18:                                               ; preds = %11, %16
  %19 = phi ptr [ %15, %11 ], [ %17, %16 ]
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(1709) %8, i16 noundef zeroext 32)
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %21 = load i64, ptr %20, align 8, !tbaa !131
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !131
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = and i64 %21, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load ptr, ptr %24, align 8, !tbaa !73
  %29 = getelementptr i8, ptr %28, i64 %21
  %30 = getelementptr i8, ptr %29, i64 -1
  %31 = load ptr, ptr %30, align 8, !nosanitize !126
  br label %34

32:                                               ; preds = %18
  %33 = inttoptr i64 %21 to ptr
  br label %34

34:                                               ; preds = %27, %32
  %35 = phi ptr [ %31, %27 ], [ %33, %32 ]
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(1709) %24, ptr noundef %1)
  %36 = load i64, ptr %4, align 8, !tbaa !130
  %37 = load i64, ptr %6, align 8, !tbaa !130
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = and i64 %36, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %38, align 8, !tbaa !73
  %43 = getelementptr i8, ptr %42, i64 %36
  %44 = getelementptr i8, ptr %43, i64 -1
  %45 = load ptr, ptr %44, align 8, !nosanitize !126
  br label %48

46:                                               ; preds = %34
  %47 = inttoptr i64 %36 to ptr
  br label %48

48:                                               ; preds = %41, %46
  %49 = phi ptr [ %45, %41 ], [ %47, %46 ]
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(1709) %38, i16 noundef zeroext 61)
  %50 = load i64, ptr %4, align 8, !tbaa !130
  %51 = load i64, ptr %6, align 8, !tbaa !130
  %52 = getelementptr inbounds i8, ptr %0, i64 %51
  %53 = and i64 %50, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = load ptr, ptr %52, align 8, !tbaa !73
  %57 = getelementptr i8, ptr %56, i64 %50
  %58 = getelementptr i8, ptr %57, i64 -1
  %59 = load ptr, ptr %58, align 8, !nosanitize !126
  br label %62

60:                                               ; preds = %48
  %61 = inttoptr i64 %50 to ptr
  br label %62

62:                                               ; preds = %55, %60
  %63 = phi ptr [ %59, %55 ], [ %61, %60 ]
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(1709) %52, i16 noundef zeroext 34)
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi ptr [ %2, %62 ], [ %68, %64 ]
  %66 = load i16, ptr %65, align 2, !tbaa !116
  %67 = icmp eq i16 %66, 0
  %68 = getelementptr inbounds i16, ptr %65, i64 1
  br i1 %67, label %69, label %64, !llvm.loop !118

69:                                               ; preds = %64
  %70 = ptrtoint ptr %65 to i64
  %71 = ptrtoint ptr %2 to i64
  %72 = sub i64 %70, %71
  %73 = lshr exact i64 %72, 1
  %74 = trunc i64 %73 to i32
  %75 = load ptr, ptr %0, align 8, !tbaa !73
  %76 = getelementptr inbounds ptr, ptr %75, i64 23
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %2, i32 noundef %74)
  %78 = load i64, ptr %4, align 8, !tbaa !130
  %79 = load i64, ptr %6, align 8, !tbaa !130
  %80 = getelementptr inbounds i8, ptr %0, i64 %79
  %81 = and i64 %78, 1
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %69
  %84 = load ptr, ptr %80, align 8, !tbaa !73
  %85 = getelementptr i8, ptr %84, i64 %78
  %86 = getelementptr i8, ptr %85, i64 -1
  %87 = load ptr, ptr %86, align 8, !nosanitize !126
  br label %90

88:                                               ; preds = %69
  %89 = inttoptr i64 %78 to ptr
  br label %90

90:                                               ; preds = %83, %88
  %91 = phi ptr [ %87, %83 ], [ %89, %88 ]
  tail call void %91(ptr noundef nonnull align 8 dereferenceable(1709) %80, i16 noundef zeroext 34)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv(ptr noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #7 align 2 !prof !213 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #20
  store i8 0, ptr %2, align 1, !tbaa !199
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  %4 = load i32, ptr %3, align 4, !tbaa !101
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 8, !tbaa !100
  %7 = sub nsw i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !100
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !203
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !176
  %14 = getelementptr i8, ptr %13, i64 %9
  %15 = getelementptr i8, ptr %14, i64 -1
  %16 = load i8, ptr %15, align 1, !tbaa !199, !range !123, !noundef !126
  %17 = add i64 %9, -1
  store i64 %17, ptr %8, align 8, !tbaa !203
  %18 = icmp ne i8 %16, 0
  br label %19

19:                                               ; preds = %2, %11
  %20 = phi i1 [ %18, %11 ], [ false, %2 ]
  br i1 %20, label %21, label %81

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %23 = load i8, ptr %22, align 4, !tbaa !96, !range !123, !noundef !126
  %24 = icmp ne i8 %23, 0
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %26 = load i8, ptr %25, align 1, !range !123
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %24, i1 %27, i1 false
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %30 = load i8, ptr %29, align 1, !range !123
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %7)
  br label %34

34:                                               ; preds = %21, %33
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %36 = load i64, ptr %35, align 8, !tbaa !129
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !129
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  %40 = and i64 %36, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load ptr, ptr %39, align 8, !tbaa !73
  %44 = getelementptr i8, ptr %43, i64 %36
  %45 = getelementptr i8, ptr %44, i64 -1
  %46 = load ptr, ptr %45, align 8, !nosanitize !126
  br label %49

47:                                               ; preds = %34
  %48 = inttoptr i64 %36 to ptr
  br label %49

49:                                               ; preds = %42, %47
  %50 = phi ptr [ %46, %42 ], [ %48, %47 ]
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(1709) %39, i16 noundef zeroext 60)
  %51 = load i64, ptr %35, align 8, !tbaa !129
  %52 = load i64, ptr %37, align 8, !tbaa !129
  %53 = getelementptr inbounds i8, ptr %0, i64 %52
  %54 = and i64 %51, 1
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %53, align 8, !tbaa !73
  %58 = getelementptr i8, ptr %57, i64 %51
  %59 = getelementptr i8, ptr %58, i64 -1
  %60 = load ptr, ptr %59, align 8, !nosanitize !126
  br label %63

61:                                               ; preds = %49
  %62 = inttoptr i64 %51 to ptr
  br label %63

63:                                               ; preds = %56, %61
  %64 = phi ptr [ %60, %56 ], [ %62, %61 ]
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(1709) %53, i16 noundef zeroext 47)
  %65 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %66 = load i64, ptr %65, align 8, !tbaa !131
  %67 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !131
  %69 = getelementptr inbounds i8, ptr %0, i64 %68
  %70 = and i64 %66, 1
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %63
  %73 = load ptr, ptr %69, align 8, !tbaa !73
  %74 = getelementptr i8, ptr %73, i64 %66
  %75 = getelementptr i8, ptr %74, i64 -1
  %76 = load ptr, ptr %75, align 8, !nosanitize !126
  br label %79

77:                                               ; preds = %63
  %78 = inttoptr i64 %66 to ptr
  br label %79

79:                                               ; preds = %72, %77
  %80 = phi ptr [ %76, %72 ], [ %78, %77 ]
  tail call void %80(ptr noundef nonnull align 8 dereferenceable(1709) %69, ptr noundef %1)
  br label %119

81:                                               ; preds = %19
  %82 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 26
  %83 = load i8, ptr %82, align 2, !tbaa !105, !range !123, !noundef !126
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %102, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %87 = load i64, ptr %86, align 8, !tbaa !129
  %88 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !129
  %90 = getelementptr inbounds i8, ptr %0, i64 %89
  %91 = and i64 %87, 1
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %85
  %94 = load ptr, ptr %90, align 8, !tbaa !73
  %95 = getelementptr i8, ptr %94, i64 %87
  %96 = getelementptr i8, ptr %95, i64 -1
  %97 = load ptr, ptr %96, align 8, !nosanitize !126
  br label %100

98:                                               ; preds = %85
  %99 = inttoptr i64 %87 to ptr
  br label %100

100:                                              ; preds = %93, %98
  %101 = phi ptr [ %97, %93 ], [ %99, %98 ]
  tail call void %101(ptr noundef nonnull align 8 dereferenceable(1709) %90, i16 noundef zeroext 32)
  br label %102

102:                                              ; preds = %100, %81
  %103 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %104 = load i64, ptr %103, align 8, !tbaa !129
  %105 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !129
  %107 = getelementptr inbounds i8, ptr %0, i64 %106
  %108 = and i64 %104, 1
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %102
  %111 = load ptr, ptr %107, align 8, !tbaa !73
  %112 = getelementptr i8, ptr %111, i64 %104
  %113 = getelementptr i8, ptr %112, i64 -1
  %114 = load ptr, ptr %113, align 8, !nosanitize !126
  br label %117

115:                                              ; preds = %102
  %116 = inttoptr i64 %104 to ptr
  br label %117

117:                                              ; preds = %110, %115
  %118 = phi ptr [ %114, %110 ], [ %116, %115 ]
  tail call void %118(ptr noundef nonnull align 8 dereferenceable(1709) %107, i16 noundef zeroext 47)
  br label %119

119:                                              ; preds = %117, %79
  %120 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %121 = load i64, ptr %120, align 8, !tbaa !129
  %122 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !129
  %124 = getelementptr inbounds i8, ptr %0, i64 %123
  %125 = and i64 %121, 1
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %119
  %128 = load ptr, ptr %124, align 8, !tbaa !73
  %129 = getelementptr i8, ptr %128, i64 %121
  %130 = getelementptr i8, ptr %129, i64 -1
  %131 = load ptr, ptr %130, align 8, !nosanitize !126
  br label %134

132:                                              ; preds = %119
  %133 = inttoptr i64 %121 to ptr
  br label %134

134:                                              ; preds = %127, %132
  %135 = phi ptr [ %131, %127 ], [ %133, %132 ]
  tail call void %135(ptr noundef nonnull align 8 dereferenceable(1709) %124, i16 noundef zeroext 62)
  br i1 %20, label %136, label %150

136:                                              ; preds = %134
  %137 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !203
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 0, ptr %141, align 1, !tbaa !95
  br label %150

142:                                              ; preds = %136
  %143 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !176
  %145 = getelementptr i8, ptr %144, i64 %138
  %146 = getelementptr i8, ptr %145, i64 -1
  %147 = load i8, ptr %146, align 1, !tbaa !199, !range !123, !noundef !126
  %148 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 %147, ptr %148, align 1, !tbaa !95
  %149 = add i64 %138, -1
  store i64 %149, ptr %137, align 8, !tbaa !203
  br label %150

150:                                              ; preds = %140, %142, %134
  %151 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  store i8 0, ptr %151, align 1, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv(ptr nocapture noundef nonnull align 8 dereferenceable(1709) %0) local_unnamed_addr #14 align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !203
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %13, label %5, !prof !214

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !176
  %8 = getelementptr i8, ptr %7, i64 %3
  %9 = getelementptr i8, ptr %8, i64 -1
  %10 = load i8, ptr %9, align 1, !tbaa !199, !range !123, !noundef !126
  %11 = add i64 %3, -1
  store i64 %11, ptr %2, align 8, !tbaa !203
  %12 = icmp ne i8 %10, 0
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi i1 [ %12, %5 ], [ false, %1 ]
  ret i1 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !139 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %1, %3 ], [ %8, %4 ]
  %6 = load i16, ptr %5, align 2, !tbaa !116
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds i16, ptr %5, i64 1
  br i1 %7, label %9, label %4, !llvm.loop !118

9:                                                ; preds = %4
  %10 = ptrtoint ptr %5 to i64
  %11 = ptrtoint ptr %1 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  %17 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %1, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener10s_piTargetE, i32 noundef %14)
  br i1 %17, label %18, label %34

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %22, %18 ], [ %2, %16 ]
  %20 = load i16, ptr %19, align 2, !tbaa !116
  %21 = icmp eq i16 %20, 0
  %22 = getelementptr inbounds i16, ptr %19, i64 1
  br i1 %21, label %23, label %18, !llvm.loop !118

23:                                               ; preds = %18
  %24 = ptrtoint ptr %19 to i64
  %25 = ptrtoint ptr %2 to i64
  %26 = sub i64 %24, %25
  %27 = lshr exact i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %2, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener8s_piDataE, i32 noundef %28)
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 13
  br label %209

34:                                               ; preds = %23, %9, %30, %16
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %36 = load i8, ptr %35, align 4, !tbaa !96, !range !123, !noundef !126
  %37 = icmp ne i8 %36, 0
  %38 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %39 = load i8, ptr %38, align 1, !range !123
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %37, i1 %40, i1 false
  %42 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %43 = load i8, ptr %42, align 1, !range !123
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %41, i1 %44, i1 false
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %48 = load i32, ptr %47, align 8, !tbaa !100
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %48)
  br label %49

49:                                               ; preds = %34, %46
  %50 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %51 = load i64, ptr %50, align 8, !tbaa !129
  %52 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !129
  %54 = getelementptr inbounds i8, ptr %0, i64 %53
  %55 = and i64 %51, 1
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load ptr, ptr %54, align 8, !tbaa !73
  %59 = getelementptr i8, ptr %58, i64 %51
  %60 = getelementptr i8, ptr %59, i64 -1
  %61 = load ptr, ptr %60, align 8, !nosanitize !126
  br label %64

62:                                               ; preds = %49
  %63 = inttoptr i64 %51 to ptr
  br label %64

64:                                               ; preds = %57, %62
  %65 = phi ptr [ %61, %57 ], [ %63, %62 ]
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(1709) %54, i16 noundef zeroext 60)
  %66 = load i64, ptr %50, align 8, !tbaa !129
  %67 = load i64, ptr %52, align 8, !tbaa !129
  %68 = getelementptr inbounds i8, ptr %0, i64 %67
  %69 = and i64 %66, 1
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load ptr, ptr %68, align 8, !tbaa !73
  %73 = getelementptr i8, ptr %72, i64 %66
  %74 = getelementptr i8, ptr %73, i64 -1
  %75 = load ptr, ptr %74, align 8, !nosanitize !126
  br label %78

76:                                               ; preds = %64
  %77 = inttoptr i64 %66 to ptr
  br label %78

78:                                               ; preds = %71, %76
  %79 = phi ptr [ %75, %71 ], [ %77, %76 ]
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(1709) %68, i16 noundef zeroext 63)
  %80 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %81 = load i64, ptr %80, align 8, !tbaa !131
  %82 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !131
  %84 = getelementptr inbounds i8, ptr %0, i64 %83
  %85 = and i64 %81, 1
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %78
  %88 = load ptr, ptr %84, align 8, !tbaa !73
  %89 = getelementptr i8, ptr %88, i64 %81
  %90 = getelementptr i8, ptr %89, i64 -1
  %91 = load ptr, ptr %90, align 8, !nosanitize !126
  br label %94

92:                                               ; preds = %78
  %93 = inttoptr i64 %81 to ptr
  br label %94

94:                                               ; preds = %87, %92
  %95 = phi ptr [ %91, %87 ], [ %93, %92 ]
  tail call void %95(ptr noundef nonnull align 8 dereferenceable(1709) %84, ptr noundef %1)
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i32 [ %102, %96 ], [ 0, %94 ]
  %98 = phi ptr [ %101, %96 ], [ %2, %94 ]
  %99 = load i16, ptr %98, align 2, !tbaa !116
  %100 = icmp eq i16 %99, 0
  %101 = getelementptr inbounds i16, ptr %98, i64 1
  %102 = add i32 %97, 1
  br i1 %100, label %103, label %96, !llvm.loop !118

103:                                              ; preds = %96
  %104 = ptrtoint ptr %98 to i64
  %105 = ptrtoint ptr %2 to i64
  %106 = sub i64 %104, %105
  %107 = and i64 %106, 8589934590
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %154, label %109

109:                                              ; preds = %103
  %110 = load i16, ptr %2, align 2, !tbaa !116
  %111 = zext i16 %110 to i64
  %112 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !189
  %114 = icmp eq i8 %113, 6
  br i1 %114, label %130, label %115

115:                                              ; preds = %109
  %116 = load i64, ptr %50, align 8, !tbaa !129
  %117 = load i64, ptr %52, align 8, !tbaa !129
  %118 = getelementptr inbounds i8, ptr %0, i64 %117
  %119 = and i64 %116, 1
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  %122 = load ptr, ptr %118, align 8, !tbaa !73
  %123 = getelementptr i8, ptr %122, i64 %116
  %124 = getelementptr i8, ptr %123, i64 -1
  %125 = load ptr, ptr %124, align 8, !nosanitize !126
  br label %128

126:                                              ; preds = %115
  %127 = inttoptr i64 %116 to ptr
  br label %128

128:                                              ; preds = %121, %126
  %129 = phi ptr [ %125, %121 ], [ %127, %126 ]
  tail call void %129(ptr noundef nonnull align 8 dereferenceable(1709) %118, i16 noundef zeroext 32)
  br label %130

130:                                              ; preds = %109, %128
  %131 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %132 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %133 = zext i32 %97 to i64
  br label %134

134:                                              ; preds = %130, %150
  %135 = phi i64 [ 0, %130 ], [ %152, %150 ]
  %136 = getelementptr inbounds i16, ptr %2, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !116
  %138 = load i64, ptr %131, align 8, !tbaa !130
  %139 = load i64, ptr %132, align 8, !tbaa !130
  %140 = getelementptr inbounds i8, ptr %0, i64 %139
  %141 = and i64 %138, 1
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %134
  %144 = load ptr, ptr %140, align 8, !tbaa !73
  %145 = getelementptr i8, ptr %144, i64 %138
  %146 = getelementptr i8, ptr %145, i64 -1
  %147 = load ptr, ptr %146, align 8, !nosanitize !126
  br label %150

148:                                              ; preds = %134
  %149 = inttoptr i64 %138 to ptr
  br label %150

150:                                              ; preds = %148, %143
  %151 = phi ptr [ %147, %143 ], [ %149, %148 ]
  tail call void %151(ptr noundef nonnull align 8 dereferenceable(1709) %140, i16 noundef zeroext %137)
  %152 = add nuw nsw i64 %135, 1
  %153 = icmp eq i64 %152, %133
  br i1 %153, label %154, label %134, !llvm.loop !215

154:                                              ; preds = %150, %103
  %155 = load i64, ptr %50, align 8, !tbaa !129
  %156 = load i64, ptr %52, align 8, !tbaa !129
  %157 = getelementptr inbounds i8, ptr %0, i64 %156
  %158 = and i64 %155, 1
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %154
  %161 = load ptr, ptr %157, align 8, !tbaa !73
  %162 = getelementptr i8, ptr %161, i64 %155
  %163 = getelementptr i8, ptr %162, i64 -1
  %164 = load ptr, ptr %163, align 8, !nosanitize !126
  br label %167

165:                                              ; preds = %154
  %166 = inttoptr i64 %155 to ptr
  br label %167

167:                                              ; preds = %160, %165
  %168 = phi ptr [ %164, %160 ], [ %166, %165 ]
  tail call void %168(ptr noundef nonnull align 8 dereferenceable(1709) %157, i16 noundef zeroext 63)
  %169 = load i64, ptr %50, align 8, !tbaa !129
  %170 = load i64, ptr %52, align 8, !tbaa !129
  %171 = getelementptr inbounds i8, ptr %0, i64 %170
  %172 = and i64 %169, 1
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %167
  %175 = load ptr, ptr %171, align 8, !tbaa !73
  %176 = getelementptr i8, ptr %175, i64 %169
  %177 = getelementptr i8, ptr %176, i64 -1
  %178 = load ptr, ptr %177, align 8, !nosanitize !126
  br label %181

179:                                              ; preds = %167
  %180 = inttoptr i64 %169 to ptr
  br label %181

181:                                              ; preds = %174, %179
  %182 = phi ptr [ %178, %174 ], [ %180, %179 ]
  tail call void %182(ptr noundef nonnull align 8 dereferenceable(1709) %171, i16 noundef zeroext 62)
  %183 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 37, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !203
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %181
  %187 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %188 = load ptr, ptr %187, align 8, !tbaa !115
  %189 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %190 = load i32, ptr %189, align 8, !tbaa !121
  %191 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %192 = load i64, ptr %191, align 8, !tbaa !136
  %193 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %194 = load i64, ptr %193, align 8, !tbaa !136
  %195 = getelementptr inbounds i8, ptr %0, i64 %194
  %196 = and i64 %192, 1
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %186
  %199 = load ptr, ptr %195, align 8, !tbaa !73
  %200 = getelementptr i8, ptr %199, i64 %192
  %201 = getelementptr i8, ptr %200, i64 -1
  %202 = load ptr, ptr %201, align 8, !nosanitize !126
  br label %205

203:                                              ; preds = %186
  %204 = inttoptr i64 %192 to ptr
  br label %205

205:                                              ; preds = %198, %203
  %206 = phi ptr [ %202, %198 ], [ %204, %203 ]
  tail call void %206(ptr noundef nonnull align 8 dereferenceable(1709) %195, ptr noundef %188, i32 noundef 0, i32 noundef %190)
  br label %207

207:                                              ; preds = %205, %181
  %208 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  br label %209

209:                                              ; preds = %207, %32
  %210 = phi ptr [ %208, %207 ], [ %33, %32 ]
  store i8 1, ptr %210, align 1, !tbaa !199
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML21accumNormalizedPIDataEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 align 2 !prof !139 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %8 = zext i32 %2 to i64
  br label %10

9:                                                ; preds = %26, %3
  ret void

10:                                               ; preds = %5, %26
  %11 = phi i64 [ 0, %5 ], [ %28, %26 ]
  %12 = getelementptr inbounds i16, ptr %1, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !116
  %14 = load i64, ptr %6, align 8, !tbaa !130
  %15 = load i64, ptr %7, align 8, !tbaa !130
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = and i64 %14, 1
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %16, align 8, !tbaa !73
  %21 = getelementptr i8, ptr %20, i64 %14
  %22 = getelementptr i8, ptr %21, i64 -1
  %23 = load ptr, ptr %22, align 8, !nosanitize !126
  br label %26

24:                                               ; preds = %10
  %25 = inttoptr i64 %14 to ptr
  br label %26

26:                                               ; preds = %19, %24
  %27 = phi ptr [ %23, %19 ], [ %25, %24 ]
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(1709) %16, i16 noundef zeroext %13)
  %28 = add nuw nsw i64 %11, 1
  %29 = icmp eq i64 %28, %8
  br i1 %29, label %9, label %10, !llvm.loop !215
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !139 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %91, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 14
  %7 = load i8, ptr %6, align 2, !tbaa !216, !range !123, !noundef !126
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !73
  %11 = getelementptr inbounds ptr, ptr %10, i64 13
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2)
  br label %91

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 13
  %15 = load i8, ptr %14, align 1, !tbaa !217, !range !123, !noundef !126
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  store i8 0, ptr %14, align 1, !tbaa !217
  %18 = load ptr, ptr %0, align 8, !tbaa !73
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2)
  br label %91

21:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %22, align 1, !tbaa !95
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %26 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  br label %27

27:                                               ; preds = %21, %65
  %28 = phi i32 [ 0, %21 ], [ %67, %65 ]
  %29 = phi i32 [ 0, %21 ], [ %66, %65 ]
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds i16, ptr %1, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !116
  %33 = icmp ult i16 %32, 256
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = zext nneg i16 %32 to i64
  %36 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !116
  %38 = icmp eq i16 %37, 83
  %39 = load i16, ptr %24, align 8
  %40 = icmp ugt i16 %32, %39
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %45, label %63

42:                                               ; preds = %27
  %43 = load i16, ptr %23, align 8, !tbaa !122
  %44 = icmp ugt i16 %32, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %42, %34
  %46 = sub i32 %28, %29
  %47 = load i64, ptr %25, align 8, !tbaa !136
  %48 = load i64, ptr %26, align 8, !tbaa !136
  %49 = getelementptr inbounds i8, ptr %0, i64 %48
  %50 = and i64 %47, 1
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %49, align 8, !tbaa !73
  %54 = getelementptr i8, ptr %53, i64 %47
  %55 = getelementptr i8, ptr %54, i64 -1
  %56 = load ptr, ptr %55, align 8, !nosanitize !126
  br label %59

57:                                               ; preds = %45
  %58 = inttoptr i64 %47 to ptr
  br label %59

59:                                               ; preds = %52, %57
  %60 = phi ptr [ %56, %52 ], [ %58, %57 ]
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(1709) %49, ptr noundef %1, i32 noundef %29, i32 noundef %46)
  %61 = tail call noundef i32 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEscapeEtjPKtjb(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %32, i32 noundef %28, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  %62 = add i32 %61, 1
  br label %65

63:                                               ; preds = %42, %34
  %64 = add nuw i32 %28, 1
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %62, %59 ], [ %29, %63 ]
  %67 = phi i32 [ %62, %59 ], [ %64, %63 ]
  %68 = icmp ult i32 %67, %2
  br i1 %68, label %27, label %69, !llvm.loop !218

69:                                               ; preds = %65
  %70 = sub i32 %67, %66
  %71 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %72 = load i64, ptr %71, align 8, !tbaa !136
  %73 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !136
  %75 = getelementptr inbounds i8, ptr %0, i64 %74
  %76 = and i64 %72, 1
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %69
  %79 = load ptr, ptr %75, align 8, !tbaa !73
  %80 = getelementptr i8, ptr %79, i64 %72
  %81 = getelementptr i8, ptr %80, i64 -1
  %82 = load ptr, ptr %81, align 8, !nosanitize !126
  br label %85

83:                                               ; preds = %69
  %84 = inttoptr i64 %72 to ptr
  br label %85

85:                                               ; preds = %78, %83
  %86 = phi ptr [ %82, %78 ], [ %84, %83 ]
  tail call void %86(ptr noundef nonnull align 8 dereferenceable(1709) %75, ptr noundef %1, i32 noundef %66, i32 noundef %70)
  %87 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %88 = load i8, ptr %87, align 1, !tbaa !200, !range !123, !noundef !126
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i8 1, ptr %87, align 1, !tbaa !200
  br label %91

91:                                               ; preds = %85, %90, %9, %17, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML13charactersRawEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !139 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %4, align 1, !tbaa !95
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %6 = load i64, ptr %5, align 8, !tbaa !136
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !136
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = and i64 %6, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %9, align 8, !tbaa !73
  %14 = getelementptr i8, ptr %13, i64 %6
  %15 = getelementptr i8, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !nosanitize !126
  br label %19

17:                                               ; preds = %3
  %18 = inttoptr i64 %6 to ptr
  br label %19

19:                                               ; preds = %12, %17
  %20 = phi ptr [ %16, %12 ], [ %18, %17 ]
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(1709) %9, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014FormatterToXML9getWriterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0) unnamed_addr #15 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypeSystemEv(ptr noundef nonnull readnone align 8 dereferenceable(1709) %0) unnamed_addr #13 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypePublicEv(ptr noundef nonnull readnone align 8 dereferenceable(1709) %0) unnamed_addr #13 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML11getEncodingEv(ptr noundef nonnull readnone align 8 dereferenceable(1709) %0) unnamed_addr #13 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML12getMediaTypeEv(ptr noundef nonnull readnone align 8 dereferenceable(1709) %0) unnamed_addr #13 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 31
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1014FormatterToXML9getIndentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1709) %0) unnamed_addr #15 align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  %3 = load i32, ptr %2, align 4, !tbaa !101
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML15writeAttrStringEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !139 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  br label %10

10:                                               ; preds = %5, %48
  %11 = phi i32 [ 0, %5 ], [ %50, %48 ]
  %12 = phi i32 [ 0, %5 ], [ %49, %48 ]
  %13 = zext i32 %11 to i64
  %14 = getelementptr inbounds i16, ptr %1, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !116
  %16 = icmp ult i16 %15, 256
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = zext nneg i16 %15 to i64
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !116
  %21 = icmp eq i16 %20, 83
  %22 = load i16, ptr %7, align 8
  %23 = icmp ugt i16 %15, %22
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %28, label %46

25:                                               ; preds = %10
  %26 = load i16, ptr %6, align 8, !tbaa !122
  %27 = icmp ugt i16 %15, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %25, %17
  %29 = sub i32 %11, %12
  %30 = load i64, ptr %8, align 8, !tbaa !136
  %31 = load i64, ptr %9, align 8, !tbaa !136
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = and i64 %30, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %32, align 8, !tbaa !73
  %37 = getelementptr i8, ptr %36, i64 %30
  %38 = getelementptr i8, ptr %37, i64 -1
  %39 = load ptr, ptr %38, align 8, !nosanitize !126
  br label %42

40:                                               ; preds = %28
  %41 = inttoptr i64 %30 to ptr
  br label %42

42:                                               ; preds = %35, %40
  %43 = phi ptr [ %39, %35 ], [ %41, %40 ]
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(1709) %32, ptr noundef %1, i32 noundef %12, i32 noundef %29)
  %44 = tail call noundef i32 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEscapeEtjPKtjb(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %15, i32 noundef %11, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  %45 = add i32 %44, 1
  br label %48

46:                                               ; preds = %25, %17
  %47 = add i32 %11, 1
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %12, %46 ]
  %50 = phi i32 [ %45, %42 ], [ %47, %46 ]
  %51 = icmp ult i32 %50, %2
  br i1 %51, label %10, label %52, !llvm.loop !219

52:                                               ; preds = %48, %3
  %53 = phi i32 [ 0, %3 ], [ %49, %48 ]
  %54 = phi i32 [ 0, %3 ], [ %50, %48 ]
  %55 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %56 = load i64, ptr %55, align 8, !tbaa !136
  %57 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !136
  %59 = getelementptr inbounds i8, ptr %0, i64 %58
  %60 = and i64 %56, 1
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %52
  %63 = load ptr, ptr %59, align 8, !tbaa !73
  %64 = getelementptr i8, ptr %63, i64 %56
  %65 = getelementptr i8, ptr %64, i64 -1
  %66 = load ptr, ptr %65, align 8, !nosanitize !126
  br label %69

67:                                               ; preds = %52
  %68 = inttoptr i64 %56 to ptr
  br label %69

69:                                               ; preds = %62, %67
  %70 = phi ptr [ %66, %62 ], [ %68, %67 ]
  %71 = sub i32 %54, %53
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(1709) %59, ptr noundef %1, i32 noundef %53, i32 noundef %71)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML16accumCommentDataEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 43
  %4 = load i64, ptr %3, align 8, !tbaa !132
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 43, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !132
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !73
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !126
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML20writeNormalizedCharsEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 !prof !139 {
  %6 = add i32 %3, %2
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 47
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 48
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %18 = add i32 %6, -2
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  br label %22

21:                                               ; preds = %524, %5
  ret void

22:                                               ; preds = %8, %524
  %23 = phi i32 [ %2, %8 ], [ %526, %524 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i16, ptr %1, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !116
  switch i16 %26, label %71 [
    i16 13, label %27
    i16 10, label %54
  ]

27:                                               ; preds = %22
  %28 = add i32 %23, 1
  %29 = icmp ult i32 %28, %6
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = zext i32 %28 to i64
  %32 = getelementptr inbounds i16, ptr %1, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !116
  %34 = icmp eq i16 %33, 10
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load ptr, ptr %13, align 8, !tbaa !115
  %37 = load i32, ptr %14, align 8, !tbaa !121
  %38 = load i64, ptr %15, align 8, !tbaa !136
  %39 = load i64, ptr %16, align 8, !tbaa !136
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = and i64 %38, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %40, align 8, !tbaa !73
  %45 = getelementptr i8, ptr %44, i64 %38
  %46 = getelementptr i8, ptr %45, i64 -1
  %47 = load ptr, ptr %46, align 8, !nosanitize !126
  br label %50

48:                                               ; preds = %35
  %49 = inttoptr i64 %38 to ptr
  br label %50

50:                                               ; preds = %43, %48
  %51 = phi ptr [ %47, %43 ], [ %49, %48 ]
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(1709) %40, ptr noundef %36, i32 noundef 0, i32 noundef %37)
  br label %524

52:                                               ; preds = %30, %27
  %53 = icmp eq i16 %26, 10
  br i1 %53, label %54, label %71

54:                                               ; preds = %22, %52
  %55 = load ptr, ptr %9, align 8, !tbaa !115
  %56 = load i32, ptr %10, align 8, !tbaa !121
  %57 = load i64, ptr %11, align 8, !tbaa !136
  %58 = load i64, ptr %12, align 8, !tbaa !136
  %59 = getelementptr inbounds i8, ptr %0, i64 %58
  %60 = and i64 %57, 1
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load ptr, ptr %59, align 8, !tbaa !73
  %64 = getelementptr i8, ptr %63, i64 %57
  %65 = getelementptr i8, ptr %64, i64 -1
  %66 = load ptr, ptr %65, align 8, !nosanitize !126
  br label %69

67:                                               ; preds = %54
  %68 = inttoptr i64 %57 to ptr
  br label %69

69:                                               ; preds = %62, %67
  %70 = phi ptr [ %66, %62 ], [ %68, %67 ]
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(1709) %59, ptr noundef %55, i32 noundef 0, i32 noundef %56)
  br label %524

71:                                               ; preds = %52, %22
  %72 = load i16, ptr %17, align 8
  %73 = icmp ugt i16 %26, %72
  %74 = select i1 %4, i1 %73, i1 false
  br i1 %74, label %75, label %253

75:                                               ; preds = %71
  %76 = icmp eq i32 %23, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %79 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %80 = load i64, ptr %78, align 8, !tbaa !136
  %81 = load i64, ptr %79, align 8, !tbaa !136
  %82 = getelementptr inbounds i8, ptr %0, i64 %81
  %83 = and i64 %80, 1
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %77
  %86 = load ptr, ptr %82, align 8, !tbaa !73
  %87 = getelementptr i8, ptr %86, i64 %80
  %88 = getelementptr i8, ptr %87, i64 -1
  %89 = load ptr, ptr %88, align 8, !nosanitize !126
  br label %92

90:                                               ; preds = %77
  %91 = inttoptr i64 %80 to ptr
  br label %92

92:                                               ; preds = %85, %90
  %93 = phi ptr [ %89, %85 ], [ %91, %90 ]
  tail call void %93(ptr noundef nonnull align 8 dereferenceable(1709) %82, ptr noundef nonnull @_ZN11xalanc_1_1014FormatterToXML21s_dtdCDATACloseStringE, i32 noundef 0, i32 noundef 3)
  br label %94

94:                                               ; preds = %92, %75
  %95 = and i16 %26, -1024
  %96 = icmp eq i16 %95, -10240
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = add i32 %23, 1
  %99 = icmp ult i32 %98, %6
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %102 = load ptr, ptr %101, align 8, !tbaa !107
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %26, ptr noundef nonnull align 8 dereferenceable(8) %102)
  unreachable

103:                                              ; preds = %97
  %104 = zext i32 %98 to i64
  %105 = getelementptr inbounds i16, ptr %1, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !116
  %107 = and i16 %106, -1024
  %108 = icmp eq i16 %107, -9216
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %111 = load ptr, ptr %110, align 8, !tbaa !107
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %26, i16 noundef zeroext %106, ptr noundef nonnull align 8 dereferenceable(8) %111)
  unreachable

112:                                              ; preds = %103
  %113 = shl i16 %26, 10
  %114 = add i16 %113, 9216
  %115 = add i16 %114, %106
  br label %116

116:                                              ; preds = %94, %112
  %117 = phi i16 [ %115, %112 ], [ %26, %94 ]
  %118 = phi i32 [ %98, %112 ], [ %23, %94 ]
  %119 = zext i16 %117 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %119)
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %524, label %121

121:                                              ; preds = %116
  %122 = add i32 %6, -1
  %123 = icmp ult i32 %118, %122
  br i1 %123, label %124, label %524

124:                                              ; preds = %121
  %125 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %126 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %127 = load i64, ptr %125, align 8, !tbaa !130
  %128 = load i64, ptr %126, align 8, !tbaa !130
  %129 = getelementptr inbounds i8, ptr %0, i64 %128
  %130 = and i64 %127, 1
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %124
  %133 = load ptr, ptr %129, align 8, !tbaa !73
  %134 = getelementptr i8, ptr %133, i64 %127
  %135 = getelementptr i8, ptr %134, i64 -1
  %136 = load ptr, ptr %135, align 8, !nosanitize !126
  br label %139

137:                                              ; preds = %124
  %138 = inttoptr i64 %127 to ptr
  br label %139

139:                                              ; preds = %132, %137
  %140 = phi ptr [ %136, %132 ], [ %138, %137 ]
  tail call void %140(ptr noundef nonnull align 8 dereferenceable(1709) %129, i16 noundef zeroext 60)
  %141 = load i64, ptr %125, align 8, !tbaa !130
  %142 = load i64, ptr %126, align 8, !tbaa !130
  %143 = getelementptr inbounds i8, ptr %0, i64 %142
  %144 = and i64 %141, 1
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %139
  %147 = load ptr, ptr %143, align 8, !tbaa !73
  %148 = getelementptr i8, ptr %147, i64 %141
  %149 = getelementptr i8, ptr %148, i64 -1
  %150 = load ptr, ptr %149, align 8, !nosanitize !126
  br label %153

151:                                              ; preds = %139
  %152 = inttoptr i64 %141 to ptr
  br label %153

153:                                              ; preds = %146, %151
  %154 = phi ptr [ %150, %146 ], [ %152, %151 ]
  tail call void %154(ptr noundef nonnull align 8 dereferenceable(1709) %143, i16 noundef zeroext 33)
  %155 = load i64, ptr %125, align 8, !tbaa !130
  %156 = load i64, ptr %126, align 8, !tbaa !130
  %157 = getelementptr inbounds i8, ptr %0, i64 %156
  %158 = and i64 %155, 1
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %153
  %161 = load ptr, ptr %157, align 8, !tbaa !73
  %162 = getelementptr i8, ptr %161, i64 %155
  %163 = getelementptr i8, ptr %162, i64 -1
  %164 = load ptr, ptr %163, align 8, !nosanitize !126
  br label %167

165:                                              ; preds = %153
  %166 = inttoptr i64 %155 to ptr
  br label %167

167:                                              ; preds = %160, %165
  %168 = phi ptr [ %164, %160 ], [ %166, %165 ]
  tail call void %168(ptr noundef nonnull align 8 dereferenceable(1709) %157, i16 noundef zeroext 91)
  %169 = load i64, ptr %125, align 8, !tbaa !130
  %170 = load i64, ptr %126, align 8, !tbaa !130
  %171 = getelementptr inbounds i8, ptr %0, i64 %170
  %172 = and i64 %169, 1
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %167
  %175 = load ptr, ptr %171, align 8, !tbaa !73
  %176 = getelementptr i8, ptr %175, i64 %169
  %177 = getelementptr i8, ptr %176, i64 -1
  %178 = load ptr, ptr %177, align 8, !nosanitize !126
  br label %181

179:                                              ; preds = %167
  %180 = inttoptr i64 %169 to ptr
  br label %181

181:                                              ; preds = %174, %179
  %182 = phi ptr [ %178, %174 ], [ %180, %179 ]
  tail call void %182(ptr noundef nonnull align 8 dereferenceable(1709) %171, i16 noundef zeroext 67)
  %183 = load i64, ptr %125, align 8, !tbaa !130
  %184 = load i64, ptr %126, align 8, !tbaa !130
  %185 = getelementptr inbounds i8, ptr %0, i64 %184
  %186 = and i64 %183, 1
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %181
  %189 = load ptr, ptr %185, align 8, !tbaa !73
  %190 = getelementptr i8, ptr %189, i64 %183
  %191 = getelementptr i8, ptr %190, i64 -1
  %192 = load ptr, ptr %191, align 8, !nosanitize !126
  br label %195

193:                                              ; preds = %181
  %194 = inttoptr i64 %183 to ptr
  br label %195

195:                                              ; preds = %188, %193
  %196 = phi ptr [ %192, %188 ], [ %194, %193 ]
  tail call void %196(ptr noundef nonnull align 8 dereferenceable(1709) %185, i16 noundef zeroext 68)
  %197 = load i64, ptr %125, align 8, !tbaa !130
  %198 = load i64, ptr %126, align 8, !tbaa !130
  %199 = getelementptr inbounds i8, ptr %0, i64 %198
  %200 = and i64 %197, 1
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %195
  %203 = load ptr, ptr %199, align 8, !tbaa !73
  %204 = getelementptr i8, ptr %203, i64 %197
  %205 = getelementptr i8, ptr %204, i64 -1
  %206 = load ptr, ptr %205, align 8, !nosanitize !126
  br label %209

207:                                              ; preds = %195
  %208 = inttoptr i64 %197 to ptr
  br label %209

209:                                              ; preds = %202, %207
  %210 = phi ptr [ %206, %202 ], [ %208, %207 ]
  tail call void %210(ptr noundef nonnull align 8 dereferenceable(1709) %199, i16 noundef zeroext 65)
  %211 = load i64, ptr %125, align 8, !tbaa !130
  %212 = load i64, ptr %126, align 8, !tbaa !130
  %213 = getelementptr inbounds i8, ptr %0, i64 %212
  %214 = and i64 %211, 1
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %209
  %217 = load ptr, ptr %213, align 8, !tbaa !73
  %218 = getelementptr i8, ptr %217, i64 %211
  %219 = getelementptr i8, ptr %218, i64 -1
  %220 = load ptr, ptr %219, align 8, !nosanitize !126
  br label %223

221:                                              ; preds = %209
  %222 = inttoptr i64 %211 to ptr
  br label %223

223:                                              ; preds = %216, %221
  %224 = phi ptr [ %220, %216 ], [ %222, %221 ]
  tail call void %224(ptr noundef nonnull align 8 dereferenceable(1709) %213, i16 noundef zeroext 84)
  %225 = load i64, ptr %125, align 8, !tbaa !130
  %226 = load i64, ptr %126, align 8, !tbaa !130
  %227 = getelementptr inbounds i8, ptr %0, i64 %226
  %228 = and i64 %225, 1
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %223
  %231 = load ptr, ptr %227, align 8, !tbaa !73
  %232 = getelementptr i8, ptr %231, i64 %225
  %233 = getelementptr i8, ptr %232, i64 -1
  %234 = load ptr, ptr %233, align 8, !nosanitize !126
  br label %237

235:                                              ; preds = %223
  %236 = inttoptr i64 %225 to ptr
  br label %237

237:                                              ; preds = %230, %235
  %238 = phi ptr [ %234, %230 ], [ %236, %235 ]
  tail call void %238(ptr noundef nonnull align 8 dereferenceable(1709) %227, i16 noundef zeroext 65)
  %239 = load i64, ptr %125, align 8, !tbaa !130
  %240 = load i64, ptr %126, align 8, !tbaa !130
  %241 = getelementptr inbounds i8, ptr %0, i64 %240
  %242 = and i64 %239, 1
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %237
  %245 = load ptr, ptr %241, align 8, !tbaa !73
  %246 = getelementptr i8, ptr %245, i64 %239
  %247 = getelementptr i8, ptr %246, i64 -1
  %248 = load ptr, ptr %247, align 8, !nosanitize !126
  br label %251

249:                                              ; preds = %237
  %250 = inttoptr i64 %239 to ptr
  br label %251

251:                                              ; preds = %244, %249
  %252 = phi ptr [ %248, %244 ], [ %250, %249 ]
  tail call void %252(ptr noundef nonnull align 8 dereferenceable(1709) %241, i16 noundef zeroext 91)
  br label %524

253:                                              ; preds = %71
  br i1 %4, label %254, label %483

254:                                              ; preds = %253
  %255 = icmp ult i32 %23, %18
  %256 = icmp eq i16 %26, 93
  %257 = and i1 %255, %256
  br i1 %257, label %258, label %483

258:                                              ; preds = %254
  %259 = add nuw i32 %23, 1
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i16, ptr %1, i64 %260
  %262 = load i16, ptr %261, align 2, !tbaa !116
  %263 = icmp eq i16 %262, 93
  br i1 %263, label %264, label %483

264:                                              ; preds = %258
  %265 = add i32 %23, 2
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i16, ptr %1, i64 %266
  %268 = load i16, ptr %267, align 2, !tbaa !116
  %269 = icmp eq i16 %268, 62
  br i1 %269, label %270, label %483

270:                                              ; preds = %264
  %271 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %272 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %273 = load i64, ptr %271, align 8, !tbaa !130
  %274 = load i64, ptr %272, align 8, !tbaa !130
  %275 = getelementptr inbounds i8, ptr %0, i64 %274
  %276 = and i64 %273, 1
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %270
  %279 = load ptr, ptr %275, align 8, !tbaa !73
  %280 = getelementptr i8, ptr %279, i64 %273
  %281 = getelementptr i8, ptr %280, i64 -1
  %282 = load ptr, ptr %281, align 8, !nosanitize !126
  br label %285

283:                                              ; preds = %270
  %284 = inttoptr i64 %273 to ptr
  br label %285

285:                                              ; preds = %278, %283
  %286 = phi ptr [ %282, %278 ], [ %284, %283 ]
  tail call void %286(ptr noundef nonnull align 8 dereferenceable(1709) %275, i16 noundef zeroext 93)
  %287 = load i64, ptr %271, align 8, !tbaa !130
  %288 = load i64, ptr %272, align 8, !tbaa !130
  %289 = getelementptr inbounds i8, ptr %0, i64 %288
  %290 = and i64 %287, 1
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %297, label %292

292:                                              ; preds = %285
  %293 = load ptr, ptr %289, align 8, !tbaa !73
  %294 = getelementptr i8, ptr %293, i64 %287
  %295 = getelementptr i8, ptr %294, i64 -1
  %296 = load ptr, ptr %295, align 8, !nosanitize !126
  br label %299

297:                                              ; preds = %285
  %298 = inttoptr i64 %287 to ptr
  br label %299

299:                                              ; preds = %292, %297
  %300 = phi ptr [ %296, %292 ], [ %298, %297 ]
  tail call void %300(ptr noundef nonnull align 8 dereferenceable(1709) %289, i16 noundef zeroext 93)
  %301 = load i64, ptr %271, align 8, !tbaa !130
  %302 = load i64, ptr %272, align 8, !tbaa !130
  %303 = getelementptr inbounds i8, ptr %0, i64 %302
  %304 = and i64 %301, 1
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %299
  %307 = load ptr, ptr %303, align 8, !tbaa !73
  %308 = getelementptr i8, ptr %307, i64 %301
  %309 = getelementptr i8, ptr %308, i64 -1
  %310 = load ptr, ptr %309, align 8, !nosanitize !126
  br label %313

311:                                              ; preds = %299
  %312 = inttoptr i64 %301 to ptr
  br label %313

313:                                              ; preds = %306, %311
  %314 = phi ptr [ %310, %306 ], [ %312, %311 ]
  tail call void %314(ptr noundef nonnull align 8 dereferenceable(1709) %303, i16 noundef zeroext 93)
  %315 = load i64, ptr %271, align 8, !tbaa !130
  %316 = load i64, ptr %272, align 8, !tbaa !130
  %317 = getelementptr inbounds i8, ptr %0, i64 %316
  %318 = and i64 %315, 1
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %325, label %320

320:                                              ; preds = %313
  %321 = load ptr, ptr %317, align 8, !tbaa !73
  %322 = getelementptr i8, ptr %321, i64 %315
  %323 = getelementptr i8, ptr %322, i64 -1
  %324 = load ptr, ptr %323, align 8, !nosanitize !126
  br label %327

325:                                              ; preds = %313
  %326 = inttoptr i64 %315 to ptr
  br label %327

327:                                              ; preds = %320, %325
  %328 = phi ptr [ %324, %320 ], [ %326, %325 ]
  tail call void %328(ptr noundef nonnull align 8 dereferenceable(1709) %317, i16 noundef zeroext 93)
  %329 = load i64, ptr %271, align 8, !tbaa !130
  %330 = load i64, ptr %272, align 8, !tbaa !130
  %331 = getelementptr inbounds i8, ptr %0, i64 %330
  %332 = and i64 %329, 1
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %339, label %334

334:                                              ; preds = %327
  %335 = load ptr, ptr %331, align 8, !tbaa !73
  %336 = getelementptr i8, ptr %335, i64 %329
  %337 = getelementptr i8, ptr %336, i64 -1
  %338 = load ptr, ptr %337, align 8, !nosanitize !126
  br label %341

339:                                              ; preds = %327
  %340 = inttoptr i64 %329 to ptr
  br label %341

341:                                              ; preds = %334, %339
  %342 = phi ptr [ %338, %334 ], [ %340, %339 ]
  tail call void %342(ptr noundef nonnull align 8 dereferenceable(1709) %331, i16 noundef zeroext 62)
  %343 = load i64, ptr %271, align 8, !tbaa !130
  %344 = load i64, ptr %272, align 8, !tbaa !130
  %345 = getelementptr inbounds i8, ptr %0, i64 %344
  %346 = and i64 %343, 1
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %341
  %349 = load ptr, ptr %345, align 8, !tbaa !73
  %350 = getelementptr i8, ptr %349, i64 %343
  %351 = getelementptr i8, ptr %350, i64 -1
  %352 = load ptr, ptr %351, align 8, !nosanitize !126
  br label %355

353:                                              ; preds = %341
  %354 = inttoptr i64 %343 to ptr
  br label %355

355:                                              ; preds = %348, %353
  %356 = phi ptr [ %352, %348 ], [ %354, %353 ]
  tail call void %356(ptr noundef nonnull align 8 dereferenceable(1709) %345, i16 noundef zeroext 60)
  %357 = load i64, ptr %271, align 8, !tbaa !130
  %358 = load i64, ptr %272, align 8, !tbaa !130
  %359 = getelementptr inbounds i8, ptr %0, i64 %358
  %360 = and i64 %357, 1
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %355
  %363 = load ptr, ptr %359, align 8, !tbaa !73
  %364 = getelementptr i8, ptr %363, i64 %357
  %365 = getelementptr i8, ptr %364, i64 -1
  %366 = load ptr, ptr %365, align 8, !nosanitize !126
  br label %369

367:                                              ; preds = %355
  %368 = inttoptr i64 %357 to ptr
  br label %369

369:                                              ; preds = %362, %367
  %370 = phi ptr [ %366, %362 ], [ %368, %367 ]
  tail call void %370(ptr noundef nonnull align 8 dereferenceable(1709) %359, i16 noundef zeroext 33)
  %371 = load i64, ptr %271, align 8, !tbaa !130
  %372 = load i64, ptr %272, align 8, !tbaa !130
  %373 = getelementptr inbounds i8, ptr %0, i64 %372
  %374 = and i64 %371, 1
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %369
  %377 = load ptr, ptr %373, align 8, !tbaa !73
  %378 = getelementptr i8, ptr %377, i64 %371
  %379 = getelementptr i8, ptr %378, i64 -1
  %380 = load ptr, ptr %379, align 8, !nosanitize !126
  br label %383

381:                                              ; preds = %369
  %382 = inttoptr i64 %371 to ptr
  br label %383

383:                                              ; preds = %376, %381
  %384 = phi ptr [ %380, %376 ], [ %382, %381 ]
  tail call void %384(ptr noundef nonnull align 8 dereferenceable(1709) %373, i16 noundef zeroext 91)
  %385 = load i64, ptr %271, align 8, !tbaa !130
  %386 = load i64, ptr %272, align 8, !tbaa !130
  %387 = getelementptr inbounds i8, ptr %0, i64 %386
  %388 = and i64 %385, 1
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %395, label %390

390:                                              ; preds = %383
  %391 = load ptr, ptr %387, align 8, !tbaa !73
  %392 = getelementptr i8, ptr %391, i64 %385
  %393 = getelementptr i8, ptr %392, i64 -1
  %394 = load ptr, ptr %393, align 8, !nosanitize !126
  br label %397

395:                                              ; preds = %383
  %396 = inttoptr i64 %385 to ptr
  br label %397

397:                                              ; preds = %390, %395
  %398 = phi ptr [ %394, %390 ], [ %396, %395 ]
  tail call void %398(ptr noundef nonnull align 8 dereferenceable(1709) %387, i16 noundef zeroext 67)
  %399 = load i64, ptr %271, align 8, !tbaa !130
  %400 = load i64, ptr %272, align 8, !tbaa !130
  %401 = getelementptr inbounds i8, ptr %0, i64 %400
  %402 = and i64 %399, 1
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %409, label %404

404:                                              ; preds = %397
  %405 = load ptr, ptr %401, align 8, !tbaa !73
  %406 = getelementptr i8, ptr %405, i64 %399
  %407 = getelementptr i8, ptr %406, i64 -1
  %408 = load ptr, ptr %407, align 8, !nosanitize !126
  br label %411

409:                                              ; preds = %397
  %410 = inttoptr i64 %399 to ptr
  br label %411

411:                                              ; preds = %404, %409
  %412 = phi ptr [ %408, %404 ], [ %410, %409 ]
  tail call void %412(ptr noundef nonnull align 8 dereferenceable(1709) %401, i16 noundef zeroext 68)
  %413 = load i64, ptr %271, align 8, !tbaa !130
  %414 = load i64, ptr %272, align 8, !tbaa !130
  %415 = getelementptr inbounds i8, ptr %0, i64 %414
  %416 = and i64 %413, 1
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %423, label %418

418:                                              ; preds = %411
  %419 = load ptr, ptr %415, align 8, !tbaa !73
  %420 = getelementptr i8, ptr %419, i64 %413
  %421 = getelementptr i8, ptr %420, i64 -1
  %422 = load ptr, ptr %421, align 8, !nosanitize !126
  br label %425

423:                                              ; preds = %411
  %424 = inttoptr i64 %413 to ptr
  br label %425

425:                                              ; preds = %418, %423
  %426 = phi ptr [ %422, %418 ], [ %424, %423 ]
  tail call void %426(ptr noundef nonnull align 8 dereferenceable(1709) %415, i16 noundef zeroext 65)
  %427 = load i64, ptr %271, align 8, !tbaa !130
  %428 = load i64, ptr %272, align 8, !tbaa !130
  %429 = getelementptr inbounds i8, ptr %0, i64 %428
  %430 = and i64 %427, 1
  %431 = icmp eq i64 %430, 0
  br i1 %431, label %437, label %432

432:                                              ; preds = %425
  %433 = load ptr, ptr %429, align 8, !tbaa !73
  %434 = getelementptr i8, ptr %433, i64 %427
  %435 = getelementptr i8, ptr %434, i64 -1
  %436 = load ptr, ptr %435, align 8, !nosanitize !126
  br label %439

437:                                              ; preds = %425
  %438 = inttoptr i64 %427 to ptr
  br label %439

439:                                              ; preds = %432, %437
  %440 = phi ptr [ %436, %432 ], [ %438, %437 ]
  tail call void %440(ptr noundef nonnull align 8 dereferenceable(1709) %429, i16 noundef zeroext 84)
  %441 = load i64, ptr %271, align 8, !tbaa !130
  %442 = load i64, ptr %272, align 8, !tbaa !130
  %443 = getelementptr inbounds i8, ptr %0, i64 %442
  %444 = and i64 %441, 1
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %439
  %447 = load ptr, ptr %443, align 8, !tbaa !73
  %448 = getelementptr i8, ptr %447, i64 %441
  %449 = getelementptr i8, ptr %448, i64 -1
  %450 = load ptr, ptr %449, align 8, !nosanitize !126
  br label %453

451:                                              ; preds = %439
  %452 = inttoptr i64 %441 to ptr
  br label %453

453:                                              ; preds = %446, %451
  %454 = phi ptr [ %450, %446 ], [ %452, %451 ]
  tail call void %454(ptr noundef nonnull align 8 dereferenceable(1709) %443, i16 noundef zeroext 65)
  %455 = load i64, ptr %271, align 8, !tbaa !130
  %456 = load i64, ptr %272, align 8, !tbaa !130
  %457 = getelementptr inbounds i8, ptr %0, i64 %456
  %458 = and i64 %455, 1
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %465, label %460

460:                                              ; preds = %453
  %461 = load ptr, ptr %457, align 8, !tbaa !73
  %462 = getelementptr i8, ptr %461, i64 %455
  %463 = getelementptr i8, ptr %462, i64 -1
  %464 = load ptr, ptr %463, align 8, !nosanitize !126
  br label %467

465:                                              ; preds = %453
  %466 = inttoptr i64 %455 to ptr
  br label %467

467:                                              ; preds = %460, %465
  %468 = phi ptr [ %464, %460 ], [ %466, %465 ]
  tail call void %468(ptr noundef nonnull align 8 dereferenceable(1709) %457, i16 noundef zeroext 91)
  %469 = load i64, ptr %271, align 8, !tbaa !130
  %470 = load i64, ptr %272, align 8, !tbaa !130
  %471 = getelementptr inbounds i8, ptr %0, i64 %470
  %472 = and i64 %469, 1
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %479, label %474

474:                                              ; preds = %467
  %475 = load ptr, ptr %471, align 8, !tbaa !73
  %476 = getelementptr i8, ptr %475, i64 %469
  %477 = getelementptr i8, ptr %476, i64 -1
  %478 = load ptr, ptr %477, align 8, !nosanitize !126
  br label %481

479:                                              ; preds = %467
  %480 = inttoptr i64 %469 to ptr
  br label %481

481:                                              ; preds = %474, %479
  %482 = phi ptr [ %478, %474 ], [ %480, %479 ]
  tail call void %482(ptr noundef nonnull align 8 dereferenceable(1709) %471, i16 noundef zeroext 62)
  br label %524

483:                                              ; preds = %264, %258, %254, %253
  br i1 %73, label %499, label %484

484:                                              ; preds = %483
  %485 = load i64, ptr %19, align 8, !tbaa !130
  %486 = load i64, ptr %20, align 8, !tbaa !130
  %487 = getelementptr inbounds i8, ptr %0, i64 %486
  %488 = and i64 %485, 1
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %495, label %490

490:                                              ; preds = %484
  %491 = load ptr, ptr %487, align 8, !tbaa !73
  %492 = getelementptr i8, ptr %491, i64 %485
  %493 = getelementptr i8, ptr %492, i64 -1
  %494 = load ptr, ptr %493, align 8, !nosanitize !126
  br label %497

495:                                              ; preds = %484
  %496 = inttoptr i64 %485 to ptr
  br label %497

497:                                              ; preds = %490, %495
  %498 = phi ptr [ %494, %490 ], [ %496, %495 ]
  tail call void %498(ptr noundef nonnull align 8 dereferenceable(1709) %487, i16 noundef zeroext %26)
  br label %524

499:                                              ; preds = %483
  %500 = and i16 %26, -1024
  %501 = icmp eq i16 %500, -10240
  br i1 %501, label %502, label %522

502:                                              ; preds = %499
  %503 = add i32 %23, 1
  %504 = icmp ult i32 %503, %6
  br i1 %504, label %508, label %505

505:                                              ; preds = %502
  %506 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %507 = load ptr, ptr %506, align 8, !tbaa !107
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %26, ptr noundef nonnull align 8 dereferenceable(8) %507)
  unreachable

508:                                              ; preds = %502
  %509 = zext i32 %503 to i64
  %510 = getelementptr inbounds i16, ptr %1, i64 %509
  %511 = load i16, ptr %510, align 2, !tbaa !116
  %512 = and i16 %511, -1024
  %513 = icmp eq i16 %512, -9216
  br i1 %513, label %517, label %514

514:                                              ; preds = %508
  %515 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %516 = load ptr, ptr %515, align 8, !tbaa !107
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %26, i16 noundef zeroext %511, ptr noundef nonnull align 8 dereferenceable(8) %516)
  unreachable

517:                                              ; preds = %508
  %518 = shl i16 %26, 10
  %519 = add i16 %518, 9216
  %520 = add i16 %519, %511
  %521 = zext i16 %520 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %521)
  br label %524

522:                                              ; preds = %499
  %523 = zext i16 %26 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %523)
  br label %524

524:                                              ; preds = %69, %481, %517, %522, %497, %116, %121, %251, %50
  %525 = phi i32 [ %28, %50 ], [ %23, %69 ], [ %118, %251 ], [ %118, %121 ], [ 0, %116 ], [ %265, %481 ], [ %23, %497 ], [ %503, %517 ], [ %23, %522 ]
  %526 = add i32 %525, 1
  %527 = icmp ult i32 %526, %6
  br i1 %527, label %22, label %21, !llvm.loop !220
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML15entityReferenceEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !139 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !96, !range !123, !noundef !126
  %5 = icmp ne i8 %4, 0
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 1, !range !123
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %5, i1 %8, i1 false
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %11 = load i8, ptr %10, align 1, !range !123
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %16 = load i32, ptr %15, align 8, !tbaa !100
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %16)
  br label %17

17:                                               ; preds = %2, %14
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %19 = load i64, ptr %18, align 8, !tbaa !129
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !129
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = and i64 %19, 1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %22, align 8, !tbaa !73
  %27 = getelementptr i8, ptr %26, i64 %19
  %28 = getelementptr i8, ptr %27, i64 -1
  %29 = load ptr, ptr %28, align 8, !nosanitize !126
  br label %32

30:                                               ; preds = %17
  %31 = inttoptr i64 %19 to ptr
  br label %32

32:                                               ; preds = %25, %30
  %33 = phi ptr [ %29, %25 ], [ %31, %30 ]
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(1709) %22, i16 noundef zeroext 38)
  %34 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %35 = load i64, ptr %34, align 8, !tbaa !131
  %36 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !131
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = and i64 %35, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load ptr, ptr %38, align 8, !tbaa !73
  %43 = getelementptr i8, ptr %42, i64 %35
  %44 = getelementptr i8, ptr %43, i64 -1
  %45 = load ptr, ptr %44, align 8, !nosanitize !126
  br label %48

46:                                               ; preds = %32
  %47 = inttoptr i64 %35 to ptr
  br label %48

48:                                               ; preds = %41, %46
  %49 = phi ptr [ %45, %41 ], [ %47, %46 ]
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(1709) %38, ptr noundef %1)
  %50 = load i64, ptr %18, align 8, !tbaa !129
  %51 = load i64, ptr %20, align 8, !tbaa !129
  %52 = getelementptr inbounds i8, ptr %0, i64 %51
  %53 = and i64 %50, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = load ptr, ptr %52, align 8, !tbaa !73
  %57 = getelementptr i8, ptr %56, i64 %50
  %58 = getelementptr i8, ptr %57, i64 -1
  %59 = load ptr, ptr %58, align 8, !nosanitize !126
  br label %62

60:                                               ; preds = %48
  %61 = inttoptr i64 %50 to ptr
  br label %62

62:                                               ; preds = %55, %60
  %63 = phi ptr [ %59, %55 ], [ %61, %60 ]
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(1709) %52, i16 noundef zeroext 59)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !139 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !73
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2)
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML13resetDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #13 align 2 !prof !139 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML7commentEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !139 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %4 = load i8, ptr %3, align 4, !tbaa !96, !range !123, !noundef !126
  %5 = icmp ne i8 %4, 0
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %7 = load i8, ptr %6, align 1, !range !123
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %5, i1 %8, i1 false
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %11 = load i8, ptr %10, align 1, !range !123
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %16 = load i32, ptr %15, align 8, !tbaa !100
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %16)
  br label %17

17:                                               ; preds = %2, %14
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %19 = load i64, ptr %18, align 8, !tbaa !129
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !129
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = and i64 %19, 1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %22, align 8, !tbaa !73
  %27 = getelementptr i8, ptr %26, i64 %19
  %28 = getelementptr i8, ptr %27, i64 -1
  %29 = load ptr, ptr %28, align 8, !nosanitize !126
  br label %32

30:                                               ; preds = %17
  %31 = inttoptr i64 %19 to ptr
  br label %32

32:                                               ; preds = %25, %30
  %33 = phi ptr [ %29, %25 ], [ %31, %30 ]
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(1709) %22, i16 noundef zeroext 60)
  %34 = load i64, ptr %18, align 8, !tbaa !129
  %35 = load i64, ptr %20, align 8, !tbaa !129
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = and i64 %34, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %36, align 8, !tbaa !73
  %41 = getelementptr i8, ptr %40, i64 %34
  %42 = getelementptr i8, ptr %41, i64 -1
  %43 = load ptr, ptr %42, align 8, !nosanitize !126
  br label %46

44:                                               ; preds = %32
  %45 = inttoptr i64 %34 to ptr
  br label %46

46:                                               ; preds = %39, %44
  %47 = phi ptr [ %43, %39 ], [ %45, %44 ]
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(1709) %36, i16 noundef zeroext 33)
  %48 = load i64, ptr %18, align 8, !tbaa !129
  %49 = load i64, ptr %20, align 8, !tbaa !129
  %50 = getelementptr inbounds i8, ptr %0, i64 %49
  %51 = and i64 %48, 1
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %50, align 8, !tbaa !73
  %55 = getelementptr i8, ptr %54, i64 %48
  %56 = getelementptr i8, ptr %55, i64 -1
  %57 = load ptr, ptr %56, align 8, !nosanitize !126
  br label %60

58:                                               ; preds = %46
  %59 = inttoptr i64 %48 to ptr
  br label %60

60:                                               ; preds = %53, %58
  %61 = phi ptr [ %57, %53 ], [ %59, %58 ]
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(1709) %50, i16 noundef zeroext 45)
  %62 = load i64, ptr %18, align 8, !tbaa !129
  %63 = load i64, ptr %20, align 8, !tbaa !129
  %64 = getelementptr inbounds i8, ptr %0, i64 %63
  %65 = and i64 %62, 1
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr %64, align 8, !tbaa !73
  %69 = getelementptr i8, ptr %68, i64 %62
  %70 = getelementptr i8, ptr %69, i64 -1
  %71 = load ptr, ptr %70, align 8, !nosanitize !126
  br label %74

72:                                               ; preds = %60
  %73 = inttoptr i64 %62 to ptr
  br label %74

74:                                               ; preds = %67, %72
  %75 = phi ptr [ %71, %67 ], [ %73, %72 ]
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(1709) %64, i16 noundef zeroext 45)
  %76 = load ptr, ptr %0, align 8, !tbaa !73
  %77 = getelementptr inbounds ptr, ptr %76, i64 24
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1)
  %79 = load i64, ptr %18, align 8, !tbaa !129
  %80 = load i64, ptr %20, align 8, !tbaa !129
  %81 = getelementptr inbounds i8, ptr %0, i64 %80
  %82 = and i64 %79, 1
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %74
  %85 = load ptr, ptr %81, align 8, !tbaa !73
  %86 = getelementptr i8, ptr %85, i64 %79
  %87 = getelementptr i8, ptr %86, i64 -1
  %88 = load ptr, ptr %87, align 8, !nosanitize !126
  br label %91

89:                                               ; preds = %74
  %90 = inttoptr i64 %79 to ptr
  br label %91

91:                                               ; preds = %84, %89
  %92 = phi ptr [ %88, %84 ], [ %90, %89 ]
  tail call void %92(ptr noundef nonnull align 8 dereferenceable(1709) %81, i16 noundef zeroext 45)
  %93 = load i64, ptr %18, align 8, !tbaa !129
  %94 = load i64, ptr %20, align 8, !tbaa !129
  %95 = getelementptr inbounds i8, ptr %0, i64 %94
  %96 = and i64 %93, 1
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %91
  %99 = load ptr, ptr %95, align 8, !tbaa !73
  %100 = getelementptr i8, ptr %99, i64 %93
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load ptr, ptr %101, align 8, !nosanitize !126
  br label %105

103:                                              ; preds = %91
  %104 = inttoptr i64 %93 to ptr
  br label %105

105:                                              ; preds = %98, %103
  %106 = phi ptr [ %102, %98 ], [ %104, %103 ]
  tail call void %106(ptr noundef nonnull align 8 dereferenceable(1709) %95, i16 noundef zeroext 45)
  %107 = load i64, ptr %18, align 8, !tbaa !129
  %108 = load i64, ptr %20, align 8, !tbaa !129
  %109 = getelementptr inbounds i8, ptr %0, i64 %108
  %110 = and i64 %107, 1
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %105
  %113 = load ptr, ptr %109, align 8, !tbaa !73
  %114 = getelementptr i8, ptr %113, i64 %107
  %115 = getelementptr i8, ptr %114, i64 -1
  %116 = load ptr, ptr %115, align 8, !nosanitize !126
  br label %119

117:                                              ; preds = %105
  %118 = inttoptr i64 %107 to ptr
  br label %119

119:                                              ; preds = %112, %117
  %120 = phi ptr [ %116, %112 ], [ %118, %117 ]
  tail call void %120(ptr noundef nonnull align 8 dereferenceable(1709) %109, i16 noundef zeroext 62)
  %121 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 1, ptr %121, align 1, !tbaa !97
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !139 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !217, !range !123, !noundef !126
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  store i8 0, ptr %4, align 1, !tbaa !217
  %8 = load ptr, ptr %0, align 8, !tbaa !73
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2)
  br label %222

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 27
  %13 = load i8, ptr %12, align 1, !tbaa !106, !range !123, !noundef !126
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !73
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2)
  br label %222

19:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %20, align 1, !tbaa !95
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 12
  %22 = load i8, ptr %21, align 8, !tbaa !221, !range !123, !noundef !126
  %23 = icmp eq i8 %22, 0
  %24 = icmp ne i32 %2, 0
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %160

26:                                               ; preds = %19
  %27 = load i16, ptr %1, align 2, !tbaa !116
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %29 = load i16, ptr %28, align 8, !tbaa !122
  %30 = icmp ugt i16 %27, %29
  br i1 %30, label %160, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %33 = load i64, ptr %32, align 8, !tbaa !130
  %34 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !130
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = and i64 %33, 1
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %36, align 8, !tbaa !73
  %41 = getelementptr i8, ptr %40, i64 %33
  %42 = getelementptr i8, ptr %41, i64 -1
  %43 = load ptr, ptr %42, align 8, !nosanitize !126
  br label %46

44:                                               ; preds = %31
  %45 = inttoptr i64 %33 to ptr
  br label %46

46:                                               ; preds = %39, %44
  %47 = phi ptr [ %43, %39 ], [ %45, %44 ]
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(1709) %36, i16 noundef zeroext 60)
  %48 = load i64, ptr %32, align 8, !tbaa !130
  %49 = load i64, ptr %34, align 8, !tbaa !130
  %50 = getelementptr inbounds i8, ptr %0, i64 %49
  %51 = and i64 %48, 1
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %50, align 8, !tbaa !73
  %55 = getelementptr i8, ptr %54, i64 %48
  %56 = getelementptr i8, ptr %55, i64 -1
  %57 = load ptr, ptr %56, align 8, !nosanitize !126
  br label %60

58:                                               ; preds = %46
  %59 = inttoptr i64 %48 to ptr
  br label %60

60:                                               ; preds = %53, %58
  %61 = phi ptr [ %57, %53 ], [ %59, %58 ]
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(1709) %50, i16 noundef zeroext 33)
  %62 = load i64, ptr %32, align 8, !tbaa !130
  %63 = load i64, ptr %34, align 8, !tbaa !130
  %64 = getelementptr inbounds i8, ptr %0, i64 %63
  %65 = and i64 %62, 1
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr %64, align 8, !tbaa !73
  %69 = getelementptr i8, ptr %68, i64 %62
  %70 = getelementptr i8, ptr %69, i64 -1
  %71 = load ptr, ptr %70, align 8, !nosanitize !126
  br label %74

72:                                               ; preds = %60
  %73 = inttoptr i64 %62 to ptr
  br label %74

74:                                               ; preds = %67, %72
  %75 = phi ptr [ %71, %67 ], [ %73, %72 ]
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(1709) %64, i16 noundef zeroext 91)
  %76 = load i64, ptr %32, align 8, !tbaa !130
  %77 = load i64, ptr %34, align 8, !tbaa !130
  %78 = getelementptr inbounds i8, ptr %0, i64 %77
  %79 = and i64 %76, 1
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = load ptr, ptr %78, align 8, !tbaa !73
  %83 = getelementptr i8, ptr %82, i64 %76
  %84 = getelementptr i8, ptr %83, i64 -1
  %85 = load ptr, ptr %84, align 8, !nosanitize !126
  br label %88

86:                                               ; preds = %74
  %87 = inttoptr i64 %76 to ptr
  br label %88

88:                                               ; preds = %81, %86
  %89 = phi ptr [ %85, %81 ], [ %87, %86 ]
  tail call void %89(ptr noundef nonnull align 8 dereferenceable(1709) %78, i16 noundef zeroext 67)
  %90 = load i64, ptr %32, align 8, !tbaa !130
  %91 = load i64, ptr %34, align 8, !tbaa !130
  %92 = getelementptr inbounds i8, ptr %0, i64 %91
  %93 = and i64 %90, 1
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr %92, align 8, !tbaa !73
  %97 = getelementptr i8, ptr %96, i64 %90
  %98 = getelementptr i8, ptr %97, i64 -1
  %99 = load ptr, ptr %98, align 8, !nosanitize !126
  br label %102

100:                                              ; preds = %88
  %101 = inttoptr i64 %90 to ptr
  br label %102

102:                                              ; preds = %95, %100
  %103 = phi ptr [ %99, %95 ], [ %101, %100 ]
  tail call void %103(ptr noundef nonnull align 8 dereferenceable(1709) %92, i16 noundef zeroext 68)
  %104 = load i64, ptr %32, align 8, !tbaa !130
  %105 = load i64, ptr %34, align 8, !tbaa !130
  %106 = getelementptr inbounds i8, ptr %0, i64 %105
  %107 = and i64 %104, 1
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %102
  %110 = load ptr, ptr %106, align 8, !tbaa !73
  %111 = getelementptr i8, ptr %110, i64 %104
  %112 = getelementptr i8, ptr %111, i64 -1
  %113 = load ptr, ptr %112, align 8, !nosanitize !126
  br label %116

114:                                              ; preds = %102
  %115 = inttoptr i64 %104 to ptr
  br label %116

116:                                              ; preds = %109, %114
  %117 = phi ptr [ %113, %109 ], [ %115, %114 ]
  tail call void %117(ptr noundef nonnull align 8 dereferenceable(1709) %106, i16 noundef zeroext 65)
  %118 = load i64, ptr %32, align 8, !tbaa !130
  %119 = load i64, ptr %34, align 8, !tbaa !130
  %120 = getelementptr inbounds i8, ptr %0, i64 %119
  %121 = and i64 %118, 1
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %116
  %124 = load ptr, ptr %120, align 8, !tbaa !73
  %125 = getelementptr i8, ptr %124, i64 %118
  %126 = getelementptr i8, ptr %125, i64 -1
  %127 = load ptr, ptr %126, align 8, !nosanitize !126
  br label %130

128:                                              ; preds = %116
  %129 = inttoptr i64 %118 to ptr
  br label %130

130:                                              ; preds = %123, %128
  %131 = phi ptr [ %127, %123 ], [ %129, %128 ]
  tail call void %131(ptr noundef nonnull align 8 dereferenceable(1709) %120, i16 noundef zeroext 84)
  %132 = load i64, ptr %32, align 8, !tbaa !130
  %133 = load i64, ptr %34, align 8, !tbaa !130
  %134 = getelementptr inbounds i8, ptr %0, i64 %133
  %135 = and i64 %132, 1
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %130
  %138 = load ptr, ptr %134, align 8, !tbaa !73
  %139 = getelementptr i8, ptr %138, i64 %132
  %140 = getelementptr i8, ptr %139, i64 -1
  %141 = load ptr, ptr %140, align 8, !nosanitize !126
  br label %144

142:                                              ; preds = %130
  %143 = inttoptr i64 %132 to ptr
  br label %144

144:                                              ; preds = %137, %142
  %145 = phi ptr [ %141, %137 ], [ %143, %142 ]
  tail call void %145(ptr noundef nonnull align 8 dereferenceable(1709) %134, i16 noundef zeroext 65)
  %146 = load i64, ptr %32, align 8, !tbaa !130
  %147 = load i64, ptr %34, align 8, !tbaa !130
  %148 = getelementptr inbounds i8, ptr %0, i64 %147
  %149 = and i64 %146, 1
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %144
  %152 = load ptr, ptr %148, align 8, !tbaa !73
  %153 = getelementptr i8, ptr %152, i64 %146
  %154 = getelementptr i8, ptr %153, i64 -1
  %155 = load ptr, ptr %154, align 8, !nosanitize !126
  br label %158

156:                                              ; preds = %144
  %157 = inttoptr i64 %146 to ptr
  br label %158

158:                                              ; preds = %151, %156
  %159 = phi ptr [ %155, %151 ], [ %157, %156 ]
  tail call void %159(ptr noundef nonnull align 8 dereferenceable(1709) %148, i16 noundef zeroext 91)
  br label %160

160:                                              ; preds = %26, %158, %19
  %161 = load i8, ptr %21, align 8, !tbaa !221, !range !123, !noundef !126
  %162 = icmp eq i8 %161, 0
  %163 = load ptr, ptr %0, align 8, !tbaa !73
  %164 = getelementptr inbounds ptr, ptr %163, i64 22
  %165 = load ptr, ptr %164, align 8
  tail call void %165(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, i1 noundef zeroext %162)
  %166 = load i8, ptr %21, align 8, !tbaa !221, !range !123, !noundef !126
  %167 = icmp eq i8 %166, 0
  %168 = and i1 %24, %167
  br i1 %168, label %169, label %222

169:                                              ; preds = %160
  %170 = add i32 %2, -1
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i16, ptr %1, i64 %171
  %173 = load i16, ptr %172, align 2, !tbaa !116
  %174 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %175 = load i16, ptr %174, align 8, !tbaa !122
  %176 = icmp ugt i16 %173, %175
  br i1 %176, label %222, label %177

177:                                              ; preds = %169
  %178 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %179 = load i64, ptr %178, align 8, !tbaa !130
  %180 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !130
  %182 = getelementptr inbounds i8, ptr %0, i64 %181
  %183 = and i64 %179, 1
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %177
  %186 = load ptr, ptr %182, align 8, !tbaa !73
  %187 = getelementptr i8, ptr %186, i64 %179
  %188 = getelementptr i8, ptr %187, i64 -1
  %189 = load ptr, ptr %188, align 8, !nosanitize !126
  br label %192

190:                                              ; preds = %177
  %191 = inttoptr i64 %179 to ptr
  br label %192

192:                                              ; preds = %185, %190
  %193 = phi ptr [ %189, %185 ], [ %191, %190 ]
  tail call void %193(ptr noundef nonnull align 8 dereferenceable(1709) %182, i16 noundef zeroext 93)
  %194 = load i64, ptr %178, align 8, !tbaa !130
  %195 = load i64, ptr %180, align 8, !tbaa !130
  %196 = getelementptr inbounds i8, ptr %0, i64 %195
  %197 = and i64 %194, 1
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %192
  %200 = load ptr, ptr %196, align 8, !tbaa !73
  %201 = getelementptr i8, ptr %200, i64 %194
  %202 = getelementptr i8, ptr %201, i64 -1
  %203 = load ptr, ptr %202, align 8, !nosanitize !126
  br label %206

204:                                              ; preds = %192
  %205 = inttoptr i64 %194 to ptr
  br label %206

206:                                              ; preds = %199, %204
  %207 = phi ptr [ %203, %199 ], [ %205, %204 ]
  tail call void %207(ptr noundef nonnull align 8 dereferenceable(1709) %196, i16 noundef zeroext 93)
  %208 = load i64, ptr %178, align 8, !tbaa !130
  %209 = load i64, ptr %180, align 8, !tbaa !130
  %210 = getelementptr inbounds i8, ptr %0, i64 %209
  %211 = and i64 %208, 1
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %218, label %213

213:                                              ; preds = %206
  %214 = load ptr, ptr %210, align 8, !tbaa !73
  %215 = getelementptr i8, ptr %214, i64 %208
  %216 = getelementptr i8, ptr %215, i64 -1
  %217 = load ptr, ptr %216, align 8, !nosanitize !126
  br label %220

218:                                              ; preds = %206
  %219 = inttoptr i64 %208 to ptr
  br label %220

220:                                              ; preds = %213, %218
  %221 = phi ptr [ %217, %213 ], [ %219, %218 ]
  tail call void %221(ptr noundef nonnull align 8 dereferenceable(1709) %210, i16 noundef zeroext 62)
  br label %222

222:                                              ; preds = %15, %169, %220, %160, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014FormatterToXML10printSpaceEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !139 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  br label %8

7:                                                ; preds = %22, %2
  ret void

8:                                                ; preds = %4, %22
  %9 = phi i32 [ 0, %4 ], [ %24, %22 ]
  %10 = load i64, ptr %5, align 8, !tbaa !130
  %11 = load i64, ptr %6, align 8, !tbaa !130
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = and i64 %10, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %12, align 8, !tbaa !73
  %17 = getelementptr i8, ptr %16, i64 %10
  %18 = getelementptr i8, ptr %17, i64 -1
  %19 = load ptr, ptr %18, align 8, !nosanitize !126
  br label %22

20:                                               ; preds = %8
  %21 = inttoptr i64 %10 to ptr
  br label %22

22:                                               ; preds = %15, %20
  %23 = phi ptr [ %19, %15 ], [ %21, %20 ]
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(1709) %12, i16 noundef zeroext 32)
  %24 = add nuw nsw i32 %9, 1
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %7, label %8, !llvm.loop !212
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !223

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !113
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !224

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !107
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !107
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !113
  %16 = load i64, ptr %6, align 8, !tbaa !111
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  %19 = load ptr, ptr %3, align 8, !tbaa !107
  store ptr %19, ptr %0, align 8, !tbaa !107
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !113
  store i64 %21, ptr %14, align 8, !tbaa !113
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !111
  store i64 %23, ptr %6, align 8, !tbaa !111
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !112
  store ptr %25, ptr %17, align 8, !tbaa !112
  store ptr %13, ptr %3, align 8, !tbaa !107
  store i64 %15, ptr %20, align 8, !tbaa !113
  store i64 %16, ptr %22, align 8, !tbaa !111
  store ptr %18, ptr %24, align 8, !tbaa !112
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !225

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !73
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !226

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
  %37 = load ptr, ptr %36, align 8, !tbaa !112
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !113
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !227

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !228

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !112
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !113
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !113
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !112
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !229

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !112
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !230
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !231 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !107
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !113
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !232

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !107
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !113
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !111
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !73
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !233
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !112
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = load i64, ptr %9, align 8, !tbaa !113
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !234

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !107
  %28 = load i64, ptr %6, align 8, !tbaa !113
  %29 = load i64, ptr %7, align 8, !tbaa !111
  %30 = load ptr, ptr %8, align 8, !tbaa !112
  %31 = load ptr, ptr %5, align 8, !tbaa !107
  store ptr %31, ptr %0, align 8, !tbaa !107
  %32 = load i64, ptr %14, align 8, !tbaa !113
  store i64 %32, ptr %6, align 8, !tbaa !113
  %33 = load i64, ptr %15, align 8, !tbaa !111
  store i64 %33, ptr %7, align 8, !tbaa !111
  %34 = load ptr, ptr %21, align 8, !tbaa !112
  store ptr %34, ptr %8, align 8, !tbaa !112
  store ptr %27, ptr %5, align 8, !tbaa !107
  store i64 %28, ptr %14, align 8, !tbaa !113
  store i64 %29, ptr %15, align 8, !tbaa !111
  store ptr %30, ptr %21, align 8, !tbaa !112
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !234

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !73
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
  %46 = load i64, ptr %15, align 8, !tbaa !111
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !112
  %50 = load ptr, ptr %5, align 8, !tbaa !107
  %51 = load ptr, ptr %50, align 8, !tbaa !73
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
  br i1 %59, label %66, label %60, !prof !235

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !73
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !236
  store ptr %65, ptr %8, align 8, !tbaa !112
  store i64 %3, ptr %7, align 8, !tbaa !111
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !237 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !238

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !113
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !111
  br i1 %18, label %21, label %39, !prof !239

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !240

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !241

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !112
  %28 = load i64, ptr %12, align 8, !tbaa !113
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !116
  store i16 %34, ptr %32, align 2, !tbaa !116
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !242, !llvm.loop !243

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !244

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %42 = load ptr, ptr %0, align 8, !tbaa !107
  store ptr %42, ptr %5, align 8, !tbaa !107
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !113
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !111
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !73
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !245
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !112
  %51 = load i64, ptr %43, align 8, !tbaa !113
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !112
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !246

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !112
  %56 = load i64, ptr %43, align 8, !tbaa !113
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !246

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !112
  %60 = load i64, ptr %43, align 8, !tbaa !113
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !112
  %63 = load i64, ptr %12, align 8, !tbaa !113
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !246

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !107
  %67 = load i64, ptr %12, align 8, !tbaa !113
  %68 = load i64, ptr %19, align 8, !tbaa !111
  %69 = load ptr, ptr %15, align 8, !tbaa !112
  %70 = load ptr, ptr %5, align 8, !tbaa !107
  store ptr %70, ptr %0, align 8, !tbaa !107
  %71 = load i64, ptr %43, align 8, !tbaa !113
  store i64 %71, ptr %12, align 8, !tbaa !113
  %72 = load i64, ptr %44, align 8, !tbaa !111
  store i64 %72, ptr %19, align 8, !tbaa !111
  %73 = load ptr, ptr %50, align 8, !tbaa !112
  store ptr %73, ptr %15, align 8, !tbaa !112
  store ptr %66, ptr %5, align 8, !tbaa !107
  store i64 %67, ptr %43, align 8, !tbaa !113
  store i64 %68, ptr %44, align 8, !tbaa !111
  store ptr %69, ptr %50, align 8, !tbaa !112
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !247

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !73
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !248

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
  %85 = load i64, ptr %44, align 8, !tbaa !111
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !112
  %89 = load ptr, ptr %5, align 8, !tbaa !107
  %90 = load ptr, ptr %89, align 8, !tbaa !73
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
  br i1 %101, label %116, label %102, !prof !249

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !250

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !250

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !251, !llvm.loop !252

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !253, !llvm.loop !254

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !255
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
  br i1 %123, label %124, label %120, !llvm.loop !256

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
  store i64 %36, ptr %12, align 8, !tbaa !113
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !257 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !113
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !111
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !258

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !116
  store i16 %13, ptr %12, align 2, !tbaa !116
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !113
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !107
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !107
  %24 = load i64, ptr %4, align 8, !tbaa !113
  %25 = load i64, ptr %6, align 8, !tbaa !111
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !112
  %28 = load ptr, ptr %3, align 8, !tbaa !107
  store ptr %28, ptr %0, align 8, !tbaa !107
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !113
  store i64 %30, ptr %4, align 8, !tbaa !113
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !111
  store i64 %32, ptr %6, align 8, !tbaa !111
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !112
  store ptr %34, ptr %26, align 8, !tbaa !112
  store ptr %23, ptr %3, align 8, !tbaa !107
  store i64 %24, ptr %29, align 8, !tbaa !113
  store i64 %25, ptr %31, align 8, !tbaa !111
  store ptr %27, ptr %33, align 8, !tbaa !112
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !73
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
  %47 = load i64, ptr %46, align 8, !tbaa !111
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !112
  %52 = load ptr, ptr %3, align 8, !tbaa !107
  %53 = load ptr, ptr %52, align 8, !tbaa !73
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !259 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !107
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !232

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !107
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !113
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !111
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !73
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !260
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !112
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = load i64, ptr %5, align 8, !tbaa !113
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !234

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !107
  %24 = load i64, ptr %10, align 8, !tbaa !113
  %25 = load i64, ptr %11, align 8, !tbaa !111
  %26 = load ptr, ptr %17, align 8, !tbaa !112
  store ptr %4, ptr %3, align 8, !tbaa !107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !111
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !112
  %33 = load ptr, ptr %3, align 8, !tbaa !107
  %34 = load ptr, ptr %33, align 8, !tbaa !73
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
  br i1 %42, label %49, label %43, !prof !235

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !73
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !261
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !107
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !111
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !112
  store ptr %53, ptr %0, align 8, !tbaa !107
  store i64 %52, ptr %5, align 8, !tbaa !113
  store i64 %51, ptr %55, align 8, !tbaa !111
  store ptr %50, ptr %57, align 8, !tbaa !112
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !262

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !73
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !263

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
declare double @llvm.fmuladd.f64(double, double, double) #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #18

declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

declare noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1017XalanOutputStream11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !73
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !193
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  %6 = load ptr, ptr %3, align 8, !tbaa !73
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %12 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #21
  unreachable

12:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SAXException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #11

declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #7 comdat align 2 !prof !264 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !113
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7, !prof !265

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %35, !prof !266

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !111
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14, !prof !266

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = getelementptr inbounds i16, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !113
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %35, label %20, !prof !267

20:                                               ; preds = %14
  %21 = getelementptr inbounds i16, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %26, %22 ], [ %21, %20 ]
  %24 = phi i64 [ %27, %22 ], [ %18, %20 ]
  %25 = load i16, ptr %2, align 2, !tbaa !116
  store i16 %25, ptr %23, align 2, !tbaa !116
  %26 = getelementptr inbounds i16, ptr %23, i64 1
  %27 = add i64 %24, 1
  %28 = icmp eq ptr %26, %17
  br i1 %28, label %33, label %22, !prof !268, !llvm.loop !269

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !113
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi i64 [ %32, %29 ], [ %27, %22 ]
  store i64 %34, ptr %4, align 8, !tbaa !113
  br label %35

35:                                               ; preds = %33, %14, %7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !270 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !203
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !174
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !271

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !176
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !199, !range !123, !noundef !126
  store i8 %13, ptr %12, align 1, !tbaa !199
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !203
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !272
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %21 = load ptr, ptr %0, align 8, !tbaa !102
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %22 unwind label %44, !prof !273

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !102
  %24 = load i64, ptr %4, align 8, !tbaa !203
  %25 = load i64, ptr %6, align 8, !tbaa !174
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !176
  %28 = load ptr, ptr %3, align 8, !tbaa !102
  store ptr %28, ptr %0, align 8, !tbaa !102
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !203
  store i64 %30, ptr %4, align 8, !tbaa !203
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !174
  store i64 %32, ptr %6, align 8, !tbaa !174
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !176
  store ptr %34, ptr %26, align 8, !tbaa !176
  store ptr %23, ptr %3, align 8, !tbaa !102
  store i64 %24, ptr %29, align 8, !tbaa !203
  store i64 %25, ptr %31, align 8, !tbaa !174
  store ptr %27, ptr %33, align 8, !tbaa !176
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !272

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !73
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !274

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
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !174
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !176
  %52 = load ptr, ptr %3, align 8, !tbaa !102
  %53 = load ptr, ptr %52, align 8, !tbaa !73
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

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !275 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !102
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !203
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !276

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !102
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !203
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !174
  %16 = load ptr, ptr %2, align 8, !tbaa !73
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13), !prof !277
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !176
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !176
  %23 = load i64, ptr %9, align 8, !tbaa !203
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43, !prof !278

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !102
  %27 = load i64, ptr %6, align 8, !tbaa !203
  %28 = load i64, ptr %7, align 8, !tbaa !174
  %29 = load ptr, ptr %8, align 8, !tbaa !176
  %30 = load ptr, ptr %5, align 8, !tbaa !102
  store ptr %30, ptr %0, align 8, !tbaa !102
  %31 = load i64, ptr %14, align 8, !tbaa !203
  store i64 %31, ptr %6, align 8, !tbaa !203
  %32 = load i64, ptr %15, align 8, !tbaa !174
  store i64 %32, ptr %7, align 8, !tbaa !174
  %33 = load ptr, ptr %20, align 8, !tbaa !176
  store ptr %33, ptr %8, align 8, !tbaa !176
  store ptr %26, ptr %5, align 8, !tbaa !102
  store i64 %27, ptr %14, align 8, !tbaa !203
  store i64 %28, ptr %15, align 8, !tbaa !174
  store ptr %29, ptr %20, align 8, !tbaa !176
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35, !prof !278

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !73
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #21
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !174
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !176
  %49 = load ptr, ptr %5, align 8, !tbaa !102
  %50 = load ptr, ptr %49, align 8, !tbaa !73
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #21
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !279

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !73
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !280
  store ptr %63, ptr %8, align 8, !tbaa !176
  store i64 %3, ptr %7, align 8, !tbaa !174
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !281 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %131, label %10, !prof !282

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !203
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !176
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !174
  br i1 %17, label %20, label %37, !prof !278

20:                                               ; preds = %10
  %21 = icmp ult i64 %19, %13
  br i1 %21, label %22, label %23, !prof !282

22:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %13)
  br label %23

23:                                               ; preds = %20, %22
  %24 = icmp eq ptr %2, %3
  br i1 %24, label %131, label %25, !prof !283

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !176
  %27 = load i64, ptr %11, align 8, !tbaa !203
  %28 = getelementptr i8, ptr %26, i64 %27
  %29 = add i64 %27, %6
  br label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %35, %30 ], [ %2, %25 ]
  %32 = phi ptr [ %34, %30 ], [ %28, %25 ]
  %33 = load i8, ptr %31, align 1, !tbaa !199, !range !123, !noundef !126
  store i8 %33, ptr %32, align 1, !tbaa !199
  %34 = getelementptr inbounds i8, ptr %32, i64 1
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = icmp eq ptr %35, %3
  br i1 %36, label %129, label %30, !prof !284, !llvm.loop !285

37:                                               ; preds = %10
  %38 = icmp ugt i64 %13, %19
  br i1 %38, label %39, label %94

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %40 = load ptr, ptr %0, align 8, !tbaa !102
  store ptr %40, ptr %5, align 8, !tbaa !102
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %41, align 8, !tbaa !203
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %42, align 8, !tbaa !174
  %43 = load ptr, ptr %40, align 8, !tbaa !73
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %13)
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !176
  %48 = load i64, ptr %41, align 8, !tbaa !203
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  %50 = load ptr, ptr %14, align 8, !tbaa !176
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %49, ptr noundef %50, ptr noundef %1)
          to label %51 unwind label %80

51:                                               ; preds = %39
  %52 = load ptr, ptr %47, align 8, !tbaa !176
  %53 = load i64, ptr %41, align 8, !tbaa !203
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %54, ptr noundef %2, ptr noundef %3)
          to label %55 unwind label %80

55:                                               ; preds = %51
  %56 = load ptr, ptr %47, align 8, !tbaa !176
  %57 = load i64, ptr %41, align 8, !tbaa !203
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  %59 = load ptr, ptr %14, align 8, !tbaa !176
  %60 = load i64, ptr %11, align 8, !tbaa !203
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %58, ptr noundef %1, ptr noundef %61)
          to label %62 unwind label %80

62:                                               ; preds = %55
  %63 = load ptr, ptr %0, align 8, !tbaa !102
  %64 = load i64, ptr %11, align 8, !tbaa !203
  %65 = load i64, ptr %18, align 8, !tbaa !174
  %66 = load ptr, ptr %14, align 8, !tbaa !176
  %67 = load ptr, ptr %5, align 8, !tbaa !102
  store ptr %67, ptr %0, align 8, !tbaa !102
  %68 = load i64, ptr %41, align 8, !tbaa !203
  store i64 %68, ptr %11, align 8, !tbaa !203
  %69 = load i64, ptr %42, align 8, !tbaa !174
  store i64 %69, ptr %18, align 8, !tbaa !174
  %70 = load ptr, ptr %47, align 8, !tbaa !176
  store ptr %70, ptr %14, align 8, !tbaa !176
  store ptr %63, ptr %5, align 8, !tbaa !102
  store i64 %64, ptr %41, align 8, !tbaa !203
  store i64 %65, ptr %42, align 8, !tbaa !174
  store ptr %66, ptr %47, align 8, !tbaa !176
  %71 = icmp eq i64 %65, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %63, align 8, !tbaa !73
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %66)
          to label %79 unwind label %76

76:                                               ; preds = %72
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #21
  unreachable

79:                                               ; preds = %62, %72
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %131

80:                                               ; preds = %55, %51, %39
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = load i64, ptr %42, align 8, !tbaa !174
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %47, align 8, !tbaa !176
  %86 = load ptr, ptr %5, align 8, !tbaa !102
  %87 = load ptr, ptr %86, align 8, !tbaa !73
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  invoke void %89(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %85)
          to label %93 unwind label %90

90:                                               ; preds = %84
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #21
  unreachable

93:                                               ; preds = %80, %84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  resume { ptr, i32 } %81

94:                                               ; preds = %37
  %95 = ptrtoint ptr %16 to i64
  %96 = ptrtoint ptr %1 to i64
  %97 = sub i64 %95, %96
  %98 = icmp ugt i64 %97, %8
  br i1 %98, label %113, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, ptr %2, i64 %97
  %101 = icmp eq ptr %100, %3
  br i1 %101, label %102, label %104

102:                                              ; preds = %104, %99
  %103 = icmp eq ptr %16, %1
  br i1 %103, label %112, label %108

104:                                              ; preds = %99, %104
  %105 = phi ptr [ %106, %104 ], [ %100, %99 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %105)
  %106 = getelementptr inbounds i8, ptr %105, i64 1
  %107 = icmp eq ptr %106, %3
  br i1 %107, label %102, label %104, !llvm.loop !286

108:                                              ; preds = %102, %108
  %109 = phi ptr [ %110, %108 ], [ %1, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %109)
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  %111 = icmp eq ptr %110, %16
  br i1 %111, label %112, label %108, !llvm.loop !287

112:                                              ; preds = %108, %102
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %97, i1 false)
  br label %131

113:                                              ; preds = %94
  %114 = sub i64 0, %8
  %115 = getelementptr inbounds i8, ptr %16, i64 %114
  %116 = icmp eq ptr %3, %2
  br i1 %116, label %121, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %119, %117 ], [ %115, %113 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %118)
  %119 = getelementptr inbounds i8, ptr %118, i64 1
  %120 = icmp eq ptr %119, %16
  br i1 %120, label %121, label %117, !llvm.loop !288

121:                                              ; preds = %117, %113
  %122 = icmp eq ptr %115, %1
  br i1 %122, label %128, label %123

123:                                              ; preds = %121
  %124 = ptrtoint ptr %115 to i64
  %125 = sub i64 %124, %96
  %126 = sub i64 0, %125
  %127 = getelementptr inbounds i8, ptr %16, i64 %126
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %127, ptr align 1 %1, i64 %125, i1 false)
  br label %128

128:                                              ; preds = %123, %121
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %8, i1 false)
  br label %131

129:                                              ; preds = %30
  %130 = sub i64 %29, %7
  store i64 %130, ptr %11, align 8, !tbaa !203
  br label %131

131:                                              ; preds = %23, %129, %79, %112, %128, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !102
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !102
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !203
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !174
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !176
  %12 = load ptr, ptr %3, align 8, !tbaa !102
  store ptr %12, ptr %0, align 8, !tbaa !102
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !203
  store i64 %14, ptr %6, align 8, !tbaa !203
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !174
  store i64 %16, ptr %8, align 8, !tbaa !174
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !176
  store ptr %18, ptr %10, align 8, !tbaa !176
  store ptr %5, ptr %3, align 8, !tbaa !102
  store i64 %7, ptr %13, align 8, !tbaa !203
  store i64 %9, ptr %15, align 8, !tbaa !174
  store ptr %11, ptr %17, align 8, !tbaa !176
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !99

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !73
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #21
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!71}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!35 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 5}
!37 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017XalanOutputStream17setOutputEncodingERKNS_14XalanDOMStringE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014FormatterToXML12initCharsMapEv, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!46 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 2}
!47 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 9}
!49 = !{ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, ptr @_ZN11xalanc_1_1017FormatterListenerD2Ev, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv, ptr @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj, i64 133624}
!51 = !{ptr @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb, ptr @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt, i64 4}
!52 = !{ptr @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML10flushCharsEv, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv, ptr @_ZN11xalanc_1_1014FormatterToXML12accumCharUTFEt, i64 698996}
!55 = !{ptr @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 698996}
!56 = !{ptr @_ZN11xalanc_1_1014FormatterToXML6indentEi, ptr @_ZN11xalanc_1_1014FormatterToXML13accumArrayUTFEPKtjj, i64 464756}
!57 = !{ptr @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 1048804}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 152}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 34}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 34}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, i64 25}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!71 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!72 = !{!"function_entry_count", i64 1}
!73 = !{!74, !74, i64 0}
!74 = !{!"vtable pointer", !75, i64 0}
!75 = !{!"Simple C++ TBAA"}
!76 = !{!77, !80, i64 24}
!77 = !{!"_ZTSN11xalanc_1_1014FormatterToXMLE", !78, i64 0, !80, i64 24, !80, i64 32, !84, i64 40, !81, i64 42, !81, i64 554, !85, i64 1066, !85, i64 1067, !85, i64 1068, !85, i64 1069, !85, i64 1070, !85, i64 1071, !85, i64 1072, !85, i64 1073, !85, i64 1074, !85, i64 1075, !86, i64 1080, !86, i64 1120, !86, i64 1160, !89, i64 1200, !89, i64 1204, !90, i64 1208, !86, i64 1240, !85, i64 1280, !85, i64 1281, !85, i64 1282, !85, i64 1283, !86, i64 1288, !86, i64 1328, !86, i64 1368, !86, i64 1408, !87, i64 1448, !89, i64 1480, !91, i64 1488, !90, i64 1520, !81, i64 1552, !81, i64 1568, !81, i64 1584, !81, i64 1600, !81, i64 1616, !81, i64 1632, !81, i64 1648, !81, i64 1664, !81, i64 1680, !80, i64 1696, !89, i64 1704, !85, i64 1708}
!78 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !79, i64 0, !80, i64 8, !82, i64 16, !83, i64 20}
!79 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!80 = !{!"any pointer", !81, i64 0}
!81 = !{!"omnipotent char", !75, i64 0}
!82 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !81, i64 0}
!83 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !81, i64 0}
!84 = !{!"short", !81, i64 0}
!85 = !{!"bool", !81, i64 0}
!86 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !87, i64 0, !89, i64 32}
!87 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!88 = !{!"long", !81, i64 0}
!89 = !{!"int", !81, i64 0}
!90 = !{!"_ZTSN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!91 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !80, i64 0, !88, i64 8, !88, i64 16, !80, i64 24}
!92 = !{!"VP", i32 0, i64 1, i64 -4557948907949852907, i64 1}
!93 = !{!77, !80, i64 32}
!94 = !{!77, !85, i64 1066}
!95 = !{!77, !85, i64 1067}
!96 = !{!77, !85, i64 1068}
!97 = !{!77, !85, i64 1069}
!98 = !{!77, !85, i64 1070}
!99 = !{!"branch_weights", i32 1, i32 0}
!100 = !{!77, !89, i64 1200}
!101 = !{!77, !89, i64 1204}
!102 = !{!90, !80, i64 0}
!103 = !{!77, !85, i64 1280}
!104 = !{!77, !85, i64 1281}
!105 = !{!77, !85, i64 1282}
!106 = !{!77, !85, i64 1283}
!107 = !{!87, !80, i64 0}
!108 = !{!91, !80, i64 0}
!109 = !{!86, !89, i64 32}
!110 = !{!"branch_weights", i32 0, i32 1}
!111 = !{!87, !88, i64 16}
!112 = !{!87, !80, i64 24}
!113 = !{!87, !88, i64 8}
!114 = !{!"VP", i32 0, i64 1, i64 -5086385021295449649, i64 1}
!115 = !{!77, !80, i64 1696}
!116 = !{!84, !84, i64 0}
!117 = !{!"branch_weights", i32 1, i32 1}
!118 = distinct !{!118, !119, !120}
!119 = !{!"llvm.loop.mustprogress"}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = !{!77, !89, i64 1704}
!122 = !{!77, !84, i64 40}
!123 = !{i8 0, i8 2}
!124 = !{!77, !85, i64 1075}
!125 = !{!77, !85, i64 1708}
!126 = !{}
!127 = !{!128, !84, i64 0}
!128 = !{!"_ZTSN11xalanc_1_1033ConstructValueWithNoMemoryManagerItEE", !84, i64 0}
!129 = !{!77, !81, i64 1552}
!130 = !{!77, !81, i64 1616}
!131 = !{!77, !81, i64 1568}
!132 = !{!77, !81, i64 1632}
!133 = !{!77, !81, i64 1584}
!134 = !{!77, !81, i64 1648}
!135 = !{!77, !81, i64 1600}
!136 = !{!77, !81, i64 1664}
!137 = !{!77, !81, i64 1680}
!138 = !{!"branch_weights", i32 1}
!139 = !{!"function_entry_count", i64 0}
!140 = !{!141, !89, i64 24}
!141 = !{!"_ZTSN11xalanc_1_1017XalanOutputStreamE", !89, i64 8, !80, i64 16, !89, i64 24, !87, i64 32, !86, i64 64, !85, i64 104, !85, i64 105, !91, i64 112}
!142 = !{!"function_entry_count", i64 5794236}
!143 = !{!77, !89, i64 1480}
!144 = !{!"branch_weights", i32 11306, i32 5782930}
!145 = !{!"VP", i32 0, i64 11306, i64 1130868771803838568, i64 11306}
!146 = !{!"function_entry_count", i64 1847398}
!147 = !{!"branch_weights", i32 1, i32 1847397}
!148 = !{!"branch_weights", i32 6742, i32 3354916}
!149 = !{!"VP", i32 0, i64 6742, i64 1130868771803838568, i64 6742}
!150 = !{!"branch_weights", i32 1847397, i32 1514261}
!151 = distinct !{!151, !119, !120}
!152 = distinct !{!152, !119, !120}
!153 = !{!"function_entry_count", i64 1785510}
!154 = !{!"branch_weights", i32 1785509, i32 1}
!155 = !{!"branch_weights", i32 104341, i32 53402985}
!156 = !{!"VP", i32 0, i64 104341, i64 1130868771803838568, i64 104341}
!157 = !{!"branch_weights", i32 1785509, i32 51721817}
!158 = distinct !{!158, !119, !120}
!159 = distinct !{!159, !119, !120}
!160 = distinct !{!160, !119, !120}
!161 = distinct !{!161, !119, !120}
!162 = !{!"VP", i32 0, i64 1, i64 1130868771803838568, i64 1}
!163 = !{!"branch_weights", i32 1, i32 127}
!164 = !{!"branch_weights", i32 127, i32 641}
!165 = distinct !{!165, !119, !120}
!166 = !{!"branch_weights", i32 1, i32 30}
!167 = distinct !{!167, !119, !120}
!168 = !{!"branch_weights", i32 1, i32 31}
!169 = distinct !{!169, !119, !120}
!170 = distinct !{!170, !119, !120}
!171 = distinct !{!171, !119, !120}
!172 = distinct !{!172, !119, !120}
!173 = !{!"function_entry_count", i64 16}
!174 = !{!90, !88, i64 16}
!175 = !{!"branch_weights", i32 6, i32 10}
!176 = !{!90, !80, i64 24}
!177 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!178 = !{!"function_entry_count", i64 3}
!179 = !{!91, !88, i64 16}
!180 = !{!"branch_weights", i32 1, i32 2}
!181 = !{!91, !80, i64 24}
!182 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!183 = !{!"function_entry_count", i64 42470003}
!184 = !{!"branch_weights", i32 52000, i32 42418003}
!185 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!186 = !{!"function_entry_count", i64 133624}
!187 = !{!"branch_weights", i32 133624, i32 0}
!188 = !{!"VP", i32 0, i64 133624, i64 -7930772785906929365, i64 133624}
!189 = !{!81, !81, i64 0}
!190 = distinct !{!190, !119, !120}
!191 = !{!192, !80, i64 8}
!192 = !{!"_ZTSN11xercesc_2_712SAXExceptionE", !80, i64 8, !80, i64 16}
!193 = !{!192, !80, i64 16}
!194 = !{!"branch_weights", i32 0, i32 0, i32 1, i32 0, i32 0, i32 0}
!195 = !{!"VP", i32 0, i64 1, i64 -5026426852003955584, i64 1}
!196 = !{!"VP", i32 0, i64 1, i64 -7930772785906929365, i64 1}
!197 = !{!"VP", i32 0, i64 1, i64 1655592467263221953, i64 1}
!198 = !{!"VP", i32 0, i64 1, i64 -661365885493215379, i64 1}
!199 = !{!85, !85, i64 0}
!200 = !{!77, !85, i64 1071}
!201 = distinct !{!201, !119, !120}
!202 = !{!"function_entry_count", i64 1992190}
!203 = !{!90, !88, i64 8}
!204 = !{!"branch_weights", i32 1, i32 1992189}
!205 = !{!"branch_weights", i32 698996, i32 1293193}
!206 = !{!"branch_weights", i32 698996, i32 0}
!207 = !{!"VP", i32 0, i64 698996, i64 -5026426852003955584, i64 698996}
!208 = !{!"function_entry_count", i64 464756}
!209 = !{!"branch_weights", i32 0, i32 464756}
!210 = !{!"branch_weights", i32 464756, i32 0}
!211 = !{!"VP", i32 0, i64 464756, i64 -7930772785906929365, i64 464756}
!212 = distinct !{!212, !119, !120}
!213 = !{!"function_entry_count", i64 1048804}
!214 = !{!"branch_weights", i32 0, i32 1048804}
!215 = distinct !{!215, !119, !120}
!216 = !{!77, !85, i64 1074}
!217 = !{!77, !85, i64 1073}
!218 = distinct !{!218, !119, !120}
!219 = distinct !{!219, !119, !120}
!220 = distinct !{!220, !119, !120}
!221 = !{!77, !85, i64 1072}
!222 = !{!"function_entry_count", i64 41614}
!223 = !{!"branch_weights", i32 0, i32 41614}
!224 = !{!"branch_weights", i32 12, i32 41602}
!225 = !{!"branch_weights", i32 5, i32 7}
!226 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!227 = !{!"branch_weights", i32 354, i32 41248}
!228 = !{!"branch_weights", i32 40889, i32 359}
!229 = !{!"branch_weights", i32 40581, i32 1021}
!230 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!231 = !{!"function_entry_count", i64 22}
!232 = !{!"branch_weights", i32 64551590, i32 18}
!233 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!234 = !{!"branch_weights", i32 18, i32 0}
!235 = !{!"branch_weights", i32 4, i32 64551586}
!236 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!237 = !{!"function_entry_count", i64 155828046}
!238 = !{!"branch_weights", i32 0, i32 155828046}
!239 = !{!"branch_weights", i32 133170777, i32 22657269}
!240 = !{!"branch_weights", i32 20, i32 133170757}
!241 = !{!"branch_weights", i32 1, i32 19024395}
!242 = !{!"branch_weights", i32 19024395, i32 -26420601}
!243 = distinct !{!243, !119, !120}
!244 = !{!"branch_weights", i32 20748786, i32 1908483}
!245 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!246 = !{!"branch_weights", i32 20748786, i32 0}
!247 = !{!"branch_weights", i32 0, i32 20748786}
!248 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!249 = !{!"branch_weights", i32 0, i32 1908483}
!250 = !{!"branch_weights", i32 1, i32 1908482}
!251 = !{!"branch_weights", i32 1908482, i32 49797853}
!252 = distinct !{!252, !119, !120}
!253 = !{!"branch_weights", i32 1908482, i32 1}
!254 = distinct !{!254, !119, !120}
!255 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!256 = distinct !{!256, !119, !120}
!257 = !{!"function_entry_count", i64 124150652}
!258 = !{!"branch_weights", i32 124150652, i32 0}
!259 = !{!"function_entry_count", i64 64551586}
!260 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!261 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!262 = !{!"branch_weights", i32 42418193, i32 22133393}
!263 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!264 = !{!"function_entry_count", i64 152}
!265 = !{!"branch_weights", i32 0, i32 152}
!266 = !{!"branch_weights", i32 152, i32 0}
!267 = !{!"branch_weights", i32 1, i32 151}
!268 = !{!"branch_weights", i32 151, i32 8215}
!269 = distinct !{!269, !119, !120}
!270 = !{!"function_entry_count", i64 4975155}
!271 = !{!"branch_weights", i32 4975121, i32 34}
!272 = !{!"branch_weights", i32 9, i32 25}
!273 = !{!"branch_weights", i32 34, i32 0}
!274 = !{!"VP", i32 0, i64 25, i64 -7405368087501025645, i64 25}
!275 = !{!"function_entry_count", i64 35}
!276 = !{!"branch_weights", i32 10, i32 25}
!277 = !{!"VP", i32 0, i64 25, i64 8345045103670217670, i64 25}
!278 = !{!"branch_weights", i32 25, i32 0}
!279 = !{!"branch_weights", i32 0, i32 10}
!280 = !{!"VP", i32 0, i64 10, i64 8345045103670217670, i64 10}
!281 = !{!"function_entry_count", i64 25}
!282 = !{!"branch_weights", i32 0, i32 25}
!283 = !{!"branch_weights", i32 1, i32 199}
!284 = !{!"branch_weights", i32 199, i32 393}
!285 = distinct !{!285, !119, !120}
!286 = distinct !{!286, !119, !120}
!287 = distinct !{!287, !119, !120}
!288 = distinct !{!288, !119, !120}
