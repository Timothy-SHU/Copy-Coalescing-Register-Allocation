; ModuleID = 'IC_Field.cpp'
source_filename = "IC_Field.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::FieldMatcher" = type { %"class.xercesc_2_7::XPathMatcher", ptr, ptr, ptr }
%"class.xercesc_2_7::XPathMatcher" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::IC_Field" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::FieldActivator" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i8, ptr, ptr }

$_ZN11xercesc_2_712FieldMatcherD0Ev = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

@_ZTVN11xercesc_2_712FieldMatcherE = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712FieldMatcherE, ptr @_ZN11xercesc_2_712XPathMatcherD2Ev, ptr @_ZN11xercesc_2_712FieldMatcherD0Ev, ptr @_ZNK11xercesc_2_712XPathMatcher15getInitialDepthEv, ptr @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv, ptr @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, ptr @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt, ptr @_ZN11xercesc_2_712FieldMatcher7matchedEPKtPNS_17DatatypeValidatorEb] }, align 8
@_ZTVN11xercesc_2_78IC_FieldE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78IC_FieldE, ptr @_ZN11xercesc_2_78IC_FieldD2Ev, ptr @_ZN11xercesc_2_78IC_FieldD0Ev, ptr @_ZNK11xercesc_2_78IC_Field14isSerializableEv, ptr @_ZN11xercesc_2_78IC_Field9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_78IC_Field12getProtoTypeEv] }, align 8
@.str = private unnamed_addr constant [9 x i8] c"IC_Field\00", align 1
@_ZN11xercesc_2_78IC_Field13classIC_FieldE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_78IC_Field12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712FieldMatcherE = dso_local constant [30 x i8] c"N11xercesc_2_712FieldMatcherE\00", align 1
@_ZTIN11xercesc_2_712XPathMatcherE = external constant ptr
@_ZTIN11xercesc_2_712FieldMatcherE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712FieldMatcherE, ptr @_ZTIN11xercesc_2_712XPathMatcherE }, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78IC_FieldE = dso_local constant [25 x i8] c"N11xercesc_2_78IC_FieldE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTIN11xercesc_2_78IC_FieldE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78IC_FieldE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZN11xercesc_2_711XercesXPath16classXercesXPathE = external global %"class.xercesc_2_7::XProtoType", align 8

@_ZN11xercesc_2_712FieldMatcherC1EPNS_11XercesXPathEPNS_8IC_FieldEPNS_10ValueStoreEPNS_14FieldActivatorEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712FieldMatcherC2EPNS_11XercesXPathEPNS_8IC_FieldEPNS_10ValueStoreEPNS_14FieldActivatorEPNS_13MemoryManagerE
@_ZN11xercesc_2_78IC_FieldC1EPNS_11XercesXPathEPNS_18IdentityConstraintE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_78IC_FieldC2EPNS_11XercesXPathEPNS_18IdentityConstraintE
@_ZN11xercesc_2_78IC_FieldD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78IC_FieldD2Ev
@_ZN11xercesc_2_78IC_FieldC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_78IC_FieldC2EPNS_13MemoryManagerE

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712FieldMatcherC2EPNS_11XercesXPathEPNS_8IC_FieldEPNS_10ValueStoreEPNS_14FieldActivatorEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !42 {
  tail call void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef null, ptr noundef %5)
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_712FieldMatcherE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %7 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 3
  store ptr %4, ptr %9, align 8, !tbaa !53
  ret void
}

declare void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712FieldMatcher7matchedEPKtPNS_17DatatypeValidatorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 !prof !54 {
  br i1 %3, label %5, label %12, !prof !55

5:                                                ; preds = %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  tail call void @_ZN11xercesc_2_710ValueStore14reportNilErrorEPNS_18IdentityConstraintE(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef %11)
  br label %12

12:                                               ; preds = %5, %4
  %13 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  tail call void @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef %16, ptr noundef %18, ptr noundef %2, ptr noundef %1)
  %19 = load ptr, ptr %15, align 8, !tbaa !53
  %20 = load ptr, ptr %17, align 8, !tbaa !52
  %21 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !63
  %27 = load ptr, ptr %22, align 8, !tbaa !64
  %28 = load ptr, ptr %24, align 8, !tbaa !43
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %20, i32 noundef %26, ptr noundef %27), !prof !65
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %22, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !66
  %33 = zext i32 %30 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37, !prof !68

37:                                               ; preds = %12, %46
  %38 = phi ptr [ %48, %46 ], [ %35, %12 ]
  %39 = load ptr, ptr %23, align 8, !tbaa !61
  %40 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %38, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !69
  %42 = load ptr, ptr %39, align 8, !tbaa !43
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef zeroext i1 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %20, ptr noundef %41), !prof !72
  br i1 %45, label %50, label %46, !prof !73

46:                                               ; preds = %37
  %47 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %38, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !67
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %37, !prof !74, !llvm.loop !75

50:                                               ; preds = %46, %37, %12
  %51 = phi ptr [ null, %12 ], [ %38, %37 ], [ null, %46 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !78

53:                                               ; preds = %50
  store i8 0, ptr %51, align 8, !tbaa !79
  %54 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %51, i64 0, i32 2
  store ptr %20, ptr %54, align 8, !tbaa !69
  br label %66

55:                                               ; preds = %50
  %56 = load ptr, ptr %22, align 8, !tbaa !64
  %57 = load ptr, ptr %56, align 8, !tbaa !43
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 24), !prof !80
  %61 = load ptr, ptr %31, align 8, !tbaa !66
  %62 = getelementptr inbounds ptr, ptr %61, i64 %33
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  store i8 0, ptr %60, align 8, !tbaa !79
  %64 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %60, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !81
  %65 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %60, i64 0, i32 2
  store ptr %20, ptr %65, align 8, !tbaa !69
  store ptr %60, ptr %62, align 8, !tbaa !67
  br label %66

66:                                               ; preds = %53, %55
  ret void
}

declare void @_ZN11xercesc_2_710ValueStore14reportNilErrorEPNS_18IdentityConstraintE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_78IC_FieldC2EPNS_11XercesXPathEPNS_18IdentityConstraintE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_78IC_FieldE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !56
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_78IC_FieldD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !42 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_78IC_FieldE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !43
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #9
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_78IC_FieldD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !82 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_78IC_FieldE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !84

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !43
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #9, !prof !85
  br label %9

9:                                                ; preds = %1, %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78IC_FieldeqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !42 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6)
  ret i1 %7
}

declare noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78IC_FieldneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !42 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6)
  %8 = xor i1 %7, true
  ret i1 %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_10ValueStoreEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #6 align 2 !prof !42 {
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %3)
  %6 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef %7, ptr noundef null, ptr noundef %3)
          to label %8 unwind label %12, !prof !86

8:                                                ; preds = %4
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_712FieldMatcherE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !43
  %9 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %5, i64 0, i32 1
  store ptr %2, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %5, i64 0, i32 2
  store ptr %0, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %5, i64 0, i32 3
  store ptr %1, ptr %11, align 8, !tbaa !53
  ret ptr %5

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %3) #9
  resume { ptr, i32 } %13
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78IC_Field12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_78IC_FieldE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78IC_Field14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !42 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_78IC_Field12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !42 {
  ret ptr @_ZN11xercesc_2_78IC_Field13classIC_FieldE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78IC_Field9serializeERNS_16XSerializeEngineE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !42 {
  %3 = load i16, ptr %1, align 8, !tbaa !87
  %4 = icmp eq i16 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  br i1 %4, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr %5, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %7)
  %8 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  tail call void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %9)
  br label %14

10:                                               ; preds = %2
  %11 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_711XercesXPath16classXercesXPathE)
  store ptr %11, ptr %5, align 8, !tbaa !67
  %12 = tail call noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %13 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !56
  br label %14

14:                                               ; preds = %10, %6
  ret void
}

declare void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_78IC_FieldC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_78IC_FieldE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712FieldMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #7 comdat align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

declare noundef i32 @_ZNK11xercesc_2_712XPathMatcher15getInitialDepthEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare void @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare void @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1, i32 noundef, ptr noundef, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xercesc_2_712FieldMatcher7matchedEPKtPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, i64 158593}
!36 = !{ptr @_ZN11xercesc_2_78IC_FieldD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 16}
!37 = !{ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 158593}
!38 = !{ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE, i64 158593}
!39 = !{ptr @_ZN11xercesc_2_712FieldMatcherD0Ev, ptr @_ZN11xercesc_2_712XPathMatcherD2Ev, i64 158593}
!40 = !{ptr @_ZN11xercesc_2_712FieldMatcherD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 158593}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !51, i64 72}
!47 = !{!"_ZTSN11xercesc_2_712FieldMatcherE", !48, i64 0, !51, i64 72, !51, i64 80, !51, i64 88}
!48 = !{!"_ZTSN11xercesc_2_712XPathMatcherE", !49, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !45, i64 0}
!51 = !{!"any pointer", !50, i64 0}
!52 = !{!47, !51, i64 80}
!53 = !{!47, !51, i64 88}
!54 = !{!"function_entry_count", i64 158593}
!55 = !{!"branch_weights", i32 0, i32 158593}
!56 = !{!57, !51, i64 16}
!57 = !{!"_ZTSN11xercesc_2_78IC_FieldE", !58, i64 0, !51, i64 8, !51, i64 16}
!58 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!59 = !{!60, !51, i64 16}
!60 = !{!"_ZTSN11xercesc_2_714FieldActivatorE", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24}
!61 = !{!62, !51, i64 24}
!62 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfIbEE", !51, i64 0, !51, i64 8, !49, i64 16, !51, i64 24}
!63 = !{!62, !49, i64 16}
!64 = !{!62, !51, i64 0}
!65 = !{!"VP", i32 0, i64 158593, i64 4592451362407133634, i64 158593}
!66 = !{!62, !51, i64 8}
!67 = !{!51, !51, i64 0}
!68 = !{!"branch_weights", i32 1, i32 239}
!69 = !{!70, !51, i64 16}
!70 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemIbEE", !71, i64 0, !51, i64 8, !51, i64 16}
!71 = !{!"bool", !50, i64 0}
!72 = !{!"VP", i32 0, i64 158588, i64 2119983950972065349, i64 158588}
!73 = !{!"branch_weights", i32 317171, i32 5}
!74 = !{!"branch_weights", i32 239, i32 5074577}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!"branch_weights", i32 15, i32 317171}
!79 = !{!70, !71, i64 0}
!80 = !{!"VP", i32 0, i64 7, i64 8345045103670217670, i64 7}
!81 = !{!70, !51, i64 8}
!82 = !{!"function_entry_count", i64 16}
!83 = !{!57, !51, i64 8}
!84 = !{!"branch_weights", i32 0, i32 16}
!85 = !{!"VP", i32 0, i64 16, i64 7619876779791198147, i64 16}
!86 = !{!"branch_weights", i32 158593, i32 0}
!87 = !{!88, !89, i64 0}
!88 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !89, i64 0, !89, i64 2, !51, i64 8, !51, i64 16, !51, i64 24, !90, i64 32, !90, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !49, i64 96}
!89 = !{!"short", !50, i64 0}
!90 = !{!"long", !50, i64 0}
