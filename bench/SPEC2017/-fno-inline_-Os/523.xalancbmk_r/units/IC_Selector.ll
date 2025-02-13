; ModuleID = 'IC_Selector.cpp'
source_filename = "IC_Selector.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::SelectorMatcher" = type { %"class.xercesc_2_7::XPathMatcher", i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XPathMatcher" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::IC_Selector" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_711IC_Selector21getIdentityConstraintEv = comdat any

$_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv = comdat any

$_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_11XercesXPathE = comdat any

$_ZN11xercesc_2_715SelectorMatcherD0Ev = comdat any

$_ZNK11xercesc_2_715SelectorMatcher15getInitialDepthEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

@_ZTVN11xercesc_2_715SelectorMatcherE = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715SelectorMatcherE, ptr @_ZN11xercesc_2_712XPathMatcherD2Ev, ptr @_ZN11xercesc_2_715SelectorMatcherD0Ev, ptr @_ZNK11xercesc_2_715SelectorMatcher15getInitialDepthEv, ptr @_ZN11xercesc_2_715SelectorMatcher21startDocumentFragmentEv, ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_715SelectorMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_712XPathMatcher7matchedEPKtPNS_17DatatypeValidatorEb] }, align 8
@_ZTVN11xercesc_2_711IC_SelectorE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IC_SelectorE, ptr @_ZN11xercesc_2_711IC_SelectorD2Ev, ptr @_ZN11xercesc_2_711IC_SelectorD0Ev, ptr @_ZNK11xercesc_2_711IC_Selector14isSerializableEv, ptr @_ZN11xercesc_2_711IC_Selector9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_711IC_Selector12getProtoTypeEv] }, align 8
@.str = private unnamed_addr constant [12 x i8] c"IC_Selector\00", align 1
@_ZN11xercesc_2_711IC_Selector16classIC_SelectorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_711IC_Selector12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715SelectorMatcherE = dso_local constant [33 x i8] c"N11xercesc_2_715SelectorMatcherE\00", align 1
@_ZTIN11xercesc_2_712XPathMatcherE = external constant ptr
@_ZTIN11xercesc_2_715SelectorMatcherE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715SelectorMatcherE, ptr @_ZTIN11xercesc_2_712XPathMatcherE }, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711IC_SelectorE = dso_local constant [29 x i8] c"N11xercesc_2_711IC_SelectorE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTIN11xercesc_2_711IC_SelectorE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IC_SelectorE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711XercesXPath16classXercesXPathE = external global %"class.xercesc_2_7::XProtoType", align 8

@_ZN11xercesc_2_715SelectorMatcherC1EPNS_11XercesXPathEPNS_11IC_SelectorEPNS_14FieldActivatorEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_715SelectorMatcherC2EPNS_11XercesXPathEPNS_11IC_SelectorEPNS_14FieldActivatorEiPNS_13MemoryManagerE
@_ZN11xercesc_2_711IC_SelectorC1EPNS_11XercesXPathEPNS_18IdentityConstraintE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_711IC_SelectorC2EPNS_11XercesXPathEPNS_18IdentityConstraintE
@_ZN11xercesc_2_711IC_SelectorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711IC_SelectorD2Ev
@_ZN11xercesc_2_711IC_SelectorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711IC_SelectorC2EPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SelectorMatcherC2EPNS_11XercesXPathEPNS_11IC_SelectorEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !60 {
  %7 = tail call noundef ptr @_ZNK11xercesc_2_711IC_Selector21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #7
  tail call void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %7, ptr noundef %5) #7
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715SelectorMatcherE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %8 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 1
  store i32 %4, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 2
  store i32 0, ptr %9, align 4, !tbaa !70
  %10 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 3
  store i32 -1, ptr %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 4
  store ptr %2, ptr %11, align 8, !tbaa !72
  %12 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 5
  store ptr %3, ptr %12, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IC_Selector21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SelectorMatcher21startDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 !prof !60 {
  tail call void @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #7
  %2 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !70
  %3 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 3
  store i32 -1, ptr %3, align 8, !tbaa !71
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 %4, i32 noundef %5) unnamed_addr #0 align 2 !prof !78 {
  tail call void @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 %4, i32 noundef %5) #7
  %7 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !70
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !70
  %10 = tail call noundef i32 @_ZN11xercesc_2_712XPathMatcher9isMatchedEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #7
  %11 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !71
  %13 = icmp eq i32 %12, -1
  %14 = and i32 %10, 1
  %15 = icmp ne i32 %14, 0
  %16 = and i1 %13, %15
  %17 = and i32 %10, 5
  %18 = icmp eq i32 %17, 5
  %19 = or i1 %18, %16
  br i1 %19, label %20, label %42, !prof !79

20:                                               ; preds = %6
  %21 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = tail call noundef ptr @_ZNK11xercesc_2_711IC_Selector21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(24) %22) #7
  %24 = tail call noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %23) #7
  %25 = load i32, ptr %7, align 4, !tbaa !70
  store i32 %25, ptr %11, align 8, !tbaa !71
  %26 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !64
  tail call void @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull %23, i32 noundef %29) #7
  %30 = icmp sgt i32 %24, 0
  br i1 %30, label %31, label %42, !prof !80

31:                                               ; preds = %20, %31
  %32 = phi i32 [ %40, %31 ], [ 0, %20 ]
  %33 = load ptr, ptr %26, align 8, !tbaa !73
  %34 = tail call noundef ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj(ptr noundef nonnull align 8 dereferenceable(52) %23, i32 noundef %32) #7
  %35 = load i32, ptr %28, align 8, !tbaa !64
  %36 = tail call noundef ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef %34, i32 noundef %35) #7
  %37 = load ptr, ptr %36, align 8, !tbaa !61
  %38 = getelementptr inbounds ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(72) %36, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 %4, i32 noundef %5) #7
  %40 = add nuw nsw i32 %32, 1
  %41 = icmp eq i32 %40, %24
  br i1 %41, label %42, label %31, !prof !80, !llvm.loop !81

42:                                               ; preds = %31, %20, %6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1, i32 noundef, ptr noundef, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712XPathMatcher9isMatchedEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 comdat align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !86

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #7
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !87 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !88

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #7
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715SelectorMatcher10endElementERKNS_14XMLElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 1 %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !78 {
  tail call void @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noundef %2) #7
  %4 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !70
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 4, !tbaa !70
  %7 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !71
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %18, !prof !89

10:                                               ; preds = %3
  store i32 -1, ptr %7, align 8, !tbaa !71
  %11 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = tail call noundef ptr @_ZNK11xercesc_2_711IC_Selector21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #7
  %16 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !64
  tail call void @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %15, i32 noundef %17) #7
  br label %18

18:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711IC_SelectorC2EPNS_11XercesXPathEPNS_18IdentityConstraintE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711IC_SelectorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !91 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !92 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711IC_SelectorD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !60 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711IC_SelectorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !61
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #8
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711IC_SelectorD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_711IC_SelectorD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711IC_SelectoreqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !93 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6) #7
  ret i1 %7
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711IC_SelectorneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !93 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711IC_SelectoreqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %3) #7
  %6 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_715SelectorMatcherC2EPNS_11XercesXPathEPNS_11IC_SelectorEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef %7, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %3) #8
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711IC_Selector12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %0) #7
  tail call void @_ZN11xercesc_2_711IC_SelectorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr poison) #7
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711IC_Selector14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !93 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_711IC_Selector12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !93 {
  ret ptr @_ZN11xercesc_2_711IC_Selector16classIC_SelectorE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711IC_Selector9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !93 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #7
  %4 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 2
  br i1 %3, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !90
  %8 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %7) #7
  %9 = load ptr, ptr %5, align 8, !tbaa !75
  tail call void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %9) #7
  br label %13

10:                                               ; preds = %2
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_11XercesXPathE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %12 = tail call noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #7
  store ptr %12, ptr %5, align 8, !tbaa !75
  br label %13

13:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #1 comdat align 2 !prof !93 {
  %2 = load i16, ptr %0, align 8, !tbaa !94
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !93 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #7
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_11XercesXPathE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !93 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_711XercesXPath16classXercesXPathE) #7
  store ptr %3, ptr %1, align 8, !tbaa !98
  ret ptr %0
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711IC_SelectorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture readnone %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711IC_SelectorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SelectorMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715SelectorMatcher15getInitialDepthEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 !prof !60 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !64
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XPathMatcher7matchedEPKtPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !99
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !99
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !103

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !104
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #7
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #9
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #7
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !93 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #7
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #7
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !93 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !109 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #11
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!59}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!35 = !{ptr @_ZN11xercesc_2_715SelectorMatcherC2EPNS_11XercesXPathEPNS_11IC_SelectorEPNS_14FieldActivatorEiPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_711IC_Selector21getIdentityConstraintEv, i64 16}
!36 = !{ptr @_ZN11xercesc_2_715SelectorMatcherC2EPNS_11XercesXPathEPNS_11IC_SelectorEPNS_14FieldActivatorEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE, i64 16}
!37 = !{ptr @_ZN11xercesc_2_715SelectorMatcher21startDocumentFragmentEv, ptr @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv, i64 16}
!38 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, i64 13326576}
!39 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_712XPathMatcher9isMatchedEv, i64 13326576}
!40 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_711IC_Selector21getIdentityConstraintEv, i64 158595}
!41 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv, i64 158595}
!42 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi, i64 158595}
!43 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj, i64 158595}
!44 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi, i64 158595}
!45 = !{ptr @_ZNK11xercesc_2_718IdentityConstraint13getFieldCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE4sizeEv, i64 634411}
!46 = !{ptr @_ZN11xercesc_2_718IdentityConstraint10getFieldAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, i64 317185}
!47 = !{ptr @_ZN11xercesc_2_715SelectorMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt, i64 13326576}
!48 = !{ptr @_ZN11xercesc_2_715SelectorMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZNK11xercesc_2_711IC_Selector21getIdentityConstraintEv, i64 158594}
!49 = !{ptr @_ZN11xercesc_2_715SelectorMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi, i64 158594}
!50 = !{ptr @_ZN11xercesc_2_711IC_SelectorC2EPNS_11XercesXPathEPNS_18IdentityConstraintE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 16}
!51 = !{ptr @_ZN11xercesc_2_711IC_SelectorC2EPNS_11XercesXPathEPNS_18IdentityConstraintE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 16}
!52 = !{ptr @_ZN11xercesc_2_711IC_SelectorD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 16}
!53 = !{ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 16}
!54 = !{ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715SelectorMatcherC2EPNS_11XercesXPathEPNS_11IC_SelectorEPNS_14FieldActivatorEiPNS_13MemoryManagerE, i64 16}
!55 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!56 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!57 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_throw, i64 1}
!58 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 16}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!65, !67, i64 72}
!65 = !{!"_ZTSN11xercesc_2_715SelectorMatcherE", !66, i64 0, !67, i64 72, !67, i64 76, !67, i64 80, !69, i64 88, !69, i64 96}
!66 = !{!"_ZTSN11xercesc_2_712XPathMatcherE", !67, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !69, i64 48, !69, i64 56, !69, i64 64}
!67 = !{!"int", !68, i64 0}
!68 = !{!"omnipotent char", !63, i64 0}
!69 = !{!"any pointer", !68, i64 0}
!70 = !{!65, !67, i64 76}
!71 = !{!65, !67, i64 80}
!72 = !{!65, !69, i64 88}
!73 = !{!65, !69, i64 96}
!74 = !{!"function_entry_count", i64 317202}
!75 = !{!76, !69, i64 16}
!76 = !{!"_ZTSN11xercesc_2_711IC_SelectorE", !77, i64 0, !69, i64 8, !69, i64 16}
!77 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!78 = !{!"function_entry_count", i64 13326576}
!79 = !{!"branch_weights", i32 47939300, i32 -314615140}
!80 = !{!"branch_weights", i32 158593, i32 1}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"function_entry_count", i64 634412}
!84 = !{!85, !69, i64 32}
!85 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !77, i64 0, !69, i64 8, !69, i64 16, !69, i64 24, !69, i64 32, !69, i64 40, !67, i64 48}
!86 = !{!"branch_weights", i32 1, i32 634413}
!87 = !{!"function_entry_count", i64 317186}
!88 = !{!"branch_weights", i32 1, i32 317187}
!89 = !{!"branch_weights", i32 158594, i32 13167984}
!90 = !{!76, !69, i64 8}
!91 = !{!"function_entry_count", i64 1068727}
!92 = !{!"function_entry_count", i64 5836268}
!93 = !{!"function_entry_count", i64 0}
!94 = !{!95, !96, i64 0}
!95 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !96, i64 0, !96, i64 2, !69, i64 8, !69, i64 16, !69, i64 24, !97, i64 32, !97, i64 40, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !69, i64 88, !67, i64 96}
!96 = !{!"short", !68, i64 0}
!97 = !{!"long", !68, i64 0}
!98 = !{!69, !69, i64 0}
!99 = !{!100, !67, i64 12}
!100 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !101, i64 8, !67, i64 12, !67, i64 16, !69, i64 24, !69, i64 32}
!101 = !{!"bool", !68, i64 0}
!102 = !{!"function_entry_count", i64 475779}
!103 = !{!"branch_weights", i32 475780, i32 1}
!104 = !{!100, !69, i64 32}
!105 = !{!100, !69, i64 24}
!106 = !{!107, !69, i64 40}
!107 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !108, i64 8, !69, i64 16, !67, i64 24, !69, i64 32, !69, i64 40}
!108 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !68, i64 0}
!109 = !{!"function_entry_count", i64 1069174}
