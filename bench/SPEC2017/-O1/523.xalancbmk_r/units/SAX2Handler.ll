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

$__clang_call_terminate = comdat any

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
@szApacheLicense = dso_local local_unnamed_addr global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, ptr @.str.2, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.14, ptr null], align 16
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV11SAX2Handler = dso_local unnamed_addr constant { [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI11SAX2Handler, ptr @_ZN11SAX2HandlerD2Ev, ptr @_ZN11SAX2HandlerD0Ev, ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler10charactersEPKtj, ptr @_ZN11SAX2Handler11endDocumentEv, ptr @_ZN11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv, ptr @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZN11SAX2Handler13startDocumentEv, ptr @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE, ptr @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt, ptr @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv, ptr @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv, ptr @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual], [7 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTI11SAX2Handler, ptr @_ZThn8_N11SAX2HandlerD1Ev, ptr @_ZThn8_N11SAX2HandlerD0Ev, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv], [15 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTI11SAX2Handler, ptr @_ZThn16_N11SAX2HandlerD1Ev, ptr @_ZThn16_N11SAX2HandlerD0Ev, ptr @_ZThn16_N11xercesc_2_714DefaultHandler10charactersEPKtj, ptr @_ZThn16_N11SAX2Handler11endDocumentEv, ptr @_ZThn16_N11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZThn16_N11SAX2Handler13startDocumentEv, ptr @_ZThn16_N11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTI11SAX2Handler, ptr @_ZThn24_N11SAX2HandlerD1Ev, ptr @_ZThn24_N11SAX2HandlerD0Ev, ptr @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv], [11 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTI11SAX2Handler, ptr @_ZThn32_N11SAX2HandlerD1Ev, ptr @_ZThn32_N11SAX2HandlerD0Ev, ptr @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr @_ZTI11SAX2Handler, ptr @_ZThn40_N11SAX2HandlerD1Ev, ptr @_ZThn40_N11SAX2HandlerD0Ev, ptr @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_] }, align 8
@_ZL16szStartIndexFile = internal unnamed_addr constant [19 x ptr] [ptr @.str.13, ptr @.str.13, ptr @.str.13, ptr @.str.13, ptr @.str.25, ptr @.str.26, ptr @.str.13, ptr @.str.13, ptr @.str.13, ptr @.str.27, ptr @.str.13, ptr @.str.13, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr null], align 16
@_ZL14szEndIndexFile = internal unnamed_addr constant [13 x ptr] [ptr @.str.35, ptr @.str.13, ptr @.str.13, ptr @.str.36, ptr @.str.13, ptr @.str.13, ptr @.str.37, ptr @.str.13, ptr @.str.13, ptr @.str.38, ptr @.str.13, ptr @.str.13, ptr null], align 16
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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler10charactersEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2HandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_714EntityResolverE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDHandlerE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_714ContentHandlerE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_712ErrorHandlerE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_714LexicalHandlerE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_711DeclHandlerE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [35 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTVN11xercesc_2_714DefaultHandlerE, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !56
  %9 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  store i8 0, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  tail call void @_ZN21XalanFileOutputStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull @.str.24)
  ret void
}

declare void @_ZN21XalanFileOutputStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV11SAX2Handler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPt(ptr noundef nonnull %7)
          to label %11 unwind label %13

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #19
  ret void

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

declare void @_ZN11xercesc_2_79XMLString7releaseEPPt(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !38 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11SAX2HandlerD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11SAX2HandlerD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11SAX2HandlerD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11SAX2HandlerD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn40_N11SAX2HandlerD1Ev(ptr noundef %0) unnamed_addr #9 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #19
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11SAX2HandlerD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn8_N11SAX2HandlerD0Ev(ptr nocapture readnone %0) unnamed_addr #12 align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn16_N11SAX2HandlerD0Ev(ptr nocapture readnone %0) unnamed_addr #12 align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn24_N11SAX2HandlerD0Ev(ptr nocapture readnone %0) unnamed_addr #12 align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn32_N11SAX2HandlerD0Ev(ptr nocapture readnone %0) unnamed_addr #12 align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZThn40_N11SAX2HandlerD0Ev(ptr nocapture readnone %0) unnamed_addr #12 align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler24createHeaderForIndexFileEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 align 2 !prof !38 {
  %2 = load ptr, ptr @szApacheLicense, align 16, !tbaa !58
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  br label %8

6:                                                ; preds = %8, %1
  %7 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  br label %16

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %12, %8 ]
  %10 = phi ptr [ %2, %4 ], [ %14, %8 ]
  %11 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %10)
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %10, i32 noundef %11)
  %12 = add nuw i64 %9, 1
  %13 = getelementptr inbounds ptr, ptr @szApacheLicense, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %8, !llvm.loop !59

16:                                               ; preds = %6, %16
  %17 = phi i64 [ 0, %6 ], [ %20, %16 ]
  %18 = phi ptr [ @.str.13, %6 ], [ %22, %16 ]
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %18)
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %18, i32 noundef %19)
  %20 = add nuw i64 %17, 1
  %21 = getelementptr inbounds ptr, ptr @_ZL16szStartIndexFile, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16, !llvm.loop !59

24:                                               ; preds = %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler16printToIndexFileEPPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef readonly %1) local_unnamed_addr #6 align 2 !prof !38 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %13, %9 ]
  %11 = phi ptr [ %5, %7 ], [ %15, %9 ]
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %11)
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %11, i32 noundef %12)
  %13 = add nuw i64 %10, 1
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !59

17:                                               ; preds = %9, %4, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler21printBeginOfIndexLineEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull @.str.34)
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @.str.34, i32 noundef %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11SAX2Handler19printEndOfIndexLineEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(96) %0) local_unnamed_addr #13 align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler24createBottomForIndexFileEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %7, %3 ]
  %5 = phi ptr [ @.str.35, %1 ], [ %9, %3 ]
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %5)
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %5, i32 noundef %6)
  %7 = add nuw i64 %4, 1
  %8 = getelementptr inbounds ptr, ptr @_ZL14szEndIndexFile, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !59

11:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

declare void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #6 align 2 !prof !38 {
  %6 = alloca [100 x i8], align 16
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL16s_transUnitXMLCh)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %65

9:                                                ; preds = %5
  %10 = load ptr, ptr %4, align 8, !tbaa !39
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %14 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !42
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  br label %21

21:                                               ; preds = %18, %62
  %22 = phi i32 [ 0, %18 ], [ %63, %62 ]
  %23 = load ptr, ptr %4, align 8, !tbaa !39
  %24 = getelementptr inbounds ptr, ptr %23, i64 5
  %25 = load ptr, ptr %24, align 8
  %26 = call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %22)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %21
  %29 = call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef nonnull %26, ptr noundef nonnull @_ZL9s_idXMLCh)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load ptr, ptr %4, align 8, !tbaa !39
  %33 = getelementptr inbounds ptr, ptr %32, i64 7
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %22)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %62, label %37

37:                                               ; preds = %31
  %38 = load i32, ptr %14, align 8, !tbaa !42
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull @.str.34)
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull @.str.34, i32 noundef %41)
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i16, ptr %35, align 2, !tbaa !62
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %47, %45 ], [ %35, %42 ]
  %47 = getelementptr inbounds i16, ptr %46, i64 1
  %48 = load i16, ptr %47, align 2, !tbaa !62
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %45, !llvm.loop !64

50:                                               ; preds = %45
  %51 = ptrtoint ptr %47 to i64
  %52 = ptrtoint ptr %35 to i64
  %53 = sub i64 %51, %52
  %54 = lshr exact i64 %53, 1
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %42, %50
  %57 = phi i32 [ %55, %50 ], [ 0, %42 ]
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull %35, i32 noundef %57)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #19
  %58 = load i32, ptr %14, align 8, !tbaa !42
  %59 = add nsw i32 %58, -1
  %60 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %59) #19
  %61 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %6)
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull %6, i32 noundef %61)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #19
  br label %62

62:                                               ; preds = %31, %56, %28, %21
  %63 = add nuw i32 %22, 1
  %64 = icmp eq i32 %63, %13
  br i1 %64, label %65, label %21, !llvm.loop !65

65:                                               ; preds = %62, %9, %5
  ret void
}

declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN21XalanFileOutputStream12writeAsASCIIEPKtj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #16 align 2 !prof !38 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr poison, ptr noundef %2, ptr poison, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %class.StrX, align 8
  %4 = alloca %class.StrX, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18, i64 noundef 15)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef %6)
  store ptr %7, ptr %3, align 8, !tbaa !66
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !39
  %11 = getelementptr i8, ptr %10, i64 -24
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %12
  %14 = getelementptr inbounds %"class.std::ios_base", ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = or i32 %15, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %13, i32 noundef %16)
          to label %20 unwind label %73

17:                                               ; preds = %2
  %18 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %7, i64 noundef %18)
          to label %20 unwind label %73

20:                                               ; preds = %17, %9
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %22 unwind label %73

22:                                               ; preds = %20
  %23 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %24 unwind label %73

24:                                               ; preds = %22
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %23)
          to label %26 unwind label %73

26:                                               ; preds = %24
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.20, i64 noundef 7)
          to label %28 unwind label %73

28:                                               ; preds = %26
  %29 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %30 unwind label %73

30:                                               ; preds = %28
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef %29)
          to label %32 unwind label %73

32:                                               ; preds = %30
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.21, i64 noundef 12)
          to label %34 unwind label %73

34:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %35 = load ptr, ptr %1, align 8, !tbaa !39
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %39 unwind label %75

39:                                               ; preds = %34
  %40 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef %38)
          to label %41 unwind label %75

41:                                               ; preds = %39
  store ptr %40, ptr %4, align 8, !tbaa !66
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = load ptr, ptr %31, align 8, !tbaa !39
  %45 = getelementptr i8, ptr %44, i64 -24
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr %31, i64 %46
  %48 = getelementptr inbounds %"class.std::ios_base", ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !68
  %50 = or i32 %49, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %47, i32 noundef %50)
          to label %54 unwind label %77

51:                                               ; preds = %41
  %52 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #19
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %40, i64 noundef %52)
          to label %54 unwind label %77

54:                                               ; preds = %51, %43
  %55 = load ptr, ptr %31, align 8, !tbaa !39
  %56 = getelementptr i8, ptr %55, i64 -24
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds i8, ptr %31, i64 %57
  %59 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %58, i8 noundef signext 10)
          to label %60 unwind label %77

60:                                               ; preds = %54
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext %59)
          to label %62 unwind label %77

62:                                               ; preds = %60
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %64 unwind label %77

64:                                               ; preds = %62
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %4)
          to label %68 unwind label %65

65:                                               ; preds = %64
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  call void @__clang_call_terminate(ptr %67) #20
  unreachable

68:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %3)
          to label %72 unwind label %69

69:                                               ; preds = %68
  %70 = landingpad { ptr, i32 }
          catch ptr null
  %71 = extractvalue { ptr, i32 } %70, 0
  call void @__clang_call_terminate(ptr %71) #20
  unreachable

72:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void

73:                                               ; preds = %32, %30, %26, %24, %20, %17, %9, %28, %22
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %84

75:                                               ; preds = %39, %34
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %82

77:                                               ; preds = %62, %60, %54, %51, %43
  %78 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %4)
          to label %82 unwind label %79

79:                                               ; preds = %77
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #20
  unreachable

82:                                               ; preds = %77, %75
  %83 = phi { ptr, i32 } [ %76, %75 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %84

84:                                               ; preds = %82, %73
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %74, %73 ]
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %3)
          to label %89 unwind label %86

86:                                               ; preds = %84
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #20
  unreachable

89:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  resume { ptr, i32 } %85
}

declare noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture noundef readnone %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #16 align 2 !prof !38 {
  tail call void @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %class.StrX, align 8
  %4 = alloca %class.StrX, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.22, i64 noundef 21)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef %6)
  store ptr %7, ptr %3, align 8, !tbaa !66
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !39
  %11 = getelementptr i8, ptr %10, i64 -24
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %12
  %14 = getelementptr inbounds %"class.std::ios_base", ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = or i32 %15, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %13, i32 noundef %16)
          to label %20 unwind label %73

17:                                               ; preds = %2
  %18 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %7, i64 noundef %18)
          to label %20 unwind label %73

20:                                               ; preds = %17, %9
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %22 unwind label %73

22:                                               ; preds = %20
  %23 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %24 unwind label %73

24:                                               ; preds = %22
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %23)
          to label %26 unwind label %73

26:                                               ; preds = %24
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.20, i64 noundef 7)
          to label %28 unwind label %73

28:                                               ; preds = %26
  %29 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %30 unwind label %73

30:                                               ; preds = %28
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef %29)
          to label %32 unwind label %73

32:                                               ; preds = %30
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.21, i64 noundef 12)
          to label %34 unwind label %73

34:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %35 = load ptr, ptr %1, align 8, !tbaa !39
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %39 unwind label %75

39:                                               ; preds = %34
  %40 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef %38)
          to label %41 unwind label %75

41:                                               ; preds = %39
  store ptr %40, ptr %4, align 8, !tbaa !66
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = load ptr, ptr %31, align 8, !tbaa !39
  %45 = getelementptr i8, ptr %44, i64 -24
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr %31, i64 %46
  %48 = getelementptr inbounds %"class.std::ios_base", ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !68
  %50 = or i32 %49, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %47, i32 noundef %50)
          to label %54 unwind label %77

51:                                               ; preds = %41
  %52 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #19
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %40, i64 noundef %52)
          to label %54 unwind label %77

54:                                               ; preds = %51, %43
  %55 = load ptr, ptr %31, align 8, !tbaa !39
  %56 = getelementptr i8, ptr %55, i64 -24
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds i8, ptr %31, i64 %57
  %59 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %58, i8 noundef signext 10)
          to label %60 unwind label %77

60:                                               ; preds = %54
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext %59)
          to label %62 unwind label %77

62:                                               ; preds = %60
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %64 unwind label %77

64:                                               ; preds = %62
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %4)
          to label %68 unwind label %65

65:                                               ; preds = %64
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  call void @__clang_call_terminate(ptr %67) #20
  unreachable

68:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %3)
          to label %72 unwind label %69

69:                                               ; preds = %68
  %70 = landingpad { ptr, i32 }
          catch ptr null
  %71 = extractvalue { ptr, i32 } %70, 0
  call void @__clang_call_terminate(ptr %71) #20
  unreachable

72:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void

73:                                               ; preds = %32, %30, %26, %24, %20, %17, %9, %28, %22
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %84

75:                                               ; preds = %39, %34
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %82

77:                                               ; preds = %62, %60, %54, %51, %43
  %78 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %4)
          to label %82 unwind label %79

79:                                               ; preds = %77
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #20
  unreachable

82:                                               ; preds = %77, %75
  %83 = phi { ptr, i32 } [ %76, %75 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %84

84:                                               ; preds = %82, %73
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %74, %73 ]
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %3)
          to label %89 unwind label %86

86:                                               ; preds = %84
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #20
  unreachable

89:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  resume { ptr, i32 } %85
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture noundef readnone %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #16 align 2 !prof !38 {
  tail call void @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca %class.StrX, align 8
  %4 = alloca %class.StrX, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.23, i64 noundef 17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef %6)
  store ptr %7, ptr %3, align 8, !tbaa !66
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !39
  %11 = getelementptr i8, ptr %10, i64 -24
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %12
  %14 = getelementptr inbounds %"class.std::ios_base", ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = or i32 %15, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %13, i32 noundef %16)
          to label %20 unwind label %73

17:                                               ; preds = %2
  %18 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %7, i64 noundef %18)
          to label %20 unwind label %73

20:                                               ; preds = %17, %9
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 7)
          to label %22 unwind label %73

22:                                               ; preds = %20
  %23 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %24 unwind label %73

24:                                               ; preds = %22
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 noundef %23)
          to label %26 unwind label %73

26:                                               ; preds = %24
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.20, i64 noundef 7)
          to label %28 unwind label %73

28:                                               ; preds = %26
  %29 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %30 unwind label %73

30:                                               ; preds = %28
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef %29)
          to label %32 unwind label %73

32:                                               ; preds = %30
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.21, i64 noundef 12)
          to label %34 unwind label %73

34:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %35 = load ptr, ptr %1, align 8, !tbaa !39
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %39 unwind label %75

39:                                               ; preds = %34
  %40 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef %38)
          to label %41 unwind label %75

41:                                               ; preds = %39
  store ptr %40, ptr %4, align 8, !tbaa !66
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = load ptr, ptr %31, align 8, !tbaa !39
  %45 = getelementptr i8, ptr %44, i64 -24
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr %31, i64 %46
  %48 = getelementptr inbounds %"class.std::ios_base", ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !68
  %50 = or i32 %49, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %47, i32 noundef %50)
          to label %54 unwind label %77

51:                                               ; preds = %41
  %52 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #19
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %40, i64 noundef %52)
          to label %54 unwind label %77

54:                                               ; preds = %51, %43
  %55 = load ptr, ptr %31, align 8, !tbaa !39
  %56 = getelementptr i8, ptr %55, i64 -24
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds i8, ptr %31, i64 %57
  %59 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %58, i8 noundef signext 10)
          to label %60 unwind label %77

60:                                               ; preds = %54
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext %59)
          to label %62 unwind label %77

62:                                               ; preds = %60
  %63 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %64 unwind label %77

64:                                               ; preds = %62
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %4)
          to label %68 unwind label %65

65:                                               ; preds = %64
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  call void @__clang_call_terminate(ptr %67) #20
  unreachable

68:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %3)
          to label %72 unwind label %69

69:                                               ; preds = %68
  %70 = landingpad { ptr, i32 }
          catch ptr null
  %71 = extractvalue { ptr, i32 } %70, 0
  call void @__clang_call_terminate(ptr %71) #20
  unreachable

72:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void

73:                                               ; preds = %32, %30, %26, %24, %20, %17, %9, %28, %22
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %84

75:                                               ; preds = %39, %34
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %82

77:                                               ; preds = %62, %60, %54, %51, %43
  %78 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %4)
          to label %82 unwind label %79

79:                                               ; preds = %77
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #20
  unreachable

82:                                               ; preds = %77, %75
  %83 = phi { ptr, i32 } [ %76, %75 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %84

84:                                               ; preds = %82, %73
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %74, %73 ]
  invoke void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef nonnull %3)
          to label %89 unwind label %86

86:                                               ; preds = %84
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #20
  unreachable

89:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  resume { ptr, i32 } %85
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr nocapture noundef readnone %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #16 align 2 !prof !38 {
  tail call void @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler9setLocaleEPKc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !38 {
  %3 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPt(ptr noundef nonnull %3)
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKc(ptr noundef %1)
  store ptr %8, ptr %3, align 8, !tbaa !56
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !38 {
  tail call void @_ZN11SAX2Handler24createHeaderForIndexFileEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N11SAX2Handler13startDocumentEv(ptr noundef %0) unnamed_addr #16 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11SAX2Handler24createHeaderForIndexFileEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 4
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %7, %3 ]
  %5 = phi ptr [ @.str.35, %1 ], [ %9, %3 ]
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %5)
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %5, i32 noundef %6)
  %7 = add nuw i64 %4, 1
  %8 = getelementptr inbounds ptr, ptr @_ZL14szEndIndexFile, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !59

11:                                               ; preds = %3
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N11SAX2Handler11endDocumentEv(ptr noundef %0) unnamed_addr #16 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 56
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %7, %3 ]
  %5 = phi ptr [ @.str.35, %1 ], [ %9, %3 ]
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %5)
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %5, i32 noundef %6)
  %7 = add nuw i64 %4, 1
  %8 = getelementptr inbounds ptr, ptr @_ZL14szEndIndexFile, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !59

11:                                               ; preds = %3
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !38 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12startElementEPKtS2_S2_RKNS_10AttributesE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler5errorERKNS_17SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10fatalErrorERKNS_17SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 56) #19
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #22
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #19
  resume { ptr, i32 } %6
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler7warningERKNS_17SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandlerD1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandlerD0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZdlPv(ptr noundef %2) #21
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandlerD1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandlerD0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZdlPv(ptr noundef %2) #21
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler11endDocumentEv(ptr noundef %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler10endElementEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler13startDocumentEv(ptr noundef %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler12startElementEPKtS2_S2_RKNS_10AttributesE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandlerD1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandlerD0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZdlPv(ptr noundef %2) #21
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler7warningERKNS_17SAXParseExceptionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler5errorERKNS_17SAXParseExceptionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler10fatalErrorERKNS_17SAXParseExceptionE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 56) #19
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #22
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #19
  resume { ptr, i32 } %6
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandlerD1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandlerD0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZdlPv(ptr noundef %2) #21
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandlerD1Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandlerD0Ev(ptr noundef %0) unnamed_addr #9 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZdlPv(ptr noundef %2) #21
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714EntityResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714EntityResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DTDHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DTDHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ContentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714ContentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ErrorHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ErrorHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714LexicalHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714LexicalHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DeclHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DeclHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !38 {
  tail call void @llvm.trap() #20
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKt(ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79XMLString7releaseEPPc(ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_SAX2Handler.cpp() #16 section ".text.startup" !prof !75 !PGOFuncName !76 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  ret void
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }

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
!35 = !{ptr @_GLOBAL__sub_I_SAX2Handler.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_SAX2Handler.cpp, ptr @__cxa_atexit, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !51, i64 48}
!43 = !{!"_ZTS11SAX2Handler", !44, i64 0, !51, i64 48, !53, i64 56, !54, i64 64, !55, i64 72}
!44 = !{!"_ZTSN11xercesc_2_714DefaultHandlerE", !45, i64 0, !46, i64 8, !47, i64 16, !48, i64 24, !49, i64 32, !50, i64 40}
!45 = !{!"_ZTSN11xercesc_2_714EntityResolverE"}
!46 = !{!"_ZTSN11xercesc_2_710DTDHandlerE"}
!47 = !{!"_ZTSN11xercesc_2_714ContentHandlerE"}
!48 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!49 = !{!"_ZTSN11xercesc_2_714LexicalHandlerE"}
!50 = !{!"_ZTSN11xercesc_2_711DeclHandlerE"}
!51 = !{!"int", !52, i64 0}
!52 = !{!"omnipotent char", !41, i64 0}
!53 = !{!"any pointer", !52, i64 0}
!54 = !{!"bool", !52, i64 0}
!55 = !{!"_ZTS21XalanFileOutputStream", !53, i64 8, !53, i64 16}
!56 = !{!43, !53, i64 56}
!57 = !{!43, !54, i64 64}
!58 = !{!53, !53, i64 0}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !52, i64 0}
!64 = distinct !{!64, !60, !61}
!65 = distinct !{!65, !60, !61}
!66 = !{!67, !53, i64 0}
!67 = !{!"_ZTS4StrX", !53, i64 0}
!68 = !{!69, !72, i64 32}
!69 = !{!"_ZTSSt8ios_base", !70, i64 8, !70, i64 16, !71, i64 24, !72, i64 28, !72, i64 32, !53, i64 40, !73, i64 48, !52, i64 64, !51, i64 192, !53, i64 200, !74, i64 208}
!70 = !{!"long", !52, i64 0}
!71 = !{!"_ZTSSt13_Ios_Fmtflags", !52, i64 0}
!72 = !{!"_ZTSSt12_Ios_Iostate", !52, i64 0}
!73 = !{!"_ZTSNSt8ios_base6_WordsE", !53, i64 0, !70, i64 8}
!74 = !{!"_ZTSSt6locale", !53, i64 0}
!75 = !{!"function_entry_count", i64 1}
!76 = !{!"SAX2Handler.cpp;_GLOBAL__sub_I_SAX2Handler.cpp"}
