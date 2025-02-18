; ModuleID = 'InMemHandler.cpp'
source_filename = "InMemHandler.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.InMemHandler = type <{ %class.SAX2Handler, %class.XalanFileOutputStream, i8, [7 x i8] }>
%class.SAX2Handler = type { %"class.xercesc_2_7::DefaultHandler", i32, ptr, i8, %class.XalanFileOutputStream }
%"class.xercesc_2_7::DefaultHandler" = type { %"class.xercesc_2_7::EntityResolver", %"class.xercesc_2_7::DTDHandler", %"class.xercesc_2_7::ContentHandler", %"class.xercesc_2_7::ErrorHandler", %"class.xercesc_2_7::LexicalHandler", %"class.xercesc_2_7::DeclHandler" }
%"class.xercesc_2_7::EntityResolver" = type { ptr }
%"class.xercesc_2_7::DTDHandler" = type { ptr }
%"class.xercesc_2_7::ContentHandler" = type { ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xercesc_2_7::LexicalHandler" = type { ptr }
%"class.xercesc_2_7::DeclHandler" = type { ptr }
%class.XalanFileOutputStream = type { ptr, ptr, ptr }

$_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj = comdat any

$_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler13resetDocumentEv = comdat any

$_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE = comdat any

$_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt = comdat any

$_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt = comdat any

$_ZN11xercesc_2_714DefaultHandler11resetErrorsEv = comdat any

$_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv = comdat any

$_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler7commentEPKtj = comdat any

$_ZN11xercesc_2_714DefaultHandler8endCDATAEv = comdat any

$_ZN11xercesc_2_714DefaultHandler6endDTDEv = comdat any

$_ZN11xercesc_2_714DefaultHandler9endEntityEPKt = comdat any

$_ZN11xercesc_2_714DefaultHandler10startCDATAEv = comdat any

$_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler11startEntityEPKt = comdat any

$_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_ = comdat any

$_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_ = comdat any

$_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_ = comdat any

$_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_ = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_ = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt = comdat any

$_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_ = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_ = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_ = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_ = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [35 x i8] c"static const XalanDOMChar szString\00", align 1
@s_szVariableName = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"szString\00", align 1
@s_szSimpleVariableName = dso_local local_unnamed_addr global ptr @.str.1, align 8
@_ZTV12InMemHandler = dso_local unnamed_addr constant { [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI12InMemHandler, ptr @_ZN12InMemHandlerD2Ev, ptr @_ZN12InMemHandlerD0Ev, ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_, ptr @_ZN12InMemHandler10charactersEPKtj, ptr @_ZN12InMemHandler11endDocumentEv, ptr @_ZN12InMemHandler10endElementEPKtS1_S1_, ptr @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv, ptr @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZN12InMemHandler13startDocumentEv, ptr @_ZN12InMemHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE, ptr @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt, ptr @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv, ptr @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv, ptr @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_, ptr @_ZN12InMemHandler23createHeaderForDataFileEv, ptr @_ZN12InMemHandler23createBottomForDataFileEv, ptr @_ZN12InMemHandler20printBeginOfDataLineEv, ptr @_ZN12InMemHandler18printEndOfDataLineEv, ptr @_ZN12InMemHandler15printToDataFileEPPKc], [7 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTI12InMemHandler, ptr @_ZThn8_N12InMemHandlerD1Ev, ptr @_ZThn8_N12InMemHandlerD0Ev, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv], [15 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTI12InMemHandler, ptr @_ZThn16_N12InMemHandlerD1Ev, ptr @_ZThn16_N12InMemHandlerD0Ev, ptr @_ZThn16_N12InMemHandler10charactersEPKtj, ptr @_ZThn16_N12InMemHandler11endDocumentEv, ptr @_ZThn16_N12InMemHandler10endElementEPKtS1_S1_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZThn16_N12InMemHandler13startDocumentEv, ptr @_ZThn16_N12InMemHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTI12InMemHandler, ptr @_ZThn24_N12InMemHandlerD1Ev, ptr @_ZThn24_N12InMemHandlerD0Ev, ptr @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv], [11 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTI12InMemHandler, ptr @_ZThn32_N12InMemHandlerD1Ev, ptr @_ZThn32_N12InMemHandlerD0Ev, ptr @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr @_ZTI12InMemHandler, ptr @_ZThn40_N12InMemHandlerD1Ev, ptr @_ZThn40_N12InMemHandlerD0Ev, ptr @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_] }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c" %#4x, \00", align 1
@_ZL13s_targetXMLCh = internal constant [7 x i16] [i16 116, i16 97, i16 114, i16 103, i16 101, i16 116, i16 0], align 2
@_ZL16s_transUnitXMLCh = internal constant [11 x i16] [i16 116, i16 114, i16 97, i16 110, i16 115, i16 45, i16 117, i16 110, i16 105, i16 116, i16 0], align 16
@szApacheLicense = external global [0 x ptr], align 8
@_ZL15szStartDataFile = internal global [10 x ptr] [ptr @.str.9, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.9, ptr @.str.9, ptr @.str.12, ptr @.str.9, ptr @.str.9, ptr null], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"%s%d[] = {\00", align 1
@_ZL21szEndOfLineInDataFile = internal global [2 x ptr] [ptr @.str.13, ptr null], align 16
@_ZL14szArraySizeVar = internal global [4 x ptr] [ptr @.str.9, ptr @.str.9, ptr @.str.14, ptr null], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c" %d ;\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\0Astatic const XalanDOMChar* msgArray[]={ \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s%d \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@_ZL13szEndDataFile = internal global [9 x ptr] [ptr @.str.9, ptr @.str.9, ptr @.str.15, ptr @.str.9, ptr @.str.9, ptr @.str.16, ptr @.str.9, ptr @.str.9, ptr null], align 16
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12InMemHandler = dso_local constant [15 x i8] c"12InMemHandler\00", align 1
@_ZTI11SAX2Handler = external constant ptr
@_ZTI12InMemHandler = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12InMemHandler, ptr @_ZTI11SAX2Handler }, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"#if !defined(XALAN_MSG_LOADER_GUARD_1357924680) \0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"#define XALAN_MSG_LOADER_GUARD_1357924680 \0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"XALAN_CPP_NAMESPACE_BEGIN\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"0x00 };\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"static const unsigned int gXalanMsgArraySize = \00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"XALAN_CPP_NAMESPACE_END \0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"#endif //XALAN_MSG_LOADER_GUARD_1357924680  \0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_InMemHandler.cpp, ptr null }]

@_ZN12InMemHandlerC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN12InMemHandlerC2EPKc
@_ZN12InMemHandlerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12InMemHandlerD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11SAX2HandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0)
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %7, align 8, !tbaa !39
  %8 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  invoke void @_ZN21XalanFileOutputStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %1)
          to label %9 unwind label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 2
  store i8 1, ptr %10, align 8, !tbaa !42
  ret void

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  resume { ptr, i32 } %12
}

declare void @_ZN11SAX2HandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

declare void @_ZN21XalanFileOutputStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN12InMemHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #5 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N12InMemHandlerD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 88
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N12InMemHandlerD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 80
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N12InMemHandlerD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %0, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 72
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N12InMemHandlerD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 64
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn40_N12InMemHandlerD1Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %6, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 56
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN12InMemHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #5 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N12InMemHandlerD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 88
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #13
  tail call void @_ZdlPv(ptr noundef %2) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N12InMemHandlerD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 80
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #13
  tail call void @_ZdlPv(ptr noundef %2) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N12InMemHandlerD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %0, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 72
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #13
  tail call void @_ZdlPv(ptr noundef %2) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N12InMemHandlerD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 64
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #13
  tail call void @_ZdlPv(ptr noundef %2) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn40_N12InMemHandlerD0Ev(ptr noundef %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %6, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds i8, ptr %0, i64 56
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #13
  tail call void @_ZdlPv(ptr noundef %2) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandler15printToDataFileEPPKc(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef readonly %1) unnamed_addr #4 align 2 !prof !38 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = phi ptr [ %5, %7 ], [ %16, %9 ]
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #15
  %13 = trunc i64 %12 to i32
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %11, i32 noundef %13)
  %14 = add nuw i64 %10, 1
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !58

18:                                               ; preds = %9, %4, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #4 align 2 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds ptr, ptr %2, i64 34
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(121) %0)
  tail call void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

declare void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N12InMemHandler11endDocumentEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 34
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(121) %2)
  tail call void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 align 2 !prof !38 {
  %4 = alloca [20 x i8], align 16
  %5 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !61, !range !62, !noundef !63
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  %12 = zext i32 %2 to i64
  br label %14

13:                                               ; preds = %14, %8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  br label %24

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %22, %14 ]
  store i8 0, ptr %4, align 16, !tbaa !64
  %16 = getelementptr inbounds i16, ptr %1, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !65
  %18 = zext i16 %17 to i32
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %18) #13
  %20 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15
  %21 = trunc i64 %20 to i32
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %4, i32 noundef %21)
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %13, label %14, !llvm.loop !67

24:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N12InMemHandler10charactersEPKtj(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 align 2 !prof !38 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN12InMemHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(121) %4, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #4 align 2 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds ptr, ptr %2, i64 33
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(121) %0)
  tail call void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

declare void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N12InMemHandler13startDocumentEv(ptr noundef %0) unnamed_addr #9 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 33
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(121) %2)
  tail call void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandler10endElementEPKtS1_S1_(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #4 align 2 !prof !38 {
  %5 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !61, !range !62, !noundef !63
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL13s_targetXMLCh)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  store i8 0, ptr %5, align 8, !tbaa !61
  %12 = load ptr, ptr %0, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 36
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(121) %0)
  br label %15

15:                                               ; preds = %4, %11, %8
  ret void
}

declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N12InMemHandler10endElementEPKtS1_S1_(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #9 align 2 !prof !38 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  %6 = getelementptr inbounds i8, ptr %0, i64 48
  %7 = load i8, ptr %6, align 8, !tbaa !61, !range !62, !noundef !63
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL13s_targetXMLCh)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  store i8 0, ptr %6, align 8, !tbaa !61
  %13 = load ptr, ptr %5, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 36
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(121) %5)
  br label %16

16:                                               ; preds = %4, %9, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #4 align 2 !prof !38 {
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL16s_transUnitXMLCh)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %17

9:                                                ; preds = %5
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL13s_targetXMLCh)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  store i8 1, ptr %13, align 8, !tbaa !61
  %14 = load ptr, ptr %0, align 8, !tbaa !39
  %15 = getelementptr inbounds ptr, ptr %14, i64 35
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(121) %0)
  br label %17

17:                                               ; preds = %9, %12, %8
  ret void
}

declare void @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N12InMemHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #9 align 2 !prof !38 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN12InMemHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(121) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandler23createHeaderForDataFileEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #4 align 2 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull @szApacheLicense)
  %5 = load ptr, ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %5, i64 37
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull @_ZL15szStartDataFile)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandler20printBeginOfDataLineEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #4 align 2 !prof !38 {
  %2 = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %2) #13
  store i8 0, ptr %2, align 16, !tbaa !64
  %3 = load ptr, ptr @s_szVariableName, align 8, !tbaa !57
  %4 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %3, i32 noundef %5) #13
  %7 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  %8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %9 = trunc i64 %8 to i32
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %2, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %2) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandler18printEndOfDataLineEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #4 align 2 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull @_ZL21szEndOfLineInDataFile)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12InMemHandler23createBottomForDataFileEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #4 align 2 !prof !38 {
  %2 = alloca [100 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds ptr, ptr %3, i64 37
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull @_ZL14szArraySizeVar)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #13
  %6 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !68
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %7) #13
  %9 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  %10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %11 = trunc i64 %10 to i32
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %2, i32 noundef %11)
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.5, i32 noundef 40)
  store i8 0, ptr %2, align 16, !tbaa !64
  %12 = load i32, ptr %6, align 8, !tbaa !68
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %30, %1
  %15 = load ptr, ptr %0, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 37
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull @_ZL13szEndDataFile)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #13
  ret void

18:                                               ; preds = %1, %30
  %19 = phi i32 [ %21, %30 ], [ 0, %1 ]
  %20 = load ptr, ptr @s_szSimpleVariableName, align 8, !tbaa !57
  %21 = add nuw nsw i32 %19, 1
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %20, i32 noundef %21) #13
  %23 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %24 = trunc i64 %23 to i32
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %2, i32 noundef %24)
  %25 = load i32, ptr %6, align 8, !tbaa !68
  %26 = add nsw i32 %25, -1
  %27 = icmp eq i32 %19, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.7, i32 noundef 1)
  br label %30

29:                                               ; preds = %18
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.8, i32 noundef 2)
  br label %30

30:                                               ; preds = %29, %28
  store i8 0, ptr %2, align 16, !tbaa !64
  %31 = load i32, ptr %6, align 8, !tbaa !68
  %32 = icmp slt i32 %21, %31
  br i1 %32, label %18, label %14, !llvm.loop !69
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 comdat align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef %0, ptr noundef %1) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef %0) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 comdat align 2 !prof !38 {
  ret void
}

declare void @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

declare void @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

declare void @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold uwtable
declare void @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #9 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #9 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #9 align 2

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_InMemHandler.cpp() #9 section ".text.startup" !prof !70 !PGOFuncName !71 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #13
  ret void
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!35 = !{ptr @_GLOBAL__sub_I_InMemHandler.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_InMemHandler.cpp, ptr @__cxa_atexit, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !55, i64 120}
!43 = !{!"_ZTS12InMemHandler", !44, i64 0, !56, i64 96, !55, i64 120}
!44 = !{!"_ZTS11SAX2Handler", !45, i64 0, !52, i64 48, !54, i64 56, !55, i64 64, !56, i64 72}
!45 = !{!"_ZTSN11xercesc_2_714DefaultHandlerE", !46, i64 0, !47, i64 8, !48, i64 16, !49, i64 24, !50, i64 32, !51, i64 40}
!46 = !{!"_ZTSN11xercesc_2_714EntityResolverE"}
!47 = !{!"_ZTSN11xercesc_2_710DTDHandlerE"}
!48 = !{!"_ZTSN11xercesc_2_714ContentHandlerE"}
!49 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!50 = !{!"_ZTSN11xercesc_2_714LexicalHandlerE"}
!51 = !{!"_ZTSN11xercesc_2_711DeclHandlerE"}
!52 = !{!"int", !53, i64 0}
!53 = !{!"omnipotent char", !41, i64 0}
!54 = !{!"any pointer", !53, i64 0}
!55 = !{!"bool", !53, i64 0}
!56 = !{!"_ZTS21XalanFileOutputStream", !54, i64 8, !54, i64 16}
!57 = !{!54, !54, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!44, !55, i64 64}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!53, !53, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !53, i64 0}
!67 = distinct !{!67, !59, !60}
!68 = !{!44, !52, i64 48}
!69 = distinct !{!69, !59, !60}
!70 = !{!"function_entry_count", i64 1}
!71 = !{!"InMemHandler.cpp;_GLOBAL__sub_I_InMemHandler.cpp"}
