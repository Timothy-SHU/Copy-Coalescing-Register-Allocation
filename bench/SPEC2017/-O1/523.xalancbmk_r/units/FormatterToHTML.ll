; ModuleID = 'FormatterToHTML.cpp'
source_filename = "FormatterToHTML.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::FormatterToHTML::Entity" = type { i16, i32, [9 x i16] }
%"class.xalanc_1_10::FormatterToHTML" = type { %"class.xalanc_1_10::FormatterToXML.base", [3 x i8], %"class.xalanc_1_10::XalanDOMString", i8, %"class.xalanc_1_10::XalanVector.0", i8, %"class.xalanc_1_10::XalanVector.0", i8, i8, i8, i32, %"class.xalanc_1_10::XalanVector.0", i8, %"class.xalanc_1_10::XalanVector.2" }
%"class.xalanc_1_10::FormatterToXML.base" = type <{ %"class.xalanc_1_10::FormatterListener", ptr, ptr, i16, [256 x i16], [256 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, i32, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanDOMString", i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector", i32, [4 x i8], %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.0", { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, ptr, i32, i8 }>
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::FormatterToXML" = type <{ %"class.xalanc_1_10::FormatterListener", ptr, ptr, i16, [256 x i16], [256 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, i32, %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanDOMString", i8, i8, i8, i8, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector", i32, [4 x i8], %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.0", { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, { i64, i64 }, ptr, i32, i8, [3 x i8] }>
%"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties" = type { ptr }
%"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalElementProperties" = type { [11 x i16], i32, [7 x %"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalAttributeProperties"] }
%"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalAttributeProperties" = type { [9 x i16], i8 }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

@_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1015FormatterToHTMLE = dso_local unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015FormatterToHTMLE, ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev, ptr @_ZN11xalanc_1_1015FormatterToHTMLD0Ev, ptr @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML11endDocumentEv, ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML19ignorableWhitespaceEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML21processingInstructionEPKtS2_, ptr @_ZN11xalanc_1_1014FormatterToXML13resetDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML18setDocumentLocatorEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML13charactersRawEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML7commentEPKt, ptr @_ZN11xalanc_1_1015FormatterToHTML5cdataEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML15entityReferenceEPKt, ptr @_ZNK11xalanc_1_1014FormatterToXML9getWriterEv, ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypeSystemEv, ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypePublicEv, ptr @_ZNK11xalanc_1_1014FormatterToXML11getEncodingEv, ptr @_ZNK11xalanc_1_1014FormatterToXML12getMediaTypeEv, ptr @_ZNK11xalanc_1_1014FormatterToXML9getIndentEv, ptr @_ZN11xalanc_1_1015FormatterToHTML18accumDefaultEntityEtb, ptr @_ZN11xalanc_1_1014FormatterToXML20writeNormalizedCharsEPKtjjb, ptr @_ZN11xalanc_1_1015FormatterToHTML15writeAttrStringEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML16accumCommentDataEPKt, ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE] }, align 8
@_ZN11xalanc_1_1017FormatterListener10s_piTargetE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1017FormatterListener8s_piDataE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1015FormatterToHTML10s_entitiesE = dso_local constant [195 x %"struct.xalanc_1_10::FormatterToHTML::Entity"] [%"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 160, i32 4, [9 x i16] [i16 110, i16 98, i16 115, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 161, i32 5, [9 x i16] [i16 105, i16 101, i16 120, i16 99, i16 108, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 162, i32 4, [9 x i16] [i16 99, i16 101, i16 110, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 163, i32 5, [9 x i16] [i16 112, i16 111, i16 117, i16 110, i16 100, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 164, i32 6, [9 x i16] [i16 99, i16 117, i16 114, i16 114, i16 101, i16 110, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 165, i32 3, [9 x i16] [i16 121, i16 101, i16 110, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 166, i32 6, [9 x i16] [i16 98, i16 114, i16 118, i16 98, i16 97, i16 114, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 167, i32 4, [9 x i16] [i16 115, i16 101, i16 99, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 168, i32 3, [9 x i16] [i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 169, i32 4, [9 x i16] [i16 99, i16 111, i16 112, i16 121, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 170, i32 4, [9 x i16] [i16 111, i16 114, i16 100, i16 102, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 171, i32 5, [9 x i16] [i16 108, i16 97, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 172, i32 3, [9 x i16] [i16 110, i16 111, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 173, i32 3, [9 x i16] [i16 115, i16 104, i16 121, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 174, i32 3, [9 x i16] [i16 114, i16 101, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 175, i32 4, [9 x i16] [i16 109, i16 97, i16 99, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 176, i32 3, [9 x i16] [i16 100, i16 101, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 177, i32 6, [9 x i16] [i16 112, i16 108, i16 117, i16 115, i16 109, i16 110, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 178, i32 4, [9 x i16] [i16 115, i16 117, i16 112, i16 50, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 179, i32 4, [9 x i16] [i16 115, i16 117, i16 112, i16 51, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 180, i32 5, [9 x i16] [i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 181, i32 5, [9 x i16] [i16 109, i16 105, i16 99, i16 114, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 182, i32 4, [9 x i16] [i16 112, i16 97, i16 114, i16 97, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 183, i32 6, [9 x i16] [i16 109, i16 105, i16 100, i16 100, i16 111, i16 116, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 184, i32 5, [9 x i16] [i16 99, i16 101, i16 100, i16 105, i16 108, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 185, i32 4, [9 x i16] [i16 115, i16 117, i16 112, i16 49, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 186, i32 4, [9 x i16] [i16 111, i16 114, i16 100, i16 109, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 187, i32 5, [9 x i16] [i16 114, i16 97, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 188, i32 6, [9 x i16] [i16 102, i16 114, i16 97, i16 99, i16 49, i16 52, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 189, i32 6, [9 x i16] [i16 102, i16 114, i16 97, i16 99, i16 49, i16 50, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 190, i32 6, [9 x i16] [i16 102, i16 114, i16 97, i16 99, i16 51, i16 52, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 191, i32 6, [9 x i16] [i16 105, i16 113, i16 117, i16 101, i16 115, i16 116, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 192, i32 6, [9 x i16] [i16 65, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 193, i32 6, [9 x i16] [i16 65, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 194, i32 5, [9 x i16] [i16 65, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 195, i32 6, [9 x i16] [i16 65, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 196, i32 4, [9 x i16] [i16 65, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 197, i32 5, [9 x i16] [i16 65, i16 114, i16 105, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 198, i32 5, [9 x i16] [i16 65, i16 69, i16 108, i16 105, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 199, i32 6, [9 x i16] [i16 67, i16 99, i16 101, i16 100, i16 105, i16 108, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 200, i32 6, [9 x i16] [i16 69, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 201, i32 6, [9 x i16] [i16 69, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 202, i32 5, [9 x i16] [i16 69, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 203, i32 4, [9 x i16] [i16 69, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 204, i32 6, [9 x i16] [i16 73, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 205, i32 6, [9 x i16] [i16 73, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 206, i32 5, [9 x i16] [i16 73, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 207, i32 4, [9 x i16] [i16 73, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 208, i32 3, [9 x i16] [i16 69, i16 84, i16 72, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 209, i32 6, [9 x i16] [i16 78, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 210, i32 6, [9 x i16] [i16 79, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 211, i32 6, [9 x i16] [i16 79, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 212, i32 5, [9 x i16] [i16 79, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 213, i32 6, [9 x i16] [i16 79, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 214, i32 4, [9 x i16] [i16 79, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 215, i32 5, [9 x i16] [i16 116, i16 105, i16 109, i16 101, i16 115, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 216, i32 6, [9 x i16] [i16 79, i16 115, i16 108, i16 97, i16 115, i16 104, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 217, i32 6, [9 x i16] [i16 85, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 218, i32 6, [9 x i16] [i16 85, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 219, i32 5, [9 x i16] [i16 85, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 220, i32 4, [9 x i16] [i16 85, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 221, i32 6, [9 x i16] [i16 89, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 222, i32 5, [9 x i16] [i16 84, i16 72, i16 79, i16 82, i16 78, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 223, i32 5, [9 x i16] [i16 115, i16 122, i16 108, i16 105, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 224, i32 6, [9 x i16] [i16 97, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 225, i32 6, [9 x i16] [i16 97, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 226, i32 5, [9 x i16] [i16 97, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 227, i32 6, [9 x i16] [i16 97, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 228, i32 4, [9 x i16] [i16 97, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 229, i32 5, [9 x i16] [i16 97, i16 114, i16 105, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 230, i32 5, [9 x i16] [i16 97, i16 101, i16 108, i16 105, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 231, i32 6, [9 x i16] [i16 99, i16 99, i16 101, i16 100, i16 105, i16 108, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 232, i32 6, [9 x i16] [i16 101, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 233, i32 6, [9 x i16] [i16 101, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 234, i32 5, [9 x i16] [i16 101, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 235, i32 4, [9 x i16] [i16 101, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 236, i32 6, [9 x i16] [i16 105, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 237, i32 6, [9 x i16] [i16 105, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 238, i32 5, [9 x i16] [i16 105, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 239, i32 4, [9 x i16] [i16 105, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 240, i32 3, [9 x i16] [i16 101, i16 116, i16 104, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 241, i32 6, [9 x i16] [i16 110, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 242, i32 6, [9 x i16] [i16 111, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 243, i32 6, [9 x i16] [i16 111, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 244, i32 5, [9 x i16] [i16 111, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 245, i32 6, [9 x i16] [i16 111, i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 246, i32 4, [9 x i16] [i16 111, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 247, i32 6, [9 x i16] [i16 100, i16 105, i16 118, i16 105, i16 100, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 248, i32 6, [9 x i16] [i16 111, i16 115, i16 108, i16 97, i16 115, i16 104, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 249, i32 6, [9 x i16] [i16 117, i16 103, i16 114, i16 97, i16 118, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 250, i32 6, [9 x i16] [i16 117, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 251, i32 5, [9 x i16] [i16 117, i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 252, i32 4, [9 x i16] [i16 117, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 253, i32 6, [9 x i16] [i16 121, i16 97, i16 99, i16 117, i16 116, i16 101, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 254, i32 5, [9 x i16] [i16 116, i16 104, i16 111, i16 114, i16 110, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 255, i32 4, [9 x i16] [i16 121, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 338, i32 5, [9 x i16] [i16 79, i16 69, i16 108, i16 105, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 339, i32 5, [9 x i16] [i16 111, i16 101, i16 108, i16 105, i16 103, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 352, i32 6, [9 x i16] [i16 83, i16 99, i16 97, i16 114, i16 111, i16 110, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 353, i32 6, [9 x i16] [i16 115, i16 99, i16 97, i16 114, i16 111, i16 110, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 376, i32 4, [9 x i16] [i16 89, i16 117, i16 109, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 710, i32 4, [9 x i16] [i16 99, i16 105, i16 114, i16 99, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 732, i32 5, [9 x i16] [i16 116, i16 105, i16 108, i16 100, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8194, i32 4, [9 x i16] [i16 101, i16 110, i16 115, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8195, i32 4, [9 x i16] [i16 101, i16 109, i16 115, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8201, i32 6, [9 x i16] [i16 116, i16 104, i16 105, i16 110, i16 115, i16 112, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8204, i32 4, [9 x i16] [i16 122, i16 119, i16 110, i16 106, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8205, i32 3, [9 x i16] [i16 122, i16 119, i16 106, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8206, i32 3, [9 x i16] [i16 108, i16 114, i16 109, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8207, i32 3, [9 x i16] [i16 114, i16 108, i16 109, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8211, i32 5, [9 x i16] [i16 110, i16 100, i16 97, i16 115, i16 104, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8212, i32 5, [9 x i16] [i16 109, i16 100, i16 97, i16 115, i16 104, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8216, i32 5, [9 x i16] [i16 108, i16 115, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8217, i32 5, [9 x i16] [i16 114, i16 115, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8218, i32 5, [9 x i16] [i16 115, i16 98, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8220, i32 5, [9 x i16] [i16 108, i16 100, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8221, i32 5, [9 x i16] [i16 114, i16 100, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8222, i32 5, [9 x i16] [i16 98, i16 100, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8224, i32 6, [9 x i16] [i16 100, i16 97, i16 103, i16 103, i16 101, i16 114, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8225, i32 6, [9 x i16] [i16 68, i16 97, i16 103, i16 103, i16 101, i16 114, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8226, i32 4, [9 x i16] [i16 98, i16 117, i16 108, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8230, i32 6, [9 x i16] [i16 104, i16 101, i16 108, i16 108, i16 105, i16 112, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8240, i32 6, [9 x i16] [i16 112, i16 101, i16 114, i16 109, i16 105, i16 108, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8242, i32 5, [9 x i16] [i16 112, i16 114, i16 105, i16 109, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8243, i32 5, [9 x i16] [i16 80, i16 114, i16 105, i16 109, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8249, i32 6, [9 x i16] [i16 108, i16 115, i16 97, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8250, i32 6, [9 x i16] [i16 114, i16 115, i16 97, i16 113, i16 117, i16 111, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8254, i32 5, [9 x i16] [i16 111, i16 108, i16 105, i16 110, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8260, i32 5, [9 x i16] [i16 102, i16 114, i16 97, i16 115, i16 108, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8364, i32 4, [9 x i16] [i16 101, i16 117, i16 114, i16 111, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8465, i32 5, [9 x i16] [i16 105, i16 109, i16 97, i16 103, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8472, i32 6, [9 x i16] [i16 119, i16 101, i16 105, i16 101, i16 114, i16 112, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8476, i32 4, [9 x i16] [i16 114, i16 101, i16 97, i16 108, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8482, i32 5, [9 x i16] [i16 116, i16 114, i16 97, i16 100, i16 101, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8501, i32 7, [9 x i16] [i16 97, i16 108, i16 101, i16 102, i16 115, i16 121, i16 109, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8592, i32 4, [9 x i16] [i16 108, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8593, i32 4, [9 x i16] [i16 117, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8594, i32 4, [9 x i16] [i16 114, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8595, i32 4, [9 x i16] [i16 100, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8596, i32 4, [9 x i16] [i16 104, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8629, i32 5, [9 x i16] [i16 99, i16 114, i16 97, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8656, i32 4, [9 x i16] [i16 108, i16 65, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8657, i32 4, [9 x i16] [i16 117, i16 65, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8658, i32 4, [9 x i16] [i16 114, i16 65, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8659, i32 4, [9 x i16] [i16 100, i16 65, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8660, i32 4, [9 x i16] [i16 104, i16 65, i16 114, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8704, i32 6, [9 x i16] [i16 102, i16 111, i16 114, i16 97, i16 108, i16 108, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8706, i32 4, [9 x i16] [i16 112, i16 97, i16 114, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8707, i32 5, [9 x i16] [i16 101, i16 120, i16 105, i16 115, i16 116, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8709, i32 5, [9 x i16] [i16 101, i16 109, i16 112, i16 116, i16 121, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8711, i32 5, [9 x i16] [i16 110, i16 97, i16 98, i16 108, i16 97, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8712, i32 4, [9 x i16] [i16 105, i16 115, i16 105, i16 110, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8713, i32 5, [9 x i16] [i16 110, i16 111, i16 116, i16 105, i16 110, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8715, i32 2, [9 x i16] [i16 110, i16 105, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8719, i32 4, [9 x i16] [i16 112, i16 114, i16 111, i16 100, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8721, i32 3, [9 x i16] [i16 115, i16 117, i16 109, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8722, i32 5, [9 x i16] [i16 109, i16 105, i16 110, i16 117, i16 115, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8727, i32 6, [9 x i16] [i16 108, i16 111, i16 119, i16 97, i16 115, i16 116, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8730, i32 5, [9 x i16] [i16 114, i16 97, i16 100, i16 105, i16 99, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8733, i32 4, [9 x i16] [i16 112, i16 114, i16 111, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8734, i32 5, [9 x i16] [i16 105, i16 110, i16 102, i16 105, i16 110, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8736, i32 3, [9 x i16] [i16 97, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8743, i32 3, [9 x i16] [i16 97, i16 110, i16 100, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8744, i32 2, [9 x i16] [i16 111, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8745, i32 3, [9 x i16] [i16 99, i16 97, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8746, i32 3, [9 x i16] [i16 99, i16 117, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8747, i32 3, [9 x i16] [i16 105, i16 110, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8756, i32 6, [9 x i16] [i16 116, i16 104, i16 101, i16 114, i16 101, i16 52, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8764, i32 3, [9 x i16] [i16 115, i16 105, i16 109, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8773, i32 4, [9 x i16] [i16 99, i16 111, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8776, i32 5, [9 x i16] [i16 97, i16 115, i16 121, i16 109, i16 112, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8800, i32 2, [9 x i16] [i16 110, i16 101, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8801, i32 5, [9 x i16] [i16 101, i16 113, i16 117, i16 105, i16 118, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8804, i32 2, [9 x i16] [i16 108, i16 101, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8805, i32 2, [9 x i16] [i16 103, i16 101, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8834, i32 3, [9 x i16] [i16 115, i16 117, i16 98, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8835, i32 3, [9 x i16] [i16 115, i16 117, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8836, i32 4, [9 x i16] [i16 110, i16 115, i16 117, i16 98, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8838, i32 4, [9 x i16] [i16 115, i16 117, i16 98, i16 101, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8839, i32 4, [9 x i16] [i16 115, i16 117, i16 112, i16 101, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8853, i32 5, [9 x i16] [i16 111, i16 112, i16 108, i16 117, i16 115, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8855, i32 6, [9 x i16] [i16 111, i16 116, i16 105, i16 109, i16 101, i16 115, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8869, i32 4, [9 x i16] [i16 112, i16 101, i16 114, i16 112, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8901, i32 4, [9 x i16] [i16 115, i16 100, i16 111, i16 116, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8968, i32 5, [9 x i16] [i16 108, i16 99, i16 101, i16 105, i16 108, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8969, i32 5, [9 x i16] [i16 114, i16 99, i16 101, i16 105, i16 108, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8970, i32 6, [9 x i16] [i16 108, i16 102, i16 108, i16 111, i16 111, i16 114, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 8971, i32 6, [9 x i16] [i16 114, i16 102, i16 108, i16 111, i16 111, i16 114, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9001, i32 4, [9 x i16] [i16 108, i16 97, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9002, i32 4, [9 x i16] [i16 114, i16 97, i16 110, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9674, i32 3, [9 x i16] [i16 108, i16 111, i16 122, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9824, i32 6, [9 x i16] [i16 115, i16 112, i16 97, i16 100, i16 101, i16 115, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9827, i32 5, [9 x i16] [i16 99, i16 108, i16 117, i16 98, i16 115, i16 0, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9829, i32 6, [9 x i16] [i16 104, i16 101, i16 97, i16 114, i16 116, i16 115, i16 0, i16 0, i16 0] }, %"struct.xalanc_1_10::FormatterToHTML::Entity" { i16 9830, i32 5, [9 x i16] [i16 100, i16 105, i16 97, i16 109, i16 115, i16 0, i16 0, i16 0, i16 0] }], align 16
@_ZN11xalanc_1_1015FormatterToHTML12s_lastEntityE = dso_local local_unnamed_addr constant ptr getelementptr inbounds ([195 x %"struct.xalanc_1_10::FormatterToHTML::Entity"], ptr @_ZN11xalanc_1_1015FormatterToHTML10s_entitiesE, i64 0, i64 194, i32 0), align 8
@_ZN11xalanc_1_1015FormatterToHTML26s_doctypeHeaderStartStringE = dso_local constant [15 x i16] [i16 60, i16 33, i16 68, i16 79, i16 67, i16 84, i16 89, i16 80, i16 69, i16 32, i16 72, i16 84, i16 77, i16 76, i16 0], align 16
@_ZN11xalanc_1_1015FormatterToHTML32s_doctypeHeaderStartStringLengthE = dso_local local_unnamed_addr constant i32 14, align 4
@_ZN11xalanc_1_1015FormatterToHTML27s_doctypeHeaderPublicStringE = dso_local constant [10 x i16] [i16 32, i16 80, i16 85, i16 66, i16 76, i16 73, i16 67, i16 32, i16 34, i16 0], align 16
@_ZN11xalanc_1_1015FormatterToHTML33s_doctypeHeaderPublicStringLengthE = dso_local local_unnamed_addr constant i32 9, align 4
@_ZN11xalanc_1_1015FormatterToHTML27s_doctypeHeaderSystemStringE = dso_local constant [8 x i16] [i16 32, i16 83, i16 89, i16 83, i16 84, i16 69, i16 77, i16 0], align 16
@_ZN11xalanc_1_1015FormatterToHTML33s_doctypeHeaderSystemStringLengthE = dso_local local_unnamed_addr constant i32 7, align 4
@_ZN11xalanc_1_1015FormatterToHTML12s_metaStringE = dso_local constant [61 x i16] [i16 60, i16 77, i16 69, i16 84, i16 65, i16 32, i16 104, i16 116, i16 116, i16 112, i16 45, i16 101, i16 113, i16 117, i16 105, i16 118, i16 61, i16 34, i16 67, i16 111, i16 110, i16 116, i16 101, i16 110, i16 116, i16 45, i16 84, i16 121, i16 112, i16 101, i16 34, i16 32, i16 99, i16 111, i16 110, i16 116, i16 101, i16 110, i16 116, i16 61, i16 34, i16 116, i16 101, i16 120, i16 116, i16 47, i16 104, i16 116, i16 109, i16 108, i16 59, i16 32, i16 99, i16 104, i16 97, i16 114, i16 115, i16 101, i16 116, i16 61, i16 0], align 16
@_ZN11xalanc_1_1015FormatterToHTML18s_metaStringLengthE = dso_local local_unnamed_addr constant i32 60, align 4
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015FormatterToHTMLE = dso_local constant [33 x i8] c"N11xalanc_1_1015FormatterToHTMLE\00", align 1
@_ZTIN11xalanc_1_1014FormatterToXMLE = external constant ptr
@_ZTIN11xalanc_1_1015FormatterToHTMLE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015FormatterToHTMLE, ptr @_ZTIN11xalanc_1_1014FormatterToXMLE }, align 8
@_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE = external local_unnamed_addr constant [0 x i8], align 1
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FormatterToHTML.cpp, ptr null }]

@_ZN11xalanc_1_1015FormatterToHTMLC1ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, i1, i32, i1, i1, ptr), ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1015FormatterToHTMLD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i1 noundef zeroext %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(8) %10) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %12 = zext i1 %9 to i8
  tail call void @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE, i1 noundef zeroext %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(8) %10)
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTVN11xalanc_1_1015FormatterToHTMLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %14 unwind label %36, !prof !82

14:                                               ; preds = %11
  %15 = zext i1 %8 to i8
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 3
  store i8 0, ptr %16, align 8, !tbaa !83
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4
  store ptr %10, ptr %17, align 8, !tbaa !101
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4, i32 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %18, i8 0, i64 25, i1 false)
  store ptr %10, ptr %19, align 8, !tbaa !101
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  store i8 %15, ptr %21, align 8, !tbaa !102
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 8
  store i8 0, ptr %22, align 1, !tbaa !103
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 19
  %24 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %23)
          to label %25 unwind label %38, !prof !82

25:                                               ; preds = %14
  %26 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 9
  %27 = zext i1 %24 to i8
  store i8 %27, ptr %26, align 2, !tbaa !104
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 10
  store i32 0, ptr %28, align 4, !tbaa !105
  %29 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11
  store ptr %10, ptr %29, align 8, !tbaa !101
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11, i32 1
  %31 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  store i8 %12, ptr %31, align 8, !tbaa !106
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13
  store ptr %10, ptr %32, align 8, !tbaa !107
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1015FormatterToHTML12initCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1912) %0)
          to label %34 unwind label %40, !prof !82

34:                                               ; preds = %25
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 6
  store i8 0, ptr %35, align 2, !tbaa !108
  ret void

36:                                               ; preds = %11
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %44

38:                                               ; preds = %14
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %42

40:                                               ; preds = %25
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %32) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #16
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %19) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #16
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %37, %36 ]
  tail call void @_ZN11xalanc_1_1014FormatterToXMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1709) %0) #16
  resume { ptr, i32 } %45
}

declare void @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML12initCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) local_unnamed_addr #3 align 2 !prof !78 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 10
  store i16 83, ptr %2, align 2, !tbaa !109
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 9
  store i16 0, ptr %3, align 4, !tbaa !109
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 60
  store i16 0, ptr %4, align 2, !tbaa !109
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 62
  store i16 0, ptr %5, align 2, !tbaa !109
  br label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 160, %1 ], [ %9, %6 ]
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %7
  store i16 83, ptr %8, align 2, !tbaa !109
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, 256
  br i1 %10, label %11, label %6, !prof !110, !llvm.loop !111

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(512) %12, i8 0, i64 512, i1 false)
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 10
  store i16 83, ptr %13, align 2, !tbaa !109
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 60
  store i16 83, ptr %14, align 2, !tbaa !109
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 62
  store i16 83, ptr %15, align 2, !tbaa !109
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 38
  store i16 83, ptr %16, align 2, !tbaa !109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %12, i8 83, i64 10, i1 false)
  store i16 83, ptr %13, align 2, !tbaa !109
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 13
  store i16 83, ptr %17, align 4, !tbaa !109
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !114
  %21 = icmp ult i16 %20, 256
  br i1 %21, label %22, label %29, !prof !115

22:                                               ; preds = %18
  %23 = zext nneg i16 %20 to i64
  br label %30

24:                                               ; preds = %11, %24
  %25 = phi i64 [ 160, %11 ], [ %27, %24 ]
  %26 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %25
  store i16 83, ptr %26, align 2, !tbaa !109
  %27 = add nuw nsw i64 %25, 1
  %28 = icmp eq i64 %27, 256
  br i1 %28, label %18, label %24, !prof !110, !llvm.loop !116

29:                                               ; preds = %30, %18
  ret void

30:                                               ; preds = %22, %30
  %31 = phi i64 [ %23, %22 ], [ %33, %30 ]
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %31
  store i16 83, ptr %32, align 2, !tbaa !109
  %33 = add nuw nsw i64 %31, 1
  %34 = icmp eq i64 %33, 256
  br i1 %34, label %29, label %30, !prof !82, !llvm.loop !117
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !118
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !115

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = load ptr, ptr %0, align 8, !tbaa !107
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !120

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !122
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !123

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = load ptr, ptr %0, align 8, !tbaa !101
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !125

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014FormatterToXMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1015FormatterToHTML6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringES8_S8_S8_bibb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i1 noundef zeroext %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %11 = load ptr, ptr %0, align 8, !tbaa !79
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1912), !prof !126
  invoke void @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1912) %14, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i1 noundef zeroext %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %15 unwind label %16, !prof !82

15:                                               ; preds = %10
  ret ptr %14

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = icmp eq ptr %14, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8, !tbaa !79
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %14)
          to label %26 unwind label %23

23:                                               ; preds = %19
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #17
  unreachable

26:                                               ; preds = %16, %19
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1912) %0) unnamed_addr #1 align 2 !prof !78 {
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTVN11xalanc_1_1015FormatterToHTMLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  tail call void @_ZN11xalanc_1_1014FormatterToXMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1709) %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTMLD0Ev(ptr noundef nonnull align 8 dereferenceable(1912) %0) unnamed_addr #1 align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1015FormatterToHTMLD2Ev(ptr noundef nonnull align 8 dereferenceable(1912) %0) #16
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML16initAttrCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) local_unnamed_addr #3 align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 10
  store i16 83, ptr %2, align 2, !tbaa !109
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 9
  store i16 0, ptr %3, align 4, !tbaa !109
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 60
  store i16 0, ptr %4, align 2, !tbaa !109
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 62
  store i16 0, ptr %5, align 2, !tbaa !109
  br label %7

6:                                                ; preds = %7
  ret void

7:                                                ; preds = %1, %7
  %8 = phi i64 [ 160, %1 ], [ %10, %7 ]
  %9 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %8
  store i16 83, ptr %9, align 2, !tbaa !109
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, 256
  br i1 %11, label %6, label %7, !llvm.loop !111
}

declare void @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv(ptr noundef nonnull align 8 dereferenceable(1709)) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) unnamed_addr #3 align 2 !prof !78 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !127
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6, !prof !82

6:                                                ; preds = %1
  %7 = load i64, ptr %3, align 8, !tbaa !127
  %8 = sub i64 %7, %4
  store i64 %8, ptr %3, align 8, !tbaa !127
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 1
  store i32 0, ptr %10, align 8, !tbaa !128
  %11 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 10
  store i32 0, ptr %11, align 4, !tbaa !105
  %12 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 8
  store i8 1, ptr %12, align 1, !tbaa !103
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 0, ptr %13, align 1, !tbaa !129
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 6
  store i8 0, ptr %14, align 2, !tbaa !108
  %15 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 5
  store i8 0, ptr %15, align 8, !tbaa !130
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !131
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %20, label %19, !prof !82

19:                                               ; preds = %9
  store i64 0, ptr %16, align 8, !tbaa !131
  br label %20

20:                                               ; preds = %19, %9
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 0, ptr %2, align 1, !tbaa !132
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !131
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %26, label %25, !prof !82

25:                                               ; preds = %20
  store i64 0, ptr %22, align 8, !tbaa !131
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !133
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %31, label %30, !prof !82

30:                                               ; preds = %26
  store i64 0, ptr %27, align 8, !tbaa !133
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17
  %33 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 17, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !128
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18
  %37 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 18, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !128
  %39 = icmp eq i32 %38, 0
  %40 = or i32 %38, %34
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %201, label %42, !prof !82

42:                                               ; preds = %31
  %43 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %44 = load i64, ptr %43, align 8, !tbaa !134
  %45 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !134
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = and i64 %44, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %47, align 8, !tbaa !79
  %52 = getelementptr i8, ptr %51, i64 %44
  %53 = getelementptr i8, ptr %52, i64 -1
  %54 = load ptr, ptr %53, align 8, !nosanitize !135
  br label %57

55:                                               ; preds = %42
  %56 = inttoptr i64 %44 to ptr
  br label %57

57:                                               ; preds = %50, %55
  %58 = phi ptr [ %54, %50 ], [ %56, %55 ]
  call void %58(ptr noundef nonnull align 8 dereferenceable(1709) %47, ptr noundef nonnull @_ZN11xalanc_1_1015FormatterToHTML26s_doctypeHeaderStartStringE, i32 noundef 0, i32 noundef 14)
  br i1 %39, label %106, label %59

59:                                               ; preds = %57
  %60 = load i64, ptr %43, align 8, !tbaa !134
  %61 = load i64, ptr %45, align 8, !tbaa !134
  %62 = getelementptr inbounds i8, ptr %0, i64 %61
  %63 = and i64 %60, 1
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %62, align 8, !tbaa !79
  %67 = getelementptr i8, ptr %66, i64 %60
  %68 = getelementptr i8, ptr %67, i64 -1
  %69 = load ptr, ptr %68, align 8, !nosanitize !135
  br label %72

70:                                               ; preds = %59
  %71 = inttoptr i64 %60 to ptr
  br label %72

72:                                               ; preds = %65, %70
  %73 = phi ptr [ %69, %65 ], [ %71, %70 ]
  call void %73(ptr noundef nonnull align 8 dereferenceable(1709) %62, ptr noundef nonnull @_ZN11xalanc_1_1015FormatterToHTML27s_doctypeHeaderPublicStringE, i32 noundef 0, i32 noundef 9)
  %74 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %75 = load i64, ptr %74, align 8, !tbaa !136
  %76 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !136
  %78 = getelementptr inbounds i8, ptr %0, i64 %77
  %79 = and i64 %75, 1
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %72
  %82 = load ptr, ptr %78, align 8, !tbaa !79
  %83 = getelementptr i8, ptr %82, i64 %75
  %84 = getelementptr i8, ptr %83, i64 -1
  %85 = load ptr, ptr %84, align 8, !nosanitize !135
  br label %88

86:                                               ; preds = %72
  %87 = inttoptr i64 %75 to ptr
  br label %88

88:                                               ; preds = %81, %86
  %89 = phi ptr [ %85, %81 ], [ %87, %86 ]
  call void %89(ptr noundef nonnull align 8 dereferenceable(1709) %78, ptr noundef nonnull align 8 dereferenceable(36) %36)
  %90 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %91 = load i64, ptr %90, align 8, !tbaa !137
  %92 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !137
  %94 = getelementptr inbounds i8, ptr %0, i64 %93
  %95 = and i64 %91, 1
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %88
  %98 = load ptr, ptr %94, align 8, !tbaa !79
  %99 = getelementptr i8, ptr %98, i64 %91
  %100 = getelementptr i8, ptr %99, i64 -1
  %101 = load ptr, ptr %100, align 8, !nosanitize !135
  br label %104

102:                                              ; preds = %88
  %103 = inttoptr i64 %91 to ptr
  br label %104

104:                                              ; preds = %97, %102
  %105 = phi ptr [ %101, %97 ], [ %103, %102 ]
  call void %105(ptr noundef nonnull align 8 dereferenceable(1709) %94, i16 noundef zeroext 34)
  br label %106

106:                                              ; preds = %104, %57
  br i1 %35, label %184, label %107

107:                                              ; preds = %106
  br i1 %39, label %108, label %123

108:                                              ; preds = %107
  %109 = load i64, ptr %43, align 8, !tbaa !134
  %110 = load i64, ptr %45, align 8, !tbaa !134
  %111 = getelementptr inbounds i8, ptr %0, i64 %110
  %112 = and i64 %109, 1
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %111, align 8, !tbaa !79
  %116 = getelementptr i8, ptr %115, i64 %109
  %117 = getelementptr i8, ptr %116, i64 -1
  %118 = load ptr, ptr %117, align 8, !nosanitize !135
  br label %121

119:                                              ; preds = %108
  %120 = inttoptr i64 %109 to ptr
  br label %121

121:                                              ; preds = %114, %119
  %122 = phi ptr [ %118, %114 ], [ %120, %119 ]
  call void %122(ptr noundef nonnull align 8 dereferenceable(1709) %111, ptr noundef nonnull @_ZN11xalanc_1_1015FormatterToHTML27s_doctypeHeaderSystemStringE, i32 noundef 0, i32 noundef 7)
  br label %123

123:                                              ; preds = %121, %107
  %124 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %125 = load i64, ptr %124, align 8, !tbaa !137
  %126 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !137
  %128 = getelementptr inbounds i8, ptr %0, i64 %127
  %129 = and i64 %125, 1
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %123
  %132 = load ptr, ptr %128, align 8, !tbaa !79
  %133 = getelementptr i8, ptr %132, i64 %125
  %134 = getelementptr i8, ptr %133, i64 -1
  %135 = load ptr, ptr %134, align 8, !nosanitize !135
  br label %138

136:                                              ; preds = %123
  %137 = inttoptr i64 %125 to ptr
  br label %138

138:                                              ; preds = %131, %136
  %139 = phi ptr [ %135, %131 ], [ %137, %136 ]
  call void %139(ptr noundef nonnull align 8 dereferenceable(1709) %128, i16 noundef zeroext 32)
  %140 = load i64, ptr %124, align 8, !tbaa !137
  %141 = load i64, ptr %126, align 8, !tbaa !137
  %142 = getelementptr inbounds i8, ptr %0, i64 %141
  %143 = and i64 %140, 1
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %138
  %146 = load ptr, ptr %142, align 8, !tbaa !79
  %147 = getelementptr i8, ptr %146, i64 %140
  %148 = getelementptr i8, ptr %147, i64 -1
  %149 = load ptr, ptr %148, align 8, !nosanitize !135
  br label %152

150:                                              ; preds = %138
  %151 = inttoptr i64 %140 to ptr
  br label %152

152:                                              ; preds = %145, %150
  %153 = phi ptr [ %149, %145 ], [ %151, %150 ]
  call void %153(ptr noundef nonnull align 8 dereferenceable(1709) %142, i16 noundef zeroext 34)
  %154 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %155 = load i64, ptr %154, align 8, !tbaa !136
  %156 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !136
  %158 = getelementptr inbounds i8, ptr %0, i64 %157
  %159 = and i64 %155, 1
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %152
  %162 = load ptr, ptr %158, align 8, !tbaa !79
  %163 = getelementptr i8, ptr %162, i64 %155
  %164 = getelementptr i8, ptr %163, i64 -1
  %165 = load ptr, ptr %164, align 8, !nosanitize !135
  br label %168

166:                                              ; preds = %152
  %167 = inttoptr i64 %155 to ptr
  br label %168

168:                                              ; preds = %161, %166
  %169 = phi ptr [ %165, %161 ], [ %167, %166 ]
  call void %169(ptr noundef nonnull align 8 dereferenceable(1709) %158, ptr noundef nonnull align 8 dereferenceable(36) %32)
  %170 = load i64, ptr %124, align 8, !tbaa !137
  %171 = load i64, ptr %126, align 8, !tbaa !137
  %172 = getelementptr inbounds i8, ptr %0, i64 %171
  %173 = and i64 %170, 1
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %168
  %176 = load ptr, ptr %172, align 8, !tbaa !79
  %177 = getelementptr i8, ptr %176, i64 %170
  %178 = getelementptr i8, ptr %177, i64 -1
  %179 = load ptr, ptr %178, align 8, !nosanitize !135
  br label %182

180:                                              ; preds = %168
  %181 = inttoptr i64 %170 to ptr
  br label %182

182:                                              ; preds = %175, %180
  %183 = phi ptr [ %179, %175 ], [ %181, %180 ]
  call void %183(ptr noundef nonnull align 8 dereferenceable(1709) %172, i16 noundef zeroext 34)
  br label %184

184:                                              ; preds = %182, %106
  %185 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %186 = load i64, ptr %185, align 8, !tbaa !137
  %187 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %188 = load i64, ptr %187, align 8, !tbaa !137
  %189 = getelementptr inbounds i8, ptr %0, i64 %188
  %190 = and i64 %186, 1
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %184
  %193 = load ptr, ptr %189, align 8, !tbaa !79
  %194 = getelementptr i8, ptr %193, i64 %186
  %195 = getelementptr i8, ptr %194, i64 -1
  %196 = load ptr, ptr %195, align 8, !nosanitize !135
  br label %199

197:                                              ; preds = %184
  %198 = inttoptr i64 %186 to ptr
  br label %199

199:                                              ; preds = %192, %197
  %200 = phi ptr [ %196, %192 ], [ %198, %197 ]
  call void %200(ptr noundef nonnull align 8 dereferenceable(1709) %189, i16 noundef zeroext 62)
  call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  br label %201

201:                                              ; preds = %31, %199
  %202 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 10
  store i8 0, ptr %202, align 2, !tbaa !138
  ret void
}

declare void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(1912) %0) unnamed_addr #3 align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !131
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !131
  tail call void @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  ret void
}

declare void @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #8 align 2 !prof !139 {
  %4 = alloca %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1)
  br i1 %7, label %8, label %9, !prof !140

8:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %217

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1027XalanHTMLElementsProperties4findEPKt(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties") align 8 %4, ptr noundef %1)
  %10 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %11 = load ptr, ptr %4, align 8, !tbaa !141
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalElementProperties", ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !143
  %14 = and i32 %13, 8
  %15 = icmp ne i32 %14, 0
  %16 = and i32 %13, 16777216
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18, !prof !145

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 5
  store i8 1, ptr %19, align 8, !tbaa !130
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 1, ptr %5, align 1, !tbaa !132
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %34

21:                                               ; preds = %9
  %22 = and i32 %13, 8388608
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !145

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 5
  store i8 1, ptr %25, align 8, !tbaa !130
  br label %26

26:                                               ; preds = %24, %21
  %27 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !124
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !131
  %32 = getelementptr i8, ptr %29, i64 %31
  %33 = getelementptr i8, ptr %32, i64 -1
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 1 dereferenceable(1) %33)
  br label %34

34:                                               ; preds = %26, %18
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 10
  %36 = load i32, ptr %35, align 4, !tbaa !105
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 4, !tbaa !105
  %38 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %39 = load i8, ptr %38, align 1, !tbaa !146, !range !147, !noundef !135
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41, !prof !148

41:                                               ; preds = %34
  store i8 0, ptr %38, align 1, !tbaa !146
  br label %61

42:                                               ; preds = %34
  %43 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %44 = load i8, ptr %43, align 4, !tbaa !149, !range !147, !noundef !135
  %45 = icmp ne i8 %44, 0
  %46 = icmp sgt i32 %36, -1
  %47 = select i1 %45, i1 %46, i1 false, !prof !150
  %48 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 8
  %49 = load i8, ptr %48, align 1, !range !147
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %47, i1 %50, i1 false, !prof !150
  br i1 %51, label %52, label %61, !prof !151

52:                                               ; preds = %42
  %53 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 3
  %54 = load i8, ptr %53, align 8, !tbaa !83, !range !147, !noundef !135
  %55 = icmp eq i8 %54, 0
  %56 = or i1 %15, %55
  br i1 %56, label %57, label %61, !prof !152

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 1, ptr %58, align 1, !tbaa !129
  %59 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %60 = load i32, ptr %59, align 8, !tbaa !153
  call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %60)
  br label %61

61:                                               ; preds = %52, %42, %57, %41
  %62 = xor i1 %15, true
  %63 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 3
  %64 = zext i1 %62 to i8
  store i8 %64, ptr %63, align 8, !tbaa !83
  %65 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %66 = load ptr, ptr %4, align 8, !tbaa !141
  %67 = getelementptr inbounds %"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalElementProperties", ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !143
  %69 = lshr i32 %68, 8
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  store i8 %71, ptr %6, align 1, !tbaa !132
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  %72 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %73 = load i64, ptr %72, align 8, !tbaa !137
  %74 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !137
  %76 = getelementptr inbounds i8, ptr %0, i64 %75
  %77 = and i64 %73, 1
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %84, label %79, !prof !145

79:                                               ; preds = %61
  %80 = load ptr, ptr %76, align 8, !tbaa !79
  %81 = getelementptr i8, ptr %80, i64 %73
  %82 = getelementptr i8, ptr %81, i64 -1
  %83 = load ptr, ptr %82, align 8, !nosanitize !135
  br label %86

84:                                               ; preds = %61
  %85 = inttoptr i64 %73 to ptr
  br label %86

86:                                               ; preds = %79, %84
  %87 = phi ptr [ %83, %79 ], [ %85, %84 ]
  call void %87(ptr noundef nonnull align 8 dereferenceable(1709) %76, i16 noundef zeroext 60), !prof !154
  %88 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %89 = load i64, ptr %88, align 8, !tbaa !155
  %90 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !155
  %92 = getelementptr inbounds i8, ptr %0, i64 %91
  %93 = and i64 %89, 1
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %100, label %95, !prof !145

95:                                               ; preds = %86
  %96 = load ptr, ptr %92, align 8, !tbaa !79
  %97 = getelementptr i8, ptr %96, i64 %89
  %98 = getelementptr i8, ptr %97, i64 -1
  %99 = load ptr, ptr %98, align 8, !nosanitize !135
  br label %102

100:                                              ; preds = %86
  %101 = inttoptr i64 %89 to ptr
  br label %102

102:                                              ; preds = %95, %100
  %103 = phi ptr [ %99, %95 ], [ %101, %100 ]
  call void %103(ptr noundef nonnull align 8 dereferenceable(1709) %92, ptr noundef %1), !prof !156
  %104 = load ptr, ptr %2, align 8, !tbaa !79
  %105 = getelementptr inbounds ptr, ptr %104, i64 2
  %106 = load ptr, ptr %105, align 8
  %107 = call noundef i32 %106(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !157
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121, !prof !158

109:                                              ; preds = %121, %102
  call void @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %110 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  %111 = load i32, ptr %110, align 4, !tbaa !159
  %112 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %113 = load i32, ptr %112, align 8, !tbaa !153
  %114 = add nsw i32 %113, %111
  store i32 %114, ptr %112, align 8, !tbaa !153
  %115 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  store i8 0, ptr %115, align 1, !tbaa !160
  %116 = load ptr, ptr %4, align 8, !tbaa !141
  %117 = getelementptr inbounds %"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalElementProperties", ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !143
  %119 = and i32 %118, 4194304
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %211, label %136, !prof !145

121:                                              ; preds = %102, %121
  %122 = phi i32 [ %134, %121 ], [ 0, %102 ]
  %123 = load ptr, ptr %2, align 8, !tbaa !79
  %124 = getelementptr inbounds ptr, ptr %123, i64 3
  %125 = load ptr, ptr %124, align 8
  %126 = call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %122), !prof !161
  %127 = load ptr, ptr %2, align 8, !tbaa !79
  %128 = getelementptr inbounds ptr, ptr %127, i64 5
  %129 = load ptr, ptr %128, align 8
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %122), !prof !162
  %131 = load ptr, ptr %0, align 8, !tbaa !79
  %132 = getelementptr inbounds ptr, ptr %131, i64 25
  %133 = load ptr, ptr %132, align 8
  call void %133(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %126, ptr noundef %130, ptr noundef nonnull align 8 dereferenceable(8) %4), !prof !163
  %134 = add nuw i32 %122, 1
  %135 = icmp eq i32 %134, %107
  br i1 %135, label %109, label %121, !prof !164, !llvm.loop !165

136:                                              ; preds = %109
  call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %137 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 12
  %138 = load i8, ptr %137, align 8, !tbaa !106, !range !147, !noundef !135
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %211

140:                                              ; preds = %136
  %141 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %142 = load i8, ptr %141, align 4, !tbaa !149, !range !147, !noundef !135
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = load i32, ptr %112, align 8, !tbaa !153
  call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %145)
  br label %146

146:                                              ; preds = %144, %140
  %147 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %148 = load i64, ptr %147, align 8, !tbaa !134
  %149 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa !134
  %151 = getelementptr inbounds i8, ptr %0, i64 %150
  %152 = and i64 %148, 1
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %146
  %155 = load ptr, ptr %151, align 8, !tbaa !79
  %156 = getelementptr i8, ptr %155, i64 %148
  %157 = getelementptr i8, ptr %156, i64 -1
  %158 = load ptr, ptr %157, align 8, !nosanitize !135
  br label %161

159:                                              ; preds = %146
  %160 = inttoptr i64 %148 to ptr
  br label %161

161:                                              ; preds = %154, %159
  %162 = phi ptr [ %158, %154 ], [ %160, %159 ]
  call void %162(ptr noundef nonnull align 8 dereferenceable(1709) %151, ptr noundef nonnull @_ZN11xalanc_1_1015FormatterToHTML12s_metaStringE, i32 noundef 0, i32 noundef 60)
  %163 = load ptr, ptr %0, align 8, !tbaa !79
  %164 = getelementptr inbounds ptr, ptr %163, i64 18
  %165 = load ptr, ptr %164, align 8
  %166 = call noundef nonnull align 8 dereferenceable(36) ptr %165(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %167 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %168 = load i64, ptr %167, align 8, !tbaa !136
  %169 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  %170 = load i64, ptr %169, align 8, !tbaa !136
  %171 = getelementptr inbounds i8, ptr %0, i64 %170
  %172 = and i64 %168, 1
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %161
  %175 = load ptr, ptr %171, align 8, !tbaa !79
  %176 = getelementptr i8, ptr %175, i64 %168
  %177 = getelementptr i8, ptr %176, i64 -1
  %178 = load ptr, ptr %177, align 8, !nosanitize !135
  br label %181

179:                                              ; preds = %161
  %180 = inttoptr i64 %168 to ptr
  br label %181

181:                                              ; preds = %174, %179
  %182 = phi ptr [ %178, %174 ], [ %180, %179 ]
  call void %182(ptr noundef nonnull align 8 dereferenceable(1709) %171, ptr noundef nonnull align 8 dereferenceable(36) %166)
  %183 = load i64, ptr %72, align 8, !tbaa !137
  %184 = load i64, ptr %74, align 8, !tbaa !137
  %185 = getelementptr inbounds i8, ptr %0, i64 %184
  %186 = and i64 %183, 1
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %181
  %189 = load ptr, ptr %185, align 8, !tbaa !79
  %190 = getelementptr i8, ptr %189, i64 %183
  %191 = getelementptr i8, ptr %190, i64 -1
  %192 = load ptr, ptr %191, align 8, !nosanitize !135
  br label %195

193:                                              ; preds = %181
  %194 = inttoptr i64 %183 to ptr
  br label %195

195:                                              ; preds = %188, %193
  %196 = phi ptr [ %192, %188 ], [ %194, %193 ]
  call void %196(ptr noundef nonnull align 8 dereferenceable(1709) %185, i16 noundef zeroext 34)
  %197 = load i64, ptr %72, align 8, !tbaa !137
  %198 = load i64, ptr %74, align 8, !tbaa !137
  %199 = getelementptr inbounds i8, ptr %0, i64 %198
  %200 = and i64 %197, 1
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %195
  %203 = load ptr, ptr %199, align 8, !tbaa !79
  %204 = getelementptr i8, ptr %203, i64 %197
  %205 = getelementptr i8, ptr %204, i64 -1
  %206 = load ptr, ptr %205, align 8, !nosanitize !135
  br label %209

207:                                              ; preds = %195
  %208 = inttoptr i64 %197 to ptr
  br label %209

209:                                              ; preds = %202, %207
  %210 = phi ptr [ %206, %202 ], [ %208, %207 ]
  call void %210(ptr noundef nonnull align 8 dereferenceable(1709) %199, i16 noundef zeroext 62)
  br label %211

211:                                              ; preds = %136, %209, %109
  %212 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 8
  %213 = load i8, ptr %212, align 1, !tbaa !103, !range !147, !noundef !135
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %216, label %215, !prof !166

215:                                              ; preds = %211
  store i8 0, ptr %212, align 1, !tbaa !103
  br label %216

216:                                              ; preds = %215, %211
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %217

217:                                              ; preds = %216, %8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !139 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterListener", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7, !prof !140

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %11, %7 ], [ %1, %2 ]
  %9 = load i16, ptr %8, align 2, !tbaa !109
  %10 = icmp eq i16 %9, 0
  %11 = getelementptr inbounds i16, ptr %8, i64 1
  br i1 %10, label %12, label %7, !prof !168, !llvm.loop !169

12:                                               ; preds = %7
  %13 = ptrtoint ptr %8 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %21, %12
  %19 = phi ptr [ %1, %12 ], [ %22, %21 ]
  %20 = load i16, ptr %19, align 2, !tbaa !109
  switch i16 %20, label %21 [
    i16 58, label %23
    i16 0, label %23
  ], !prof !170

21:                                               ; preds = %18
  %22 = getelementptr inbounds i16, ptr %19, i64 1
  br label %18, !llvm.loop !171

23:                                               ; preds = %18, %18
  %24 = ptrtoint ptr %19 to i64
  %25 = sub i64 %24, %14
  %26 = lshr exact i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = icmp ult i32 %27, %17
  br i1 %28, label %29, label %32, !prof !140

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %31 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %30, i32 noundef 0, i32 noundef %27)
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi ptr [ %30, %29 ], [ @_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE, %23 ]
  %34 = load ptr, ptr %4, align 8, !tbaa !167
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(36) %33), !prof !172
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40, !prof !145

40:                                               ; preds = %32
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %38, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !128
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 1, ptr %3, align 1, !tbaa !132
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %46

46:                                               ; preds = %44, %40, %32
  %47 = phi i1 [ true, %44 ], [ false, %40 ], [ false, %32 ]
  %48 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !127
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %54, label %51, !prof !145

51:                                               ; preds = %46
  %52 = load i64, ptr %48, align 8, !tbaa !127
  %53 = sub i64 %52, %49
  store i64 %53, ptr %48, align 8, !tbaa !127
  br label %54

54:                                               ; preds = %51, %46
  %55 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 1
  store i32 0, ptr %55, align 8, !tbaa !128
  br label %56

56:                                               ; preds = %54, %2
  %57 = phi i1 [ %47, %54 ], [ false, %2 ]
  ret i1 %57
}

declare void @_ZN11xalanc_1_1014FormatterToXML12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1027XalanHTMLElementsProperties4findEPKt(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties") align 8, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709), i32 noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv(ptr noundef nonnull align 8 dereferenceable(1709)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1) unnamed_addr #8 align 2 !prof !139 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !131
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %15, label %6, !prof !145

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = getelementptr i8, ptr %8, i64 %4
  %10 = getelementptr i8, ptr %9, i64 -1
  %11 = load i8, ptr %10, align 1, !tbaa !132, !range !147, !noundef !135
  %12 = icmp eq i8 %11, 0
  %13 = add i64 %4, -1
  store i64 %13, ptr %3, align 8, !tbaa !131
  br i1 %12, label %15, label %14

14:                                               ; preds = %6
  tail call void @_ZN11xalanc_1_1014FormatterToXML10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1)
  br label %233

15:                                               ; preds = %2, %6
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 21
  %17 = load i32, ptr %16, align 4, !tbaa !159
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %19 = load i32, ptr %18, align 8, !tbaa !153
  %20 = sub nsw i32 %19, %17
  store i32 %20, ptr %18, align 8, !tbaa !153
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !131
  %24 = add i64 %23, -1
  store i64 %24, ptr %22, align 8, !tbaa !131
  %25 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !131
  %27 = add i64 %26, -1
  store i64 %27, ptr %25, align 8, !tbaa !131
  %28 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !119
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 13, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !133
  %32 = getelementptr %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %29, i64 %31
  %33 = getelementptr %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !tbaa !141
  %35 = add i64 %31, -1
  store i64 %35, ptr %30, align 8, !tbaa !133
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanHTMLElementsProperties::InternalElementProperties", ptr %34, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !143
  %38 = and i32 %37, 8
  %39 = icmp ne i32 %38, 0
  %40 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %41 = load i8, ptr %40, align 1, !tbaa !146, !range !147, !noundef !135
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43, !prof !173

43:                                               ; preds = %15
  store i8 0, ptr %40, align 1, !tbaa !146
  br label %55

44:                                               ; preds = %15
  %45 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %46 = load i8, ptr %45, align 4, !tbaa !149, !range !147, !noundef !135
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %55, label %48, !prof !174

48:                                               ; preds = %44
  %49 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 3
  %50 = load i8, ptr %49, align 8, !tbaa !83, !range !147, !noundef !135
  %51 = icmp eq i8 %50, 0
  %52 = or i1 %39, %51
  br i1 %52, label %53, label %55, !prof !175

53:                                               ; preds = %48
  %54 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  store i8 1, ptr %54, align 1, !tbaa !129
  br label %55

55:                                               ; preds = %48, %44, %53, %43
  %56 = phi i1 [ false, %43 ], [ true, %53 ], [ false, %44 ], [ false, %48 ]
  %57 = xor i1 %39, true
  %58 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 3
  %59 = zext i1 %57 to i8
  store i8 %59, ptr %58, align 8, !tbaa !83
  br i1 %21, label %60, label %128, !prof !176

60:                                               ; preds = %55
  br i1 %56, label %61, label %63, !prof !177

61:                                               ; preds = %60
  %62 = load i32, ptr %18, align 8, !tbaa !153
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %62)
  br label %63

63:                                               ; preds = %61, %60
  %64 = load i32, ptr %36, align 4, !tbaa !143
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %216, !prof !178

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %69 = load i64, ptr %68, align 8, !tbaa !137
  %70 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !137
  %72 = getelementptr inbounds i8, ptr %0, i64 %71
  %73 = and i64 %69, 1
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %80, label %75, !prof !178

75:                                               ; preds = %67
  %76 = load ptr, ptr %72, align 8, !tbaa !79
  %77 = getelementptr i8, ptr %76, i64 %69
  %78 = getelementptr i8, ptr %77, i64 -1
  %79 = load ptr, ptr %78, align 8, !nosanitize !135
  br label %82

80:                                               ; preds = %67
  %81 = inttoptr i64 %69 to ptr
  br label %82

82:                                               ; preds = %75, %80
  %83 = phi ptr [ %79, %75 ], [ %81, %80 ]
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(1709) %72, i16 noundef zeroext 60), !prof !179
  %84 = load i64, ptr %68, align 8, !tbaa !137
  %85 = load i64, ptr %70, align 8, !tbaa !137
  %86 = getelementptr inbounds i8, ptr %0, i64 %85
  %87 = and i64 %84, 1
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %94, label %89, !prof !178

89:                                               ; preds = %82
  %90 = load ptr, ptr %86, align 8, !tbaa !79
  %91 = getelementptr i8, ptr %90, i64 %84
  %92 = getelementptr i8, ptr %91, i64 -1
  %93 = load ptr, ptr %92, align 8, !nosanitize !135
  br label %96

94:                                               ; preds = %82
  %95 = inttoptr i64 %84 to ptr
  br label %96

96:                                               ; preds = %89, %94
  %97 = phi ptr [ %93, %89 ], [ %95, %94 ]
  tail call void %97(ptr noundef nonnull align 8 dereferenceable(1709) %86, i16 noundef zeroext 47), !prof !179
  %98 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %99 = load i64, ptr %98, align 8, !tbaa !155
  %100 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !155
  %102 = getelementptr inbounds i8, ptr %0, i64 %101
  %103 = and i64 %99, 1
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %110, label %105, !prof !178

105:                                              ; preds = %96
  %106 = load ptr, ptr %102, align 8, !tbaa !79
  %107 = getelementptr i8, ptr %106, i64 %99
  %108 = getelementptr i8, ptr %107, i64 -1
  %109 = load ptr, ptr %108, align 8, !nosanitize !135
  br label %112

110:                                              ; preds = %96
  %111 = inttoptr i64 %99 to ptr
  br label %112

112:                                              ; preds = %105, %110
  %113 = phi ptr [ %109, %105 ], [ %111, %110 ]
  tail call void %113(ptr noundef nonnull align 8 dereferenceable(1709) %102, ptr noundef %1), !prof !180
  %114 = load i64, ptr %68, align 8, !tbaa !137
  %115 = load i64, ptr %70, align 8, !tbaa !137
  %116 = getelementptr inbounds i8, ptr %0, i64 %115
  %117 = and i64 %114, 1
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %124, label %119, !prof !178

119:                                              ; preds = %112
  %120 = load ptr, ptr %116, align 8, !tbaa !79
  %121 = getelementptr i8, ptr %120, i64 %114
  %122 = getelementptr i8, ptr %121, i64 -1
  %123 = load ptr, ptr %122, align 8, !nosanitize !135
  br label %126

124:                                              ; preds = %112
  %125 = inttoptr i64 %114 to ptr
  br label %126

126:                                              ; preds = %119, %124
  %127 = phi ptr [ %123, %119 ], [ %125, %124 ]
  tail call void %127(ptr noundef nonnull align 8 dereferenceable(1709) %116, i16 noundef zeroext 62), !prof !179
  br label %216

128:                                              ; preds = %55
  %129 = and i32 %37, 2
  %130 = icmp eq i32 %129, 0
  %131 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %132 = load i64, ptr %131, align 8, !tbaa !137
  %133 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !137
  %135 = getelementptr inbounds i8, ptr %0, i64 %134
  %136 = and i64 %132, 1
  %137 = icmp eq i64 %136, 0
  br i1 %130, label %138, label %206, !prof !181

138:                                              ; preds = %128
  br i1 %137, label %144, label %139, !prof !182

139:                                              ; preds = %138
  %140 = load ptr, ptr %135, align 8, !tbaa !79
  %141 = getelementptr i8, ptr %140, i64 %132
  %142 = getelementptr i8, ptr %141, i64 -1
  %143 = load ptr, ptr %142, align 8, !nosanitize !135
  br label %146

144:                                              ; preds = %138
  %145 = inttoptr i64 %132 to ptr
  br label %146

146:                                              ; preds = %139, %144
  %147 = phi ptr [ %143, %139 ], [ %145, %144 ]
  tail call void %147(ptr noundef nonnull align 8 dereferenceable(1709) %135, i16 noundef zeroext 62), !prof !183
  %148 = load i64, ptr %131, align 8, !tbaa !137
  %149 = load i64, ptr %133, align 8, !tbaa !137
  %150 = getelementptr inbounds i8, ptr %0, i64 %149
  %151 = and i64 %148, 1
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %158, label %153, !prof !182

153:                                              ; preds = %146
  %154 = load ptr, ptr %150, align 8, !tbaa !79
  %155 = getelementptr i8, ptr %154, i64 %148
  %156 = getelementptr i8, ptr %155, i64 -1
  %157 = load ptr, ptr %156, align 8, !nosanitize !135
  br label %160

158:                                              ; preds = %146
  %159 = inttoptr i64 %148 to ptr
  br label %160

160:                                              ; preds = %153, %158
  %161 = phi ptr [ %157, %153 ], [ %159, %158 ]
  tail call void %161(ptr noundef nonnull align 8 dereferenceable(1709) %150, i16 noundef zeroext 60), !prof !183
  %162 = load i64, ptr %131, align 8, !tbaa !137
  %163 = load i64, ptr %133, align 8, !tbaa !137
  %164 = getelementptr inbounds i8, ptr %0, i64 %163
  %165 = and i64 %162, 1
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %172, label %167, !prof !182

167:                                              ; preds = %160
  %168 = load ptr, ptr %164, align 8, !tbaa !79
  %169 = getelementptr i8, ptr %168, i64 %162
  %170 = getelementptr i8, ptr %169, i64 -1
  %171 = load ptr, ptr %170, align 8, !nosanitize !135
  br label %174

172:                                              ; preds = %160
  %173 = inttoptr i64 %162 to ptr
  br label %174

174:                                              ; preds = %167, %172
  %175 = phi ptr [ %171, %167 ], [ %173, %172 ]
  tail call void %175(ptr noundef nonnull align 8 dereferenceable(1709) %164, i16 noundef zeroext 47), !prof !183
  %176 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %177 = load i64, ptr %176, align 8, !tbaa !155
  %178 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %179 = load i64, ptr %178, align 8, !tbaa !155
  %180 = getelementptr inbounds i8, ptr %0, i64 %179
  %181 = and i64 %177, 1
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %188, label %183, !prof !182

183:                                              ; preds = %174
  %184 = load ptr, ptr %180, align 8, !tbaa !79
  %185 = getelementptr i8, ptr %184, i64 %177
  %186 = getelementptr i8, ptr %185, i64 -1
  %187 = load ptr, ptr %186, align 8, !nosanitize !135
  br label %190

188:                                              ; preds = %174
  %189 = inttoptr i64 %177 to ptr
  br label %190

190:                                              ; preds = %183, %188
  %191 = phi ptr [ %187, %183 ], [ %189, %188 ]
  tail call void %191(ptr noundef nonnull align 8 dereferenceable(1709) %180, ptr noundef %1), !prof !184
  %192 = load i64, ptr %131, align 8, !tbaa !137
  %193 = load i64, ptr %133, align 8, !tbaa !137
  %194 = getelementptr inbounds i8, ptr %0, i64 %193
  %195 = and i64 %192, 1
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %202, label %197, !prof !182

197:                                              ; preds = %190
  %198 = load ptr, ptr %194, align 8, !tbaa !79
  %199 = getelementptr i8, ptr %198, i64 %192
  %200 = getelementptr i8, ptr %199, i64 -1
  %201 = load ptr, ptr %200, align 8, !nosanitize !135
  br label %204

202:                                              ; preds = %190
  %203 = inttoptr i64 %192 to ptr
  br label %204

204:                                              ; preds = %197, %202
  %205 = phi ptr [ %201, %197 ], [ %203, %202 ]
  tail call void %205(ptr noundef nonnull align 8 dereferenceable(1709) %194, i16 noundef zeroext 62), !prof !183
  br label %216

206:                                              ; preds = %128
  br i1 %137, label %212, label %207, !prof !185

207:                                              ; preds = %206
  %208 = load ptr, ptr %135, align 8, !tbaa !79
  %209 = getelementptr i8, ptr %208, i64 %132
  %210 = getelementptr i8, ptr %209, i64 -1
  %211 = load ptr, ptr %210, align 8, !nosanitize !135
  br label %214

212:                                              ; preds = %206
  %213 = inttoptr i64 %132 to ptr
  br label %214

214:                                              ; preds = %207, %212
  %215 = phi ptr [ %211, %207 ], [ %213, %212 ]
  tail call void %215(ptr noundef nonnull align 8 dereferenceable(1709) %135, i16 noundef zeroext 62), !prof !186
  br label %216

216:                                              ; preds = %204, %214, %63, %126
  %217 = load i32, ptr %36, align 4, !tbaa !143
  %218 = and i32 %217, 2097152
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %221, label %220, !prof !145

220:                                              ; preds = %216
  store i8 1, ptr %40, align 1, !tbaa !146
  br label %221

221:                                              ; preds = %220, %216
  br i1 %21, label %222, label %228, !prof !176

222:                                              ; preds = %221
  %223 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 22, i32 1
  %224 = load i64, ptr %223, align 8, !tbaa !131
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %228, label %226, !prof !187

226:                                              ; preds = %222
  %227 = add i64 %224, -1
  store i64 %227, ptr %223, align 8, !tbaa !131
  br label %228

228:                                              ; preds = %222, %226, %221
  %229 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  store i8 0, ptr %229, align 1, !tbaa !160
  %230 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 10
  %231 = load i32, ptr %230, align 4, !tbaa !105
  %232 = add nsw i32 %231, -1
  store i32 %232, ptr %230, align 4, !tbaa !105
  br label %233

233:                                              ; preds = %228, %14
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015FormatterToHTML15popHasNamespaceEv(ptr nocapture noundef nonnull align 8 dereferenceable(1912) %0) local_unnamed_addr #9 align 2 !prof !77 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !131
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 11, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = getelementptr i8, ptr %7, i64 %3
  %9 = getelementptr i8, ptr %8, i64 -1
  %10 = load i8, ptr %9, align 1, !tbaa !132, !range !147, !noundef !135
  %11 = icmp ne i8 %10, 0
  %12 = add i64 %3, -1
  store i64 %12, ptr %2, align 8, !tbaa !131
  br label %13

13:                                               ; preds = %1, %5
  %14 = phi i1 [ %11, %5 ], [ false, %1 ]
  ret i1 %14
}

declare void @_ZN11xalanc_1_1014FormatterToXML10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv(ptr noundef nonnull align 8 dereferenceable(1709)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #8 align 2 !prof !188 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %52, label %5, !prof !189

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 14
  %7 = load i8, ptr %6, align 2, !tbaa !190, !range !147, !noundef !135
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9, !prof !191

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !79
  %11 = getelementptr inbounds ptr, ptr %10, i64 13
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2)
  br label %52

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 13
  %15 = load i8, ptr %14, align 1, !tbaa !192, !range !147, !noundef !135
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17, !prof !191

17:                                               ; preds = %13
  store i8 0, ptr %14, align 1, !tbaa !192
  %18 = load ptr, ptr %0, align 8, !tbaa !79
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2)
  br label %52

21:                                               ; preds = %13
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !124
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 6, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !131
  %26 = getelementptr i8, ptr %23, i64 %25
  %27 = getelementptr i8, ptr %26, i64 -1
  %28 = load i8, ptr %27, align 1, !tbaa !132, !range !147, !noundef !135
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30, !prof !191

30:                                               ; preds = %21
  %31 = load ptr, ptr %0, align 8, !tbaa !79
  %32 = getelementptr inbounds ptr, ptr %31, i64 11
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2)
  br label %52

34:                                               ; preds = %21
  %35 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !131
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %50, label %38, !prof !189

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 4, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !124
  %41 = getelementptr i8, ptr %40, i64 %36
  %42 = getelementptr i8, ptr %41, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !132, !range !147, !noundef !135
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %50, label %45, !prof !191

45:                                               ; preds = %38
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %46 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %46, align 1, !tbaa !146
  %47 = load ptr, ptr %0, align 8, !tbaa !79
  %48 = getelementptr inbounds ptr, ptr %47, i64 22
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, i1 noundef zeroext false)
  br label %52

50:                                               ; preds = %38, %34
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %51 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %51, align 1, !tbaa !146
  tail call void @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2)
  br label %52

52:                                               ; preds = %9, %30, %50, %45, %17, %3
  %53 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %54 = load i8, ptr %53, align 1, !tbaa !160, !range !147, !noundef !135
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %57, !prof !193

56:                                               ; preds = %52
  store i8 1, ptr %53, align 1, !tbaa !160
  br label %57

57:                                               ; preds = %56, %52
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 !prof !188 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %123, label %5, !prof !194

5:                                                ; preds = %3, %119
  %6 = phi i32 [ %121, %119 ], [ 0, %3 ]
  %7 = phi i32 [ %120, %119 ], [ 0, %3 ]
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !109
  %11 = icmp ult i16 %10, 256
  br i1 %11, label %12, label %19, !prof !195

12:                                               ; preds = %5
  %13 = zext nneg i16 %10 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 5, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !109
  %16 = icmp eq i16 %15, 83
  br i1 %16, label %19, label %17, !prof !196

17:                                               ; preds = %12
  %18 = add i32 %6, 1
  br label %119

19:                                               ; preds = %12, %5
  %20 = icmp eq i16 %10, 10
  %21 = sub i32 %6, %7
  br i1 %20, label %22, label %40, !prof !197

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %25 = load i64, ptr %23, align 8, !tbaa !134
  %26 = load i64, ptr %24, align 8, !tbaa !134
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = and i64 %25, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30, !prof !198

30:                                               ; preds = %22
  %31 = load ptr, ptr %27, align 8, !tbaa !79
  %32 = getelementptr i8, ptr %31, i64 %25
  %33 = getelementptr i8, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !nosanitize !135
  br label %37

35:                                               ; preds = %22
  %36 = inttoptr i64 %25 to ptr
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %34, %30 ], [ %36, %35 ]
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(1709) %27, ptr noundef %1, i32 noundef %7, i32 noundef %21), !prof !199
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %39 = add i32 %6, 1
  br label %119

40:                                               ; preds = %19
  %41 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %42 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %43 = load i64, ptr %41, align 8, !tbaa !134
  %44 = load i64, ptr %42, align 8, !tbaa !134
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  %46 = and i64 %43, 1
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %53, label %48, !prof !82

48:                                               ; preds = %40
  %49 = load ptr, ptr %45, align 8, !tbaa !79
  %50 = getelementptr i8, ptr %49, i64 %43
  %51 = getelementptr i8, ptr %50, i64 -1
  %52 = load ptr, ptr %51, align 8, !nosanitize !135
  br label %55

53:                                               ; preds = %40
  %54 = inttoptr i64 %43 to ptr
  br label %55

55:                                               ; preds = %48, %53
  %56 = phi ptr [ %52, %48 ], [ %54, %53 ]
  tail call void %56(ptr noundef nonnull align 8 dereferenceable(1709) %45, ptr noundef %1, i32 noundef %7, i32 noundef %21), !prof !200
  %57 = load ptr, ptr %0, align 8, !tbaa !79
  %58 = getelementptr inbounds ptr, ptr %57, i64 21
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef zeroext i1 %59(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %10, i1 noundef zeroext true), !prof !201
  br i1 %60, label %116, label %61, !prof !82

61:                                               ; preds = %55
  %62 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 9
  %63 = load i8, ptr %62, align 2, !tbaa !104, !range !147, !noundef !135
  %64 = icmp ne i8 %63, 0
  %65 = and i16 %10, -1024
  %66 = icmp eq i16 %65, -10240
  %67 = and i1 %66, %64
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = add i32 %6, 1
  %70 = icmp ult i32 %69, %2
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %73 = load ptr, ptr %72, align 8, !tbaa !202
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %10, ptr noundef nonnull align 8 dereferenceable(8) %73)
  br label %87

74:                                               ; preds = %68
  %75 = zext i32 %69 to i64
  %76 = getelementptr inbounds i16, ptr %1, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !109
  %78 = and i16 %77, -1024
  %79 = icmp eq i16 %78, -9216
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %82 = load ptr, ptr %81, align 8, !tbaa !202
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %10, i16 noundef zeroext %77, ptr noundef nonnull align 8 dereferenceable(8) %82)
  br label %83

83:                                               ; preds = %74, %80
  %84 = shl i16 %10, 10
  %85 = add i16 %84, 9216
  %86 = add i16 %85, %77
  br label %87

87:                                               ; preds = %83, %71
  %88 = phi i32 [ %6, %71 ], [ %69, %83 ]
  %89 = phi i16 [ 0, %71 ], [ %86, %83 ]
  %90 = zext i16 %89 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %90)
  br label %116

91:                                               ; preds = %61
  %92 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %93 = icmp ult i16 %10, 127
  %94 = load i16, ptr %92, align 8
  %95 = icmp ugt i16 %10, %94
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %114, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %99 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %100 = load i64, ptr %98, align 8, !tbaa !137
  %101 = load i64, ptr %99, align 8, !tbaa !137
  %102 = getelementptr inbounds i8, ptr %0, i64 %101
  %103 = and i64 %100, 1
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %97
  %106 = load ptr, ptr %102, align 8, !tbaa !79
  %107 = getelementptr i8, ptr %106, i64 %100
  %108 = getelementptr i8, ptr %107, i64 -1
  %109 = load ptr, ptr %108, align 8, !nosanitize !135
  br label %112

110:                                              ; preds = %97
  %111 = inttoptr i64 %100 to ptr
  br label %112

112:                                              ; preds = %105, %110
  %113 = phi ptr [ %109, %105 ], [ %111, %110 ]
  tail call void %113(ptr noundef nonnull align 8 dereferenceable(1709) %102, i16 noundef zeroext %10)
  br label %116

114:                                              ; preds = %91
  %115 = zext i16 %10 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %115)
  br label %116

116:                                              ; preds = %87, %114, %112, %55
  %117 = phi i32 [ %88, %87 ], [ %6, %112 ], [ %6, %114 ], [ %6, %55 ]
  %118 = add i32 %117, 1
  br label %119

119:                                              ; preds = %37, %116, %17
  %120 = phi i32 [ %7, %17 ], [ %39, %37 ], [ %118, %116 ]
  %121 = phi i32 [ %18, %17 ], [ %39, %37 ], [ %118, %116 ]
  %122 = icmp ult i32 %121, %2
  br i1 %122, label %5, label %123, !prof !203, !llvm.loop !204

123:                                              ; preds = %119, %3
  %124 = phi i32 [ 0, %3 ], [ %120, %119 ]
  %125 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %126 = load i64, ptr %125, align 8, !tbaa !134
  %127 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %128 = load i64, ptr %127, align 8, !tbaa !134
  %129 = getelementptr inbounds i8, ptr %0, i64 %128
  %130 = and i64 %126, 1
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %137, label %132, !prof !191

132:                                              ; preds = %123
  %133 = load ptr, ptr %129, align 8, !tbaa !79
  %134 = getelementptr i8, ptr %133, i64 %126
  %135 = getelementptr i8, ptr %134, i64 -1
  %136 = load ptr, ptr %135, align 8, !nosanitize !135
  br label %139

137:                                              ; preds = %123
  %138 = inttoptr i64 %126 to ptr
  br label %139

139:                                              ; preds = %132, %137
  %140 = phi ptr [ %136, %132 ], [ %138, %137 ]
  %141 = sub i32 %2, %124
  tail call void %140(ptr noundef nonnull align 8 dereferenceable(1709) %129, ptr noundef %1, i32 noundef %124, i32 noundef %141), !prof !205
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015FormatterToHTML18accumDefaultEntityEtb(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 !prof !78 {
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb(ptr noundef nonnull align 8 dereferenceable(1709) %0, i16 noundef zeroext %1, i1 noundef zeroext %2)
  br i1 %4, label %31, label %5, !prof !82

5:                                                ; preds = %3, %27
  %6 = phi ptr [ %28, %27 ], [ @_ZN11xalanc_1_1015FormatterToHTML10s_entitiesE, %3 ]
  %7 = phi ptr [ %29, %27 ], [ getelementptr inbounds ([195 x %"struct.xalanc_1_10::FormatterToHTML::Entity"], ptr @_ZN11xalanc_1_1015FormatterToHTML10s_entitiesE, i64 0, i64 194, i32 0), %3 ]
  %8 = icmp ule ptr %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %6 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv i64 %12, 56
  %14 = getelementptr inbounds %"struct.xalanc_1_10::FormatterToHTML::Entity", ptr %6, i64 %13
  %15 = load i16, ptr %14, align 4, !tbaa !206
  %16 = icmp ugt i16 %15, %1
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = getelementptr inbounds %"struct.xalanc_1_10::FormatterToHTML::Entity", ptr %14, i64 -1
  br label %27

19:                                               ; preds = %9
  %20 = icmp ult i16 %15, %1
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"struct.xalanc_1_10::FormatterToHTML::Entity", ptr %14, i64 1
  br label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"struct.xalanc_1_10::FormatterToHTML::Entity", ptr %6, i64 %13, i32 2
  %25 = getelementptr inbounds %"struct.xalanc_1_10::FormatterToHTML::Entity", ptr %6, i64 %13, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !208
  tail call void @_ZN11xalanc_1_1015FormatterToHTML20copyEntityIntoBufferEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef nonnull %24, i32 noundef %26)
  br label %27

27:                                               ; preds = %17, %21, %23
  %28 = phi ptr [ %6, %23 ], [ %6, %17 ], [ %22, %21 ]
  %29 = phi ptr [ %7, %23 ], [ %18, %17 ], [ %7, %21 ]
  %30 = phi i1 [ false, %23 ], [ true, %17 ], [ true, %21 ]
  br i1 %30, label %5, label %31, !llvm.loop !209

31:                                               ; preds = %27, %5, %3
  %32 = phi i1 [ true, %3 ], [ %8, %5 ], [ %8, %27 ]
  ret i1 %32
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb(ptr noundef nonnull align 8 dereferenceable(1709), i16 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML20copyEntityIntoBufferEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !77 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %5 = load i64, ptr %4, align 8, !tbaa !210
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !210
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = and i64 %5, 1
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %8, align 8, !tbaa !79
  %13 = getelementptr i8, ptr %12, i64 %5
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !nosanitize !135
  br label %18

16:                                               ; preds = %3
  %17 = inttoptr i64 %5 to ptr
  br label %18

18:                                               ; preds = %11, %16
  %19 = phi ptr [ %15, %11 ], [ %17, %16 ]
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(1709) %8, i16 noundef zeroext 38)
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41
  %21 = load i64, ptr %20, align 8, !tbaa !211
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !211
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = and i64 %21, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load ptr, ptr %24, align 8, !tbaa !79
  %29 = getelementptr i8, ptr %28, i64 %21
  %30 = getelementptr i8, ptr %29, i64 -1
  %31 = load ptr, ptr %30, align 8, !nosanitize !135
  br label %34

32:                                               ; preds = %18
  %33 = inttoptr i64 %21 to ptr
  br label %34

34:                                               ; preds = %27, %32
  %35 = phi ptr [ %31, %27 ], [ %33, %32 ]
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(1709) %24, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  %36 = load i64, ptr %4, align 8, !tbaa !210
  %37 = load i64, ptr %6, align 8, !tbaa !210
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = and i64 %36, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %38, align 8, !tbaa !79
  %43 = getelementptr i8, ptr %42, i64 %36
  %44 = getelementptr i8, ptr %43, i64 -1
  %45 = load ptr, ptr %44, align 8, !nosanitize !135
  br label %48

46:                                               ; preds = %34
  %47 = inttoptr i64 %36 to ptr
  br label %48

48:                                               ; preds = %41, %46
  %49 = phi ptr [ %45, %41 ], [ %47, %46 ]
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(1709) %38, i16 noundef zeroext 59)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML15entityReferenceEPKt(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !77 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %4 = load i64, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !137
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !79
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !135
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, i16 noundef zeroext 38)
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %20 = load i64, ptr %19, align 8, !tbaa !155
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !155
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load ptr, ptr %23, align 8, !tbaa !79
  %28 = getelementptr i8, ptr %27, i64 %20
  %29 = getelementptr i8, ptr %28, i64 -1
  %30 = load ptr, ptr %29, align 8, !nosanitize !135
  br label %33

31:                                               ; preds = %17
  %32 = inttoptr i64 %20 to ptr
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi ptr [ %30, %26 ], [ %32, %31 ]
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(1709) %23, ptr noundef %1)
  %35 = load i64, ptr %3, align 8, !tbaa !137
  %36 = load i64, ptr %5, align 8, !tbaa !137
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = and i64 %35, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %37, align 8, !tbaa !79
  %42 = getelementptr i8, ptr %41, i64 %35
  %43 = getelementptr i8, ptr %42, i64 -1
  %44 = load ptr, ptr %43, align 8, !nosanitize !135
  br label %47

45:                                               ; preds = %33
  %46 = inttoptr i64 %35 to ptr
  br label %47

47:                                               ; preds = %40, %45
  %48 = phi ptr [ %44, %40 ], [ %46, %45 ]
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(1709) %37, i16 noundef zeroext 59)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 !prof !77 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !130, !range !147, !noundef !135
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %8 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %8, align 1, !tbaa !146
  %9 = load ptr, ptr %0, align 8, !tbaa !79
  %10 = getelementptr inbounds ptr, ptr %9, i64 22
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, i1 noundef zeroext true)
  br label %35

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 12
  %14 = load i8, ptr %13, align 8, !tbaa !212, !range !147, !noundef !135
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  store i8 1, ptr %17, align 1, !tbaa !146
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %19 = load i64, ptr %18, align 8, !tbaa !134
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !134
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = and i64 %19, 1
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr %22, align 8, !tbaa !79
  %27 = getelementptr i8, ptr %26, i64 %19
  %28 = getelementptr i8, ptr %27, i64 -1
  %29 = load ptr, ptr %28, align 8, !nosanitize !135
  br label %32

30:                                               ; preds = %16
  %31 = inttoptr i64 %19 to ptr
  br label %32

32:                                               ; preds = %25, %30
  %33 = phi ptr [ %29, %25 ], [ %31, %30 ]
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(1709) %22, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  br label %35

34:                                               ; preds = %12
  tail call void @_ZN11xalanc_1_1014FormatterToXML5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(1709) %0, ptr noundef %1, i32 noundef %2)
  br label %35

35:                                               ; preds = %32, %34, %7
  ret void
}

declare void @_ZN11xalanc_1_1014FormatterToXML5cdataEPKtj(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !77 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %2, %3 ], [ %8, %4 ]
  %6 = load i16, ptr %5, align 2, !tbaa !109
  %7 = icmp eq i16 %6, 0
  %8 = getelementptr inbounds i16, ptr %5, i64 1
  br i1 %7, label %9, label %4, !llvm.loop !169

9:                                                ; preds = %4
  %10 = ptrtoint ptr %5 to i64
  %11 = ptrtoint ptr %2 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 1
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi ptr [ %1, %9 ], [ %18, %14 ]
  %16 = load i16, ptr %15, align 2, !tbaa !109
  %17 = icmp eq i16 %16, 0
  %18 = getelementptr inbounds i16, ptr %15, i64 1
  br i1 %17, label %19, label %14, !llvm.loop !169

19:                                               ; preds = %14
  %20 = trunc i64 %13 to i32
  %21 = ptrtoint ptr %15 to i64
  %22 = ptrtoint ptr %1 to i64
  %23 = sub i64 %21, %22
  %24 = lshr exact i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %1, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener10s_piTargetE, i32 noundef %25)
  %29 = icmp eq i32 %20, 3
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %2, ptr noundef nonnull @_ZN11xalanc_1_1017FormatterListener8s_piDataE, i32 noundef %20)
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 13
  br label %150

35:                                               ; preds = %19, %31, %27
  tail call void @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  %36 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 8
  %37 = load i8, ptr %36, align 4, !tbaa !149, !range !147, !noundef !135
  %38 = icmp ne i8 %37, 0
  %39 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 7
  %40 = load i8, ptr %39, align 1, !range !147
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %38, i1 %41, i1 false
  %43 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 11
  %44 = load i8, ptr %43, align 1, !range !147
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %42, i1 %45, i1 false
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 20
  %49 = load i32, ptr %48, align 8, !tbaa !153
  tail call void @_ZN11xalanc_1_1014FormatterToXML6indentEi(ptr noundef nonnull align 8 dereferenceable(1709) %0, i32 noundef %49)
  br label %50

50:                                               ; preds = %35, %47
  %51 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %52 = load i64, ptr %51, align 8, !tbaa !137
  %53 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !137
  %55 = getelementptr inbounds i8, ptr %0, i64 %54
  %56 = and i64 %52, 1
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %55, align 8, !tbaa !79
  %60 = getelementptr i8, ptr %59, i64 %52
  %61 = getelementptr i8, ptr %60, i64 -1
  %62 = load ptr, ptr %61, align 8, !nosanitize !135
  br label %65

63:                                               ; preds = %50
  %64 = inttoptr i64 %52 to ptr
  br label %65

65:                                               ; preds = %58, %63
  %66 = phi ptr [ %62, %58 ], [ %64, %63 ]
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(1709) %55, i16 noundef zeroext 60)
  %67 = load i64, ptr %51, align 8, !tbaa !137
  %68 = load i64, ptr %53, align 8, !tbaa !137
  %69 = getelementptr inbounds i8, ptr %0, i64 %68
  %70 = and i64 %67, 1
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr %69, align 8, !tbaa !79
  %74 = getelementptr i8, ptr %73, i64 %67
  %75 = getelementptr i8, ptr %74, i64 -1
  %76 = load ptr, ptr %75, align 8, !nosanitize !135
  br label %79

77:                                               ; preds = %65
  %78 = inttoptr i64 %67 to ptr
  br label %79

79:                                               ; preds = %72, %77
  %80 = phi ptr [ %76, %72 ], [ %78, %77 ]
  tail call void %80(ptr noundef nonnull align 8 dereferenceable(1709) %69, i16 noundef zeroext 63)
  %81 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %82 = load i64, ptr %81, align 8, !tbaa !155
  %83 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !155
  %85 = getelementptr inbounds i8, ptr %0, i64 %84
  %86 = and i64 %82, 1
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %79
  %89 = load ptr, ptr %85, align 8, !tbaa !79
  %90 = getelementptr i8, ptr %89, i64 %82
  %91 = getelementptr i8, ptr %90, i64 -1
  %92 = load ptr, ptr %91, align 8, !nosanitize !135
  br label %95

93:                                               ; preds = %79
  %94 = inttoptr i64 %82 to ptr
  br label %95

95:                                               ; preds = %88, %93
  %96 = phi ptr [ %92, %88 ], [ %94, %93 ]
  tail call void %96(ptr noundef nonnull align 8 dereferenceable(1709) %85, ptr noundef %1)
  br label %97

97:                                               ; preds = %97, %95
  %98 = phi ptr [ %2, %95 ], [ %101, %97 ]
  %99 = load i16, ptr %98, align 2, !tbaa !109
  %100 = icmp eq i16 %99, 0
  %101 = getelementptr inbounds i16, ptr %98, i64 1
  br i1 %100, label %102, label %97, !llvm.loop !169

102:                                              ; preds = %97
  %103 = ptrtoint ptr %98 to i64
  %104 = sub i64 %103, %11
  %105 = and i64 %104, 8589934590
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %102
  %108 = load i16, ptr %2, align 2, !tbaa !109
  %109 = zext i16 %108 to i64
  %110 = getelementptr inbounds [0 x i8], ptr @_ZN11xalanc_1_1012XalanXMLChar15theUnicodeTableE, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !213
  %112 = icmp eq i8 %111, 6
  br i1 %112, label %128, label %113

113:                                              ; preds = %107
  %114 = load i64, ptr %51, align 8, !tbaa !137
  %115 = load i64, ptr %53, align 8, !tbaa !137
  %116 = getelementptr inbounds i8, ptr %0, i64 %115
  %117 = and i64 %114, 1
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr %116, align 8, !tbaa !79
  %121 = getelementptr i8, ptr %120, i64 %114
  %122 = getelementptr i8, ptr %121, i64 -1
  %123 = load ptr, ptr %122, align 8, !nosanitize !135
  br label %126

124:                                              ; preds = %113
  %125 = inttoptr i64 %114 to ptr
  br label %126

126:                                              ; preds = %119, %124
  %127 = phi ptr [ %123, %119 ], [ %125, %124 ]
  tail call void %127(ptr noundef nonnull align 8 dereferenceable(1709) %116, i16 noundef zeroext 32)
  br label %128

128:                                              ; preds = %126, %107
  tail call void @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef nonnull %2, i32 noundef %20)
  br label %129

129:                                              ; preds = %128, %102
  %130 = load i64, ptr %51, align 8, !tbaa !137
  %131 = load i64, ptr %53, align 8, !tbaa !137
  %132 = getelementptr inbounds i8, ptr %0, i64 %131
  %133 = and i64 %130, 1
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %129
  %136 = load ptr, ptr %132, align 8, !tbaa !79
  %137 = getelementptr i8, ptr %136, i64 %130
  %138 = getelementptr i8, ptr %137, i64 -1
  %139 = load ptr, ptr %138, align 8, !nosanitize !135
  br label %142

140:                                              ; preds = %129
  %141 = inttoptr i64 %130 to ptr
  br label %142

142:                                              ; preds = %135, %140
  %143 = phi ptr [ %139, %135 ], [ %141, %140 ]
  tail call void %143(ptr noundef nonnull align 8 dereferenceable(1709) %132, i16 noundef zeroext 62)
  %144 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 10
  %145 = load i32, ptr %144, align 4, !tbaa !105
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  tail call void @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv(ptr noundef nonnull align 8 dereferenceable(1709) %0)
  br label %148

148:                                              ; preds = %147, %142
  %149 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 9
  br label %150

150:                                              ; preds = %148, %33
  %151 = phi ptr [ %149, %148 ], [ %34, %33 ]
  store i8 1, ptr %151, align 1, !tbaa !132
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 !prof !77 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !127
  %5 = icmp eq i64 %4, 0
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !128
  tail call void @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %8, i32 noundef %10)
  ret void
}

declare void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML15writeAttrStringEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #8 align 2 !prof !214 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %156, label %5, !prof !215

5:                                                ; preds = %3, %152
  %6 = phi i32 [ %154, %152 ], [ 0, %3 ]
  %7 = phi i32 [ %153, %152 ], [ 0, %3 ]
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !109
  %11 = icmp ult i16 %10, 256
  br i1 %11, label %12, label %19, !prof !216

12:                                               ; preds = %5
  %13 = zext nneg i16 %10 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 4, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !109
  %16 = icmp eq i16 %15, 83
  br i1 %16, label %19, label %17, !prof !217

17:                                               ; preds = %12
  %18 = add i32 %6, 1
  br label %152

19:                                               ; preds = %12, %5
  %20 = icmp eq i16 %10, 38
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = add i32 %6, 1
  %23 = icmp ult i32 %22, %2
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds i16, ptr %1, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !109
  %28 = icmp eq i16 %27, 123
  br i1 %28, label %152, label %29

29:                                               ; preds = %24, %21, %19
  %30 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %31 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %32 = sub i32 %6, %7
  %33 = load i64, ptr %30, align 8, !tbaa !134
  %34 = load i64, ptr %31, align 8, !tbaa !134
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = and i64 %33, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load ptr, ptr %35, align 8, !tbaa !79
  %40 = getelementptr i8, ptr %39, i64 %33
  %41 = getelementptr i8, ptr %40, i64 -1
  %42 = load ptr, ptr %41, align 8, !nosanitize !135
  br label %45

43:                                               ; preds = %29
  %44 = inttoptr i64 %33 to ptr
  br label %45

45:                                               ; preds = %38, %43
  %46 = phi ptr [ %42, %38 ], [ %44, %43 ]
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(1709) %35, ptr noundef %1, i32 noundef %7, i32 noundef %32)
  %47 = load ptr, ptr %0, align 8, !tbaa !79
  %48 = getelementptr inbounds ptr, ptr %47, i64 21
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %10, i1 noundef zeroext true)
  br i1 %50, label %149, label %51

51:                                               ; preds = %45
  %52 = and i16 %10, -1024
  %53 = icmp eq i16 %52, -10240
  br i1 %53, label %54, label %147

54:                                               ; preds = %51
  %55 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %56 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %57 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 0, i32 1
  %58 = add i32 %6, 1
  %59 = icmp ult i32 %58, %2
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %62 = load ptr, ptr %61, align 8, !tbaa !202
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEtRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %10, ptr noundef nonnull align 8 dereferenceable(8) %62)
  br label %76

63:                                               ; preds = %54
  %64 = zext i32 %58 to i64
  %65 = getelementptr inbounds i16, ptr %1, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !109
  %67 = and i16 %66, -1024
  %68 = icmp eq i16 %67, -9216
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %71 = load ptr, ptr %70, align 8, !tbaa !202
  tail call void @_ZN11xalanc_1_1014FormatterToXML35throwInvalidUTF16SurrogateExceptionEttRN11xercesc_2_713MemoryManagerE(i16 noundef zeroext %10, i16 noundef zeroext %66, ptr noundef nonnull align 8 dereferenceable(8) %71)
  br label %72

72:                                               ; preds = %63, %69
  %73 = shl i16 %10, 10
  %74 = add i16 %73, 9216
  %75 = add i16 %74, %66
  br label %76

76:                                               ; preds = %72, %60
  %77 = phi i32 [ %6, %60 ], [ %58, %72 ]
  %78 = phi i16 [ 0, %60 ], [ %75, %72 ]
  %79 = load i64, ptr %55, align 8, !tbaa !137
  %80 = load i64, ptr %56, align 8, !tbaa !137
  %81 = getelementptr inbounds i8, ptr %0, i64 %80
  %82 = and i64 %79, 1
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = load ptr, ptr %81, align 8, !tbaa !79
  %86 = getelementptr i8, ptr %85, i64 %79
  %87 = getelementptr i8, ptr %86, i64 -1
  %88 = load ptr, ptr %87, align 8, !nosanitize !135
  br label %91

89:                                               ; preds = %76
  %90 = inttoptr i64 %79 to ptr
  br label %91

91:                                               ; preds = %84, %89
  %92 = phi ptr [ %88, %84 ], [ %90, %89 ]
  tail call void %92(ptr noundef nonnull align 8 dereferenceable(1709) %81, i16 noundef zeroext 38)
  %93 = load i64, ptr %55, align 8, !tbaa !137
  %94 = load i64, ptr %56, align 8, !tbaa !137
  %95 = getelementptr inbounds i8, ptr %0, i64 %94
  %96 = and i64 %93, 1
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %91
  %99 = load ptr, ptr %95, align 8, !tbaa !79
  %100 = getelementptr i8, ptr %99, i64 %93
  %101 = getelementptr i8, ptr %100, i64 -1
  %102 = load ptr, ptr %101, align 8, !nosanitize !135
  br label %105

103:                                              ; preds = %91
  %104 = inttoptr i64 %93 to ptr
  br label %105

105:                                              ; preds = %98, %103
  %106 = phi ptr [ %102, %98 ], [ %104, %103 ]
  %107 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %108 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %109 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  tail call void %106(ptr noundef nonnull align 8 dereferenceable(1709) %95, i16 noundef zeroext 35)
  %110 = zext i16 %78 to i64
  %111 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %110, ptr noundef nonnull align 8 dereferenceable(36) %107)
  %112 = load i64, ptr %108, align 8, !tbaa !136
  %113 = load i64, ptr %109, align 8, !tbaa !136
  %114 = getelementptr inbounds i8, ptr %0, i64 %113
  %115 = and i64 %112, 1
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %105
  %118 = load ptr, ptr %114, align 8, !tbaa !79
  %119 = getelementptr i8, ptr %118, i64 %112
  %120 = getelementptr i8, ptr %119, i64 -1
  %121 = load ptr, ptr %120, align 8, !nosanitize !135
  br label %124

122:                                              ; preds = %105
  %123 = inttoptr i64 %112 to ptr
  br label %124

124:                                              ; preds = %117, %122
  %125 = phi ptr [ %121, %117 ], [ %123, %122 ]
  tail call void %125(ptr noundef nonnull align 8 dereferenceable(1709) %114, ptr noundef nonnull align 8 dereferenceable(36) %111)
  %126 = load i64, ptr %57, align 8, !tbaa !127
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load i64, ptr %57, align 8, !tbaa !127
  %130 = sub i64 %129, %126
  store i64 %130, ptr %57, align 8, !tbaa !127
  br label %131

131:                                              ; preds = %128, %124
  %132 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 1
  store i32 0, ptr %132, align 8, !tbaa !128
  %133 = load i64, ptr %55, align 8, !tbaa !137
  %134 = load i64, ptr %56, align 8, !tbaa !137
  %135 = getelementptr inbounds i8, ptr %0, i64 %134
  %136 = and i64 %133, 1
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %131
  %139 = load ptr, ptr %135, align 8, !tbaa !79
  %140 = getelementptr i8, ptr %139, i64 %133
  %141 = getelementptr i8, ptr %140, i64 -1
  %142 = load ptr, ptr %141, align 8, !nosanitize !135
  br label %145

143:                                              ; preds = %131
  %144 = inttoptr i64 %133 to ptr
  br label %145

145:                                              ; preds = %138, %143
  %146 = phi ptr [ %142, %138 ], [ %144, %143 ]
  tail call void %146(ptr noundef nonnull align 8 dereferenceable(1709) %135, i16 noundef zeroext 59)
  br label %149

147:                                              ; preds = %51
  %148 = zext i16 %10 to i64
  tail call void @_ZN11xalanc_1_1014FormatterToXML28writeNumberedEntityReferenceEm(ptr noundef nonnull align 8 dereferenceable(1709) %0, i64 noundef %148)
  br label %149

149:                                              ; preds = %145, %147, %45
  %150 = phi i32 [ %77, %145 ], [ %6, %147 ], [ %6, %45 ]
  %151 = add i32 %150, 1
  br label %152

152:                                              ; preds = %24, %149, %17
  %153 = phi i32 [ %7, %17 ], [ %151, %149 ], [ %7, %24 ]
  %154 = phi i32 [ %18, %17 ], [ %151, %149 ], [ %22, %24 ]
  %155 = icmp ult i32 %154, %2
  br i1 %155, label %5, label %156, !prof !218, !llvm.loop !219

156:                                              ; preds = %152, %3
  %157 = phi i32 [ 0, %3 ], [ %153, %152 ]
  %158 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45
  %159 = load i64, ptr %158, align 8, !tbaa !134
  %160 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 45, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !134
  %162 = getelementptr inbounds i8, ptr %0, i64 %161
  %163 = and i64 %159, 1
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %170, label %165, !prof !220

165:                                              ; preds = %156
  %166 = load ptr, ptr %162, align 8, !tbaa !79
  %167 = getelementptr i8, ptr %166, i64 %159
  %168 = getelementptr i8, ptr %167, i64 -1
  %169 = load ptr, ptr %168, align 8, !nosanitize !135
  br label %172

170:                                              ; preds = %156
  %171 = inttoptr i64 %159 to ptr
  br label %172

172:                                              ; preds = %165, %170
  %173 = phi ptr [ %169, %165 ], [ %171, %170 ]
  %174 = sub i32 %2, %157
  tail call void %173(ptr noundef nonnull align 8 dereferenceable(1709) %162, ptr noundef %1, i32 noundef %157, i32 noundef %174), !prof !221
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML16accumCommentDataEPKt(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !77 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %4 = load i64, ptr %3, align 8, !tbaa !155
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !155
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !79
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !135
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
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML20copyEntityIntoBufferERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 !prof !77 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38
  %4 = load i64, ptr %3, align 8, !tbaa !210
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 38, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !210
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !79
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !135
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, i16 noundef zeroext 38)
  %19 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40
  %20 = load i64, ptr %19, align 8, !tbaa !222
  %21 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 40, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !222
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load ptr, ptr %23, align 8, !tbaa !79
  %28 = getelementptr i8, ptr %27, i64 %20
  %29 = getelementptr i8, ptr %28, i64 -1
  %30 = load ptr, ptr %29, align 8, !nosanitize !135
  br label %33

31:                                               ; preds = %17
  %32 = inttoptr i64 %20 to ptr
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi ptr [ %30, %26 ], [ %32, %31 ]
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(1709) %23, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %35 = load i64, ptr %3, align 8, !tbaa !210
  %36 = load i64, ptr %5, align 8, !tbaa !210
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = and i64 %35, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %37, align 8, !tbaa !79
  %42 = getelementptr i8, ptr %41, i64 %35
  %43 = getelementptr i8, ptr %42, i64 -1
  %44 = load ptr, ptr %43, align 8, !nosanitize !135
  br label %47

45:                                               ; preds = %33
  %46 = inttoptr i64 %35 to ptr
  br label %47

47:                                               ; preds = %40, %45
  %48 = phi ptr [ %44, %40 ], [ %46, %45 ]
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(1709) %37, i16 noundef zeroext 59)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %3) unnamed_addr #8 align 2 !prof !223 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %1, %4 ], [ %9, %5 ]
  %7 = load i16, ptr %6, align 2, !tbaa !109
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds i16, ptr %6, i64 1
  br i1 %8, label %10, label %5, !prof !224, !llvm.loop !169

10:                                               ; preds = %5
  %11 = ptrtoint ptr %6 to i64
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %17 = load i64, ptr %16, align 8, !tbaa !137
  %18 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !137
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = and i64 %17, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23, !prof !164

23:                                               ; preds = %10
  %24 = load ptr, ptr %20, align 8, !tbaa !79
  %25 = getelementptr i8, ptr %24, i64 %17
  %26 = getelementptr i8, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !nosanitize !135
  br label %30

28:                                               ; preds = %10
  %29 = inttoptr i64 %17 to ptr
  br label %30

30:                                               ; preds = %23, %28
  %31 = phi ptr [ %27, %23 ], [ %29, %28 ]
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(1709) %20, i16 noundef zeroext 32), !prof !225
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi ptr [ %2, %30 ], [ %36, %32 ]
  %34 = load i16, ptr %33, align 2, !tbaa !109
  %35 = icmp eq i16 %34, 0
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  br i1 %35, label %37, label %32, !prof !226, !llvm.loop !169

37:                                               ; preds = %32
  %38 = ptrtoint ptr %33 to i64
  %39 = ptrtoint ptr %2 to i64
  %40 = sub i64 %38, %39
  %41 = lshr exact i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44, !prof !227

44:                                               ; preds = %37
  %45 = icmp eq i32 %15, %42
  br i1 %45, label %46, label %68, !prof !227

46:                                               ; preds = %44
  %47 = tail call noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef %1, ptr noundef %2, i32 noundef %15)
  br i1 %47, label %48, label %68

48:                                               ; preds = %46, %37
  %49 = load ptr, ptr %3, align 8, !tbaa !141
  %50 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties11isAttributeEPKth(ptr noundef nonnull align 4 dereferenceable(168) %49, ptr noundef %1, i8 noundef zeroext 4)
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39
  %53 = load i64, ptr %52, align 8, !tbaa !155
  %54 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 39, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !155
  %56 = getelementptr inbounds i8, ptr %0, i64 %55
  %57 = and i64 %53, 1
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %56, align 8, !tbaa !79
  %61 = getelementptr i8, ptr %60, i64 %53
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load ptr, ptr %62, align 8, !nosanitize !135
  br label %66

64:                                               ; preds = %51
  %65 = inttoptr i64 %53 to ptr
  br label %66

66:                                               ; preds = %59, %64
  %67 = phi ptr [ %63, %59 ], [ %65, %64 ]
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(1709) %56, ptr noundef %1)
  br label %135

68:                                               ; preds = %46, %44, %48
  %69 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41
  %70 = load i64, ptr %69, align 8, !tbaa !211
  %71 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 41, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !211
  %73 = getelementptr inbounds i8, ptr %0, i64 %72
  %74 = and i64 %70, 1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %81, label %76, !prof !164

76:                                               ; preds = %68
  %77 = load ptr, ptr %73, align 8, !tbaa !79
  %78 = getelementptr i8, ptr %77, i64 %70
  %79 = getelementptr i8, ptr %78, i64 -1
  %80 = load ptr, ptr %79, align 8, !nosanitize !135
  br label %83

81:                                               ; preds = %68
  %82 = inttoptr i64 %70 to ptr
  br label %83

83:                                               ; preds = %76, %81
  %84 = phi ptr [ %80, %76 ], [ %82, %81 ]
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(1709) %73, ptr noundef %1, i32 noundef 0, i32 noundef %15), !prof !228
  %85 = load i64, ptr %16, align 8, !tbaa !137
  %86 = load i64, ptr %18, align 8, !tbaa !137
  %87 = getelementptr inbounds i8, ptr %0, i64 %86
  %88 = and i64 %85, 1
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %95, label %90, !prof !164

90:                                               ; preds = %83
  %91 = load ptr, ptr %87, align 8, !tbaa !79
  %92 = getelementptr i8, ptr %91, i64 %85
  %93 = getelementptr i8, ptr %92, i64 -1
  %94 = load ptr, ptr %93, align 8, !nosanitize !135
  br label %97

95:                                               ; preds = %83
  %96 = inttoptr i64 %85 to ptr
  br label %97

97:                                               ; preds = %90, %95
  %98 = phi ptr [ %94, %90 ], [ %96, %95 ]
  tail call void %98(ptr noundef nonnull align 8 dereferenceable(1709) %87, i16 noundef zeroext 61), !prof !225
  %99 = load i64, ptr %16, align 8, !tbaa !137
  %100 = load i64, ptr %18, align 8, !tbaa !137
  %101 = getelementptr inbounds i8, ptr %0, i64 %100
  %102 = and i64 %99, 1
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %109, label %104, !prof !164

104:                                              ; preds = %97
  %105 = load ptr, ptr %101, align 8, !tbaa !79
  %106 = getelementptr i8, ptr %105, i64 %99
  %107 = getelementptr i8, ptr %106, i64 -1
  %108 = load ptr, ptr %107, align 8, !nosanitize !135
  br label %111

109:                                              ; preds = %97
  %110 = inttoptr i64 %99 to ptr
  br label %111

111:                                              ; preds = %104, %109
  %112 = phi ptr [ %108, %104 ], [ %110, %109 ]
  tail call void %112(ptr noundef nonnull align 8 dereferenceable(1709) %101, i16 noundef zeroext 34), !prof !225
  %113 = load ptr, ptr %3, align 8, !tbaa !141
  %114 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties11isAttributeEPKth(ptr noundef nonnull align 4 dereferenceable(168) %113, ptr noundef %1, i8 noundef zeroext 2)
  br i1 %114, label %115, label %116, !prof !229

115:                                              ; preds = %111
  tail call void @_ZN11xalanc_1_1015FormatterToHTML12writeAttrURIEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %2, i32 noundef %42)
  br label %120

116:                                              ; preds = %111
  %117 = load ptr, ptr %0, align 8, !tbaa !79
  %118 = getelementptr inbounds ptr, ptr %117, i64 23
  %119 = load ptr, ptr %118, align 8
  tail call void %119(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr noundef %2, i32 noundef %42), !prof !230
  br label %120

120:                                              ; preds = %116, %115
  %121 = load i64, ptr %16, align 8, !tbaa !137
  %122 = load i64, ptr %18, align 8, !tbaa !137
  %123 = getelementptr inbounds i8, ptr %0, i64 %122
  %124 = and i64 %121, 1
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %131, label %126, !prof !164

126:                                              ; preds = %120
  %127 = load ptr, ptr %123, align 8, !tbaa !79
  %128 = getelementptr i8, ptr %127, i64 %121
  %129 = getelementptr i8, ptr %128, i64 -1
  %130 = load ptr, ptr %129, align 8, !nosanitize !135
  br label %133

131:                                              ; preds = %120
  %132 = inttoptr i64 %121 to ptr
  br label %133

133:                                              ; preds = %126, %131
  %134 = phi ptr [ %130, %126 ], [ %132, %131 ]
  tail call void %134(ptr noundef nonnull align 8 dereferenceable(1709) %123, i16 noundef zeroext 34), !prof !225
  br label %135

135:                                              ; preds = %133, %66
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML12writeAttrURIEPKtj(ptr noundef nonnull align 8 dereferenceable(1912) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #8 align 2 !prof !231 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %8, label %5, !prof !232

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %7 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  br label %9

8:                                                ; preds = %252, %3
  ret void

9:                                                ; preds = %5, %252
  %10 = phi i32 [ 0, %5 ], [ %254, %252 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i16, ptr %1, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !109
  %14 = add i16 %13, -127
  %15 = icmp ult i16 %14, -94
  br i1 %15, label %16, label %177, !prof !233

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 7
  %18 = load i8, ptr %17, align 8, !tbaa !102, !range !147, !noundef !135
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %84, label %20

20:                                               ; preds = %16
  %21 = icmp eq i16 %13, 32
  br i1 %21, label %22, label %39

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %24 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %25 = load i64, ptr %23, align 8, !tbaa !137
  %26 = load i64, ptr %24, align 8, !tbaa !137
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = and i64 %25, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %27, align 8, !tbaa !79
  %32 = getelementptr i8, ptr %31, i64 %25
  %33 = getelementptr i8, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !nosanitize !135
  br label %37

35:                                               ; preds = %22
  %36 = inttoptr i64 %25 to ptr
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %34, %30 ], [ %36, %35 ]
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(1709) %27, i16 noundef zeroext %13)
  br label %252

39:                                               ; preds = %20
  %40 = icmp ult i16 %13, 128
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %13)
  br label %252

42:                                               ; preds = %39
  %43 = icmp ult i16 %13, 2048
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = lshr i16 %13, 6
  %46 = or disjoint i16 %45, 192
  %47 = and i16 %13, 63
  %48 = or disjoint i16 %47, 128
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %46)
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %48)
  br label %252

49:                                               ; preds = %42
  %50 = and i16 %13, -1024
  %51 = icmp eq i16 %50, -10240
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = lshr i16 %13, 6
  %54 = and i16 %53, 15
  %55 = add nuw nsw i16 %54, 1
  %56 = lshr i16 %13, 2
  %57 = and i16 %56, 15
  %58 = shl i16 %13, 4
  %59 = and i16 %58, 48
  %60 = add i32 %10, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, ptr %1, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !109
  %64 = lshr i16 %63, 6
  %65 = and i16 %64, 15
  %66 = and i16 %63, 63
  %67 = lshr i16 %55, 2
  %68 = or disjoint i16 %67, 240
  %69 = shl nuw nsw i16 %55, 4
  %70 = and i16 %69, 48
  %71 = or disjoint i16 %57, %70
  %72 = or disjoint i16 %71, 128
  %73 = or disjoint i16 %59, %65
  %74 = or disjoint i16 %73, 128
  %75 = or disjoint i16 %66, 128
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %68)
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %72)
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %74)
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %75)
  br label %252

76:                                               ; preds = %49
  %77 = lshr i16 %13, 12
  %78 = or disjoint i16 %77, 224
  %79 = lshr i16 %13, 6
  %80 = and i16 %79, 63
  %81 = or disjoint i16 %80, 128
  %82 = and i16 %13, 63
  %83 = or disjoint i16 %82, 128
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %78)
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %81)
  tail call void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %83)
  br label %252

84:                                               ; preds = %16
  %85 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 3
  %86 = load i16, ptr %85, align 8, !tbaa !114
  %87 = icmp ult i16 %13, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %90 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %91 = load i64, ptr %89, align 8, !tbaa !137
  %92 = load i64, ptr %90, align 8, !tbaa !137
  %93 = getelementptr inbounds i8, ptr %0, i64 %92
  %94 = and i64 %91, 1
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %88
  %97 = load ptr, ptr %93, align 8, !tbaa !79
  %98 = getelementptr i8, ptr %97, i64 %91
  %99 = getelementptr i8, ptr %98, i64 -1
  %100 = load ptr, ptr %99, align 8, !nosanitize !135
  br label %103

101:                                              ; preds = %88
  %102 = inttoptr i64 %91 to ptr
  br label %103

103:                                              ; preds = %96, %101
  %104 = phi ptr [ %100, %96 ], [ %102, %101 ]
  tail call void %104(ptr noundef nonnull align 8 dereferenceable(1709) %93, i16 noundef zeroext %13)
  br label %252

105:                                              ; preds = %84
  %106 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %107 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %108 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 0, i32 1
  %109 = load i64, ptr %106, align 8, !tbaa !137
  %110 = load i64, ptr %107, align 8, !tbaa !137
  %111 = getelementptr inbounds i8, ptr %0, i64 %110
  %112 = and i64 %109, 1
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %105
  %115 = load ptr, ptr %111, align 8, !tbaa !79
  %116 = getelementptr i8, ptr %115, i64 %109
  %117 = getelementptr i8, ptr %116, i64 -1
  %118 = load ptr, ptr %117, align 8, !nosanitize !135
  br label %121

119:                                              ; preds = %105
  %120 = inttoptr i64 %109 to ptr
  br label %121

121:                                              ; preds = %114, %119
  %122 = phi ptr [ %118, %114 ], [ %120, %119 ]
  tail call void %122(ptr noundef nonnull align 8 dereferenceable(1709) %111, i16 noundef zeroext 38)
  %123 = load i64, ptr %106, align 8, !tbaa !137
  %124 = load i64, ptr %107, align 8, !tbaa !137
  %125 = getelementptr inbounds i8, ptr %0, i64 %124
  %126 = and i64 %123, 1
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %121
  %129 = load ptr, ptr %125, align 8, !tbaa !79
  %130 = getelementptr i8, ptr %129, i64 %123
  %131 = getelementptr i8, ptr %130, i64 -1
  %132 = load ptr, ptr %131, align 8, !nosanitize !135
  br label %135

133:                                              ; preds = %121
  %134 = inttoptr i64 %123 to ptr
  br label %135

135:                                              ; preds = %128, %133
  %136 = phi ptr [ %132, %128 ], [ %134, %133 ]
  %137 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %138 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %139 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  tail call void %136(ptr noundef nonnull align 8 dereferenceable(1709) %125, i16 noundef zeroext 35)
  %140 = zext i16 %13 to i64
  %141 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %140, ptr noundef nonnull align 8 dereferenceable(36) %137)
  %142 = load i64, ptr %138, align 8, !tbaa !136
  %143 = load i64, ptr %139, align 8, !tbaa !136
  %144 = getelementptr inbounds i8, ptr %0, i64 %143
  %145 = and i64 %142, 1
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %135
  %148 = load ptr, ptr %144, align 8, !tbaa !79
  %149 = getelementptr i8, ptr %148, i64 %142
  %150 = getelementptr i8, ptr %149, i64 -1
  %151 = load ptr, ptr %150, align 8, !nosanitize !135
  br label %154

152:                                              ; preds = %135
  %153 = inttoptr i64 %142 to ptr
  br label %154

154:                                              ; preds = %147, %152
  %155 = phi ptr [ %151, %147 ], [ %153, %152 ]
  tail call void %155(ptr noundef nonnull align 8 dereferenceable(1709) %144, ptr noundef nonnull align 8 dereferenceable(36) %141)
  %156 = load i64, ptr %108, align 8, !tbaa !127
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load i64, ptr %108, align 8, !tbaa !127
  %160 = sub i64 %159, %156
  store i64 %160, ptr %108, align 8, !tbaa !127
  br label %161

161:                                              ; preds = %158, %154
  %162 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 1
  store i32 0, ptr %162, align 8, !tbaa !128
  %163 = load i64, ptr %106, align 8, !tbaa !137
  %164 = load i64, ptr %107, align 8, !tbaa !137
  %165 = getelementptr inbounds i8, ptr %0, i64 %164
  %166 = and i64 %163, 1
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %161
  %169 = load ptr, ptr %165, align 8, !tbaa !79
  %170 = getelementptr i8, ptr %169, i64 %163
  %171 = getelementptr i8, ptr %170, i64 -1
  %172 = load ptr, ptr %171, align 8, !nosanitize !135
  br label %175

173:                                              ; preds = %161
  %174 = inttoptr i64 %163 to ptr
  br label %175

175:                                              ; preds = %168, %173
  %176 = phi ptr [ %172, %168 ], [ %174, %173 ]
  tail call void %176(ptr noundef nonnull align 8 dereferenceable(1709) %165, i16 noundef zeroext 59)
  br label %252

177:                                              ; preds = %9
  switch i16 %13, label %237 [
    i16 34, label %178
    i16 38, label %232
  ], !prof !234

178:                                              ; preds = %177
  %179 = getelementptr inbounds %"class.xalanc_1_10::FormatterToHTML", ptr %0, i64 0, i32 7
  %180 = load i8, ptr %179, align 8, !tbaa !102, !range !147, !noundef !135
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %227, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %184 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %185 = load i64, ptr %183, align 8, !tbaa !137
  %186 = load i64, ptr %184, align 8, !tbaa !137
  %187 = getelementptr inbounds i8, ptr %0, i64 %186
  %188 = and i64 %185, 1
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %182
  %191 = load ptr, ptr %187, align 8, !tbaa !79
  %192 = getelementptr i8, ptr %191, i64 %185
  %193 = getelementptr i8, ptr %192, i64 -1
  %194 = load ptr, ptr %193, align 8, !nosanitize !135
  br label %197

195:                                              ; preds = %182
  %196 = inttoptr i64 %185 to ptr
  br label %197

197:                                              ; preds = %190, %195
  %198 = phi ptr [ %194, %190 ], [ %196, %195 ]
  tail call void %198(ptr noundef nonnull align 8 dereferenceable(1709) %187, i16 noundef zeroext 37)
  %199 = load i64, ptr %183, align 8, !tbaa !137
  %200 = load i64, ptr %184, align 8, !tbaa !137
  %201 = getelementptr inbounds i8, ptr %0, i64 %200
  %202 = and i64 %199, 1
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %197
  %205 = load ptr, ptr %201, align 8, !tbaa !79
  %206 = getelementptr i8, ptr %205, i64 %199
  %207 = getelementptr i8, ptr %206, i64 -1
  %208 = load ptr, ptr %207, align 8, !nosanitize !135
  br label %211

209:                                              ; preds = %197
  %210 = inttoptr i64 %199 to ptr
  br label %211

211:                                              ; preds = %204, %209
  %212 = phi ptr [ %208, %204 ], [ %210, %209 ]
  tail call void %212(ptr noundef nonnull align 8 dereferenceable(1709) %201, i16 noundef zeroext 50)
  %213 = load i64, ptr %183, align 8, !tbaa !137
  %214 = load i64, ptr %184, align 8, !tbaa !137
  %215 = getelementptr inbounds i8, ptr %0, i64 %214
  %216 = and i64 %213, 1
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %211
  %219 = load ptr, ptr %215, align 8, !tbaa !79
  %220 = getelementptr i8, ptr %219, i64 %213
  %221 = getelementptr i8, ptr %220, i64 -1
  %222 = load ptr, ptr %221, align 8, !nosanitize !135
  br label %225

223:                                              ; preds = %211
  %224 = inttoptr i64 %213 to ptr
  br label %225

225:                                              ; preds = %218, %223
  %226 = phi ptr [ %222, %218 ], [ %224, %223 ]
  tail call void %226(ptr noundef nonnull align 8 dereferenceable(1709) %215, i16 noundef zeroext 50)
  br label %252

227:                                              ; preds = %178
  %228 = load ptr, ptr %0, align 8, !tbaa !79
  %229 = getelementptr inbounds ptr, ptr %228, i64 21
  %230 = load ptr, ptr %229, align 8
  %231 = tail call noundef zeroext i1 %230(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %13, i1 noundef zeroext true)
  br label %252

232:                                              ; preds = %177
  %233 = load ptr, ptr %0, align 8, !tbaa !79
  %234 = getelementptr inbounds ptr, ptr %233, i64 21
  %235 = load ptr, ptr %234, align 8
  %236 = tail call noundef zeroext i1 %235(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %13, i1 noundef zeroext true)
  br label %252

237:                                              ; preds = %177
  %238 = load i64, ptr %6, align 8, !tbaa !137
  %239 = load i64, ptr %7, align 8, !tbaa !137
  %240 = getelementptr inbounds i8, ptr %0, i64 %239
  %241 = and i64 %238, 1
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %248, label %243, !prof !235

243:                                              ; preds = %237
  %244 = load ptr, ptr %240, align 8, !tbaa !79
  %245 = getelementptr i8, ptr %244, i64 %238
  %246 = getelementptr i8, ptr %245, i64 -1
  %247 = load ptr, ptr %246, align 8, !nosanitize !135
  br label %250

248:                                              ; preds = %237
  %249 = inttoptr i64 %238 to ptr
  br label %250

250:                                              ; preds = %243, %248
  %251 = phi ptr [ %247, %243 ], [ %249, %248 ]
  tail call void %251(ptr noundef nonnull align 8 dereferenceable(1709) %240, i16 noundef zeroext %13), !prof !236
  br label %252

252:                                              ; preds = %227, %225, %250, %232, %41, %52, %76, %44, %37, %175, %103
  %253 = phi i32 [ %10, %37 ], [ %10, %41 ], [ %10, %44 ], [ %60, %52 ], [ %10, %76 ], [ %10, %103 ], [ %10, %175 ], [ %10, %225 ], [ %10, %227 ], [ %10, %232 ], [ %10, %250 ]
  %254 = add i32 %253, 1
  %255 = icmp ult i32 %254, %2
  br i1 %255, label %9, label %8, !prof !237, !llvm.loop !238
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1015FormatterToHTML14accumHexNumberEt(ptr noundef nonnull align 8 dereferenceable(1912) %0, i16 noundef zeroext %1) local_unnamed_addr #3 align 2 !prof !77 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42
  %4 = load i64, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 42, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !137
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = and i64 %4, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %7, align 8, !tbaa !79
  %12 = getelementptr i8, ptr %11, i64 %4
  %13 = getelementptr i8, ptr %12, i64 -1
  %14 = load ptr, ptr %13, align 8, !nosanitize !135
  br label %17

15:                                               ; preds = %2
  %16 = inttoptr i64 %4 to ptr
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %14, %10 ], [ %16, %15 ]
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(1709) %7, i16 noundef zeroext 37)
  %19 = zext i16 %1 to i64
  %20 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %19, ptr noundef nonnull align 8 dereferenceable(36) %20)
  %22 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !128
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load i64, ptr %3, align 8, !tbaa !137
  %27 = load i64, ptr %5, align 8, !tbaa !137
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = and i64 %26, 1
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %28, align 8, !tbaa !79
  %33 = getelementptr i8, ptr %32, i64 %26
  %34 = getelementptr i8, ptr %33, i64 -1
  %35 = load ptr, ptr %34, align 8, !nosanitize !135
  br label %38

36:                                               ; preds = %25
  %37 = inttoptr i64 %26 to ptr
  br label %38

38:                                               ; preds = %31, %36
  %39 = phi ptr [ %35, %31 ], [ %37, %36 ]
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(1709) %28, i16 noundef zeroext 48)
  br label %40

40:                                               ; preds = %38, %17
  %41 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44
  %42 = load i64, ptr %41, align 8, !tbaa !136
  %43 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 44, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !136
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  %46 = and i64 %42, 1
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load ptr, ptr %45, align 8, !tbaa !79
  %50 = getelementptr i8, ptr %49, i64 %42
  %51 = getelementptr i8, ptr %50, i64 -1
  %52 = load ptr, ptr %51, align 8, !nosanitize !135
  br label %55

53:                                               ; preds = %40
  %54 = inttoptr i64 %42 to ptr
  br label %55

55:                                               ; preds = %48, %53
  %56 = phi ptr [ %52, %48 ], [ %54, %53 ]
  tail call void %56(ptr noundef nonnull align 8 dereferenceable(1709) %45, ptr noundef nonnull align 8 dereferenceable(36) %20)
  %57 = getelementptr inbounds %"class.xalanc_1_10::FormatterToXML", ptr %0, i64 0, i32 23, i32 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !127
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i64, ptr %57, align 8, !tbaa !127
  %62 = sub i64 %61, %58
  store i64 %62, ptr %57, align 8, !tbaa !127
  br label %63

63:                                               ; preds = %60, %55
  store i32 0, ptr %22, align 8, !tbaa !128
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_109substringEPKtRNS_14XalanDOMStringEjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef, i32 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML13charactersRawEPKtj(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef, i32 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML7commentEPKt(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK11xalanc_1_1014FormatterToXML9getWriterEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypeSystemEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML16getDoctypePublicEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014FormatterToXML12getMediaTypeEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #0

declare noundef i32 @_ZNK11xalanc_1_1014FormatterToXML9getIndentEv(ptr noundef nonnull align 8 dereferenceable(1709)) unnamed_addr #0

declare void @_ZN11xalanc_1_1014FormatterToXML20writeNormalizedCharsEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1709), ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !239 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !240
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !241

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !242
  %8 = load ptr, ptr %0, align 8, !tbaa !202
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !243

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !77 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties11isAttributeEPKth(ptr noundef nonnull align 4 dereferenceable(168), ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !131
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !122
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !245

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !132, !range !147, !noundef !135
  store i8 %13, ptr %12, align 1, !tbaa !132
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !131
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !246
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !101
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %22 unwind label %44, !prof !247

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !101
  %24 = load i64, ptr %4, align 8, !tbaa !131
  %25 = load i64, ptr %6, align 8, !tbaa !122
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !124
  %28 = load ptr, ptr %3, align 8, !tbaa !101
  store ptr %28, ptr %0, align 8, !tbaa !101
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !131
  store i64 %30, ptr %4, align 8, !tbaa !131
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !122
  store i64 %32, ptr %6, align 8, !tbaa !122
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !124
  store ptr %34, ptr %26, align 8, !tbaa !124
  store ptr %23, ptr %3, align 8, !tbaa !101
  store i64 %24, ptr %29, align 8, !tbaa !131
  store i64 %25, ptr %31, align 8, !tbaa !122
  store ptr %27, ptr %33, align 8, !tbaa !124
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !246

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !79
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !248

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !122
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !124
  %52 = load ptr, ptr %3, align 8, !tbaa !101
  %53 = load ptr, ptr %52, align 8, !tbaa !79
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !249 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !101
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !131
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !250

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !101
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !131
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !122
  %16 = load ptr, ptr %2, align 8, !tbaa !79
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13), !prof !251
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !124
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !124
  %23 = load i64, ptr %9, align 8, !tbaa !131
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43, !prof !252

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !101
  %27 = load i64, ptr %6, align 8, !tbaa !131
  %28 = load i64, ptr %7, align 8, !tbaa !122
  %29 = load ptr, ptr %8, align 8, !tbaa !124
  %30 = load ptr, ptr %5, align 8, !tbaa !101
  store ptr %30, ptr %0, align 8, !tbaa !101
  %31 = load i64, ptr %14, align 8, !tbaa !131
  store i64 %31, ptr %6, align 8, !tbaa !131
  %32 = load i64, ptr %15, align 8, !tbaa !122
  store i64 %32, ptr %7, align 8, !tbaa !122
  %33 = load ptr, ptr %20, align 8, !tbaa !124
  store ptr %33, ptr %8, align 8, !tbaa !124
  store ptr %26, ptr %5, align 8, !tbaa !101
  store i64 %27, ptr %14, align 8, !tbaa !131
  store i64 %28, ptr %15, align 8, !tbaa !122
  store ptr %29, ptr %20, align 8, !tbaa !124
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35, !prof !252

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !79
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #17
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !122
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !124
  %49 = load ptr, ptr %5, align 8, !tbaa !101
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #17
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !253

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !79
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !254
  store ptr %63, ptr %8, align 8, !tbaa !124
  store i64 %3, ptr %7, align 8, !tbaa !122
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !255 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %131, label %10, !prof !256

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !131
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !122
  br i1 %17, label %20, label %37, !prof !252

20:                                               ; preds = %10
  %21 = icmp ult i64 %19, %13
  br i1 %21, label %22, label %23, !prof !256

22:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %13)
  br label %23

23:                                               ; preds = %20, %22
  %24 = icmp eq ptr %2, %3
  br i1 %24, label %131, label %25, !prof !257

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !124
  %27 = load i64, ptr %11, align 8, !tbaa !131
  %28 = getelementptr i8, ptr %26, i64 %27
  %29 = add i64 %27, %6
  br label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %35, %30 ], [ %2, %25 ]
  %32 = phi ptr [ %34, %30 ], [ %28, %25 ]
  %33 = load i8, ptr %31, align 1, !tbaa !132, !range !147, !noundef !135
  store i8 %33, ptr %32, align 1, !tbaa !132
  %34 = getelementptr inbounds i8, ptr %32, i64 1
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = icmp eq ptr %35, %3
  br i1 %36, label %129, label %30, !prof !258, !llvm.loop !259

37:                                               ; preds = %10
  %38 = icmp ugt i64 %13, %19
  br i1 %38, label %39, label %94

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %40 = load ptr, ptr %0, align 8, !tbaa !101
  store ptr %40, ptr %5, align 8, !tbaa !101
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %41, align 8, !tbaa !131
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %42, align 8, !tbaa !122
  %43 = load ptr, ptr %40, align 8, !tbaa !79
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %13)
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !124
  %48 = load i64, ptr %41, align 8, !tbaa !131
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  %50 = load ptr, ptr %14, align 8, !tbaa !124
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %49, ptr noundef %50, ptr noundef %1)
          to label %51 unwind label %80

51:                                               ; preds = %39
  %52 = load ptr, ptr %47, align 8, !tbaa !124
  %53 = load i64, ptr %41, align 8, !tbaa !131
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %54, ptr noundef %2, ptr noundef %3)
          to label %55 unwind label %80

55:                                               ; preds = %51
  %56 = load ptr, ptr %47, align 8, !tbaa !124
  %57 = load i64, ptr %41, align 8, !tbaa !131
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  %59 = load ptr, ptr %14, align 8, !tbaa !124
  %60 = load i64, ptr %11, align 8, !tbaa !131
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %58, ptr noundef %1, ptr noundef %61)
          to label %62 unwind label %80

62:                                               ; preds = %55
  %63 = load ptr, ptr %0, align 8, !tbaa !101
  %64 = load i64, ptr %11, align 8, !tbaa !131
  %65 = load i64, ptr %18, align 8, !tbaa !122
  %66 = load ptr, ptr %14, align 8, !tbaa !124
  %67 = load ptr, ptr %5, align 8, !tbaa !101
  store ptr %67, ptr %0, align 8, !tbaa !101
  %68 = load i64, ptr %41, align 8, !tbaa !131
  store i64 %68, ptr %11, align 8, !tbaa !131
  %69 = load i64, ptr %42, align 8, !tbaa !122
  store i64 %69, ptr %18, align 8, !tbaa !122
  %70 = load ptr, ptr %47, align 8, !tbaa !124
  store ptr %70, ptr %14, align 8, !tbaa !124
  store ptr %63, ptr %5, align 8, !tbaa !101
  store i64 %64, ptr %41, align 8, !tbaa !131
  store i64 %65, ptr %42, align 8, !tbaa !122
  store ptr %66, ptr %47, align 8, !tbaa !124
  %71 = icmp eq i64 %65, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %63, align 8, !tbaa !79
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %66)
          to label %79 unwind label %76

76:                                               ; preds = %72
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #17
  unreachable

79:                                               ; preds = %62, %72
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %131

80:                                               ; preds = %55, %51, %39
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = load i64, ptr %42, align 8, !tbaa !122
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %47, align 8, !tbaa !124
  %86 = load ptr, ptr %5, align 8, !tbaa !101
  %87 = load ptr, ptr %86, align 8, !tbaa !79
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  invoke void %89(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %85)
          to label %93 unwind label %90

90:                                               ; preds = %84
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #17
  unreachable

93:                                               ; preds = %80, %84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
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
  br i1 %107, label %102, label %104, !llvm.loop !260

108:                                              ; preds = %102, %108
  %109 = phi ptr [ %110, %108 ], [ %1, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %109)
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  %111 = icmp eq ptr %110, %16
  br i1 %111, label %112, label %108, !llvm.loop !261

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
  br i1 %120, label %121, label %117, !llvm.loop !262

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
  store i64 %130, ptr %11, align 8, !tbaa !131
  br label %131

131:                                              ; preds = %23, %129, %79, %112, %128, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !101
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !101
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !131
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !122
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = load ptr, ptr %3, align 8, !tbaa !101
  store ptr %12, ptr %0, align 8, !tbaa !101
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !131
  store i64 %14, ptr %6, align 8, !tbaa !131
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !122
  store i64 %16, ptr %8, align 8, !tbaa !122
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  store ptr %18, ptr %10, align 8, !tbaa !124
  store ptr %5, ptr %3, align 8, !tbaa !101
  store i64 %7, ptr %13, align 8, !tbaa !131
  store i64 %9, ptr %15, align 8, !tbaa !122
  store ptr %11, ptr %17, align 8, !tbaa !124
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !82

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !79
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !263 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !118
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !264

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !141
  store ptr %13, ptr %12, align 8, !tbaa !141
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !133
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !265
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !107
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !266

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !107
  %24 = load i64, ptr %4, align 8, !tbaa !133
  %25 = load i64, ptr %6, align 8, !tbaa !118
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !119
  %28 = load ptr, ptr %3, align 8, !tbaa !107
  store ptr %28, ptr %0, align 8, !tbaa !107
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !133
  store i64 %30, ptr %4, align 8, !tbaa !133
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !118
  store i64 %32, ptr %6, align 8, !tbaa !118
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  store ptr %34, ptr %26, align 8, !tbaa !119
  store ptr %23, ptr %3, align 8, !tbaa !107
  store i64 %24, ptr %29, align 8, !tbaa !133
  store i64 %25, ptr %31, align 8, !tbaa !118
  store ptr %27, ptr %33, align 8, !tbaa !119
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !265

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !79
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !267

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !118
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !119
  %52 = load ptr, ptr %3, align 8, !tbaa !107
  %53 = load ptr, ptr %52, align 8, !tbaa !79
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !268 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !107
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !133
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !265

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !107
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !133
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !118
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !79
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !269
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !119
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = load i64, ptr %9, align 8, !tbaa !133
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !270

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !107
  %28 = load i64, ptr %6, align 8, !tbaa !133
  %29 = load i64, ptr %7, align 8, !tbaa !118
  %30 = load ptr, ptr %8, align 8, !tbaa !119
  %31 = load ptr, ptr %5, align 8, !tbaa !107
  store ptr %31, ptr %0, align 8, !tbaa !107
  %32 = load i64, ptr %14, align 8, !tbaa !133
  store i64 %32, ptr %6, align 8, !tbaa !133
  %33 = load i64, ptr %15, align 8, !tbaa !118
  store i64 %33, ptr %7, align 8, !tbaa !118
  %34 = load ptr, ptr %21, align 8, !tbaa !119
  store ptr %34, ptr %8, align 8, !tbaa !119
  store ptr %27, ptr %5, align 8, !tbaa !107
  store i64 %28, ptr %14, align 8, !tbaa !133
  store i64 %29, ptr %15, align 8, !tbaa !118
  store ptr %30, ptr %21, align 8, !tbaa !119
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !270

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
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !118
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !119
  %50 = load ptr, ptr %5, align 8, !tbaa !107
  %51 = load ptr, ptr %50, align 8, !tbaa !79
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !115

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !79
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !126
  store ptr %65, ptr %8, align 8, !tbaa !119
  store i64 %3, ptr %7, align 8, !tbaa !118
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !271 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11, !prof !272

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !133
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !118
  br i1 %18, label %21, label %39, !prof !270

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !272

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26, !prof !273

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !119
  %28 = load i64, ptr %12, align 8, !tbaa !133
  %29 = getelementptr %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !141
  store ptr %34, ptr %32, align 8, !tbaa !141
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !prof !274, !llvm.loop !275

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !107
  store ptr %42, ptr %5, align 8, !tbaa !107
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !133
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !118
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !79
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !119
  %51 = load i64, ptr %43, align 8, !tbaa !133
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !119
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !119
  %56 = load i64, ptr %43, align 8, !tbaa !133
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !119
  %60 = load i64, ptr %43, align 8, !tbaa !133
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !119
  %63 = load i64, ptr %12, align 8, !tbaa !133
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !107
  %67 = load i64, ptr %12, align 8, !tbaa !133
  %68 = load i64, ptr %19, align 8, !tbaa !118
  %69 = load ptr, ptr %15, align 8, !tbaa !119
  %70 = load ptr, ptr %5, align 8, !tbaa !107
  store ptr %70, ptr %0, align 8, !tbaa !107
  %71 = load i64, ptr %43, align 8, !tbaa !133
  store i64 %71, ptr %12, align 8, !tbaa !133
  %72 = load i64, ptr %44, align 8, !tbaa !118
  store i64 %72, ptr %19, align 8, !tbaa !118
  %73 = load ptr, ptr %50, align 8, !tbaa !119
  store ptr %73, ptr %15, align 8, !tbaa !119
  store ptr %66, ptr %5, align 8, !tbaa !107
  store i64 %67, ptr %43, align 8, !tbaa !133
  store i64 %68, ptr %44, align 8, !tbaa !118
  store ptr %69, ptr %50, align 8, !tbaa !119
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !79
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !118
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !119
  %89 = load ptr, ptr %5, align 8, !tbaa !107
  %90 = load ptr, ptr %89, align 8, !tbaa !79
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %127, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !276

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !277

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load i64, ptr %121, align 8, !tbaa !278
  store i64 %122, ptr %120, align 8, !tbaa !278
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %121, i64 1
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !279

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !280

135:                                              ; preds = %131, %127
  %136 = ptrtoint ptr %129 to i64
  %137 = sub i64 %136, %99
  %138 = ashr exact i64 %137, 3
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %142, %135
  %141 = icmp sgt i64 %9, 0
  br i1 %141, label %151, label %161

142:                                              ; preds = %135, %142
  %143 = phi i64 [ %149, %142 ], [ %138, %135 ]
  %144 = phi ptr [ %147, %142 ], [ %17, %135 ]
  %145 = phi ptr [ %146, %142 ], [ %129, %135 ]
  %146 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %145, i64 -1
  %147 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %144, i64 -1
  %148 = load i64, ptr %146, align 8, !tbaa !278
  store i64 %148, ptr %147, align 8, !tbaa !278
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !281

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load i64, ptr %154, align 8, !tbaa !278
  store i64 %155, ptr %153, align 8, !tbaa !278
  %156 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %154, i64 1
  %157 = getelementptr inbounds %"class.xalanc_1_10::XalanHTMLElementsProperties::ElementProperties", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !279

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !133
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !107
  call void @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !107
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !133
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !118
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = load ptr, ptr %3, align 8, !tbaa !107
  store ptr %12, ptr %0, align 8, !tbaa !107
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !133
  store i64 %14, ptr %6, align 8, !tbaa !133
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !118
  store i64 %16, ptr %8, align 8, !tbaa !118
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !119
  store ptr %18, ptr %10, align 8, !tbaa !119
  store ptr %5, ptr %3, align 8, !tbaa !107
  store i64 %7, ptr %13, align 8, !tbaa !133
  store i64 %9, ptr %15, align 8, !tbaa !118
  store ptr %11, ptr %17, align 8, !tbaa !119
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !79
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_FormatterToHTML.cpp() #14 section ".text.startup" !prof !78 !PGOFuncName !282 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1015FormatterToHTML13s_emptyStringE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!76}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!35 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014FormatterToXMLC2ERNS_6WriterERKNS_14XalanDOMStringEbiS5_S5_S5_S5_bS5_NS_17FormatterListener7eFormatEbRN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1015FormatterToHTML12initCharsMapEv, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12initCharsMapEv, ptr @_ZN11xalanc_1_1014FormatterToXML16initAttrCharsMapEv, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML6createERN11xercesc_2_713MemoryManagerERNS_6WriterERKNS_14XalanDOMStringES8_S8_S8_bibb, ptr @_ZN11xalanc_1_1015FormatterToHTMLC2ERNS_6WriterERKNS_14XalanDOMStringES5_S5_S5_bibbRN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 3}
!43 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1015FormatterToHTMLD2Ev, ptr @_ZN11xalanc_1_1014FormatterToXMLD2Ev, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML13startDocumentEv, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML11endDocumentEv, ptr @_ZN11xalanc_1_1014FormatterToXML11endDocumentEv, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1015FormatterToHTML16pushHasNamespaceEPKt, i64 1048804}
!48 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv, i64 1048804}
!49 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1027XalanHTMLElementsProperties4findEPKt, i64 1048804}
!50 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1048804}
!51 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 2097608}
!52 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML6indentEi, i64 355357}
!53 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1014FormatterToXML22openElementForChildrenEv, i64 1048804}
!54 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML12startElementEPKtRN11xercesc_2_713AttributeListE, ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, i64 75090}
!55 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML19childNodesWereAddedEv, i64 1048804}
!56 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10endElementEPKt, ptr @_ZN11xalanc_1_1014FormatterToXML6indentEi, i64 109399}
!57 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML17writeParentTagEndEv, i64 943386}
!58 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML10charactersEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj, i64 943386}
!59 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj, ptr @_ZN11xalanc_1_1014FormatterToXML13outputLineSepEv, i64 133624}
!60 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML15writeCharactersEPKtj, ptr @_ZN11xalanc_1_1015FormatterToHTML18accumDefaultEntityEtb, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML18accumDefaultEntityEtb, ptr @_ZN11xalanc_1_1014FormatterToXML18accumDefaultEntityEtb, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, ptr @_ZNK11xalanc_1_1027XalanHTMLElementsProperties25InternalElementProperties11isAttributeEPKth, i64 75090}
!63 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, ptr @_ZN11xalanc_1_1015FormatterToHTML12writeAttrURIEPKtj, i64 40062}
!64 = !{ptr @_ZN11xalanc_1_1015FormatterToHTML16processAttributeEPKtS2_RKNS_27XalanHTMLElementsProperties17ElementPropertiesE, ptr @_ZN11xalanc_1_1015FormatterToHTML15writeAttrStringEPKtj, i64 35028}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 34}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 34}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, i64 25}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 5}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 5}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 4}
!73 = !{ptr @_GLOBAL__sub_I_FormatterToHTML.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!74 = !{ptr @_GLOBAL__sub_I_FormatterToHTML.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!75 = !{ptr @_GLOBAL__sub_I_FormatterToHTML.cpp, ptr @__cxa_atexit, i64 1}
!76 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!77 = !{!"function_entry_count", i64 0}
!78 = !{!"function_entry_count", i64 1}
!79 = !{!80, !80, i64 0}
!80 = !{!"vtable pointer", !81, i64 0}
!81 = !{!"Simple C++ TBAA"}
!82 = !{!"branch_weights", i32 1, i32 0}
!83 = !{!84, !93, i64 1752}
!84 = !{!"_ZTSN11xalanc_1_1015FormatterToHTMLE", !85, i64 0, !94, i64 1712, !93, i64 1752, !98, i64 1760, !93, i64 1792, !98, i64 1800, !93, i64 1832, !93, i64 1833, !93, i64 1834, !97, i64 1836, !98, i64 1840, !93, i64 1872, !100, i64 1880}
!85 = !{!"_ZTSN11xalanc_1_1014FormatterToXMLE", !86, i64 0, !88, i64 24, !88, i64 32, !92, i64 40, !89, i64 42, !89, i64 554, !93, i64 1066, !93, i64 1067, !93, i64 1068, !93, i64 1069, !93, i64 1070, !93, i64 1071, !93, i64 1072, !93, i64 1073, !93, i64 1074, !93, i64 1075, !94, i64 1080, !94, i64 1120, !94, i64 1160, !97, i64 1200, !97, i64 1204, !98, i64 1208, !94, i64 1240, !93, i64 1280, !93, i64 1281, !93, i64 1282, !93, i64 1283, !94, i64 1288, !94, i64 1328, !94, i64 1368, !94, i64 1408, !95, i64 1448, !97, i64 1480, !99, i64 1488, !98, i64 1520, !89, i64 1552, !89, i64 1568, !89, i64 1584, !89, i64 1600, !89, i64 1616, !89, i64 1632, !89, i64 1648, !89, i64 1664, !89, i64 1680, !88, i64 1696, !97, i64 1704, !93, i64 1708}
!86 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !87, i64 0, !88, i64 8, !90, i64 16, !91, i64 20}
!87 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !81, i64 0}
!90 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !89, i64 0}
!91 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !89, i64 0}
!92 = !{!"short", !89, i64 0}
!93 = !{!"bool", !89, i64 0}
!94 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !95, i64 0, !97, i64 32}
!95 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !88, i64 0, !96, i64 8, !96, i64 16, !88, i64 24}
!96 = !{!"long", !89, i64 0}
!97 = !{!"int", !89, i64 0}
!98 = !{!"_ZTSN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEE", !88, i64 0, !96, i64 8, !96, i64 16, !88, i64 24}
!99 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !88, i64 0, !96, i64 8, !96, i64 16, !88, i64 24}
!100 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_27XalanHTMLElementsProperties17ElementPropertiesENS_31MemoryManagedConstructionTraitsIS2_EEEE", !88, i64 0, !96, i64 8, !96, i64 16, !88, i64 24}
!101 = !{!98, !88, i64 0}
!102 = !{!84, !93, i64 1832}
!103 = !{!84, !93, i64 1833}
!104 = !{!84, !93, i64 1834}
!105 = !{!84, !97, i64 1836}
!106 = !{!84, !93, i64 1872}
!107 = !{!100, !88, i64 0}
!108 = !{!85, !93, i64 1066}
!109 = !{!92, !92, i64 0}
!110 = !{!"branch_weights", i32 1, i32 95}
!111 = distinct !{!111, !112, !113}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = !{!85, !92, i64 40}
!115 = !{!"branch_weights", i32 0, i32 1}
!116 = distinct !{!116, !112, !113}
!117 = distinct !{!117, !112, !113}
!118 = !{!100, !96, i64 16}
!119 = !{!100, !88, i64 24}
!120 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!121 = !{!"function_entry_count", i64 16}
!122 = !{!98, !96, i64 16}
!123 = !{!"branch_weights", i32 6, i32 10}
!124 = !{!98, !88, i64 24}
!125 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!126 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!127 = !{!95, !96, i64 8}
!128 = !{!94, !97, i64 32}
!129 = !{!85, !93, i64 1069}
!130 = !{!84, !93, i64 1792}
!131 = !{!98, !96, i64 8}
!132 = !{!93, !93, i64 0}
!133 = !{!100, !96, i64 8}
!134 = !{!85, !89, i64 1664}
!135 = !{}
!136 = !{!85, !89, i64 1648}
!137 = !{!85, !89, i64 1616}
!138 = !{!85, !93, i64 1070}
!139 = !{!"function_entry_count", i64 1048804}
!140 = !{!"branch_weights", i32 0, i32 1048804}
!141 = !{!142, !88, i64 0}
!142 = !{!"_ZTSN11xalanc_1_1027XalanHTMLElementsProperties17ElementPropertiesE", !88, i64 0}
!143 = !{!144, !97, i64 24}
!144 = !{!"_ZTSN11xalanc_1_1027XalanHTMLElementsProperties25InternalElementPropertiesE", !89, i64 0, !97, i64 24, !89, i64 28}
!145 = !{!"branch_weights", i32 1048804, i32 0}
!146 = !{!85, !93, i64 1067}
!147 = !{i8 0, i8 2}
!148 = !{!"branch_weights", i32 774639, i32 274165}
!149 = !{!85, !93, i64 1068}
!150 = !{!"branch_weights", i32 774639, i32 0}
!151 = !{!"branch_weights", i32 774638, i32 1}
!152 = !{!"branch_weights", i32 355357, i32 419281}
!153 = !{!85, !97, i64 1200}
!154 = !{!"VP", i32 0, i64 1048804, i64 -5026426852003955584, i64 1048804}
!155 = !{!85, !89, i64 1568}
!156 = !{!"VP", i32 0, i64 1048804, i64 5287651366026602422, i64 1048804}
!157 = !{!"VP", i32 0, i64 1048804, i64 8893614577066288799, i64 1048804}
!158 = !{!"branch_weights", i32 973714, i32 75090}
!159 = !{!85, !97, i64 1204}
!160 = !{!85, !93, i64 1071}
!161 = !{!"VP", i32 0, i64 75090, i64 -4536921264242817666, i64 75090}
!162 = !{!"VP", i32 0, i64 75090, i64 704971646561838490, i64 75090}
!163 = !{!"VP", i32 0, i64 75090, i64 -6083712377659338635, i64 75090}
!164 = !{!"branch_weights", i32 75090, i32 0}
!165 = distinct !{!165, !112, !113}
!166 = !{!"branch_weights", i32 1048803, i32 1}
!167 = !{!86, !88, i64 8}
!168 = !{!"branch_weights", i32 1048804, i32 1931039}
!169 = distinct !{!169, !112, !113}
!170 = !{!"branch_weights", i32 1931039, i32 0, i32 1048804}
!171 = distinct !{!171, !112, !113}
!172 = !{!"VP", i32 0, i64 1048804, i64 2645820282999838928, i64 1048804}
!173 = !{!"branch_weights", i32 484368, i32 564436}
!174 = !{!"branch_weights", i32 0, i32 484368}
!175 = !{!"branch_weights", i32 359609, i32 124759}
!176 = !{!"branch_weights", i32 698996, i32 349808}
!177 = !{!"branch_weights", i32 109399, i32 589597}
!178 = !{!"branch_weights", i32 698996, i32 0}
!179 = !{!"VP", i32 0, i64 698996, i64 -5026426852003955584, i64 698996}
!180 = !{!"VP", i32 0, i64 698996, i64 5287651366026602422, i64 698996}
!181 = !{!"branch_weights", i32 99598, i32 250210}
!182 = !{!"branch_weights", i32 99598, i32 0}
!183 = !{!"VP", i32 0, i64 99598, i64 -5026426852003955584, i64 99598}
!184 = !{!"VP", i32 0, i64 99598, i64 5287651366026602422, i64 99598}
!185 = !{!"branch_weights", i32 250210, i32 0}
!186 = !{!"VP", i32 0, i64 250210, i64 -5026426852003955584, i64 250210}
!187 = !{!"branch_weights", i32 0, i32 698996}
!188 = !{!"function_entry_count", i64 943386}
!189 = !{!"branch_weights", i32 0, i32 943386}
!190 = !{!85, !93, i64 1074}
!191 = !{!"branch_weights", i32 943386, i32 0}
!192 = !{!85, !93, i64 1073}
!193 = !{!"branch_weights", i32 838601, i32 104785}
!194 = !{!"branch_weights", i32 1, i32 943385}
!195 = !{!"branch_weights", i32 52579068, i32 0}
!196 = !{!"branch_weights", i32 133625, i32 52445443}
!197 = !{!"branch_weights", i32 133624, i32 1}
!198 = !{!"branch_weights", i32 133624, i32 0}
!199 = !{!"VP", i32 0, i64 133624, i64 -7930772785906929365, i64 133624}
!200 = !{!"VP", i32 0, i64 1, i64 -7930772785906929365, i64 1}
!201 = !{!"VP", i32 0, i64 1, i64 -118872633004358672, i64 1}
!202 = !{!95, !88, i64 0}
!203 = !{!"branch_weights", i32 51635683, i32 943385}
!204 = distinct !{!204, !112, !113}
!205 = !{!"VP", i32 0, i64 943386, i64 -7930772785906929365, i64 943386}
!206 = !{!207, !92, i64 0}
!207 = !{!"_ZTSN11xalanc_1_1015FormatterToHTML6EntityE", !92, i64 0, !97, i64 4, !89, i64 8}
!208 = !{!207, !97, i64 4}
!209 = distinct !{!209, !112, !113}
!210 = !{!85, !89, i64 1552}
!211 = !{!85, !89, i64 1600}
!212 = !{!85, !93, i64 1072}
!213 = !{!89, !89, i64 0}
!214 = !{!"function_entry_count", i64 35028}
!215 = !{!"branch_weights", i32 1, i32 35027}
!216 = !{!"branch_weights", i32 93082, i32 0}
!217 = !{!"branch_weights", i32 0, i32 93082}
!218 = !{!"branch_weights", i32 58055, i32 35027}
!219 = distinct !{!219, !112, !113}
!220 = !{!"branch_weights", i32 35028, i32 0}
!221 = !{!"VP", i32 0, i64 35028, i64 -7930772785906929365, i64 35028}
!222 = !{!85, !89, i64 1584}
!223 = !{!"function_entry_count", i64 75090}
!224 = !{!"branch_weights", i32 75090, i32 370420}
!225 = !{!"VP", i32 0, i64 75090, i64 -5026426852003955584, i64 75090}
!226 = !{!"branch_weights", i32 75090, i32 1093564}
!227 = !{!"branch_weights", i32 0, i32 75090}
!228 = !{!"VP", i32 0, i64 75090, i64 -7930772785906929365, i64 75090}
!229 = !{!"branch_weights", i32 40062, i32 35028}
!230 = !{!"VP", i32 0, i64 35028, i64 -7970476095128122899, i64 35028}
!231 = !{!"function_entry_count", i64 40062}
!232 = !{!"branch_weights", i32 1, i32 40061}
!233 = !{!"branch_weights", i32 0, i32 1000482}
!234 = !{!"branch_weights", i32 1000482, i32 0, i32 0}
!235 = !{!"branch_weights", i32 1000482, i32 0}
!236 = !{!"VP", i32 0, i64 1000482, i64 -5026426852003955584, i64 1000482}
!237 = !{!"branch_weights", i32 960421, i32 40061}
!238 = distinct !{!238, !112, !113}
!239 = !{!"function_entry_count", i64 42470003}
!240 = !{!95, !96, i64 16}
!241 = !{!"branch_weights", i32 52000, i32 42418003}
!242 = !{!95, !88, i64 24}
!243 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!244 = !{!"function_entry_count", i64 4975155}
!245 = !{!"branch_weights", i32 4975121, i32 34}
!246 = !{!"branch_weights", i32 9, i32 25}
!247 = !{!"branch_weights", i32 34, i32 0}
!248 = !{!"VP", i32 0, i64 25, i64 -7405368087501025645, i64 25}
!249 = !{!"function_entry_count", i64 35}
!250 = !{!"branch_weights", i32 10, i32 25}
!251 = !{!"VP", i32 0, i64 25, i64 8345045103670217670, i64 25}
!252 = !{!"branch_weights", i32 25, i32 0}
!253 = !{!"branch_weights", i32 0, i32 10}
!254 = !{!"VP", i32 0, i64 10, i64 8345045103670217670, i64 10}
!255 = !{!"function_entry_count", i64 25}
!256 = !{!"branch_weights", i32 0, i32 25}
!257 = !{!"branch_weights", i32 1, i32 199}
!258 = !{!"branch_weights", i32 199, i32 393}
!259 = distinct !{!259, !112, !113}
!260 = distinct !{!260, !112, !113}
!261 = distinct !{!261, !112, !113}
!262 = distinct !{!262, !112, !113}
!263 = !{!"function_entry_count", i64 1048809}
!264 = !{!"branch_weights", i32 1048804, i32 5}
!265 = !{!"branch_weights", i32 1, i32 4}
!266 = !{!"branch_weights", i32 5, i32 0}
!267 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!268 = !{!"function_entry_count", i64 5}
!269 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!270 = !{!"branch_weights", i32 4, i32 0}
!271 = !{!"function_entry_count", i64 4}
!272 = !{!"branch_weights", i32 0, i32 4}
!273 = !{!"branch_weights", i32 1, i32 127}
!274 = !{!"branch_weights", i32 127, i32 225}
!275 = distinct !{!275, !112, !113}
!276 = distinct !{!276, !112, !113}
!277 = distinct !{!277, !112, !113}
!278 = !{!88, !88, i64 0}
!279 = distinct !{!279, !112, !113}
!280 = distinct !{!280, !112, !113}
!281 = distinct !{!281, !112, !113}
!282 = !{!"FormatterToHTML.cpp;_GLOBAL__sub_I_FormatterToHTML.cpp"}
