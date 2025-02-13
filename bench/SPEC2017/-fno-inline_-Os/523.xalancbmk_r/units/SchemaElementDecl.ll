; ModuleID = 'SchemaElementDecl.cpp'
source_filename = "SchemaElementDecl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::UnionDatatypeValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi = comdat any

$_ZN11xercesc_2_712SchemaAttDef9setElemIdEj = comdat any

$_ZNK11xercesc_2_714XMLElementDecl5getIdEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_ = comdat any

$_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ComplexTypeInfoE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_17SchemaElementDeclE = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl14getContentSpecEv = comdat any

$_ZN11xercesc_2_717SchemaElementDecl14getContentSpecEv = comdat any

$_ZN11xercesc_2_717SchemaElementDecl14setContentSpecEPNS_15ContentSpecNodeE = comdat any

$_ZN11xercesc_2_717SchemaElementDecl15getContentModelEv = comdat any

$_ZN11xercesc_2_717SchemaElementDecl15setContentModelEPNS_15XMLContentModelE = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl17getDOMTypeInfoUriEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl18getDOMTypeInfoNameEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl12isGlobalDeclEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl16getTypeAnonymousEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl22getMemberTypeAnonymousEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnionDatatypeValidator16getMemberTypeUriEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl10getTypeUriEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo12getAnonymousEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv = comdat any

$_ZNK11xercesc_2_722UnionDatatypeValidator22getMemberTypeAnonymousEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getTypeUriEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo10getTypeUriEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl11getTypeTypeEv = comdat any

$_ZNK11xercesc_2_722UnionDatatypeValidator17getMemberTypeNameEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl11getTypeNameEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo16getTypeLocalNameEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv = comdat any

$_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEC2EPviPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE5resetEPS4_ = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN11xercesc_2_717SchemaElementDeclE = dso_local unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717SchemaElementDeclE, ptr @_ZN11xercesc_2_717SchemaElementDeclD2Ev, ptr @_ZN11xercesc_2_717SchemaElementDeclD0Ev, ptr @_ZNK11xercesc_2_717SchemaElementDecl14isSerializableEv, ptr @_ZN11xercesc_2_717SchemaElementDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_717SchemaElementDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_717SchemaElementDecl8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb, ptr @_ZNK11xercesc_2_717SchemaElementDecl13getAttDefListEv, ptr @_ZNK11xercesc_2_717SchemaElementDecl15getCharDataOptsEv, ptr @_ZNK11xercesc_2_717SchemaElementDecl10hasAttDefsEv, ptr @_ZN11xercesc_2_717SchemaElementDecl9resetDefsEv, ptr @_ZNK11xercesc_2_717SchemaElementDecl14getContentSpecEv, ptr @_ZN11xercesc_2_717SchemaElementDecl14getContentSpecEv, ptr @_ZN11xercesc_2_717SchemaElementDecl14setContentSpecEPNS_15ContentSpecNodeE, ptr @_ZN11xercesc_2_717SchemaElementDecl15getContentModelEv, ptr @_ZN11xercesc_2_717SchemaElementDecl15setContentModelEPNS_15XMLContentModelE, ptr @_ZNK11xercesc_2_717SchemaElementDecl24getFormattedContentModelEv, ptr @_ZNK11xercesc_2_717SchemaElementDecl17getDOMTypeInfoUriEv, ptr @_ZNK11xercesc_2_717SchemaElementDecl18getDOMTypeInfoNameEv, ptr @_ZNK11xercesc_2_717SchemaElementDecl13getObjectTypeEv, ptr @_ZNK11xercesc_2_717SchemaElementDecl12isGlobalDeclEv] }, align 8
@.str = private unnamed_addr constant [22 x i8] c"SchemaElementDecl.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"SchemaElementDecl\00", align 1
@_ZN11xercesc_2_717SchemaElementDecl22classSchemaElementDeclE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_717SchemaElementDecl12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTSN11xercesc_2_717SchemaElementDeclE = dso_local constant [35 x i8] c"N11xercesc_2_717SchemaElementDeclE\00", align 1
@_ZTIN11xercesc_2_714XMLElementDeclE = external constant ptr
@_ZTIN11xercesc_2_717SchemaElementDeclE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717SchemaElementDeclE, ptr @_ZTIN11xercesc_2_714XMLElementDeclE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_715ComplexTypeInfo20classComplexTypeInfoE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_717SchemaElementDeclC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_717SchemaElementDeclC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i32, ptr), ptr @_ZN11xercesc_2_717SchemaElementDeclC2EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE
@_ZN11xercesc_2_717SchemaElementDeclC1EPKNS_5QNameENS0_10ModelTypesEjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_717SchemaElementDeclC2EPKNS_5QNameENS0_10ModelTypesEjPNS_13MemoryManagerE
@_ZN11xercesc_2_717SchemaElementDeclD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717SchemaElementDeclD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !64 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) #11
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_717SchemaElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  store <4 x i32> <i32 1, i32 0, i32 1, i32 1>, ptr %3, align 4, !tbaa !68
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  store <4 x i32> <i32 -2, i32 0, i32 0, i32 0>, ptr %4, align 4, !tbaa !70
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %5, i8 0, i64 75, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDeclC2EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %6) #11
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_717SchemaElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  store i32 %4, ptr %8, align 4, !tbaa !73
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !84
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  store i32 1, ptr %10, align 4, !tbaa !85
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 5
  store i32 1, ptr %11, align 8, !tbaa !86
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  store i32 %5, ptr %12, align 4, !tbaa !87
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 7
  store i32 0, ptr %13, align 8, !tbaa !88
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  store i32 0, ptr %14, align 4, !tbaa !89
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  store i32 0, ptr %15, align 8, !tbaa !90
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %16, i8 0, i64 75, i1 false)
  invoke void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
          to label %17 unwind label %18

17:                                               ; preds = %7
  ret void

18:                                               ; preds = %7
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #12
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDeclC2EPKNS_5QNameENS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_717SchemaElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 4, !tbaa !73
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !84
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  store i32 1, ptr %8, align 4, !tbaa !85
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 5
  store i32 1, ptr %9, align 8, !tbaa !86
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  store i32 %3, ptr %10, align 4, !tbaa !87
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 7
  store i32 0, ptr %11, align 8, !tbaa !88
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  store i32 0, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  store i32 0, ptr %13, align 8, !tbaa !90
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %14, i8 0, i64 75, i1 false)
  invoke void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) #11
          to label %15 unwind label %16

15:                                               ; preds = %5
  ret void

16:                                               ; preds = %5
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #12
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_717SchemaElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  %2 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #11
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = load ptr, ptr %2, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #11
          to label %8 unwind label %30

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %10) #12
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(40) %15) #12
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(120) %23) #12
  br label %29

29:                                               ; preds = %25, %21
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #12
  ret void

30:                                               ; preds = %1
  %31 = landingpad { ptr, i32 }
          catch ptr null
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #4 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = load ptr, ptr %3, align 8, !tbaa !65
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #11
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !65
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_717SchemaElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(147) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb(ptr noundef nonnull align 8 dereferenceable(176) %9, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #11
  br label %47

13:                                               ; preds = %7
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #11
  %21 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %20) #11
  %22 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #11
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 29, i1 noundef zeroext true, ptr noundef %22) #11
          to label %23 unwind label %24

23:                                               ; preds = %19
  store ptr %21, ptr %16, align 8, !tbaa !92
  br label %26

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #12
  br label %44

26:                                               ; preds = %23, %15
  %27 = phi ptr [ %21, %23 ], [ %17, %15 ]
  %28 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef %3, i32 noundef %2) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #11
  %32 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %31) #11
  %33 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #11
  invoke void @_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %32, ptr noundef %4, ptr noundef %3, i32 noundef %2, i32 noundef 0, i32 noundef 4, ptr noundef %33) #11
          to label %34 unwind label %39

34:                                               ; preds = %30
  %35 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #11
  tail call void @_ZN11xercesc_2_712SchemaAttDef9setElemIdEj(ptr noundef nonnull align 8 dereferenceable(120) %32, i32 noundef %35) #11
  %36 = load ptr, ptr %16, align 8, !tbaa !92
  %37 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %32) #11
  %38 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %37) #11
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef %38, i32 noundef %2, ptr noundef nonnull %32) #11
  br label %41

39:                                               ; preds = %30
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %32, ptr noundef %31) #12
  br label %44

41:                                               ; preds = %26, %34
  %42 = phi i8 [ 1, %34 ], [ 0, %26 ]
  %43 = phi ptr [ %32, %34 ], [ %28, %26 ]
  store i8 %42, ptr %6, align 1, !tbaa !103
  br label %47

44:                                               ; preds = %39, %24
  %45 = phi { ptr, i32 } [ %40, %39 ], [ %25, %24 ]
  resume { ptr, i32 } %45

46:                                               ; preds = %13
  store i8 0, ptr %6, align 1, !tbaa !103
  br label %47

47:                                               ; preds = %46, %41, %11
  %48 = phi ptr [ %12, %11 ], [ %43, %41 ], [ null, %46 ]
  ret ptr %48
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr %3, ptr %0, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !104
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !100
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !105
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !106
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !101
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #11
  %11 = load ptr, ptr %0, align 8, !tbaa !98
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %11) #11
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #11
          to label %13 unwind label %14

13:                                               ; preds = %4
  store ptr %12, ptr %10, align 8, !tbaa !101
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #12
  resume { ptr, i32 } %15
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !107 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !108

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !109
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret ptr %10
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712SchemaAttDef9setElemIdEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !111 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !118
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !106
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !119

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16, !prof !119

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !104, !range !120, !noundef !121
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !109
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !65
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(120) %21) #12
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !109
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !122
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %29, align 8, !tbaa !123
  br label %48

30:                                               ; preds = %13
  %31 = load ptr, ptr %0, align 8, !tbaa !98
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 32) #11
  %36 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !100
  %38 = load i32, ptr %5, align 4, !tbaa !70
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !124
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %35, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %41) #11
  %42 = load ptr, ptr %36, align 8, !tbaa !100
  %43 = load i32, ptr %5, align 4, !tbaa !70
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  store ptr %35, ptr %45, align 8, !tbaa !124
  %46 = load i32, ptr %9, align 4, !tbaa !106
  %47 = add i32 %46, 1
  store i32 %47, ptr %9, align 4, !tbaa !106
  br label %48

48:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #4 comdat align 2 !prof !125 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_717SchemaElementDecl13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !131

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %7 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #11
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 203, i32 noundef 301, ptr noundef %7) #11
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #9
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #11
  ret ptr %12
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #11
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl15getCharDataOptsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0) unnamed_addr #4 align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !73
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %5) #11
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %3, %1 ]
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 2
  %13 = icmp eq i32 %10, 4
  %14 = select i1 %13, i32 1, i32 %12
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 8, !tbaa !133
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl10hasAttDefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0) unnamed_addr #2 align 2 !prof !135 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !136

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #11
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i1 [ %6, %5 ], [ false, %1 ]
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #2 comdat align 2 !prof !137 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !138
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  %5 = xor i1 %4, true
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SchemaElementDecl9resetDefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0) unnamed_addr #2 align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_715ComplexTypeInfo9resetDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #11
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #11
  br label %12

12:                                               ; preds = %11, %7, %5
  %13 = phi i1 [ %6, %5 ], [ false, %7 ], [ false, %11 ]
  ret i1 %13
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_715ComplexTypeInfo9resetDefsEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !97 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  br i1 %2, label %48, label %3, !prof !139

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !105
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !140

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !106
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !100
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !124
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !141

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !142
  %23 = load i8, ptr %9, align 8, !tbaa !104, !range !120, !noundef !121
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !143

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !109
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !65
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(120) %26) #12
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !98
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #11
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !144, !llvm.loop !145

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !100
  %40 = load i32, ptr %4, align 8, !tbaa !105
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !124
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !147, !llvm.loop !148

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl24getFormattedContentModelEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0) unnamed_addr #2 align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo24getFormattedContentModelEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #11
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo24getFormattedContentModelEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl9getAttDefEPKti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !64 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef %1, i32 noundef %2) #11
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !107 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  %6 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1, i32 noundef %2) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SchemaElementDecl9getAttDefEPKti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !149 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !150

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef %1, i32 noundef %2) #11
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SchemaElementDecl12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %0) #11
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %2, ptr noundef %0) #11
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #12
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !64 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_717SchemaElementDecl12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !64 {
  ret ptr @_ZN11xercesc_2_717SchemaElementDecl22classSchemaElementDeclE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !64 {
  %3 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_714XMLElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  br i1 %4, label %5, label %64

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !73
  %8 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %7) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !84
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %10) #11
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !85
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %13) #11
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !86
  %17 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %16) #11
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !87
  %20 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %19) #11
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !88
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %22) #11
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !89
  %26 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %25) #11
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !90
  %29 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %28) #11
  %30 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %31, i32 noundef 0, i1 noundef zeroext false) #11
  %32 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  %34 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %33) #11
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef %36, ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  %37 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 14
  %38 = load ptr, ptr %37, align 8, !tbaa !151
  %39 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %38) #11
  %40 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !152
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %41) #11
  %42 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %43 = load ptr, ptr %42, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_18IdentityConstraintEEERNS_16XSerializeEngineE(ptr noundef %43, ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  %44 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !94
  %46 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %45) #11
  %47 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 18
  %48 = load ptr, ptr %47, align 8, !tbaa !153
  %49 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %48) #11
  %50 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !154
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %51) #11
  %52 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 20
  %53 = load i8, ptr %52, align 8, !tbaa !155, !range !120, !noundef !121
  %54 = icmp ne i8 %53, 0
  %55 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %54) #11
  %56 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 21
  %57 = load i8, ptr %56, align 1, !tbaa !156, !range !120, !noundef !121
  %58 = icmp ne i8 %57, 0
  %59 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %58) #11
  %60 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 22
  %61 = load i8, ptr %60, align 2, !tbaa !157, !range !120, !noundef !121
  %62 = icmp ne i8 %61, 0
  %63 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %62) #11
  br label %106

64:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %65 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #11
  %66 = load i32, ptr %3, align 4, !tbaa !70
  %67 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  store i32 %66, ptr %67, align 4, !tbaa !73
  %68 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #11
  %69 = load i32, ptr %3, align 4, !tbaa !70
  %70 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  store i32 %69, ptr %70, align 8, !tbaa !84
  %71 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #11
  %72 = load i32, ptr %3, align 4, !tbaa !70
  %73 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  store i32 %72, ptr %73, align 4, !tbaa !85
  %74 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #11
  %75 = load i32, ptr %3, align 4, !tbaa !70
  %76 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 5
  store i32 %75, ptr %76, align 8, !tbaa !86
  %77 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %78 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %77) #11
  %79 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 7
  %80 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %79) #11
  %81 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  %82 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %81) #11
  %83 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  %84 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %83) #11
  %85 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %85) #11
  %86 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %87 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %86) #11
  %88 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 13
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %88, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  %89 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 14
  %90 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %89) #11
  %91 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  %92 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  store ptr %91, ptr %92, align 8, !tbaa !152
  %93 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_18IdentityConstraintEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %93, i32 noundef 16, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  %94 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 17
  %95 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %94) #11
  %96 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 18
  %97 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_17SchemaElementDeclE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %96) #11
  %98 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #11
  %99 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  store ptr %98, ptr %99, align 8, !tbaa !154
  %100 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 20
  %101 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %100) #11
  %102 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 21
  %103 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %102) #11
  %104 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 22
  %105 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %104) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %106

106:                                              ; preds = %64, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = load i16, ptr %0, align 8, !tbaa !158
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !64 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #11
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_18IdentityConstraintEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ComplexTypeInfoE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !64 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_715ComplexTypeInfo20classComplexTypeInfoE) #11
  store ptr %3, ptr %1, align 8, !tbaa !124
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_18IdentityConstraintEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_12SchemaAttDefE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !64 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE) #11
  store ptr %3, ptr %1, align 8, !tbaa !124
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_17SchemaElementDeclE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !64 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_717SchemaElementDecl22classSchemaElementDeclE) #11
  store ptr %3, ptr %1, align 8, !tbaa !124
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl13getObjectTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !64 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #11
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717SchemaElementDecl14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #11
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717SchemaElementDecl14setContentSpecEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !64 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717SchemaElementDecl15getContentModelEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %3, i1 noundef zeroext false) #11
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717SchemaElementDecl15setContentModelEPNS_15XMLContentModelE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !64 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl17getDOMTypeInfoUriEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl16getTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(147) %0) #11
  br i1 %6, label %31, label %7

7:                                                ; preds = %5
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl22getMemberTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(147) %0) #11
  br i1 %8, label %31, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %11) #11
  %15 = icmp eq i32 %14, 25
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr %10, align 8, !tbaa !154
  %18 = tail call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator16getMemberTypeUriEv(ptr noundef nonnull align 8 dereferenceable(136) %17) #11
  br label %31

19:                                               ; preds = %13, %9
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !152
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %21) #11
  %25 = icmp eq i32 %24, 25
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load ptr, ptr %20, align 8, !tbaa !152
  %28 = tail call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator16getMemberTypeUriEv(ptr noundef nonnull align 8 dereferenceable(136) %27) #11
  br label %31

29:                                               ; preds = %23, %19
  %30 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(147) %0) #11
  br label %31

31:                                               ; preds = %5, %7, %1, %29, %26, %16
  %32 = phi ptr [ %18, %16 ], [ %28, %26 ], [ %30, %29 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %1 ], [ null, %7 ], [ null, %5 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getDOMTypeInfoNameEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getTypeTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) #11
  %7 = icmp eq i32 %6, 1
  %8 = select i1 %7, ptr @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, ptr @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE
  br label %35

9:                                                ; preds = %1
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl16getTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(147) %0) #11
  br i1 %10, label %35, label %11

11:                                               ; preds = %9
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl22getMemberTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(147) %0) #11
  br i1 %12, label %35, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !154
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %15) #11
  %19 = icmp eq i32 %18, 25
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr %14, align 8, !tbaa !154
  %22 = tail call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator17getMemberTypeNameEv(ptr noundef nonnull align 8 dereferenceable(136) %21) #11
  br label %35

23:                                               ; preds = %17, %13
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !152
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %25) #11
  %29 = icmp eq i32 %28, 25
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr %24, align 8, !tbaa !152
  %32 = tail call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator17getMemberTypeNameEv(ptr noundef nonnull align 8 dereferenceable(136) %31) #11
  br label %35

33:                                               ; preds = %27, %23
  %34 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl11getTypeNameEv(ptr noundef nonnull align 8 dereferenceable(147) %0) #11
  br label %35

35:                                               ; preds = %9, %11, %5, %33, %30, %20
  %36 = phi ptr [ %22, %20 ], [ %32, %30 ], [ %34, %33 ], [ %8, %5 ], [ null, %11 ], [ null, %9 ]
  ret ptr %36
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl12isGlobalDeclEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = icmp eq i32 %3, -2
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !64 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !64 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !106
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !168 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12, !prof !170

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !171

10:                                               ; preds = %6
  %11 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) #11
  store ptr %11, ptr %3, align 8, !tbaa !169
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ %4, %2 ]
  ret ptr %13
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl16getTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #11
  br label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(176) %9) #11
  br label %25

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !152
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(104) %15) #11
  br label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !154
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(104) %21) #11
  br label %25

25:                                               ; preds = %19, %23, %17, %11, %5
  %26 = phi i1 [ %6, %5 ], [ %12, %11 ], [ %18, %17 ], [ %24, %23 ], [ false, %19 ]
  ret i1 %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl22getMemberTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !152
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #11
  %7 = icmp eq i32 %6, 25
  br i1 %7, label %15, label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !154
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %10) #11
  %14 = icmp eq i32 %13, 25
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %5
  %16 = phi ptr [ %2, %5 ], [ %9, %12 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !124
  %18 = tail call noundef zeroext i1 @_ZNK11xercesc_2_722UnionDatatypeValidator22getMemberTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(136) %17) #11
  br label %19

19:                                               ; preds = %15, %12, %8
  %20 = phi i1 [ false, %8 ], [ false, %12 ], [ %18, %15 ]
  ret i1 %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #4 comdat align 2 !prof !172 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !173
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator16getMemberTypeUriEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #11
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #11
  br label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(176) %9) #11
  br label %25

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !152
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(104) %15) #11
  br label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !154
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(104) %21) #11
  br label %25

25:                                               ; preds = %19, %23, %17, %11, %5
  %26 = phi ptr [ %6, %5 ], [ %12, %11 ], [ %18, %17 ], [ %24, %23 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %19 ]
  ret ptr %26
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ComplexTypeInfo12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !179, !range !120, !noundef !121
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !180, !range !120, !noundef !121
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_722UnionDatatypeValidator22getMemberTypeAnonymousEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator12getAnonymousEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #11
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i1 [ %6, %5 ], [ false, %1 ]
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #4 comdat align 2 !prof !181 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo10getTypeUriEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getTypeTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) #11
  %3 = icmp eq i32 %2, 5
  %4 = select i1 %3, i32 1, i32 2
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator17getMemberTypeNameEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !177
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #11
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl11getTypeNameEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #11
  br label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(176) %9) #11
  br label %25

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !152
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(104) %15) #11
  br label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !154
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(104) %21) #11
  br label %25

25:                                               ; preds = %19, %23, %17, %11, %5
  %26 = phi ptr [ %6, %5 ], [ %12, %11 ], [ %18, %17 ], [ %24, %23 ], [ @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE, %19 ]
  ret ptr %26
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #4 comdat align 2 !prof !184 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !185

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #11
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !73
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo16getTypeLocalNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 !prof !189 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !105
  %9 = load ptr, ptr %0, align 8, !tbaa !98
  %10 = load ptr, ptr %6, align 8, !tbaa !65
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #11
  store i32 %12, ptr %3, align 4, !tbaa !70
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !124
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !190

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !123
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !191

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !101
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !122
  %28 = load ptr, ptr %25, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #11
  br i1 %31, label %36, label %32, !prof !191

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !124
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !192, !llvm.loop !193

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !194 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !195

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %6 = load ptr, ptr %0, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 48, ptr noundef %6) #11
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #9
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !98
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !105
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !65
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #11
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !100
  %21 = load i32, ptr %12, align 8, !tbaa !105
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !196

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !100
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !124
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !197, !llvm.loop !198
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #11
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !64 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !64 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !105
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !98
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %14 = load ptr, ptr %0, align 8, !tbaa !98
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !105
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  store ptr %23, ptr %21, align 8, !tbaa !100
  store i32 %6, ptr %3, align 8, !tbaa !105
  %24 = load ptr, ptr %0, align 8, !tbaa !98
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #11
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !100
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !124
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !142
  %39 = load ptr, ptr %19, align 8, !tbaa !101
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !122
  %42 = load ptr, ptr %0, align 8, !tbaa !98
  %43 = load ptr, ptr %39, align 8, !tbaa !65
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #11
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !124
  store ptr %49, ptr %37, align 8, !tbaa !142
  store ptr %36, ptr %48, align 8, !tbaa !124
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !199

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !105
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !200

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 !prof !111 {
  store ptr %3, ptr %0, align 8, !tbaa !109
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !142
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !122
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !64 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr %1, ptr %0, align 8, !tbaa !201
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !64 {
  %2 = load ptr, ptr %0, align 8, !tbaa !201
  store ptr null, ptr %0, align 8, !tbaa !201
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !64 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #11
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %3 = load ptr, ptr %0, align 8, !tbaa !201
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !203
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #11
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #14
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !201
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !203
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!63}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclC2EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE, i64 79}
!36 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclC2EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i, i64 79}
!37 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclD2Ev, ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv, i64 79}
!38 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclD2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev, i64 49}
!39 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 49}
!40 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclD2Ev, ptr @_ZN11xercesc_2_714XMLElementDeclD2Ev, i64 79}
!41 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv, i64 30}
!42 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 30}
!43 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj, i64 30}
!44 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 30}
!45 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 30}
!46 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj, i64 349768}
!47 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv, i64 1}
!48 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj, i64 13}
!49 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_, ptr @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEC2EPviPS1_PS2_, i64 12}
!50 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl13getAttDefListEv, ptr @__cxa_allocate_exception, i64 1}
!51 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl13getAttDefListEv, ptr @_ZNK11xercesc_2_714XMLElementDecl16getMemoryManagerEv, i64 1}
!52 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl13getAttDefListEv, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!53 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl13getAttDefListEv, ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv, i64 13}
!54 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl10hasAttDefsEv, ptr @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv, i64 43}
!55 = !{ptr @_ZNK11xercesc_2_715ComplexTypeInfo10hasAttDefsEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv, i64 496216}
!56 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE7isEmptyEv, i64 30}
!57 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3getEPKvi, i64 349768}
!58 = !{ptr @_ZN11xercesc_2_717SchemaElementDecl9getAttDefEPKti, ptr @_ZN11xercesc_2_715ComplexTypeInfo9getAttDefEPKti, i64 158592}
!59 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, i64 24}
!60 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv, ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv, i64 832910}
!61 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!62 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !67, i64 0}
!67 = !{!"Simple C++ TBAA"}
!68 = !{!69, !69, i64 0}
!69 = !{!"omnipotent char", !67, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"int", !69, i64 0}
!72 = !{!"function_entry_count", i64 79}
!73 = !{!74, !80, i64 36}
!74 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !75, i64 0, !80, i64 36, !81, i64 40, !82, i64 44, !83, i64 48, !71, i64 52, !71, i64 56, !71, i64 60, !71, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !77, i64 120, !77, i64 128, !77, i64 136, !79, i64 144, !79, i64 145, !79, i64 146}
!75 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !76, i64 0, !77, i64 8, !77, i64 16, !78, i64 24, !71, i64 28, !79, i64 32}
!76 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!77 = !{!"any pointer", !69, i64 0}
!78 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !69, i64 0}
!79 = !{!"bool", !69, i64 0}
!80 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !69, i64 0}
!81 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !69, i64 0}
!82 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !69, i64 0}
!83 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !69, i64 0}
!84 = !{!74, !81, i64 40}
!85 = !{!74, !82, i64 44}
!86 = !{!74, !83, i64 48}
!87 = !{!74, !71, i64 52}
!88 = !{!74, !71, i64 56}
!89 = !{!74, !71, i64 60}
!90 = !{!74, !71, i64 64}
!91 = !{!74, !77, i64 72}
!92 = !{!74, !77, i64 88}
!93 = !{!74, !77, i64 112}
!94 = !{!74, !77, i64 120}
!95 = !{!"function_entry_count", i64 128}
!96 = !{!75, !77, i64 8}
!97 = !{!"function_entry_count", i64 30}
!98 = !{!99, !77, i64 0}
!99 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !77, i64 0, !79, i64 8, !77, i64 16, !71, i64 24, !71, i64 28, !77, i64 32}
!100 = !{!99, !77, i64 16}
!101 = !{!99, !77, i64 32}
!102 = !{!74, !77, i64 80}
!103 = !{!79, !79, i64 0}
!104 = !{!99, !79, i64 8}
!105 = !{!99, !71, i64 24}
!106 = !{!99, !71, i64 28}
!107 = !{!"function_entry_count", i64 349768}
!108 = !{!"branch_weights", i32 14, i32 349756}
!109 = !{!110, !77, i64 0}
!110 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEE", !77, i64 0, !77, i64 8, !77, i64 16, !71, i64 24}
!111 = !{!"function_entry_count", i64 13}
!112 = !{!113, !71, i64 56}
!113 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !114, i64 0, !71, i64 56, !82, i64 60, !83, i64 64, !81, i64 68, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112}
!114 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !76, i64 0, !115, i64 8, !116, i64 12, !117, i64 16, !79, i64 20, !79, i64 21, !71, i64 24, !77, i64 32, !77, i64 40, !77, i64 48}
!115 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !69, i64 0}
!116 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !69, i64 0}
!117 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !69, i64 0}
!118 = !{!75, !71, i64 28}
!119 = !{!"branch_weights", i32 14, i32 1}
!120 = !{i8 0, i8 2}
!121 = !{}
!122 = !{!110, !77, i64 16}
!123 = !{!110, !71, i64 24}
!124 = !{!77, !77, i64 0}
!125 = !{!"function_entry_count", i64 9774}
!126 = !{!113, !77, i64 72}
!127 = !{!"function_entry_count", i64 2192223}
!128 = !{!129, !77, i64 32}
!129 = !{!"_ZTSN11xercesc_2_75QNameE", !76, i64 0, !71, i64 8, !71, i64 12, !71, i64 16, !71, i64 20, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48}
!130 = !{!"function_entry_count", i64 14}
!131 = !{!"branch_weights", i32 1, i32 15}
!132 = !{!"function_entry_count", i64 3338153}
!133 = !{!134, !71, i64 32}
!134 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !76, i64 0, !79, i64 8, !79, i64 9, !79, i64 10, !79, i64 11, !79, i64 12, !71, i64 16, !71, i64 20, !71, i64 24, !71, i64 28, !71, i64 32, !71, i64 36, !71, i64 40, !71, i64 44, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !77, i64 120, !77, i64 128, !77, i64 136, !77, i64 144, !77, i64 152, !77, i64 160, !77, i64 168}
!135 = !{!"function_entry_count", i64 336827}
!136 = !{!"branch_weights", i32 336786, i32 43}
!137 = !{!"function_entry_count", i64 496216}
!138 = !{!134, !77, i64 128}
!139 = !{!"branch_weights", i32 20, i32 12}
!140 = !{!"branch_weights", i32 1, i32 191}
!141 = !{!"branch_weights", i32 306, i32 14}
!142 = !{!110, !77, i64 8}
!143 = !{!"branch_weights", i32 1, i32 14}
!144 = !{!"branch_weights", i32 14, i32 0}
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!"branch_weights", i32 4929, i32 191}
!148 = distinct !{!148, !146}
!149 = !{!"function_entry_count", i64 158593}
!150 = !{!"branch_weights", i32 1, i32 158594}
!151 = !{!74, !77, i64 96}
!152 = !{!74, !77, i64 104}
!153 = !{!74, !77, i64 128}
!154 = !{!74, !77, i64 136}
!155 = !{!74, !79, i64 144}
!156 = !{!74, !79, i64 145}
!157 = !{!74, !79, i64 146}
!158 = !{!159, !160, i64 0}
!159 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !160, i64 0, !160, i64 2, !77, i64 8, !77, i64 16, !77, i64 24, !161, i64 32, !161, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !71, i64 96}
!160 = !{!"short", !69, i64 0}
!161 = !{!"long", !69, i64 0}
!162 = !{!163, !77, i64 40}
!163 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !164, i64 8, !77, i64 16, !71, i64 24, !77, i64 32, !77, i64 40}
!164 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !69, i64 0}
!165 = !{!"function_entry_count", i64 496246}
!166 = !{!"function_entry_count", i64 29}
!167 = !{!134, !77, i64 96}
!168 = !{!"function_entry_count", i64 1176128}
!169 = !{!134, !77, i64 136}
!170 = !{!"branch_weights", i32 25, i32 1176105}
!171 = !{!"branch_weights", i32 1, i32 25}
!172 = !{!"function_entry_count", i64 874884}
!173 = !{!174, !175, i64 28}
!174 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !76, i64 0, !79, i64 8, !79, i64 9, !79, i64 10, !79, i64 11, !160, i64 12, !71, i64 16, !71, i64 20, !71, i64 24, !175, i64 28, !176, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96}
!175 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !69, i64 0}
!176 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !69, i64 0}
!177 = !{!178, !77, i64 128}
!178 = !{!"_ZTSN11xercesc_2_722UnionDatatypeValidatorE", !174, i64 0, !79, i64 104, !79, i64 105, !77, i64 112, !77, i64 120, !77, i64 128}
!179 = !{!134, !79, i64 8}
!180 = !{!174, !79, i64 8}
!181 = !{!"function_entry_count", i64 24}
!182 = !{!174, !77, i64 88}
!183 = !{!134, !77, i64 64}
!184 = !{!"function_entry_count", i64 1169658}
!185 = !{!"branch_weights", i32 336749, i32 832911}
!186 = !{!"function_entry_count", i64 12}
!187 = !{!174, !77, i64 80}
!188 = !{!134, !77, i64 56}
!189 = !{!"function_entry_count", i64 349781}
!190 = !{!"branch_weights", i32 1, i32 215}
!191 = !{!"branch_weights", i32 349756, i32 1}
!192 = !{!"branch_weights", i32 215, i32 2797833}
!193 = distinct !{!193, !146}
!194 = !{!"function_entry_count", i64 5836268}
!195 = !{!"branch_weights", i32 1, i32 31}
!196 = !{!"branch_weights", i32 1, i32 247}
!197 = !{!"branch_weights", i32 247, i32 6721}
!198 = distinct !{!198, !146}
!199 = distinct !{!199, !146}
!200 = distinct !{!200, !146}
!201 = !{!202, !77, i64 0}
!202 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEEE", !77, i64 0, !77, i64 8}
!203 = !{!202, !77, i64 8}
