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
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::UnionDatatypeValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv = comdat any

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

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev = comdat any

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

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !47 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_717SchemaElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  store i32 1, ptr %3, align 4, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  store i32 1, ptr %5, align 4, !tbaa !65
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 5
  store i32 1, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  store i32 -2, ptr %7, align 4, !tbaa !67
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 7
  store i32 0, ptr %8, align 8, !tbaa !68
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  store i32 0, ptr %9, align 4, !tbaa !69
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  store i32 0, ptr %10, align 8, !tbaa !70
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %11, i8 0, i64 75, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDeclC2EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %6)
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_717SchemaElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  store i32 %4, ptr %8, align 4, !tbaa !51
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  store i32 0, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  store i32 1, ptr %10, align 4, !tbaa !65
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 5
  store i32 1, ptr %11, align 8, !tbaa !66
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  store i32 %5, ptr %12, align 4, !tbaa !67
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 7
  store i32 0, ptr %13, align 8, !tbaa !68
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  store i32 0, ptr %14, align 4, !tbaa !69
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  store i32 0, ptr %15, align 8, !tbaa !70
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %16, i8 0, i64 75, i1 false)
  invoke void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
          to label %17 unwind label %18, !prof !72

17:                                               ; preds = %7
  ret void

18:                                               ; preds = %7
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #14
  resume { ptr, i32 } %19
}

declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDeclC2EPKNS_5QNameENS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %4)
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_717SchemaElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !64
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  store i32 1, ptr %8, align 4, !tbaa !65
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 5
  store i32 1, ptr %9, align 8, !tbaa !66
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  store i32 %3, ptr %10, align 4, !tbaa !67
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 7
  store i32 0, ptr %11, align 8, !tbaa !68
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  store i32 0, ptr %12, align 4, !tbaa !69
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  store i32 0, ptr %13, align 8, !tbaa !70
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %14, i8 0, i64 75, i1 false)
  invoke void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1)
          to label %15 unwind label %16

15:                                               ; preds = %5
  ret void

16:                                               ; preds = %5
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #14
  resume { ptr, i32 } %17
}

declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_717SchemaElementDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %31, !prof !75

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !72

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #14
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !prof !78

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !48
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(40) %16) #14, !prof !79
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !80
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !72

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !48
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(120) %24) #14
  br label %30

30:                                               ; preds = %26, %22
  tail call void @_ZN11xercesc_2_714XMLElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #14
  ret void

31:                                               ; preds = %1
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #15
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %18, !prof !82

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !83
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18, !prof !86

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !88

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !48
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #14, !prof !89
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #15
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #4 align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_717SchemaElementDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(147) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb(ptr nocapture noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb(ptr noundef nonnull align 8 dereferenceable(176) %10, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  br label %59

14:                                               ; preds = %7
  %15 = icmp eq i32 %5, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 13
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %22)
  %24 = load ptr, ptr %21, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef 29, i1 noundef zeroext true, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %20
  store ptr %23, ptr %17, align 8, !tbaa !76
  br label %28

26:                                               ; preds = %20
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #14
  br label %56

28:                                               ; preds = %25, %16
  %29 = load ptr, ptr %17, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %30 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef %3, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !91
  br label %34

34:                                               ; preds = %28, %32
  %35 = phi ptr [ %33, %32 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %39)
  %41 = load ptr, ptr %38, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120) %40, ptr noundef %4, ptr noundef %3, i32 noundef %2, i32 noundef 0, i32 noundef 4, ptr noundef %41)
          to label %42 unwind label %51

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !93
  %45 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %40, i64 0, i32 1
  store i32 %44, ptr %45, align 8, !tbaa !94
  %46 = load ptr, ptr %17, align 8, !tbaa !76
  %47 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %40, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %48, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !101
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef %50, i32 noundef %2, ptr noundef nonnull %40)
  br label %53

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %40, ptr noundef %39) #14
  br label %56

53:                                               ; preds = %34, %42
  %54 = phi i8 [ 1, %42 ], [ 0, %34 ]
  %55 = phi ptr [ %40, %42 ], [ %35, %34 ]
  store i8 %54, ptr %6, align 1, !tbaa !103
  br label %59

56:                                               ; preds = %51, %26
  %57 = phi { ptr, i32 } [ %52, %51 ], [ %27, %26 ]
  resume { ptr, i32 } %57

58:                                               ; preds = %14
  store i8 0, ptr %6, align 1, !tbaa !103
  br label %59

59:                                               ; preds = %58, %53, %12
  %60 = phi ptr [ %13, %12 ], [ %55, %53 ], [ null, %58 ]
  ret ptr %60
}

declare noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo8findAttrEPKtjS2_S2_NS_14XMLElementDecl10LookupOptsERb(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %5 = zext i1 %2 to i8
  store ptr %3, ptr %0, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !104
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !85
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !105
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !106
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  %11 = load ptr, ptr %0, align 8, !tbaa !83
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %11)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %13 unwind label %14, !prof !82

13:                                               ; preds = %4
  store ptr %12, ptr %10, align 8, !tbaa !87
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #14
  resume { ptr, i32 } %15
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712SchemaAttDefC1EPKtS2_iNS_9XMLAttDef8AttTypesENS3_11DefAttTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 !prof !107 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !106
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !108

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16, !prof !108

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !104, !range !109, !noundef !110
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !91
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !48
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(120) %21) #14
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !91
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !111
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %29, align 8, !tbaa !112
  br label %47

30:                                               ; preds = %13
  %31 = load ptr, ptr %0, align 8, !tbaa !83
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 32), !prof !113
  %36 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  %38 = load i32, ptr %5, align 4, !tbaa !114
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !115
  store ptr %3, ptr %35, align 8, !tbaa !91
  %42 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %35, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !116
  %43 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %35, i64 0, i32 2
  store ptr %1, ptr %43, align 8, !tbaa !111
  %44 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %35, i64 0, i32 3
  store i32 %2, ptr %44, align 8, !tbaa !112
  store ptr %35, ptr %40, align 8, !tbaa !115
  %45 = load i32, ptr %9, align 4, !tbaa !106
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 4, !tbaa !106
  br label %47

47:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_717SchemaElementDecl13getAttDefListEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12, !prof !118

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 203, i32 noundef 301, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176) %3)
  ret ptr %13
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl15getCharDataOptsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0) unnamed_addr #6 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %4, i64 0, i32 10
  %7 = select i1 %5, ptr %2, ptr %6
  %8 = load i32, ptr %7, align 4, !tbaa !119
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 0, i32 2
  %11 = icmp eq i32 %8, 4
  %12 = select i1 %11, i32 1, i32 %10
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl10hasAttDefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0) unnamed_addr #7 align 2 !prof !120 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !121

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %3, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !106
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %1, %5
  %12 = phi i1 [ %10, %5 ], [ false, %1 ]
  ret i1 %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_717SchemaElementDecl9resetDefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0) unnamed_addr #2 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_715ComplexTypeInfo9resetDefsEv(ptr noundef nonnull align 8 dereferenceable(176) %3)
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %9)
  br label %12

12:                                               ; preds = %11, %7, %5
  %13 = phi i1 [ %6, %5 ], [ false, %7 ], [ false, %11 ]
  ret i1 %13
}

declare noundef zeroext i1 @_ZN11xercesc_2_715ComplexTypeInfo9resetDefsEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !81 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !106
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !124

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !125

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 4, !tbaa !106
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !85
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !126

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !116
  %23 = load i8, ptr %11, align 8, !tbaa !104, !range !109, !noundef !110
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !127

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !91
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !127

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !48
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(120) %26) #14, !prof !128
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !83
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !129
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !108, !llvm.loop !130

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !85
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !115
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !105
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !133, !llvm.loop !134

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl24getFormattedContentModelEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0) unnamed_addr #2 align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo24getFormattedContentModelEv(ptr noundef nonnull align 8 dereferenceable(176) %3)
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

declare noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo24getFormattedContentModelEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl9getAttDefEPKti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !47 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %6, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %11 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %11, align 8, !tbaa !91
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi ptr [ %14, %13 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %17

17:                                               ; preds = %3, %15
  %18 = phi ptr [ %16, %15 ], [ null, %3 ]
  ret ptr %18
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SchemaElementDecl9getAttDefEPKti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(147) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 !prof !135 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7, !prof !136

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %5, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !105
  %14 = load ptr, ptr %9, align 8, !tbaa !83
  %15 = load ptr, ptr %11, align 8, !tbaa !48
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1, i32 noundef %13, ptr noundef %14), !prof !137
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %9, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  %20 = zext i32 %17 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24, !prof !138

24:                                               ; preds = %7, %37
  %25 = phi ptr [ %39, %37 ], [ %22, %7 ]
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !112
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %29, label %37, !prof !139

29:                                               ; preds = %24
  %30 = load ptr, ptr %10, align 8, !tbaa !87
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %25, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  %33 = load ptr, ptr %30, align 8, !tbaa !48
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef %32), !prof !140
  br i1 %36, label %41, label %37, !prof !139

37:                                               ; preds = %29, %24
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %25, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !115
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %24, !prof !141, !llvm.loop !142

41:                                               ; preds = %29, %37, %7
  %42 = phi ptr [ null, %7 ], [ %25, %29 ], [ null, %37 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !136

44:                                               ; preds = %41
  %45 = load ptr, ptr %42, align 8, !tbaa !91
  br label %46

46:                                               ; preds = %44, %41, %3
  %47 = phi ptr [ null, %3 ], [ %45, %44 ], [ null, %41 ]
  ret ptr %47
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717SchemaElementDecl12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %0)
  invoke void @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %2, ptr noundef %0)
          to label %3 unwind label %13

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_717SchemaElementDeclE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 2
  store i32 1, ptr %4, align 4, !tbaa !51
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 4
  store i32 1, ptr %6, align 4, !tbaa !65
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 5
  store i32 1, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 6
  store i32 -2, ptr %8, align 4, !tbaa !67
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 7
  store i32 0, ptr %9, align 8, !tbaa !68
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 8
  store i32 0, ptr %10, align 4, !tbaa !69
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 9
  store i32 0, ptr %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %2, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %12, i8 0, i64 75, i1 false)
  ret ptr %2

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #14
  resume { ptr, i32 } %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !47 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_717SchemaElementDecl12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !47 {
  ret ptr @_ZN11xercesc_2_717SchemaElementDecl22classSchemaElementDeclE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717SchemaElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !47 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_714XMLElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %6 = load i16, ptr %1, align 8, !tbaa !143
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !51
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %10)
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !64
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %13)
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !65
  %17 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %16)
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !66
  %20 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %19)
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !67
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %22)
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !68
  %26 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %25)
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !69
  %29 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %28)
  %30 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !70
  %32 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %31)
  %33 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !74
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %34, i32 noundef 0, i1 noundef zeroext false)
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %36)
  %37 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 13
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef %38, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %39 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 14
  %40 = load ptr, ptr %39, align 8, !tbaa !147
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %40)
  %41 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %42 = load ptr, ptr %41, align 8, !tbaa !148
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %42)
  %43 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_18IdentityConstraintEEERNS_16XSerializeEngineE(ptr noundef %44, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %45 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !80
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %46)
  %47 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 18
  %48 = load ptr, ptr %47, align 8, !tbaa !149
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %48)
  %49 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !150
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %50)
  %51 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 20
  %52 = load i8, ptr %51, align 8, !tbaa !151, !range !109, !noundef !110
  %53 = icmp ne i8 %52, 0
  %54 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %53)
  %55 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 21
  %56 = load i8, ptr %55, align 1, !tbaa !152, !range !109, !noundef !110
  %57 = icmp ne i8 %56, 0
  %58 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %57)
  %59 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 22
  %60 = load i8, ptr %59, align 2, !tbaa !153, !range !109, !noundef !110
  %61 = icmp ne i8 %60, 0
  %62 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %61)
  br label %105

63:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %64 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %65 = load i32, ptr %5, align 4, !tbaa !114
  %66 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  store i32 %65, ptr %66, align 4, !tbaa !51
  %67 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %68 = load i32, ptr %5, align 4, !tbaa !114
  %69 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 3
  store i32 %68, ptr %69, align 8, !tbaa !64
  %70 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %71 = load i32, ptr %5, align 4, !tbaa !114
  %72 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  store i32 %71, ptr %72, align 4, !tbaa !65
  %73 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %74 = load i32, ptr %5, align 4, !tbaa !114
  %75 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 5
  store i32 %74, ptr %75, align 8, !tbaa !66
  %76 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %77 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %76)
  %78 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 7
  %79 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %78)
  %80 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  %81 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %80)
  %82 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  %83 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %82)
  %84 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %85 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %86 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_715ComplexTypeInfo20classComplexTypeInfoE)
  store ptr %86, ptr %85, align 8, !tbaa !115
  %87 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 13
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %87, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %88 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 14
  %89 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_715ComplexTypeInfo20classComplexTypeInfoE)
  store ptr %89, ptr %88, align 8, !tbaa !115
  %90 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %91 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  store ptr %90, ptr %91, align 8, !tbaa !148
  %92 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_18IdentityConstraintEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %92, i32 noundef 16, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %93 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 17
  %94 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_712SchemaAttDef17classSchemaAttDefE)
  store ptr %94, ptr %93, align 8, !tbaa !115
  %95 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 18
  %96 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_717SchemaElementDecl22classSchemaElementDeclE)
  store ptr %96, ptr %95, align 8, !tbaa !115
  %97 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %98 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  store ptr %97, ptr %98, align 8, !tbaa !150
  %99 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 20
  %100 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %99)
  %101 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 21
  %102 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %101)
  %103 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 22
  %104 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %103)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %105

105:                                              ; preds = %63, %8
  ret void
}

declare void @_ZN11xercesc_2_714XMLElementDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_18IdentityConstraintEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_12SchemaAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_18IdentityConstraintEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl13getObjectTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !47 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #10 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %3, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717SchemaElementDecl14getContentSpecEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #11 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %3, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717SchemaElementDecl14setContentSpecEPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_717SchemaElementDecl15getContentModelEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #10 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %3, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  %8 = icmp ne ptr %7, null
  %9 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %3, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %8, i1 true, i1 %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %3, i1 noundef zeroext false)
  store ptr %14, ptr %6, align 8, !tbaa !155
  br label %15

15:                                               ; preds = %5, %13
  %16 = load ptr, ptr %6, align 8, !tbaa !155
  br label %17

17:                                               ; preds = %1, %15
  %18 = phi ptr [ %16, %15 ], [ null, %1 ]
  ret ptr %18
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717SchemaElementDecl15setContentModelEPNS_15XMLContentModelE(ptr noundef nonnull align 8 dereferenceable(147) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl17getDOMTypeInfoUriEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #10 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %105

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !147
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %7, i64 0, i32 1
  br label %29

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %13, i64 0, i32 1
  br label %29

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !148
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %19, i64 0, i32 1
  br label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !150
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %25, i64 0, i32 1
  br label %29

29:                                               ; preds = %9, %15, %21, %27
  %30 = phi ptr [ %10, %9 ], [ %16, %15 ], [ %22, %21 ], [ %28, %27 ]
  %31 = load i8, ptr %30, align 8, !tbaa !103, !range !109, !noundef !110
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %105

33:                                               ; preds = %23, %29
  %34 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %35 = load ptr, ptr %34, align 8, !tbaa !148
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %35, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !156
  %40 = icmp eq i32 %39, 25
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %35, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !160
  %44 = icmp eq ptr %43, null
  br i1 %44, label %62, label %57

45:                                               ; preds = %37, %33
  %46 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !150
  %48 = icmp eq ptr %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %47, i64 0, i32 9
  %51 = load i32, ptr %50, align 4, !tbaa !156
  %52 = icmp eq i32 %51, 25
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %47, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !160
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53, %41
  %58 = phi ptr [ %43, %41 ], [ %55, %53 ]
  %59 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %58, i64 0, i32 1
  %60 = load i8, ptr %59, align 8, !tbaa !162, !range !109, !noundef !110
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %105

62:                                               ; preds = %57, %45, %49, %41, %53
  %63 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !150
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %64, i64 0, i32 9
  %68 = load i32, ptr %67, align 4, !tbaa !156
  %69 = icmp eq i32 %68, 25
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %64, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !160
  %73 = icmp eq ptr %72, null
  br i1 %73, label %105, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %72, i64 0, i32 17
  br label %102

76:                                               ; preds = %66, %62
  br i1 %36, label %87, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %35, i64 0, i32 9
  %79 = load i32, ptr %78, align 4, !tbaa !156
  %80 = icmp eq i32 %79, 25
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %35, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !160
  %84 = icmp eq ptr %83, null
  br i1 %84, label %105, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %83, i64 0, i32 17
  br label %102

87:                                               ; preds = %77, %76
  br i1 %8, label %90, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %7, i64 0, i32 16
  br label %102

90:                                               ; preds = %87
  %91 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %92 = load ptr, ptr %91, align 8, !tbaa !90
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %92, i64 0, i32 16
  br label %102

96:                                               ; preds = %90
  br i1 %36, label %99, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %35, i64 0, i32 17
  br label %102

99:                                               ; preds = %96
  br i1 %65, label %105, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %64, i64 0, i32 17
  br label %102

102:                                              ; preds = %74, %85, %88, %94, %97, %100
  %103 = phi ptr [ %101, %100 ], [ %98, %97 ], [ %95, %94 ], [ %89, %88 ], [ %86, %85 ], [ %75, %74 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !115
  br label %105

105:                                              ; preds = %102, %99, %81, %70, %29, %57, %1
  %106 = phi ptr [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %1 ], [ null, %57 ], [ null, %29 ], [ null, %70 ], [ null, %81 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %99 ], [ %104, %102 ]
  ret ptr %106
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getDOMTypeInfoNameEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #10 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %7, i64 0, i32 10
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load i32, ptr %11, align 4, !tbaa !119
  %13 = icmp eq i32 %12, 5
  %14 = select i1 %13, ptr @_ZN11xercesc_2_713SchemaSymbols18fgDT_ANYSIMPLETYPEE, ptr @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE
  br label %118

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !147
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %17, i64 0, i32 1
  br label %39

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %23, i64 0, i32 1
  br label %39

27:                                               ; preds = %21
  %28 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !148
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %29, i64 0, i32 1
  br label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !150
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %35, i64 0, i32 1
  br label %39

39:                                               ; preds = %19, %25, %31, %37
  %40 = phi ptr [ %20, %19 ], [ %26, %25 ], [ %32, %31 ], [ %38, %37 ]
  %41 = load i8, ptr %40, align 8, !tbaa !103, !range !109, !noundef !110
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %118

43:                                               ; preds = %33, %39
  %44 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 15
  %45 = load ptr, ptr %44, align 8, !tbaa !148
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %45, i64 0, i32 9
  %49 = load i32, ptr %48, align 4, !tbaa !156
  %50 = icmp eq i32 %49, 25
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %45, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !160
  %54 = icmp eq ptr %53, null
  br i1 %54, label %72, label %67

55:                                               ; preds = %47, %43
  %56 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %57 = load ptr, ptr %56, align 8, !tbaa !150
  %58 = icmp eq ptr %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %57, i64 0, i32 9
  %61 = load i32, ptr %60, align 4, !tbaa !156
  %62 = icmp eq i32 %61, 25
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %57, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !160
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %63, %51
  %68 = phi ptr [ %53, %51 ], [ %65, %63 ]
  %69 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %68, i64 0, i32 1
  %70 = load i8, ptr %69, align 8, !tbaa !162, !range !109, !noundef !110
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %118

72:                                               ; preds = %67, %55, %59, %51, %63
  %73 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 19
  %74 = load ptr, ptr %73, align 8, !tbaa !150
  %75 = icmp eq ptr %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %74, i64 0, i32 9
  %78 = load i32, ptr %77, align 4, !tbaa !156
  %79 = icmp eq i32 %78, 25
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %74, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !160
  %83 = icmp eq ptr %82, null
  br i1 %83, label %118, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %82, i64 0, i32 16
  %86 = load ptr, ptr %85, align 8, !tbaa !163
  br label %118

87:                                               ; preds = %76, %72
  br i1 %46, label %99, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %45, i64 0, i32 9
  %90 = load i32, ptr %89, align 4, !tbaa !156
  %91 = icmp eq i32 %90, 25
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %45, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !160
  %95 = icmp eq ptr %94, null
  br i1 %95, label %118, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %94, i64 0, i32 16
  %98 = load ptr, ptr %97, align 8, !tbaa !163
  br label %118

99:                                               ; preds = %88, %87
  br i1 %18, label %103, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %17, i64 0, i32 15
  %102 = load ptr, ptr %101, align 8, !tbaa !164
  br label %118

103:                                              ; preds = %99
  %104 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %105 = load ptr, ptr %104, align 8, !tbaa !90
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %105, i64 0, i32 15
  %109 = load ptr, ptr %108, align 8, !tbaa !164
  br label %118

110:                                              ; preds = %103
  br i1 %46, label %114, label %111

111:                                              ; preds = %110
  %112 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %45, i64 0, i32 16
  %113 = load ptr, ptr %112, align 8, !tbaa !163
  br label %118

114:                                              ; preds = %110
  br i1 %75, label %118, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %74, i64 0, i32 16
  %117 = load ptr, ptr %116, align 8, !tbaa !163
  br label %118

118:                                              ; preds = %115, %114, %111, %107, %100, %96, %92, %84, %80, %39, %67, %5
  %119 = phi ptr [ %14, %5 ], [ null, %67 ], [ null, %39 ], [ %86, %84 ], [ null, %80 ], [ %98, %96 ], [ null, %92 ], [ %102, %100 ], [ %109, %107 ], [ %113, %111 ], [ %117, %115 ], [ @_ZN11xercesc_2_713SchemaSymbols16fgATTVAL_ANYTYPEE, %114 ]
  ret ptr %119
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717SchemaElementDecl12isGlobalDeclEv(ptr noundef nonnull align 8 dereferenceable(147) %0) unnamed_addr #11 comdat align 2 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = icmp eq i32 %3, -2
  ret i1 %4
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !47 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !48
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 comdat align 2 !prof !168 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !105
  %9 = load ptr, ptr %0, align 8, !tbaa !83
  %10 = load ptr, ptr %6, align 8, !tbaa !48
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9), !prof !169
  store i32 %12, ptr %3, align 4, !tbaa !114
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !138

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !112
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !139

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !87
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !111
  %28 = load ptr, ptr %25, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27), !prof !170
  br i1 %31, label %36, label %32, !prof !139

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !141, !llvm.loop !142

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !88

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !83
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !105
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !48
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !171
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !85
  %21 = load i32, ptr %12, align 8, !tbaa !105
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !172

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !85
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !115
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !173, !llvm.loop !174
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !47 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !48
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !105
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !83
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %14 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %13, ptr %2, align 8, !tbaa !175
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !177
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %16 = load i32, ptr %3, align 8, !tbaa !105
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %29

21:                                               ; preds = %53, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = load ptr, ptr %2, align 8, !tbaa !175
  store ptr null, ptr %2, align 8, !tbaa !175
  store ptr %24, ptr %22, align 8, !tbaa !85
  store i32 %6, ptr %3, align 8, !tbaa !105
  %25 = load ptr, ptr %0, align 8, !tbaa !83
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %23)
          to label %58 unwind label %59

29:                                               ; preds = %18, %53
  %30 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %31 = load ptr, ptr %19, align 8, !tbaa !85
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !115
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %29 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !116
  %39 = load ptr, ptr %20, align 8, !tbaa !87
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !111
  %42 = load ptr, ptr %0, align 8, !tbaa !83
  %43 = load ptr, ptr %39, align 8, !tbaa !48
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !115
  store ptr %49, ptr %37, align 8, !tbaa !116
  store ptr %36, ptr %48, align 8, !tbaa !115
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !178

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %61

53:                                               ; preds = %46, %29
  %54 = add nuw nsw i64 %30, 1
  %55 = load i32, ptr %3, align 8, !tbaa !105
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %29, label %21, !llvm.loop !179

58:                                               ; preds = %21
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi { ptr, i32 } [ %52, %51 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %62
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !48
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclC2EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714XMLElementDeclC2EPNS_13MemoryManagerE, i64 79}
!36 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclC2EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i, i64 79}
!37 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclD2Ev, ptr @_ZN11xercesc_2_714XMLElementDeclD2Ev, i64 79}
!38 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE9removeAllEv, i64 30}
!39 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclD0Ev, ptr @_ZN11xercesc_2_717SchemaElementDeclD2Ev, i64 79}
!40 = !{ptr @_ZN11xercesc_2_717SchemaElementDeclD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 79}
!41 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE10initializeEj, i64 30}
!42 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 30}
!43 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 30}
!44 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE3putEPviPS1_, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEE14findBucketElemEPKviRj, i64 13}
!45 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl13getAttDefListEv, ptr @_ZNK11xercesc_2_715ComplexTypeInfo13getAttDefListEv, i64 14}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !60, i64 36}
!52 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !53, i64 0, !60, i64 36, !61, i64 40, !62, i64 44, !63, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !58, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !59, i64 144, !59, i64 145, !59, i64 146}
!53 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !54, i64 0, !55, i64 8, !55, i64 16, !57, i64 24, !58, i64 28, !59, i64 32}
!54 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !50, i64 0}
!57 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !56, i64 0}
!58 = !{!"int", !56, i64 0}
!59 = !{!"bool", !56, i64 0}
!60 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !56, i64 0}
!61 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !56, i64 0}
!62 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !56, i64 0}
!63 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !56, i64 0}
!64 = !{!52, !61, i64 40}
!65 = !{!52, !62, i64 44}
!66 = !{!52, !63, i64 48}
!67 = !{!52, !58, i64 52}
!68 = !{!52, !58, i64 56}
!69 = !{!52, !58, i64 60}
!70 = !{!52, !58, i64 64}
!71 = !{!"function_entry_count", i64 79}
!72 = !{!"branch_weights", i32 79, i32 0}
!73 = !{!53, !55, i64 8}
!74 = !{!52, !55, i64 72}
!75 = !{!"VP", i32 0, i64 79, i64 -7405368087501025645, i64 79}
!76 = !{!52, !55, i64 88}
!77 = !{!52, !55, i64 112}
!78 = !{!"branch_weights", i32 78, i32 1}
!79 = !{!"VP", i32 0, i64 1, i64 3796629443099860692, i64 1}
!80 = !{!52, !55, i64 120}
!81 = !{!"function_entry_count", i64 30}
!82 = !{!"branch_weights", i32 30, i32 0}
!83 = !{!84, !55, i64 0}
!84 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_12SchemaAttDefEEE", !55, i64 0, !59, i64 8, !55, i64 16, !58, i64 24, !58, i64 28, !55, i64 32}
!85 = !{!84, !55, i64 16}
!86 = !{!"VP", i32 0, i64 30, i64 -7405368087501025645, i64 30}
!87 = !{!84, !55, i64 32}
!88 = !{!"branch_weights", i32 0, i32 30}
!89 = !{!"VP", i32 0, i64 30, i64 -5147776714887549805, i64 30}
!90 = !{!52, !55, i64 80}
!91 = !{!92, !55, i64 0}
!92 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_12SchemaAttDefEEE", !55, i64 0, !55, i64 8, !55, i64 16, !58, i64 24}
!93 = !{!53, !58, i64 28}
!94 = !{!95, !58, i64 56}
!95 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !96, i64 0, !58, i64 56, !62, i64 60, !63, i64 64, !61, i64 68, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112}
!96 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !54, i64 0, !97, i64 8, !98, i64 12, !99, i64 16, !59, i64 20, !59, i64 21, !58, i64 24, !55, i64 32, !55, i64 40, !55, i64 48}
!97 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !56, i64 0}
!98 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !56, i64 0}
!99 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !56, i64 0}
!100 = !{!95, !55, i64 72}
!101 = !{!102, !55, i64 32}
!102 = !{!"_ZTSN11xercesc_2_75QNameE", !54, i64 0, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48}
!103 = !{!59, !59, i64 0}
!104 = !{!84, !59, i64 8}
!105 = !{!84, !58, i64 24}
!106 = !{!84, !58, i64 28}
!107 = !{!"function_entry_count", i64 13}
!108 = !{!"branch_weights", i32 13, i32 0}
!109 = !{i8 0, i8 2}
!110 = !{}
!111 = !{!92, !55, i64 16}
!112 = !{!92, !58, i64 24}
!113 = !{!"VP", i32 0, i64 13, i64 8345045103670217670, i64 13}
!114 = !{!58, !58, i64 0}
!115 = !{!55, !55, i64 0}
!116 = !{!92, !55, i64 8}
!117 = !{!"function_entry_count", i64 14}
!118 = !{!"branch_weights", i32 0, i32 14}
!119 = !{!56, !56, i64 0}
!120 = !{!"function_entry_count", i64 336827}
!121 = !{!"branch_weights", i32 336785, i32 42}
!122 = !{!123, !55, i64 128}
!123 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !54, i64 0, !59, i64 8, !59, i64 9, !59, i64 10, !59, i64 11, !59, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !55, i64 128, !55, i64 136, !55, i64 144, !55, i64 152, !55, i64 160, !55, i64 168}
!124 = !{!"branch_weights", i32 19, i32 11}
!125 = !{!"branch_weights", i32 1, i32 175}
!126 = !{!"branch_weights", i32 306, i32 13}
!127 = !{!"branch_weights", i32 0, i32 13}
!128 = !{!"VP", i32 0, i64 13, i64 1590338718353004889, i64 13}
!129 = !{!"VP", i32 0, i64 13, i64 -7405368087501025645, i64 13}
!130 = distinct !{!130, !131, !132}
!131 = !{!"llvm.loop.mustprogress"}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!"branch_weights", i32 4929, i32 175}
!134 = distinct !{!134, !131, !132}
!135 = !{!"function_entry_count", i64 158593}
!136 = !{!"branch_weights", i32 0, i32 158593}
!137 = !{!"VP", i32 0, i64 158593, i64 3024540859536234746, i64 158593}
!138 = !{!"branch_weights", i32 1, i32 207}
!139 = !{!"branch_weights", i32 349755, i32 0}
!140 = !{!"VP", i32 0, i64 158581, i64 -1309333655503989351, i64 158581}
!141 = !{!"branch_weights", i32 207, i32 2797833}
!142 = distinct !{!142, !131, !132}
!143 = !{!144, !145, i64 0}
!144 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !145, i64 0, !145, i64 2, !55, i64 8, !55, i64 16, !55, i64 24, !146, i64 32, !146, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !58, i64 96}
!145 = !{!"short", !56, i64 0}
!146 = !{!"long", !56, i64 0}
!147 = !{!52, !55, i64 96}
!148 = !{!52, !55, i64 104}
!149 = !{!52, !55, i64 128}
!150 = !{!52, !55, i64 136}
!151 = !{!52, !59, i64 144}
!152 = !{!52, !59, i64 145}
!153 = !{!52, !59, i64 146}
!154 = !{!123, !55, i64 96}
!155 = !{!123, !55, i64 136}
!156 = !{!157, !158, i64 28}
!157 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !54, i64 0, !59, i64 8, !59, i64 9, !59, i64 10, !59, i64 11, !145, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !158, i64 28, !159, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72, !55, i64 80, !55, i64 88, !55, i64 96}
!158 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !56, i64 0}
!159 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !56, i64 0}
!160 = !{!161, !55, i64 128}
!161 = !{!"_ZTSN11xercesc_2_722UnionDatatypeValidatorE", !157, i64 0, !59, i64 104, !59, i64 105, !55, i64 112, !55, i64 120, !55, i64 128}
!162 = !{!157, !59, i64 8}
!163 = !{!157, !55, i64 80}
!164 = !{!123, !55, i64 56}
!165 = !{!166, !55, i64 40}
!166 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !167, i64 8, !55, i64 16, !58, i64 24, !55, i64 32, !55, i64 40}
!167 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !56, i64 0}
!168 = !{!"function_entry_count", i64 191188}
!169 = !{!"VP", i32 0, i64 191188, i64 3024540859536234746, i64 191188}
!170 = !{!"VP", i32 0, i64 191173, i64 -1309333655503989351, i64 191173}
!171 = !{!"VP", i32 0, i64 30, i64 8345045103670217670, i64 30}
!172 = !{!"branch_weights", i32 1, i32 239}
!173 = !{!"branch_weights", i32 239, i32 6721}
!174 = distinct !{!174, !131, !132}
!175 = !{!176, !55, i64 0}
!176 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_12SchemaAttDefEEEEE", !55, i64 0, !55, i64 8}
!177 = !{!176, !55, i64 8}
!178 = distinct !{!178, !131, !132}
!179 = distinct !{!179, !131, !132}
