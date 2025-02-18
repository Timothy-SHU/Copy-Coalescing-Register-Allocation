; ModuleID = 'IC_Selector.cpp'
source_filename = "IC_Selector.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::IC_Selector" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SelectorMatcher" = type { %"class.xercesc_2_7::XPathMatcher", i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XPathMatcher" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::IdentityConstraint" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_715SelectorMatcherD0Ev = comdat any

$_ZNK11xercesc_2_715SelectorMatcher15getInitialDepthEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

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
@_ZN11xercesc_2_711XercesXPath16classXercesXPathE = external global %"class.xercesc_2_7::XProtoType", align 8

@_ZN11xercesc_2_715SelectorMatcherC1EPNS_11XercesXPathEPNS_11IC_SelectorEPNS_14FieldActivatorEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_715SelectorMatcherC2EPNS_11XercesXPathEPNS_11IC_SelectorEPNS_14FieldActivatorEiPNS_13MemoryManagerE
@_ZN11xercesc_2_711IC_SelectorC1EPNS_11XercesXPathEPNS_18IdentityConstraintE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_711IC_SelectorC2EPNS_11XercesXPathEPNS_18IdentityConstraintE
@_ZN11xercesc_2_711IC_SelectorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711IC_SelectorD2Ev
@_ZN11xercesc_2_711IC_SelectorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711IC_SelectorC2EPNS_13MemoryManagerE

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SelectorMatcherC2EPNS_11XercesXPathEPNS_11IC_SelectorEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !48 {
  %7 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %8, ptr noundef %5)
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715SelectorMatcherE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 1
  store i32 %4, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !61
  %11 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 3
  store i32 -1, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 4
  store ptr %2, ptr %12, align 8, !tbaa !63
  %13 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 5
  store ptr %3, ptr %13, align 8, !tbaa !64
  ret void
}

declare void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SelectorMatcher21startDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %2 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !61
  %3 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 3
  store i32 -1, ptr %3, align 8, !tbaa !62
  ret void
}

declare void @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 %4, i32 noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  tail call void @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 %4, i32 noundef %5)
  %7 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !61
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !61
  %10 = tail call noundef i32 @_ZN11xercesc_2_712XPathMatcher9isMatchedEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %11 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = icmp eq i32 %12, -1
  %14 = and i32 %10, 1
  %15 = icmp ne i32 %14, 0
  %16 = and i1 %13, %15
  %17 = and i32 %10, 5
  %18 = icmp eq i32 %17, 5
  %19 = or i1 %18, %16
  br i1 %19, label %20, label %72, !prof !67

20:                                               ; preds = %6
  %21 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds %"class.xercesc_2_7::IdentityConstraint", ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !70

28:                                               ; preds = %20
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %26, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !71
  br label %31

31:                                               ; preds = %20, %28
  %32 = phi i32 [ %30, %28 ], [ 0, %20 ]
  %33 = load i32, ptr %7, align 4, !tbaa !61
  store i32 %33, ptr %11, align 8, !tbaa !62
  %34 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull %24, i32 noundef %37)
  %38 = icmp sgt i32 %32, 0
  br i1 %38, label %39, label %72, !prof !74

39:                                               ; preds = %31
  %40 = zext nneg i32 %32 to i64
  br label %41

41:                                               ; preds = %39, %63
  %42 = phi i64 [ 0, %39 ], [ %70, %63 ]
  %43 = load ptr, ptr %34, align 8, !tbaa !64
  %44 = load ptr, ptr %25, align 8, !tbaa !68
  %45 = icmp eq ptr %44, null
  br i1 %45, label %63, label %46, !prof !70

46:                                               ; preds = %41
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !71
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %42, %49
  br i1 %50, label %58, label %51, !prof !75

51:                                               ; preds = %46
  %52 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %53 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %44, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %54)
          to label %55 unwind label %56

55:                                               ; preds = %51
  tail call void @__cxa_throw(ptr nonnull %52, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

56:                                               ; preds = %51
  %57 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %52) #8
  resume { ptr, i32 } %57

58:                                               ; preds = %46
  %59 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %44, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !77
  %61 = getelementptr inbounds ptr, ptr %60, i64 %42
  %62 = load ptr, ptr %61, align 8, !tbaa !78
  br label %63

63:                                               ; preds = %41, %58
  %64 = phi ptr [ %62, %58 ], [ null, %41 ]
  %65 = load i32, ptr %36, align 8, !tbaa !57
  %66 = tail call noundef ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef %64, i32 noundef %65)
  %67 = load ptr, ptr %66, align 8, !tbaa !55
  %68 = getelementptr inbounds ptr, ptr %67, i64 4
  %69 = load ptr, ptr %68, align 8
  tail call void %69(ptr noundef nonnull align 8 dereferenceable(72) %66, ptr noundef nonnull align 1 %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 %4, i32 noundef %5), !prof !79
  %70 = add nuw nsw i64 %42, 1
  %71 = icmp eq i64 %70, %40
  br i1 %71, label %72, label %41, !prof !74, !llvm.loop !80

72:                                               ; preds = %63, %31, %6
  ret void
}

declare void @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1, i32 noundef, ptr noundef, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_712XPathMatcher9isMatchedEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715SelectorMatcher10endElementERKNS_14XMLElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 1 %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !66 {
  tail call void @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 %1, ptr noundef %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 4, !tbaa !61
  %7 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !62
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %19, !prof !67

10:                                               ; preds = %3
  store i32 -1, ptr %7, align 8, !tbaa !62
  %11 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %16, i32 noundef %18)
  br label %19

19:                                               ; preds = %10, %3
  ret void
}

declare void @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_711IC_SelectorC2EPNS_11XercesXPathEPNS_18IdentityConstraintE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711IC_SelectorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !49
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711IC_SelectorD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !48 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711IC_SelectorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !55
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #8
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711IC_SelectorD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !65 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711IC_SelectorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !84

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !55
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #8, !prof !85
  br label %9

9:                                                ; preds = %1, %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711IC_SelectoreqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6)
  ret i1 %7
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711IC_SelectorneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6)
  %8 = xor i1 %7, true
  ret i1 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %3)
  %6 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef %7, ptr noundef %9, ptr noundef %3)
          to label %10 unwind label %16, !prof !86

10:                                               ; preds = %4
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715SelectorMatcherE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !55
  %11 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %5, i64 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %5, i64 0, i32 2
  store i32 0, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %5, i64 0, i32 3
  store i32 -1, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %5, i64 0, i32 4
  store ptr %0, ptr %14, align 8, !tbaa !63
  %15 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %5, i64 0, i32 5
  store ptr %1, ptr %15, align 8, !tbaa !64
  ret ptr %5

16:                                               ; preds = %4
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %3) #8
  resume { ptr, i32 } %17
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711IC_Selector12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711IC_SelectorE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711IC_Selector14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !48 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_711IC_Selector12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !48 {
  ret ptr @_ZN11xercesc_2_711IC_Selector16classIC_SelectorE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711IC_Selector9serializeERNS_16XSerializeEngineE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !48 {
  %3 = load i16, ptr %1, align 8, !tbaa !87
  %4 = icmp eq i16 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  br i1 %4, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr %5, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %7)
  %8 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %9)
  br label %14

10:                                               ; preds = %2
  %11 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_711XercesXPath16classXercesXPathE)
  store ptr %11, ptr %5, align 8, !tbaa !78
  %12 = tail call noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %13 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !49
  br label %14

14:                                               ; preds = %10, %6
  ret void
}

declare void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_711IC_SelectorC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_711IC_SelectorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Selector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SelectorMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !65 {
  tail call void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715SelectorMatcher15getInitialDepthEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SelectorMatcher", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !57
  ret i32 %3
}

declare void @_ZN11xercesc_2_712XPathMatcher7matchedEPKtPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !48 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !55
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!35 = !{ptr @_ZN11xercesc_2_715SelectorMatcher21startDocumentFragmentEv, ptr @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv, i64 16}
!36 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, i64 13485169}
!37 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_712XPathMatcher9isMatchedEv, i64 13326576}
!38 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_714FieldActivator18startValueScopeForEPKNS_18IdentityConstraintEi, i64 158593}
!39 = !{ptr @_ZN11xercesc_2_715SelectorMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_714FieldActivator13activateFieldEPNS_8IC_FieldEi, i64 158593}
!40 = !{ptr @_ZN11xercesc_2_715SelectorMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt, i64 13326576}
!41 = !{ptr @_ZN11xercesc_2_715SelectorMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_714FieldActivator16endValueScopeForEPKNS_18IdentityConstraintEi, i64 158593}
!42 = !{ptr @_ZN11xercesc_2_711IC_SelectorD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 16}
!43 = !{ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 16}
!44 = !{ptr @_ZN11xercesc_2_711IC_Selector13createMatcherEPNS_14FieldActivatorEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE, i64 16}
!45 = !{ptr @_ZN11xercesc_2_715SelectorMatcherD0Ev, ptr @_ZN11xercesc_2_712XPathMatcherD2Ev, i64 16}
!46 = !{ptr @_ZN11xercesc_2_715SelectorMatcherD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 16}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !52, i64 16}
!50 = !{!"_ZTSN11xercesc_2_711IC_SelectorE", !51, i64 0, !52, i64 8, !52, i64 16}
!51 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!56, !56, i64 0}
!56 = !{!"vtable pointer", !54, i64 0}
!57 = !{!58, !60, i64 72}
!58 = !{!"_ZTSN11xercesc_2_715SelectorMatcherE", !59, i64 0, !60, i64 72, !60, i64 76, !60, i64 80, !52, i64 88, !52, i64 96}
!59 = !{!"_ZTSN11xercesc_2_712XPathMatcherE", !60, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64}
!60 = !{!"int", !53, i64 0}
!61 = !{!58, !60, i64 76}
!62 = !{!58, !60, i64 80}
!63 = !{!58, !52, i64 88}
!64 = !{!58, !52, i64 96}
!65 = !{!"function_entry_count", i64 16}
!66 = !{!"function_entry_count", i64 13326576}
!67 = !{!"branch_weights", i32 158593, i32 13167983}
!68 = !{!69, !52, i64 32}
!69 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !51, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !60, i64 48}
!70 = !{!"branch_weights", i32 0, i32 158593}
!71 = !{!72, !60, i64 12}
!72 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8IC_FieldEEE", !73, i64 8, !60, i64 12, !60, i64 16, !52, i64 24, !52, i64 32}
!73 = !{!"bool", !53, i64 0}
!74 = !{!"branch_weights", i32 158592, i32 1}
!75 = !{!"branch_weights", i32 475779, i32 0}
!76 = !{!72, !52, i64 32}
!77 = !{!72, !52, i64 24}
!78 = !{!52, !52, i64 0}
!79 = !{!"VP", i32 0, i64 158593, i64 9058354236029268730, i64 158593}
!80 = distinct !{!80, !81, !82}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!50, !52, i64 8}
!84 = !{!"branch_weights", i32 0, i32 16}
!85 = !{!"VP", i32 0, i64 16, i64 7619876779791198147, i64 16}
!86 = !{!"branch_weights", i32 16, i32 0}
!87 = !{!88, !89, i64 0}
!88 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !89, i64 0, !89, i64 2, !52, i64 8, !52, i64 16, !52, i64 24, !90, i64 32, !90, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !60, i64 96}
!89 = !{!"short", !53, i64 0}
!90 = !{!"long", !53, i64 0}
!91 = !{!92, !52, i64 40}
!92 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !93, i64 8, !52, i64 16, !60, i64 24, !52, i64 32, !52, i64 40}
!93 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !53, i64 0}
