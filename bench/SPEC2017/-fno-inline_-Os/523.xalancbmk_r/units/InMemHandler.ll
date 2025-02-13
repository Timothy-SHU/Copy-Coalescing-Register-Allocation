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

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #1 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #11
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11SAX2HandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #11
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  invoke void @_ZN21XalanFileOutputStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %1) #11
          to label %9 unwind label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 2
  store i8 1, ptr %10, align 8, !tbaa !38
  ret void

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare void @_ZN11SAX2HandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN21XalanFileOutputStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN12InMemHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #6 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV12InMemHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #13
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N12InMemHandlerD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN12InMemHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N12InMemHandlerD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN12InMemHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N12InMemHandlerD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN12InMemHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N12InMemHandlerD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN12InMemHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn40_N12InMemHandlerD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN12InMemHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN12InMemHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #6 align 2 {
  tail call void @_ZN12InMemHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(121) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N12InMemHandlerD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN12InMemHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(121) %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N12InMemHandlerD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN12InMemHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(121) %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N12InMemHandlerD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN12InMemHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(121) %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N12InMemHandlerD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN12InMemHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(121) %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn40_N12InMemHandlerD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN12InMemHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(121) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandler15printToDataFileEPPKc(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef readonly %1) unnamed_addr #5 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !53
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
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %11, i32 noundef %13) #11
  %14 = add nuw i64 %10, 1
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !54

18:                                               ; preds = %9, %4, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: optsize
declare void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 34
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(121) %0) #11
  tail call void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N12InMemHandler11endDocumentEv(ptr noundef %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN12InMemHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(121) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 align 2 !prof !34 {
  %4 = alloca [20 x i8], align 16
  %5 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !56, !range !57, !noundef !58
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #12
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  %12 = zext i32 %2 to i64
  br label %14

13:                                               ; preds = %14, %8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #12
  br label %24

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %22, %14 ]
  store i8 0, ptr %4, align 16, !tbaa !59
  %16 = getelementptr inbounds i16, ptr %1, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !60
  %18 = zext i16 %17 to i32
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %18) #13
  %20 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #15
  %21 = trunc i64 %20 to i32
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %4, i32 noundef %21) #11
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %13, label %14, !llvm.loop !62

24:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N12InMemHandler10charactersEPKtj(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN12InMemHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(121) %4, ptr noundef %1, i32 noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 33
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(121) %0) #11
  tail call void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N12InMemHandler13startDocumentEv(ptr noundef %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN12InMemHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(121) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandler10endElementEPKtS1_S1_(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #5 align 2 !prof !34 {
  %5 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !56, !range !57, !noundef !58
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL13s_targetXMLCh) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  store i8 0, ptr %5, align 8, !tbaa !56
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 36
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(121) %0) #11
  br label %15

15:                                               ; preds = %4, %11, %8
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N12InMemHandler10endElementEPKtS1_S1_(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #1 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN12InMemHandler10endElementEPKtS1_S1_(ptr noundef nonnull align 8 dereferenceable(121) %5, ptr poison, ptr noundef %2, ptr poison) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #5 align 2 !prof !34 {
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL16s_transUnitXMLCh) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  br label %17

9:                                                ; preds = %5
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL13s_targetXMLCh) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  store i8 1, ptr %13, align 8, !tbaa !56
  %14 = load ptr, ptr %0, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 35
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(121) %0) #11
  br label %17

17:                                               ; preds = %9, %12, %8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N12InMemHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN12InMemHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(121) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandler23createHeaderForDataFileEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull @szApacheLicense) #11
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 37
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull @_ZL15szStartDataFile) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandler20printBeginOfDataLineEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %2) #12
  store i8 0, ptr %2, align 16, !tbaa !59
  %3 = load ptr, ptr @s_szVariableName, align 8, !tbaa !53
  %4 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %3, i32 noundef %5) #13
  %7 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  %8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %9 = trunc i64 %8 to i32
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %2, i32 noundef %9) #11
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandler18printEndOfDataLineEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull @_ZL21szEndOfLineInDataFile) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12InMemHandler23createBottomForDataFileEv(ptr noundef nonnull align 8 dereferenceable(121) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = alloca [100 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 37
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull @_ZL14szArraySizeVar) #11
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #12
  %6 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %7) #13
  %9 = getelementptr inbounds %class.InMemHandler, ptr %0, i64 0, i32 1
  %10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %11 = trunc i64 %10 to i32
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %2, i32 noundef %11) #11
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.5, i32 noundef 40) #11
  store i8 0, ptr %2, align 16, !tbaa !59
  %12 = load i32, ptr %6, align 8, !tbaa !63
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %30, %1
  %15 = load ptr, ptr %0, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 37
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull @_ZL13szEndDataFile) #11
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #12
  ret void

18:                                               ; preds = %1, %30
  %19 = phi i32 [ %21, %30 ], [ 0, %1 ]
  %20 = load ptr, ptr @s_szSimpleVariableName, align 8, !tbaa !53
  %21 = add nuw nsw i32 %19, 1
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %20, i32 noundef %21) #13
  %23 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %24 = trunc i64 %23 to i32
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %2, i32 noundef %24) #11
  %25 = load i32, ptr %6, align 8, !tbaa !63
  %26 = add nsw i32 %25, -1
  %27 = icmp eq i32 %19, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.7, i32 noundef 1) #11
  br label %30

29:                                               ; preds = %18
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.8, i32 noundef 2) #11
  br label %30

30:                                               ; preds = %29, %28
  store i8 0, ptr %2, align 16, !tbaa !59
  %31 = load i32, ptr %6, align 8, !tbaa !63
  %32 = icmp slt i32 %21, %31
  br i1 %32, label %18, label %14, !llvm.loop !64
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
  %7 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1 align 2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_InMemHandler.cpp() #1 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !51, i64 120}
!39 = !{!"_ZTS12InMemHandler", !40, i64 0, !52, i64 96, !51, i64 120}
!40 = !{!"_ZTS11SAX2Handler", !41, i64 0, !48, i64 48, !50, i64 56, !51, i64 64, !52, i64 72}
!41 = !{!"_ZTSN11xercesc_2_714DefaultHandlerE", !42, i64 0, !43, i64 8, !44, i64 16, !45, i64 24, !46, i64 32, !47, i64 40}
!42 = !{!"_ZTSN11xercesc_2_714EntityResolverE"}
!43 = !{!"_ZTSN11xercesc_2_710DTDHandlerE"}
!44 = !{!"_ZTSN11xercesc_2_714ContentHandlerE"}
!45 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!46 = !{!"_ZTSN11xercesc_2_714LexicalHandlerE"}
!47 = !{!"_ZTSN11xercesc_2_711DeclHandlerE"}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !37, i64 0}
!50 = !{!"any pointer", !49, i64 0}
!51 = !{!"bool", !49, i64 0}
!52 = !{!"_ZTS21XalanFileOutputStream", !50, i64 8, !50, i64 16}
!53 = !{!50, !50, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!40, !51, i64 64}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = !{!49, !49, i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"short", !49, i64 0}
!62 = distinct !{!62, !55}
!63 = !{!40, !48, i64 48}
!64 = distinct !{!64, !55}
