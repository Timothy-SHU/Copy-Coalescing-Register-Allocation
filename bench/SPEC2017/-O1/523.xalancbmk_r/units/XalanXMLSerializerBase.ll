; ModuleID = 'XalanXMLSerializerBase.cpp'
source_filename = "XalanXMLSerializerBase.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanXMLSerializerBase" = type { %"class.xalanc_1_10::FormatterListener", i8, i8, [6 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xercesc_2_712SAXExceptionD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712SAXExceptionD0Ev = comdat any

$_ZNK11xercesc_2_712SAXException10getMessageEv = comdat any

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

$_ZTVN11xercesc_2_712SAXExceptionE = comdat any

@_ZN11xalanc_1_1022XalanXMLSerializerBase14CharFunctor1_013s_lastSpecialE = dso_local local_unnamed_addr constant i64 127, align 8
@_ZN11xalanc_1_1022XalanXMLSerializerBase14CharFunctor1_014s_specialCharsE = dso_local local_unnamed_addr constant <{ [63 x i8], [65 x i8] }> <{ [63 x i8] c"\04\04\04\04\04\04\04\04\04\01\02\04\04\02\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\00\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\02", [65 x i8] zeroinitializer }>, align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase14CharFunctor1_113s_lastSpecialE = dso_local local_unnamed_addr constant i64 159, align 8
@_ZN11xalanc_1_1022XalanXMLSerializerBase14CharFunctor1_114s_specialCharsE = dso_local local_unnamed_addr constant [160 x i8] c"\00\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\00\00\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\05\05\05\05\05\02\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05", align 16
@_ZTVN11xalanc_1_1022XalanXMLSerializerBaseE = dso_local unnamed_addr constant { [30 x ptr] } { [30 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022XalanXMLSerializerBaseE, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBaseD2Ev, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBaseD0Ev, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase10charactersEPKtj, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase13resetDocumentEv, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase13startDocumentEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase5cdataEPKtj, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv, ptr @_ZNK11xalanc_1_1022XalanXMLSerializerBase16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1022XalanXMLSerializerBase16getDoctypePublicEv, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv, ptr @_ZNK11xalanc_1_1017FormatterListener9getIndentEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZN11xalanc_1_1022XalanXMLSerializerBase11s_1_0StringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L16s_local1_0StringE, align 8
@_ZN11xalanc_1_1022XalanXMLSerializerBase11s_1_1StringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L16s_local1_1StringE, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712SAXExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SAXExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xalanc_1_1017FormatterListener10s_piTargetE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1017FormatterListener8s_piDataE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1022XalanXMLSerializerBase20s_xhtmlDocTypeStringE = dso_local constant [18 x i16] [i16 45, i16 47, i16 47, i16 87, i16 51, i16 67, i16 47, i16 47, i16 68, i16 84, i16 68, i16 32, i16 88, i16 72, i16 84, i16 77, i16 76, i16 0], align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase26s_xhtmlDocTypeStringLengthE = dso_local local_unnamed_addr constant i32 17, align 4
@_ZN11xalanc_1_10L17s_localUTF8StringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L18s_localUTF16StringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L16s_local1_0StringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L16s_local1_1StringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1024XalanTranscodingServices13s_utf16StringE = external constant [0 x i16], align 2
@_ZN11xalanc_1_10L18s_1_1VersionStringE = internal constant [4 x i16] [i16 49, i16 46, i16 49, i16 0], align 2
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF816s_encodingStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, align 8
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1616s_encodingStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, align 8
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF826s_doctypeHeaderStartStringE = dso_local local_unnamed_addr constant [11 x i8] c"<!DOCTYPE \00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF832s_doctypeHeaderStartStringLengthE = dso_local local_unnamed_addr constant i32 10, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF827s_doctypeHeaderPublicStringE = dso_local local_unnamed_addr constant [10 x i8] c" PUBLIC \22\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF833s_doctypeHeaderPublicStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF827s_doctypeHeaderSystemStringE = dso_local local_unnamed_addr constant [10 x i8] c" SYSTEM \22\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF833s_doctypeHeaderSystemStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF822s_xmlHeaderStartStringE = dso_local local_unnamed_addr constant [16 x i8] c"<?xml version=\22\00", align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF828s_xmlHeaderStartStringLengthE = dso_local local_unnamed_addr constant i32 15, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF825s_xmlHeaderEncodingStringE = dso_local local_unnamed_addr constant [13 x i8] c"\22 encoding=\22\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF831s_xmlHeaderEncodingStringLengthE = dso_local local_unnamed_addr constant i32 12, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF827s_xmlHeaderStandaloneStringE = dso_local local_unnamed_addr constant [15 x i8] c"\22 standalone=\22\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF833s_xmlHeaderStandaloneStringLengthE = dso_local local_unnamed_addr constant i32 14, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF820s_xmlHeaderEndStringE = dso_local local_unnamed_addr constant [4 x i8] c"\22?>\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF826s_xmlHeaderEndStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF822s_defaultVersionStringE = dso_local local_unnamed_addr constant [4 x i8] c"1.0\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF828s_defaultVersionStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF817s_cdataOpenStringE = dso_local local_unnamed_addr constant [10 x i8] c"<![CDATA[\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF823s_cdataOpenStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF818s_cdataCloseStringE = dso_local local_unnamed_addr constant [4 x i8] c"]]>\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF824s_cdataCloseStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF820s_xhtmlDocTypeStringE = dso_local local_unnamed_addr constant [18 x i16] [i16 45, i16 47, i16 47, i16 87, i16 51, i16 67, i16 47, i16 47, i16 68, i16 84, i16 68, i16 32, i16 88, i16 72, i16 84, i16 77, i16 76, i16 0], align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF826s_xhtmlDocTypeStringLengthE = dso_local local_unnamed_addr constant i32 17, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF822s_lessThanEntityStringE = dso_local local_unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF828s_lessThanEntityStringLengthE = dso_local local_unnamed_addr constant i32 4, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF825s_greaterThanEntityStringE = dso_local local_unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF831s_greaterThanEntityStringLengthE = dso_local local_unnamed_addr constant i32 4, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF823s_ampersandEntityStringE = dso_local local_unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF829s_ampersandEntityStringLengthE = dso_local local_unnamed_addr constant i32 5, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF819s_quoteEntityStringE = dso_local local_unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@_ZN11xalanc_1_1022XalanXMLSerializerBase4UTF825s_quoteEntityStringLengthE = dso_local local_unnamed_addr constant i32 6, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1626s_doctypeHeaderStartStringE = dso_local local_unnamed_addr constant [11 x i16] [i16 60, i16 33, i16 68, i16 79, i16 67, i16 84, i16 89, i16 80, i16 69, i16 32, i16 0], align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1632s_doctypeHeaderStartStringLengthE = dso_local local_unnamed_addr constant i32 10, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1627s_doctypeHeaderPublicStringE = dso_local local_unnamed_addr constant [10 x i16] [i16 32, i16 80, i16 85, i16 66, i16 76, i16 73, i16 67, i16 32, i16 34, i16 0], align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1633s_doctypeHeaderPublicStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1627s_doctypeHeaderSystemStringE = dso_local local_unnamed_addr constant [10 x i16] [i16 32, i16 83, i16 89, i16 83, i16 84, i16 69, i16 77, i16 32, i16 34, i16 0], align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1633s_doctypeHeaderSystemStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1622s_xmlHeaderStartStringE = dso_local local_unnamed_addr constant [16 x i16] [i16 60, i16 63, i16 120, i16 109, i16 108, i16 32, i16 118, i16 101, i16 114, i16 115, i16 105, i16 111, i16 110, i16 61, i16 34, i16 0], align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1628s_xmlHeaderStartStringLengthE = dso_local local_unnamed_addr constant i32 15, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1625s_xmlHeaderEncodingStringE = dso_local local_unnamed_addr constant [13 x i16] [i16 34, i16 32, i16 101, i16 110, i16 99, i16 111, i16 100, i16 105, i16 110, i16 103, i16 61, i16 34, i16 0], align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1631s_xmlHeaderEncodingStringLengthE = dso_local local_unnamed_addr constant i32 12, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1627s_xmlHeaderStandaloneStringE = dso_local local_unnamed_addr constant [15 x i16] [i16 34, i16 32, i16 115, i16 116, i16 97, i16 110, i16 100, i16 97, i16 108, i16 111, i16 110, i16 101, i16 61, i16 34, i16 0], align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1633s_xmlHeaderStandaloneStringLengthE = dso_local local_unnamed_addr constant i32 14, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1620s_xmlHeaderEndStringE = dso_local local_unnamed_addr constant [4 x i16] [i16 34, i16 63, i16 62, i16 0], align 2
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1626s_xmlHeaderEndStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1622s_defaultVersionStringE = dso_local constant [4 x i16] [i16 49, i16 46, i16 48, i16 0], align 2
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1628s_defaultVersionStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1617s_cdataOpenStringE = dso_local local_unnamed_addr constant [10 x i16] [i16 60, i16 33, i16 91, i16 67, i16 68, i16 65, i16 84, i16 65, i16 91, i16 0], align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1623s_cdataOpenStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1618s_cdataCloseStringE = dso_local local_unnamed_addr constant [4 x i16] [i16 93, i16 93, i16 62, i16 0], align 2
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1624s_cdataCloseStringLengthE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1620s_xhtmlDocTypeStringE = dso_local local_unnamed_addr constant [18 x i16] [i16 45, i16 47, i16 47, i16 87, i16 51, i16 67, i16 47, i16 47, i16 68, i16 84, i16 68, i16 32, i16 88, i16 72, i16 84, i16 77, i16 76, i16 0], align 16
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1626s_xhtmlDocTypeStringLengthE = dso_local local_unnamed_addr constant i32 17, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1622s_lessThanEntityStringE = dso_local local_unnamed_addr constant [5 x i16] [i16 38, i16 108, i16 116, i16 59, i16 0], align 2
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1628s_lessThanEntityStringLengthE = dso_local local_unnamed_addr constant i32 4, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1625s_greaterThanEntityStringE = dso_local local_unnamed_addr constant [5 x i16] [i16 38, i16 103, i16 116, i16 59, i16 0], align 2
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1631s_greaterThanEntityStringLengthE = dso_local local_unnamed_addr constant i32 4, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1623s_ampersandEntityStringE = dso_local local_unnamed_addr constant [6 x i16] [i16 38, i16 97, i16 109, i16 112, i16 59, i16 0], align 2
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1629s_ampersandEntityStringLengthE = dso_local local_unnamed_addr constant i32 5, align 4
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1619s_quoteEntityStringE = dso_local local_unnamed_addr constant [7 x i16] [i16 38, i16 113, i16 117, i16 111, i16 116, i16 59, i16 0], align 2
@_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1625s_quoteEntityStringLengthE = dso_local local_unnamed_addr constant i32 6, align 4
@_ZTSN11xalanc_1_1022XalanXMLSerializerBaseE = dso_local constant [40 x i8] c"N11xalanc_1_1022XalanXMLSerializerBaseE\00", align 1
@_ZTIN11xalanc_1_1017FormatterListenerE = external constant ptr
@_ZTIN11xalanc_1_1022XalanXMLSerializerBaseE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022XalanXMLSerializerBaseE, ptr @_ZTIN11xalanc_1_1017FormatterListenerE }, align 8
@_ZTVN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712SAXExceptionE, ptr @_ZN11xercesc_2_712SAXExceptionD2Ev, ptr @_ZN11xercesc_2_712SAXExceptionD0Ev, ptr @_ZNK11xercesc_2_712SAXException10getMessageEv] }, comdat, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanXMLSerializerBase.cpp, ptr null }]

@_ZN11xalanc_1_1022XalanXMLSerializerBaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022XalanXMLSerializerBaseD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBaseC2ERN11xercesc_2_713MemoryManagerENS_17FormatterListener11eXMLVersionERKNS_14XalanDOMStringES8_S8_bS8_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(36) %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 1)
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanXMLSerializerBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 1
  store i8 0, ptr %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 2
  store i8 0, ptr %10, align 1, !tbaa !66
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1)
          to label %12 unwind label %45, !prof !67

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1)
          to label %14 unwind label %47, !prof !67

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 6
  %16 = icmp eq i32 %2, 0
  %17 = select i1 %16, ptr @_ZN11xalanc_1_10L16s_local1_0StringE, ptr @_ZN11xalanc_1_10L16s_local1_1StringE, !prof !67
  store ptr %17, ptr %15, align 8, !tbaa !68
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 7
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1)
          to label %19 unwind label %49, !prof !67

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 8
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1)
          to label %21 unwind label %51, !prof !67

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 9
  store i8 0, ptr %22, align 8, !tbaa !69
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 10
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %25 = load i32, ptr %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %6, i1 true, i1 %26, !prof !67
  %28 = zext i1 %27 to i8
  store i8 %28, ptr %23, align 1, !tbaa !70
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 11
  store ptr %1, ptr %29, align 8, !tbaa !71
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 11, i32 1
  %31 = getelementptr inbounds %"class.xalanc_1_10::FormatterListener", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  store i32 %2, ptr %31, align 4, !tbaa !72
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 5, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !73
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %55, label %35, !prof !67

35:                                               ; preds = %21
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 5, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 5, i32 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !74
  %40 = icmp eq i64 %39, 0
  %41 = select i1 %40, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %37
  %42 = invoke noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %41, i32 noundef %33, ptr noundef nonnull @_ZN11xalanc_1_1022XalanXMLSerializerBase20s_xhtmlDocTypeStringE, i32 noundef 17)
          to label %43 unwind label %53

43:                                               ; preds = %35
  br i1 %42, label %44, label %55

44:                                               ; preds = %43
  store i8 1, ptr %10, align 1, !tbaa !66
  br label %55

45:                                               ; preds = %8
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %62

47:                                               ; preds = %12
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %60

49:                                               ; preds = %14
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %58

51:                                               ; preds = %19
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %56

53:                                               ; preds = %35
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #15
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #15
  br label %56

55:                                               ; preds = %43, %44, %21
  ret void

56:                                               ; preds = %53, %51
  %57 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #15
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %50, %49 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #15
  br label %60

60:                                               ; preds = %58, %47
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #15
  br label %62

62:                                               ; preds = %60, %45
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %46, %45 ]
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  resume { ptr, i32 } %63
}

declare void @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !77

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = load ptr, ptr %0, align 8, !tbaa !71
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !79

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !80 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #2 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1022XalanXMLSerializerBaseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #15
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #15
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #15
  tail call void @_ZN11xalanc_1_1017FormatterListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBaseD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !80 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1022XalanXMLSerializerBase24decodeUTF16SurrogatePairEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !80 {
  %4 = and i16 %1, -1024
  %5 = icmp eq i16 %4, -9216
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1022XalanXMLSerializerBase35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  unreachable

7:                                                ; preds = %3
  %8 = zext i16 %0 to i32
  %9 = shl nuw nsw i32 %8, 10
  %10 = zext i16 %1 to i32
  %11 = add nsw i32 %9, -56613888
  %12 = add nsw i32 %11, %10
  ret i32 %12
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %7 unwind label %50

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #15
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %8 unwind label %52

8:                                                ; preds = %7
  %9 = zext i16 %0 to i64
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %11 unwind label %54

11:                                               ; preds = %8
  %12 = zext i16 %1 to i64
  %13 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %12, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %14 unwind label %54

14:                                               ; preds = %11
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 144, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %16 unwind label %54

16:                                               ; preds = %14
  %17 = call ptr @__cxa_allocate_exception(i64 24) #15
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !74
  %20 = icmp eq i64 %19, 0
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = select i1 %20, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %22
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !49
  %24 = icmp eq ptr %23, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %16
  %26 = load i16, ptr %23, align 2, !tbaa !81
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %30, %28 ], [ %23, %25 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !81
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %28, !llvm.loop !83

33:                                               ; preds = %28
  %34 = ptrtoint ptr %30 to i64
  %35 = ptrtoint ptr %23 to i64
  %36 = sub i64 %34, %35
  %37 = add i64 %36, 2
  %38 = and i64 %37, 8589934590
  br label %39

39:                                               ; preds = %33, %25
  %40 = phi i64 [ %38, %33 ], [ 2, %25 ]
  %41 = load ptr, ptr %2, align 8, !tbaa !49
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
          to label %45 unwind label %56

45:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr nonnull align 2 %23, i64 %40, i1 false)
  br label %46

46:                                               ; preds = %16, %45
  %47 = phi ptr [ %44, %45 ], [ null, %16 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %17, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !86
  %49 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %17, i64 0, i32 2
  store ptr %2, ptr %49, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #17
          to label %104 unwind label %54

50:                                               ; preds = %3
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %88

52:                                               ; preds = %7
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %73

54:                                               ; preds = %46, %14, %11, %8
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %58

56:                                               ; preds = %39
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %17) #15
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi { ptr, i32 } [ %55, %54 ], [ %57, %56 ]
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !89
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !90
  %66 = load ptr, ptr %6, align 8, !tbaa !91
  %67 = load ptr, ptr %66, align 8, !tbaa !49
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %65)
          to label %73 unwind label %70

70:                                               ; preds = %63
  %71 = landingpad { ptr, i32 }
          catch ptr null
  %72 = extractvalue { ptr, i32 } %71, 0
  call void @__clang_call_terminate(ptr %72) #16
  unreachable

73:                                               ; preds = %63, %58, %52
  %74 = phi { ptr, i32 } [ %53, %52 ], [ %59, %58 ], [ %59, %63 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !89
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !90
  %81 = load ptr, ptr %5, align 8, !tbaa !91
  %82 = load ptr, ptr %81, align 8, !tbaa !49
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8
  invoke void %84(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %80)
          to label %88 unwind label %85

85:                                               ; preds = %78
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #16
  unreachable

88:                                               ; preds = %78, %73, %50
  %89 = phi { ptr, i32 } [ %51, %50 ], [ %74, %73 ], [ %74, %78 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %91 = load i64, ptr %90, align 8, !tbaa !89
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !90
  %96 = load ptr, ptr %4, align 8, !tbaa !91
  %97 = load ptr, ptr %96, align 8, !tbaa !49
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef %95)
          to label %103 unwind label %100

100:                                              ; preds = %93
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = extractvalue { ptr, i32 } %101, 0
  call void @__clang_call_terminate(ptr %102) #16
  unreachable

103:                                              ; preds = %88, %93
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  resume { ptr, i32 } %89

104:                                              ; preds = %46
  unreachable
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %5 unwind label %44

5:                                                ; preds = %2
  %6 = zext i16 %0 to i64
  %7 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %8 unwind label %46

8:                                                ; preds = %5
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 143, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %10 unwind label %46

10:                                               ; preds = %8
  %11 = call ptr @__cxa_allocate_exception(i64 24) #15
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !74
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = select i1 %14, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %11, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %10
  %20 = load i16, ptr %17, align 2, !tbaa !81
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %24, %22 ], [ %17, %19 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !81
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %22, !llvm.loop !83

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i64
  %29 = ptrtoint ptr %17 to i64
  %30 = sub i64 %28, %29
  %31 = add i64 %30, 2
  %32 = and i64 %31, 8589934590
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi i64 [ %32, %27 ], [ 2, %19 ]
  %35 = load ptr, ptr %1, align 8, !tbaa !49
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
  store ptr %41, ptr %42, align 8, !tbaa !86
  %43 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %11, i64 0, i32 2
  store ptr %1, ptr %43, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #17
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
  call void @__cxa_free_exception(ptr nonnull %11) #15
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi { ptr, i32 } [ %47, %46 ], [ %49, %48 ]
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !89
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !90
  %58 = load ptr, ptr %4, align 8, !tbaa !91
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  invoke void %61(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %57)
          to label %65 unwind label %62

62:                                               ; preds = %55
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  call void @__clang_call_terminate(ptr %64) #16
  unreachable

65:                                               ; preds = %55, %50, %44
  %66 = phi { ptr, i32 } [ %45, %44 ], [ %51, %50 ], [ %51, %55 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !89
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !90
  %73 = load ptr, ptr %3, align 8, !tbaa !91
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef %72)
          to label %80 unwind label %77

77:                                               ; preds = %70
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #16
  unreachable

80:                                               ; preds = %65, %70
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  resume { ptr, i32 } %66

81:                                               ; preds = %40
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = load ptr, ptr %3, align 8, !tbaa !49
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
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase30throwInvalidCharacterExceptionEjRN11xercesc_2_713MemoryManagerE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
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
  %11 = call ptr @__cxa_allocate_exception(i64 24) #15
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !74
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = select i1 %14, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %11, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %10
  %20 = load i16, ptr %17, align 2, !tbaa !81
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %24, %22 ], [ %17, %19 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !81
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %22, !llvm.loop !83

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i64
  %29 = ptrtoint ptr %17 to i64
  %30 = sub i64 %28, %29
  %31 = add i64 %30, 2
  %32 = and i64 %31, 8589934590
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi i64 [ %32, %27 ], [ 2, %19 ]
  %35 = load ptr, ptr %1, align 8, !tbaa !49
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
  store ptr %41, ptr %42, align 8, !tbaa !86
  %43 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %11, i64 0, i32 2
  store ptr %1, ptr %43, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #17
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
  call void @__cxa_free_exception(ptr nonnull %11) #15
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi { ptr, i32 } [ %47, %46 ], [ %49, %48 ]
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !89
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !90
  %58 = load ptr, ptr %4, align 8, !tbaa !91
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  invoke void %61(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %57)
          to label %65 unwind label %62

62:                                               ; preds = %55
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  call void @__clang_call_terminate(ptr %64) #16
  unreachable

65:                                               ; preds = %55, %50, %44
  %66 = phi { ptr, i32 } [ %45, %44 ], [ %51, %50 ], [ %51, %55 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !89
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !90
  %73 = load ptr, ptr %3, align 8, !tbaa !91
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef %72)
          to label %80 unwind label %77

77:                                               ; preds = %70
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #16
  unreachable

80:                                               ; preds = %65, %70
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  resume { ptr, i32 } %66

81:                                               ; preds = %40
  unreachable
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase33throwInvalidXMLCharacterExceptionEjRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %6 unwind label %45

6:                                                ; preds = %3
  %7 = zext i32 %0 to i64
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %9 unwind label %47

9:                                                ; preds = %6
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 186, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %11 unwind label %47

11:                                               ; preds = %9
  %12 = call ptr @__cxa_allocate_exception(i64 24) #15
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !74
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !49
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %11
  %21 = load i16, ptr %18, align 2, !tbaa !81
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %25, %23 ], [ %18, %20 ]
  %25 = getelementptr inbounds i16, ptr %24, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !81
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %23, !llvm.loop !83

28:                                               ; preds = %23
  %29 = ptrtoint ptr %25 to i64
  %30 = ptrtoint ptr %18 to i64
  %31 = sub i64 %29, %30
  %32 = add i64 %31, 2
  %33 = and i64 %32, 8589934590
  br label %34

34:                                               ; preds = %28, %20
  %35 = phi i64 [ %33, %28 ], [ 2, %20 ]
  %36 = load ptr, ptr %2, align 8, !tbaa !49
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %35)
          to label %40 unwind label %49

40:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %39, ptr nonnull align 2 %18, i64 %35, i1 false)
  br label %41

41:                                               ; preds = %11, %40
  %42 = phi ptr [ %39, %40 ], [ null, %11 ]
  %43 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %12, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !86
  %44 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %12, i64 0, i32 2
  store ptr %2, ptr %44, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE, ptr nonnull @_ZN11xercesc_2_712SAXExceptionD2Ev) #17
          to label %82 unwind label %47

45:                                               ; preds = %3
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %66

47:                                               ; preds = %41, %9, %6
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %51

49:                                               ; preds = %34
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %12) #15
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi { ptr, i32 } [ %48, %47 ], [ %50, %49 ]
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !89
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !90
  %59 = load ptr, ptr %5, align 8, !tbaa !91
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  %61 = getelementptr inbounds ptr, ptr %60, i64 3
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %58)
          to label %66 unwind label %63

63:                                               ; preds = %56
  %64 = landingpad { ptr, i32 }
          catch ptr null
  %65 = extractvalue { ptr, i32 } %64, 0
  call void @__clang_call_terminate(ptr %65) #16
  unreachable

66:                                               ; preds = %56, %51, %45
  %67 = phi { ptr, i32 } [ %46, %45 ], [ %52, %51 ], [ %52, %56 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !89
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !90
  %74 = load ptr, ptr %4, align 8, !tbaa !91
  %75 = load ptr, ptr %74, align 8, !tbaa !49
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %73)
          to label %81 unwind label %78

78:                                               ; preds = %71
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #16
  unreachable

81:                                               ; preds = %66, %71
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  resume { ptr, i32 } %67

82:                                               ; preds = %41
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 !prof !80 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 align 2 !prof !80 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 4, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 9
  store i8 1, ptr %6, align 8, !tbaa !69
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 10
  %9 = load i8, ptr %8, align 1, !tbaa !70, !range !92, !noundef !93
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !49
  %13 = getelementptr inbounds ptr, ptr %12, i64 21
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(240) %0)
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 9
  %16 = load i8, ptr %15, align 8, !tbaa !69, !range !92, !noundef !93
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %0, align 8, !tbaa !49
  %20 = getelementptr inbounds ptr, ptr %19, i64 27
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(240) %0)
  br label %22

22:                                               ; preds = %11, %18, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !80 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !52, !range !92, !noundef !93
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store i8 0, ptr %6, align 8, !tbaa !52
  br label %10

10:                                               ; preds = %5, %9
  %11 = phi i64 [ 11, %9 ], [ 25, %5 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !49
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, i32 noundef %2)
  br label %15

15:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !80 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !52, !range !92, !noundef !93
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store i8 0, ptr %6, align 8, !tbaa !52
  br label %10

10:                                               ; preds = %5, %9
  %11 = phi i64 [ 11, %9 ], [ 26, %5 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !49
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, i32 noundef %2)
  br label %15

15:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !80 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %1, %3 ], [ %8, %4 ]
  %6 = load i16, ptr %5, align 2, !tbaa !81
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds i16, ptr %5, i64 1
  br i1 %7, label %9, label %4, !llvm.loop !94

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
  %20 = load i16, ptr %19, align 2, !tbaa !81
  %21 = icmp eq i16 %20, 0
  %22 = getelementptr inbounds i16, ptr %19, i64 1
  br i1 %21, label %23, label %18, !llvm.loop !94

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
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 1
  store i8 1, ptr %33, align 8, !tbaa !52
  br label %38

34:                                               ; preds = %23, %9, %30, %16
  %35 = load ptr, ptr %0, align 8, !tbaa !49
  %36 = getelementptr inbounds ptr, ptr %35, i64 24
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, ptr noundef %2)
  br label %38

38:                                               ; preds = %34, %32
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 !prof !80 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, i32 noundef %2)
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanXMLSerializerBase16getDoctypeSystemEv(ptr noundef nonnull readnone align 8 dereferenceable(240) %0) unnamed_addr #8 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanXMLSerializerBase16getDoctypePublicEv(ptr noundef nonnull readnone align 8 dereferenceable(240) %0) unnamed_addr #8 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanXMLSerializerBase", ptr %0, i64 0, i32 5
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase13resetDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !80 {
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1)
  %6 = load ptr, ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, align 8, !tbaa !91
  %7 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  %8 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  %9 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  %10 = load ptr, ptr %2, align 8, !tbaa !91
  store ptr %10, ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, align 8, !tbaa !91
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !74
  store i64 %12, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !89
  store i64 %14, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !90
  store ptr %16, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  store ptr %6, ptr %2, align 8, !tbaa !91
  store i64 %7, ptr %11, align 8, !tbaa !74
  store i64 %8, ptr %13, align 8, !tbaa !89
  store ptr %9, ptr %15, align 8, !tbaa !90
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %18 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 1), align 8, !tbaa !95
  %19 = load i32, ptr %17, align 8, !tbaa !95
  store i32 %19, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 1), align 8, !tbaa !95
  store i32 %18, ptr %17, align 8, !tbaa !95
  %20 = icmp eq i64 %8, 0
  br i1 %20, label %28, label %21, !prof !67

21:                                               ; preds = %1
  %22 = load ptr, ptr %6, align 8, !tbaa !49
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %9)
          to label %28 unwind label %25

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  call void @__clang_call_terminate(ptr %27) #16
  unreachable

28:                                               ; preds = %1, %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf16StringE, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1)
  %29 = load ptr, ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, align 8, !tbaa !91
  %30 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  %31 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  %32 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  %33 = load ptr, ptr %3, align 8, !tbaa !91
  store ptr %33, ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, align 8, !tbaa !91
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !74
  store i64 %35, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !89
  store i64 %37, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !90
  store ptr %39, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  store ptr %29, ptr %3, align 8, !tbaa !91
  store i64 %30, ptr %34, align 8, !tbaa !74
  store i64 %31, ptr %36, align 8, !tbaa !89
  store ptr %32, ptr %38, align 8, !tbaa !90
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %41 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 1), align 8, !tbaa !95
  %42 = load i32, ptr %40, align 8, !tbaa !95
  store i32 %42, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 1), align 8, !tbaa !95
  store i32 %41, ptr %40, align 8, !tbaa !95
  %43 = icmp eq i64 %31, 0
  br i1 %43, label %51, label %44, !prof !67

44:                                               ; preds = %28
  %45 = load ptr, ptr %29, align 8, !tbaa !49
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %32)
          to label %51 unwind label %48

48:                                               ; preds = %44
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #16
  unreachable

51:                                               ; preds = %28, %44
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull @_ZN11xalanc_1_1022XalanXMLSerializerBase5UTF1622s_defaultVersionStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1)
  %52 = load ptr, ptr @_ZN11xalanc_1_10L16s_local1_0StringE, align 8, !tbaa !91
  %53 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  %54 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  %55 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  %56 = load ptr, ptr %4, align 8, !tbaa !91
  store ptr %56, ptr @_ZN11xalanc_1_10L16s_local1_0StringE, align 8, !tbaa !91
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !74
  store i64 %58, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !89
  store i64 %60, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !90
  store ptr %62, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  store ptr %52, ptr %4, align 8, !tbaa !91
  store i64 %53, ptr %57, align 8, !tbaa !74
  store i64 %54, ptr %59, align 8, !tbaa !89
  store ptr %55, ptr %61, align 8, !tbaa !90
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %64 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 1), align 8, !tbaa !95
  %65 = load i32, ptr %63, align 8, !tbaa !95
  store i32 %65, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 1), align 8, !tbaa !95
  store i32 %64, ptr %63, align 8, !tbaa !95
  %66 = icmp eq i64 %54, 0
  br i1 %66, label %74, label %67, !prof !67

67:                                               ; preds = %51
  %68 = load ptr, ptr %52, align 8, !tbaa !49
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %55)
          to label %74 unwind label %71

71:                                               ; preds = %67
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #16
  unreachable

74:                                               ; preds = %51, %67
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull @_ZN11xalanc_1_10L18s_1_1VersionStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1)
  %75 = load ptr, ptr @_ZN11xalanc_1_10L16s_local1_1StringE, align 8, !tbaa !91
  %76 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  %77 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  %78 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  %79 = load ptr, ptr %5, align 8, !tbaa !91
  store ptr %79, ptr @_ZN11xalanc_1_10L16s_local1_1StringE, align 8, !tbaa !91
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !74
  store i64 %81, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa !89
  store i64 %83, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !90
  store ptr %85, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  store ptr %75, ptr %5, align 8, !tbaa !91
  store i64 %76, ptr %80, align 8, !tbaa !74
  store i64 %77, ptr %82, align 8, !tbaa !89
  store ptr %78, ptr %84, align 8, !tbaa !90
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %87 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 1), align 8, !tbaa !95
  %88 = load i32, ptr %86, align 8, !tbaa !95
  store i32 %88, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 1), align 8, !tbaa !95
  store i32 %87, ptr %86, align 8, !tbaa !95
  %89 = icmp eq i64 %77, 0
  br i1 %89, label %97, label %90, !prof !67

90:                                               ; preds = %74
  %91 = load ptr, ptr %75, align 8, !tbaa !49
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef %78)
          to label %97 unwind label %94

94:                                               ; preds = %90
  %95 = landingpad { ptr, i32 }
          catch ptr null
  %96 = extractvalue { ptr, i32 } %95, 0
  call void @__clang_call_terminate(ptr %96) #16
  unreachable

97:                                               ; preds = %74, %90
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1022XalanXMLSerializerBase9terminateEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %1 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #15
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = load ptr, ptr %1, align 8, !tbaa !91
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !74
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !89
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = load ptr, ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, align 8, !tbaa !91
  store ptr %13, ptr %1, align 8, !tbaa !91
  %14 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  store i64 %14, ptr %7, align 8, !tbaa !74
  %15 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  store i64 %15, ptr %9, align 8, !tbaa !89
  %16 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  store ptr %16, ptr %11, align 8, !tbaa !90
  store ptr %6, ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, align 8, !tbaa !91
  store i64 %8, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  store i64 %10, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  store ptr %12, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !95
  %19 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 1), align 8, !tbaa !95
  store i32 %19, ptr %17, align 8, !tbaa !95
  store i32 %18, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localUTF8StringE, i64 0, i32 1), align 8, !tbaa !95
  %20 = icmp eq i64 %15, 0
  br i1 %20, label %28, label %21, !prof !96

21:                                               ; preds = %0
  %22 = load ptr, ptr %13, align 8, !tbaa !49
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %16)
          to label %28 unwind label %25, !prof !97

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  call void @__clang_call_terminate(ptr %27) #16
  unreachable

28:                                               ; preds = %0, %21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %29)
  %30 = load ptr, ptr %2, align 8, !tbaa !91
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !74
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !89
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  %37 = load ptr, ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, align 8, !tbaa !91
  store ptr %37, ptr %2, align 8, !tbaa !91
  %38 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  store i64 %38, ptr %31, align 8, !tbaa !74
  %39 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  store i64 %39, ptr %33, align 8, !tbaa !89
  %40 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  store ptr %40, ptr %35, align 8, !tbaa !90
  store ptr %30, ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, align 8, !tbaa !91
  store i64 %32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  store i64 %34, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  store ptr %36, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !95
  %43 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 1), align 8, !tbaa !95
  store i32 %43, ptr %41, align 8, !tbaa !95
  store i32 %42, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localUTF16StringE, i64 0, i32 1), align 8, !tbaa !95
  %44 = icmp eq i64 %39, 0
  br i1 %44, label %52, label %45, !prof !96

45:                                               ; preds = %28
  %46 = load ptr, ptr %37, align 8, !tbaa !49
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %40)
          to label %52 unwind label %49, !prof !97

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #16
  unreachable

52:                                               ; preds = %28, %45
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %53)
  %54 = load ptr, ptr %3, align 8, !tbaa !91
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !74
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !89
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !90
  %61 = load ptr, ptr @_ZN11xalanc_1_10L16s_local1_0StringE, align 8, !tbaa !91
  store ptr %61, ptr %3, align 8, !tbaa !91
  %62 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  store i64 %62, ptr %55, align 8, !tbaa !74
  %63 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  store i64 %63, ptr %57, align 8, !tbaa !89
  %64 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  store ptr %64, ptr %59, align 8, !tbaa !90
  store ptr %54, ptr @_ZN11xalanc_1_10L16s_local1_0StringE, align 8, !tbaa !91
  store i64 %56, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  store i64 %58, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  store ptr %60, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !95
  %67 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 1), align 8, !tbaa !95
  store i32 %67, ptr %65, align 8, !tbaa !95
  store i32 %66, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_0StringE, i64 0, i32 1), align 8, !tbaa !95
  %68 = icmp eq i64 %63, 0
  br i1 %68, label %76, label %69, !prof !96

69:                                               ; preds = %52
  %70 = load ptr, ptr %61, align 8, !tbaa !49
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef %64)
          to label %76 unwind label %73, !prof !97

73:                                               ; preds = %69
  %74 = landingpad { ptr, i32 }
          catch ptr null
  %75 = extractvalue { ptr, i32 } %74, 0
  call void @__clang_call_terminate(ptr %75) #16
  unreachable

76:                                               ; preds = %52, %69
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %77)
  %78 = load ptr, ptr %4, align 8, !tbaa !91
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !74
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %82 = load i64, ptr %81, align 8, !tbaa !89
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !90
  %85 = load ptr, ptr @_ZN11xalanc_1_10L16s_local1_1StringE, align 8, !tbaa !91
  store ptr %85, ptr %4, align 8, !tbaa !91
  %86 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  store i64 %86, ptr %79, align 8, !tbaa !74
  %87 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  store i64 %87, ptr %81, align 8, !tbaa !89
  %88 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  store ptr %88, ptr %83, align 8, !tbaa !90
  store ptr %78, ptr @_ZN11xalanc_1_10L16s_local1_1StringE, align 8, !tbaa !91
  store i64 %80, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 1), align 8, !tbaa !74
  store i64 %82, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 2), align 8, !tbaa !89
  store ptr %84, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 0, i32 3), align 8, !tbaa !90
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %90 = load i32, ptr %89, align 8, !tbaa !95
  %91 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 1), align 8, !tbaa !95
  store i32 %91, ptr %89, align 8, !tbaa !95
  store i32 %90, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L16s_local1_1StringE, i64 0, i32 1), align 8, !tbaa !95
  %92 = icmp eq i64 %87, 0
  br i1 %92, label %100, label %93, !prof !96

93:                                               ; preds = %76
  %94 = load ptr, ptr %85, align 8, !tbaa !49
  %95 = getelementptr inbounds ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8
  invoke void %96(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %88)
          to label %100 unwind label %97, !prof !97

97:                                               ; preds = %93
  %98 = landingpad { ptr, i32 }
          catch ptr null
  %99 = extractvalue { ptr, i32 } %98, 0
  call void @__clang_call_terminate(ptr %99) #16
  unreachable

100:                                              ; preds = %76, %93
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef ptr @_ZNK11xalanc_1_1017FormatterListener9getWriterEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017FormatterListener12getMediaTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_1017FormatterListener9getIndentEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !99

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = load ptr, ptr %0, align 8, !tbaa !91
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !100

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #16
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !80 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SAXExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_712SAXExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = load ptr, ptr %3, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %12 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #16
  unreachable

12:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SAXException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXException", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanXMLSerializerBase.cpp() #13 section ".text.startup" !prof !48 !PGOFuncName !101 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L17s_localUTF8StringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L17s_localUTF8StringE, ptr nonnull @__dso_handle) #15
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_localUTF16StringE, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_localUTF16StringE, ptr nonnull @__dso_handle) #15
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L16s_local1_0StringE, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L16s_local1_0StringE, ptr nonnull @__dso_handle) #15
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L16s_local1_1StringE, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L16s_local1_1StringE, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!47}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !{ptr @_ZN11xalanc_1_1022XalanXMLSerializerBaseC2ERN11xercesc_2_713MemoryManagerENS_17FormatterListener11eXMLVersionERKNS_14XalanDOMStringES8_S8_bS8_, ptr @_ZN11xalanc_1_1017FormatterListenerC2ENS0_7eFormatE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1022XalanXMLSerializerBaseC2ERN11xercesc_2_713MemoryManagerENS_17FormatterListener11eXMLVersionERKNS_14XalanDOMStringES8_S8_bS8_, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 4}
!37 = !{ptr @_ZN11xalanc_1_1022XalanXMLSerializerBaseD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1022XalanXMLSerializerBaseD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 4}
!39 = !{ptr @_ZN11xalanc_1_1022XalanXMLSerializerBaseD2Ev, ptr @_ZN11xalanc_1_1017FormatterListenerD2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 4}
!41 = !{ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 4}
!42 = !{ptr @_ZN11xalanc_1_1022XalanXMLSerializerBase9terminateEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 4}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!44 = !{ptr @_GLOBAL__sub_I_XalanXMLSerializerBase.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 4}
!45 = !{ptr @_GLOBAL__sub_I_XalanXMLSerializerBase.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 4}
!46 = !{ptr @_GLOBAL__sub_I_XalanXMLSerializerBase.cpp, ptr @__cxa_atexit, i64 4}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !60, i64 24}
!53 = !{!"_ZTSN11xalanc_1_1022XalanXMLSerializerBaseE", !54, i64 0, !60, i64 24, !60, i64 25, !61, i64 32, !61, i64 72, !56, i64 112, !61, i64 120, !61, i64 160, !60, i64 200, !60, i64 201, !65, i64 208}
!54 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !55, i64 0, !56, i64 8, !58, i64 16, !59, i64 20}
!55 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !51, i64 0}
!58 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !57, i64 0}
!59 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !57, i64 0}
!60 = !{!"bool", !57, i64 0}
!61 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !62, i64 0, !64, i64 32}
!62 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !56, i64 0, !63, i64 8, !63, i64 16, !56, i64 24}
!63 = !{!"long", !57, i64 0}
!64 = !{!"int", !57, i64 0}
!65 = !{!"_ZTSN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEE", !56, i64 0, !63, i64 8, !63, i64 16, !56, i64 24}
!66 = !{!53, !60, i64 25}
!67 = !{!"branch_weights", i32 1, i32 0}
!68 = !{!56, !56, i64 0}
!69 = !{!53, !60, i64 200}
!70 = !{!53, !60, i64 201}
!71 = !{!65, !56, i64 0}
!72 = !{!54, !59, i64 20}
!73 = !{!61, !64, i64 32}
!74 = !{!62, !63, i64 8}
!75 = !{!"function_entry_count", i64 16}
!76 = !{!65, !63, i64 16}
!77 = !{!"branch_weights", i32 6, i32 10}
!78 = !{!65, !56, i64 24}
!79 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!80 = !{!"function_entry_count", i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"short", !57, i64 0}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!87, !56, i64 8}
!87 = !{!"_ZTSN11xercesc_2_712SAXExceptionE", !56, i64 8, !56, i64 16}
!88 = !{!87, !56, i64 16}
!89 = !{!62, !63, i64 16}
!90 = !{!62, !56, i64 24}
!91 = !{!62, !56, i64 0}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = distinct !{!94, !84, !85}
!95 = !{!64, !64, i64 0}
!96 = !{!"branch_weights", i32 0, i32 1}
!97 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!98 = !{!"function_entry_count", i64 42470003}
!99 = !{!"branch_weights", i32 52000, i32 42418003}
!100 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!101 = !{!"XalanXMLSerializerBase.cpp;_GLOBAL__sub_I_XalanXMLSerializerBase.cpp"}
