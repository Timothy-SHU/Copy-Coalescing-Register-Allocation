; ModuleID = 'SAX2Handler.cpp'
source_filename = "SAX2Handler.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.SAX2Handler = type { %"class.xercesc_2_7::DefaultHandler", i32, ptr, i8, %class.XalanFileOutputStream }
%"class.xercesc_2_7::DefaultHandler" = type { %"class.xercesc_2_7::EntityResolver", %"class.xercesc_2_7::DTDHandler", %"class.xercesc_2_7::ContentHandler", %"class.xercesc_2_7::ErrorHandler", %"class.xercesc_2_7::LexicalHandler", %"class.xercesc_2_7::DeclHandler" }
%"class.xercesc_2_7::EntityResolver" = type { ptr }
%"class.xercesc_2_7::DTDHandler" = type { ptr }
%"class.xercesc_2_7::ContentHandler" = type { ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xercesc_2_7::LexicalHandler" = type { ptr }
%"class.xercesc_2_7::DeclHandler" = type { ptr }
%class.XalanFileOutputStream = type { ptr, ptr, ptr }
%class.StrX = type { ptr }

$_ZN11xercesc_2_714DefaultHandler10charactersEPKtj = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler10charactersEPKtj = comdat any

$_ZN11xercesc_2_714DefaultHandlerC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZlsRSoRK4StrX = comdat any

$_ZN4StrXC2EPKt = comdat any

$_ZN4StrXD2Ev = comdat any

$_ZN11xercesc_2_714DefaultHandlerD2Ev = comdat any

$_ZN11xercesc_2_714DefaultHandlerD0Ev = comdat any

$_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler11endDocumentEv = comdat any

$_ZN11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj = comdat any

$_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler13resetDocumentEv = comdat any

$_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE = comdat any

$_ZN11xercesc_2_714DefaultHandler13startDocumentEv = comdat any

$_ZN11xercesc_2_714DefaultHandler12startElementEPKtS2_S2_RKNS_10AttributesE = comdat any

$_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt = comdat any

$_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt = comdat any

$_ZN11xercesc_2_714DefaultHandler5errorERKNS_17SAXParseExceptionE = comdat any

$_ZN11xercesc_2_714DefaultHandler10fatalErrorERKNS_17SAXParseExceptionE = comdat any

$_ZN11xercesc_2_714DefaultHandler7warningERKNS_17SAXParseExceptionE = comdat any

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

$_ZThn8_N11xercesc_2_714DefaultHandlerD1Ev = comdat any

$_ZThn8_N11xercesc_2_714DefaultHandlerD0Ev = comdat any

$_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_ = comdat any

$_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_ = comdat any

$_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandlerD1Ev = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandlerD0Ev = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler11endDocumentEv = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_ = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_ = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler13startDocumentEv = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler12startElementEPKtS2_S2_RKNS_10AttributesE = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_ = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt = comdat any

$_ZThn24_N11xercesc_2_714DefaultHandlerD1Ev = comdat any

$_ZThn24_N11xercesc_2_714DefaultHandlerD0Ev = comdat any

$_ZThn24_N11xercesc_2_714DefaultHandler7warningERKNS_17SAXParseExceptionE = comdat any

$_ZThn24_N11xercesc_2_714DefaultHandler5errorERKNS_17SAXParseExceptionE = comdat any

$_ZThn24_N11xercesc_2_714DefaultHandler10fatalErrorERKNS_17SAXParseExceptionE = comdat any

$_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandlerD1Ev = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandlerD0Ev = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_ = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandlerD1Ev = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandlerD0Ev = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_ = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_ = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_ = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_ = comdat any

$_ZN11xercesc_2_714EntityResolverC2Ev = comdat any

$_ZN11xercesc_2_710DTDHandlerC2Ev = comdat any

$_ZN11xercesc_2_714ContentHandlerC2Ev = comdat any

$_ZN11xercesc_2_712ErrorHandlerC2Ev = comdat any

$_ZN11xercesc_2_714LexicalHandlerC2Ev = comdat any

$_ZN11xercesc_2_711DeclHandlerC2Ev = comdat any

$_ZN11xercesc_2_714EntityResolverD2Ev = comdat any

$_ZN11xercesc_2_714EntityResolverD0Ev = comdat any

$_ZN11xercesc_2_710DTDHandlerD2Ev = comdat any

$_ZN11xercesc_2_710DTDHandlerD0Ev = comdat any

$_ZN11xercesc_2_714ContentHandlerD2Ev = comdat any

$_ZN11xercesc_2_714ContentHandlerD0Ev = comdat any

$_ZN11xercesc_2_712ErrorHandlerD2Ev = comdat any

$_ZN11xercesc_2_712ErrorHandlerD0Ev = comdat any

$_ZN11xercesc_2_714LexicalHandlerD2Ev = comdat any

$_ZN11xercesc_2_714LexicalHandlerD0Ev = comdat any

$_ZN11xercesc_2_711DeclHandlerD2Ev = comdat any

$_ZN11xercesc_2_711DeclHandlerD0Ev = comdat any

$_ZNK4StrX9localFormEv = comdat any

$_ZTVN11xercesc_2_714DefaultHandlerE = comdat any

$_ZTSN11xercesc_2_714DefaultHandlerE = comdat any

$_ZTSN11xercesc_2_714EntityResolverE = comdat any

$_ZTIN11xercesc_2_714EntityResolverE = comdat any

$_ZTSN11xercesc_2_710DTDHandlerE = comdat any

$_ZTIN11xercesc_2_710DTDHandlerE = comdat any

$_ZTSN11xercesc_2_714ContentHandlerE = comdat any

$_ZTIN11xercesc_2_714ContentHandlerE = comdat any

$_ZTSN11xercesc_2_712ErrorHandlerE = comdat any

$_ZTIN11xercesc_2_712ErrorHandlerE = comdat any

$_ZTSN11xercesc_2_714LexicalHandlerE = comdat any

$_ZTIN11xercesc_2_714LexicalHandlerE = comdat any

$_ZTSN11xercesc_2_711DeclHandlerE = comdat any

$_ZTIN11xercesc_2_711DeclHandlerE = comdat any

$_ZTIN11xercesc_2_714DefaultHandlerE = comdat any

$_ZTVN11xercesc_2_714EntityResolverE = comdat any

$_ZTVN11xercesc_2_710DTDHandlerE = comdat any

$_ZTVN11xercesc_2_714ContentHandlerE = comdat any

$_ZTVN11xercesc_2_712ErrorHandlerE = comdat any

$_ZTVN11xercesc_2_714LexicalHandlerE = comdat any

$_ZTVN11xercesc_2_711DeclHandlerE = comdat any

@.str = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"* Copyright 1999-2004 The Apache Software Foundation.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"* Licensed under the Apache License, Version 2.0 (the \22License\22);\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"* you may not use this file except in compliance with the License.\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"* You may obtain a copy of the License at\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"*     http://www.apache.org/licenses/LICENSE-2.0\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"* Unless required by applicable law or agreed to in writing, software\0A\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"* distributed under the License is distributed on an \22AS IS\22 BASIS,\0A\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\0A\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"* See the License for the specific language governing permissions and\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"* limitations under the License.\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"*/\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"// ----------------------------------------------------------------\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"//  This file was generated from the XalanC error message source.\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"//  so do not edit this file directly!!\0A\00", align 1
@szApacheLicense = dso_local global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, ptr @.str.2, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.14, ptr null], align 16
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV11SAX2Handler = dso_local unnamed_addr constant { [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI11SAX2Handler, ptr @_ZN11SAX2HandlerD2Ev, ptr @_ZN11SAX2HandlerD0Ev, ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler10charactersEPKtj, ptr @_ZN11SAX2Handler11endDocumentEv, ptr @_ZN11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv, ptr @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZN11SAX2Handler13startDocumentEv, ptr @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE, ptr @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt, ptr @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv, ptr @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv, ptr @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [7 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTI11SAX2Handler, ptr @_ZThn8_N11SAX2HandlerD1Ev, ptr @_ZThn8_N11SAX2HandlerD0Ev, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv], [15 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTI11SAX2Handler, ptr @_ZThn16_N11SAX2HandlerD1Ev, ptr @_ZThn16_N11SAX2HandlerD0Ev, ptr @_ZThn16_N11xercesc_2_714DefaultHandler10charactersEPKtj, ptr @_ZThn16_N11SAX2Handler11endDocumentEv, ptr @_ZThn16_N11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZThn16_N11SAX2Handler13startDocumentEv, ptr @_ZThn16_N11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTI11SAX2Handler, ptr @_ZThn24_N11SAX2HandlerD1Ev, ptr @_ZThn24_N11SAX2HandlerD0Ev, ptr @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv], [11 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTI11SAX2Handler, ptr @_ZThn32_N11SAX2HandlerD1Ev, ptr @_ZThn32_N11SAX2HandlerD0Ev, ptr @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr @_ZTI11SAX2Handler, ptr @_ZThn40_N11SAX2HandlerD1Ev, ptr @_ZThn40_N11SAX2HandlerD0Ev, ptr @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_] }, align 8
@_ZL16szStartIndexFile = internal global [19 x ptr] [ptr @.str.13, ptr @.str.13, ptr @.str.13, ptr @.str.13, ptr @.str.25, ptr @.str.26, ptr @.str.13, ptr @.str.13, ptr @.str.13, ptr @.str.27, ptr @.str.13, ptr @.str.13, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr null], align 16
@_ZL16szBeginIndexLine = internal global [2 x ptr] [ptr @.str.34, ptr null], align 16
@_ZL14szEndIndexFile = internal global [13 x ptr] [ptr @.str.35, ptr @.str.13, ptr @.str.13, ptr @.str.36, ptr @.str.13, ptr @.str.13, ptr @.str.37, ptr @.str.13, ptr @.str.13, ptr @.str.38, ptr @.str.13, ptr @.str.13, ptr null], align 16
@_ZL16s_transUnitXMLCh = internal constant [11 x i16] [i16 116, i16 114, i16 97, i16 110, i16 115, i16 45, i16 117, i16 110, i16 105, i16 116, i16 0], align 16
@_ZL9s_idXMLCh = internal constant [3 x i16] [i16 105, i16 100, i16 0], align 2
@.str.17 = private unnamed_addr constant [10 x i8] c"\09\09 = %d \0A\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"\0AError at file \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c", line \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c", char \00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"\0A  Message: \00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"\0AFatal Error at file \00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"\0AWarning at file \00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_714DefaultHandlerE = linkonce_odr dso_local unnamed_addr constant { [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] } { [35 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DefaultHandlerE, ptr @_ZN11xercesc_2_714DefaultHandlerD2Ev, ptr @_ZN11xercesc_2_714DefaultHandlerD0Ev, ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler10charactersEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler11endDocumentEv, ptr @_ZN11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv, ptr @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZN11xercesc_2_714DefaultHandler13startDocumentEv, ptr @_ZN11xercesc_2_714DefaultHandler12startElementEPKtS2_S2_RKNS_10AttributesE, ptr @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler5errorERKNS_17SAXParseExceptionE, ptr @_ZN11xercesc_2_714DefaultHandler10fatalErrorERKNS_17SAXParseExceptionE, ptr @_ZN11xercesc_2_714DefaultHandler7warningERKNS_17SAXParseExceptionE, ptr @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv, ptr @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv, ptr @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_], [7 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_714DefaultHandlerE, ptr @_ZThn8_N11xercesc_2_714DefaultHandlerD1Ev, ptr @_ZThn8_N11xercesc_2_714DefaultHandlerD0Ev, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv], [15 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_714DefaultHandlerE, ptr @_ZThn16_N11xercesc_2_714DefaultHandlerD1Ev, ptr @_ZThn16_N11xercesc_2_714DefaultHandlerD0Ev, ptr @_ZThn16_N11xercesc_2_714DefaultHandler10charactersEPKtj, ptr @_ZThn16_N11xercesc_2_714DefaultHandler11endDocumentEv, ptr @_ZThn16_N11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZThn16_N11xercesc_2_714DefaultHandler13startDocumentEv, ptr @_ZThn16_N11xercesc_2_714DefaultHandler12startElementEPKtS2_S2_RKNS_10AttributesE, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_714DefaultHandlerE, ptr @_ZThn24_N11xercesc_2_714DefaultHandlerD1Ev, ptr @_ZThn24_N11xercesc_2_714DefaultHandlerD0Ev, ptr @_ZThn24_N11xercesc_2_714DefaultHandler7warningERKNS_17SAXParseExceptionE, ptr @_ZThn24_N11xercesc_2_714DefaultHandler5errorERKNS_17SAXParseExceptionE, ptr @_ZThn24_N11xercesc_2_714DefaultHandler10fatalErrorERKNS_17SAXParseExceptionE, ptr @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv], [11 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN11xercesc_2_714DefaultHandlerE, ptr @_ZThn32_N11xercesc_2_714DefaultHandlerD1Ev, ptr @_ZThn32_N11xercesc_2_714DefaultHandlerD0Ev, ptr @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr @_ZTIN11xercesc_2_714DefaultHandlerE, ptr @_ZThn40_N11xercesc_2_714DefaultHandlerD1Ev, ptr @_ZThn40_N11xercesc_2_714DefaultHandlerD0Ev, ptr @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_] }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_714DefaultHandlerE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714DefaultHandlerE\00", comdat, align 1
@_ZTSN11xercesc_2_714EntityResolverE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714EntityResolverE\00", comdat, align 1
@_ZTIN11xercesc_2_714EntityResolverE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714EntityResolverE }, comdat, align 8
@_ZTSN11xercesc_2_710DTDHandlerE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710DTDHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_710DTDHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710DTDHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_714ContentHandlerE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714ContentHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_714ContentHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714ContentHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_712ErrorHandlerE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712ErrorHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_712ErrorHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712ErrorHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_714LexicalHandlerE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714LexicalHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_714LexicalHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714LexicalHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_711DeclHandlerE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711DeclHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_711DeclHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711DeclHandlerE }, comdat, align 8
@_ZTIN11xercesc_2_714DefaultHandlerE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DefaultHandlerE, i32 0, i32 6, ptr @_ZTIN11xercesc_2_714EntityResolverE, i64 2, ptr @_ZTIN11xercesc_2_710DTDHandlerE, i64 2050, ptr @_ZTIN11xercesc_2_714ContentHandlerE, i64 4098, ptr @_ZTIN11xercesc_2_712ErrorHandlerE, i64 6146, ptr @_ZTIN11xercesc_2_714LexicalHandlerE, i64 8194, ptr @_ZTIN11xercesc_2_711DeclHandlerE, i64 10242 }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS11SAX2Handler = dso_local constant [14 x i8] c"11SAX2Handler\00", align 1
@_ZTI11SAX2Handler = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11SAX2Handler, ptr @_ZTIN11xercesc_2_714DefaultHandlerE }, align 8
@_ZTVN11xercesc_2_714EntityResolverE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714EntityResolverE, ptr @_ZN11xercesc_2_714EntityResolverD2Ev, ptr @_ZN11xercesc_2_714EntityResolverD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_710DTDHandlerE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710DTDHandlerE, ptr @_ZN11xercesc_2_710DTDHandlerD2Ev, ptr @_ZN11xercesc_2_710DTDHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_714ContentHandlerE = linkonce_odr dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714ContentHandlerE, ptr @_ZN11xercesc_2_714ContentHandlerD2Ev, ptr @_ZN11xercesc_2_714ContentHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_712ErrorHandlerE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712ErrorHandlerE, ptr @_ZN11xercesc_2_712ErrorHandlerD2Ev, ptr @_ZN11xercesc_2_712ErrorHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_714LexicalHandlerE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714LexicalHandlerE, ptr @_ZN11xercesc_2_714LexicalHandlerD2Ev, ptr @_ZN11xercesc_2_714LexicalHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_711DeclHandlerE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711DeclHandlerE, ptr @_ZN11xercesc_2_711DeclHandlerD2Ev, ptr @_ZN11xercesc_2_711DeclHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.24 = private unnamed_addr constant [18 x i8] c"LocalMsgIndex.hpp\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"#if !defined(XALAN_MSG_LOADER_INDEX_GUARD_1357924680) \0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"#define XALAN_MSG_LOADER_INDEX_GUARD_1357924680 \0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"XALAN_CPP_NAMESPACE_BEGIN\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"class XalanMessages\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"{ \0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"public : \0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"    enum Codes \0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"\09{ \0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"     ,\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"\09};\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"XALAN_CPP_NAMESPACE_END \0A\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"#endif //XALAN_MSG_LOADER_INDEX_GUARD_1357924680  \0A\00", align 1
@_ZTIN11xercesc_2_717SAXParseExceptionE = external constant ptr
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SAX2Handler.cpp, ptr null }]

@_ZN11SAX2HandlerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11SAX2HandlerD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler10charactersEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #15
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2HandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714DefaultHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  store i8 0, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  invoke void @_ZN21XalanFileOutputStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull @.str.24) #15
          to label %11 unwind label %12

11:                                               ; preds = %1
  ret void

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714DefaultHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_714EntityResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710DTDHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_714ContentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_712ErrorHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_714LexicalHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  tail call void @_ZN11xercesc_2_711DeclHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @_ZN21XalanFileOutputStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPt(ptr noundef nonnull %7) #15
          to label %11 unwind label %13

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #17
  tail call void @_ZN11xercesc_2_714DefaultHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret void

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString7releaseEPPt(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11SAX2HandlerD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11SAX2HandlerD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11SAX2HandlerD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11SAX2HandlerD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn40_N11SAX2HandlerD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11SAX2HandlerD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn8_N11SAX2HandlerD0Ev(ptr nocapture noundef readnone %0) unnamed_addr #11 align 2 {
  tail call void @_ZN11SAX2HandlerD0Ev(ptr nonnull align 8 poison) #17
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn16_N11SAX2HandlerD0Ev(ptr nocapture noundef readnone %0) unnamed_addr #11 align 2 {
  tail call void @_ZN11SAX2HandlerD0Ev(ptr nonnull align 8 poison) #17
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn24_N11SAX2HandlerD0Ev(ptr nocapture noundef readnone %0) unnamed_addr #11 align 2 {
  tail call void @_ZN11SAX2HandlerD0Ev(ptr nonnull align 8 poison) #17
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn32_N11SAX2HandlerD0Ev(ptr nocapture noundef readnone %0) unnamed_addr #11 align 2 {
  tail call void @_ZN11SAX2HandlerD0Ev(ptr nonnull align 8 poison) #17
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn40_N11SAX2HandlerD0Ev(ptr nocapture noundef readnone %0) unnamed_addr #11 align 2 {
  tail call void @_ZN11SAX2HandlerD0Ev(ptr nonnull align 8 poison) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler24createHeaderForIndexFileEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 align 2 !prof !34 {
  tail call void @_ZN11SAX2Handler16printToIndexFileEPPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @szApacheLicense) #15
  tail call void @_ZN11SAX2Handler16printToIndexFileEPPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @_ZL16szStartIndexFile) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler16printToIndexFileEPPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef readonly %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %13, %9 ]
  %11 = phi ptr [ %5, %7 ], [ %15, %9 ]
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %11) #15
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %11, i32 noundef %12) #15
  %13 = add nuw i64 %10, 1
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !55

17:                                               ; preds = %9, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler21printBeginOfIndexLineEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 align 2 !prof !34 {
  tail call void @_ZN11SAX2Handler16printToIndexFileEPPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @_ZL16szBeginIndexLine) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11SAX2Handler19printEndOfIndexLineEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(96) %0) local_unnamed_addr #12 align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler24createBottomForIndexFileEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 align 2 !prof !34 {
  tail call void @_ZN11SAX2Handler16printToIndexFileEPPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @_ZL14szEndIndexFile) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: optsize
declare void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #6 align 2 !prof !34 {
  %6 = alloca [100 x i8], align 16
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL16s_transUnitXMLCh) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = load ptr, ptr %4, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %14 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !38
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !38
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  br label %20

20:                                               ; preds = %18, %46
  %21 = phi i32 [ 0, %18 ], [ %47, %46 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %21) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %20
  %28 = call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef nonnull %25, ptr noundef nonnull @_ZL9s_idXMLCh) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load ptr, ptr %4, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 7
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %21) #15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %14, align 8, !tbaa !38
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void @_ZN11SAX2Handler21printBeginOfIndexLineEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #15
  br label %40

40:                                               ; preds = %39, %36
  %41 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %34) #15
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull %34, i32 noundef %41) #15
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #16
  %42 = load i32, ptr %14, align 8, !tbaa !38
  %43 = add nsw i32 %42, -1
  %44 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %43) #17
  %45 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %6) #15
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull %6, i32 noundef %45) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #16
  br label %46

46:                                               ; preds = %30, %40, %27, %20
  %47 = add nuw i32 %21, 1
  %48 = icmp eq i32 %47, %13
  br i1 %48, label %49, label %20, !llvm.loop !57

49:                                               ; preds = %46, %9, %5
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN21XalanFileOutputStream12writeAsASCIIEPKtj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !58 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !59

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !60
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !62

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !60
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !63, !llvm.loop !64

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #2 align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr poison, ptr noundef %2, ptr poison, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %class.StrX, align 8
  %4 = alloca %class.StrX, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  call void @_ZN4StrXC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %6) #15
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK4StrX(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
          to label %8 unwind label %33

8:                                                ; preds = %2
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.19) #15
          to label %10 unwind label %33

10:                                               ; preds = %8
  %11 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
          to label %12 unwind label %33

12:                                               ; preds = %10
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %11) #15
          to label %14 unwind label %33

14:                                               ; preds = %12
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.20) #15
          to label %16 unwind label %33

16:                                               ; preds = %14
  %17 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
          to label %18 unwind label %33

18:                                               ; preds = %16
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #15
          to label %20 unwind label %33

20:                                               ; preds = %18
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.21) #15
          to label %22 unwind label %33

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %23 = load ptr, ptr %1, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %27 unwind label %35

27:                                               ; preds = %22
  invoke void @_ZN4StrXC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %26) #15
          to label %28 unwind label %35

28:                                               ; preds = %27
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK4StrX(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
          to label %30 unwind label %37

30:                                               ; preds = %28
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #15
          to label %32 unwind label %37

32:                                               ; preds = %30
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void

33:                                               ; preds = %20, %18, %16, %14, %12, %10, %8, %2
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %41

35:                                               ; preds = %27, %22
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %30, %28
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %34, %33 ]
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  resume { ptr, i32 } %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK4StrX(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !34 {
  %3 = tail call noundef ptr @_ZNK4StrX9localFormEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #15
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN4StrXC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !34 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef %1) #15
  store ptr %3, ptr %0, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: optsize
declare noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %0) #15
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #18
  unreachable
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture noundef readnone %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 {
  tail call void @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %class.StrX, align 8
  %4 = alloca %class.StrX, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.22) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  call void @_ZN4StrXC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %6) #15
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK4StrX(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
          to label %8 unwind label %33

8:                                                ; preds = %2
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.19) #15
          to label %10 unwind label %33

10:                                               ; preds = %8
  %11 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
          to label %12 unwind label %33

12:                                               ; preds = %10
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %11) #15
          to label %14 unwind label %33

14:                                               ; preds = %12
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.20) #15
          to label %16 unwind label %33

16:                                               ; preds = %14
  %17 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
          to label %18 unwind label %33

18:                                               ; preds = %16
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #15
          to label %20 unwind label %33

20:                                               ; preds = %18
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.21) #15
          to label %22 unwind label %33

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %23 = load ptr, ptr %1, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %27 unwind label %35

27:                                               ; preds = %22
  invoke void @_ZN4StrXC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %26) #15
          to label %28 unwind label %35

28:                                               ; preds = %27
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK4StrX(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
          to label %30 unwind label %37

30:                                               ; preds = %28
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #15
          to label %32 unwind label %37

32:                                               ; preds = %30
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void

33:                                               ; preds = %20, %18, %16, %14, %12, %10, %8, %2
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %41

35:                                               ; preds = %27, %22
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %30, %28
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %34, %33 ]
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  resume { ptr, i32 } %42
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture noundef readnone %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 {
  tail call void @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %class.StrX, align 8
  %4 = alloca %class.StrX, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.23) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  call void @_ZN4StrXC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %6) #15
  %7 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK4StrX(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
          to label %8 unwind label %33

8:                                                ; preds = %2
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.19) #15
          to label %10 unwind label %33

10:                                               ; preds = %8
  %11 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
          to label %12 unwind label %33

12:                                               ; preds = %10
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %11) #15
          to label %14 unwind label %33

14:                                               ; preds = %12
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.20) #15
          to label %16 unwind label %33

16:                                               ; preds = %14
  %17 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
          to label %18 unwind label %33

18:                                               ; preds = %16
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEl(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #15
          to label %20 unwind label %33

20:                                               ; preds = %18
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.21) #15
          to label %22 unwind label %33

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %23 = load ptr, ptr %1, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
          to label %27 unwind label %35

27:                                               ; preds = %22
  invoke void @_ZN4StrXC2EPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %26) #15
          to label %28 unwind label %35

28:                                               ; preds = %27
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK4StrX(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
          to label %30 unwind label %37

30:                                               ; preds = %28
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #15
          to label %32 unwind label %37

32:                                               ; preds = %30
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void

33:                                               ; preds = %20, %18, %16, %14, %12, %10, %8, %2
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %41

35:                                               ; preds = %27, %22
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %30, %28
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %34, %33 ]
  call void @_ZN4StrXD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  resume { ptr, i32 } %42
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture noundef readnone %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 {
  tail call void @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler9setLocaleEPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPt(ptr noundef nonnull %3) #15
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKc(ptr noundef %1) #15
  store ptr %8, ptr %3, align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !34 {
  tail call void @_ZN11SAX2Handler24createHeaderForIndexFileEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N11SAX2Handler13startDocumentEv(ptr noundef %0) unnamed_addr #2 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !34 {
  tail call void @_ZN11SAX2Handler24createBottomForIndexFileEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N11SAX2Handler11endDocumentEv(ptr noundef %0) unnamed_addr #2 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  tail call void @_ZN11xercesc_2_711DeclHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %3 = getelementptr inbounds i8, ptr %0, i64 32
  tail call void @_ZN11xercesc_2_714LexicalHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_712ErrorHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_714ContentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710DTDHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  tail call void @_ZN11xercesc_2_714EntityResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_714DefaultHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12startElementEPKtS2_S2_RKNS_10AttributesE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler5errorERKNS_17SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10fatalErrorERKNS_17SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 56) #16
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1) #15
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #20
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler7warningERKNS_17SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandlerD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandlerD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandlerD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandlerD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler11endDocumentEv(ptr noundef %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler13startDocumentEv(ptr noundef %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler12startElementEPKtS2_S2_RKNS_10AttributesE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #2 comdat align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler12startElementEPKtS2_S2_RKNS_10AttributesE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandlerD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_714DefaultHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandlerD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_714DefaultHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler7warningERKNS_17SAXParseExceptionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_714DefaultHandler7warningERKNS_17SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler5errorERKNS_17SAXParseExceptionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_714DefaultHandler5errorERKNS_17SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler10fatalErrorERKNS_17SAXParseExceptionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_714DefaultHandler10fatalErrorERKNS_17SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandlerD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandlerD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandlerD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandlerD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #17
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 comdat align 2 {
  %7 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #15
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714EntityResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_714EntityResolverE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DTDHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !67 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ContentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !67 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_714ContentHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ErrorHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !68 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_712ErrorHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714LexicalHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !67 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_714LexicalHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DeclHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_711DeclHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714EntityResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714EntityResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DTDHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DTDHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ContentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ContentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ErrorHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ErrorHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714LexicalHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714LexicalHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DeclHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DeclHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4StrX9localFormEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_SAX2Handler.cpp() #2 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind optsize }
attributes #20 = { noreturn }

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
!38 = !{!39, !47, i64 48}
!39 = !{!"_ZTS11SAX2Handler", !40, i64 0, !47, i64 48, !49, i64 56, !50, i64 64, !51, i64 72}
!40 = !{!"_ZTSN11xercesc_2_714DefaultHandlerE", !41, i64 0, !42, i64 8, !43, i64 16, !44, i64 24, !45, i64 32, !46, i64 40}
!41 = !{!"_ZTSN11xercesc_2_714EntityResolverE"}
!42 = !{!"_ZTSN11xercesc_2_710DTDHandlerE"}
!43 = !{!"_ZTSN11xercesc_2_714ContentHandlerE"}
!44 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!45 = !{!"_ZTSN11xercesc_2_714LexicalHandlerE"}
!46 = !{!"_ZTSN11xercesc_2_711DeclHandlerE"}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !37, i64 0}
!49 = !{!"any pointer", !48, i64 0}
!50 = !{!"bool", !48, i64 0}
!51 = !{!"_ZTS21XalanFileOutputStream", !49, i64 8, !49, i64 16}
!52 = !{!39, !49, i64 56}
!53 = !{!39, !50, i64 64}
!54 = !{!49, !49, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = distinct !{!57, !56}
!58 = !{!"function_entry_count", i64 2453164456}
!59 = !{!"branch_weights", i32 1, i32 -1841802839}
!60 = !{!61, !61, i64 0}
!61 = !{!"short", !48, i64 0}
!62 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!63 = !{!"branch_weights", i32 408669070, i32 -279908794}
!64 = distinct !{!64, !56}
!65 = !{!66, !49, i64 0}
!66 = !{!"_ZTS4StrX", !49, i64 0}
!67 = !{!"function_entry_count", i64 1}
!68 = !{!"function_entry_count", i64 2}
