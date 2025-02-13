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
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i8, ptr, ptr }
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }

$_ZNK11xercesc_2_78IC_Field21getIdentityConstraintEv = comdat any

$_ZN11xercesc_2_714FieldActivator11setMayMatchEPNS_8IC_FieldEb = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_11XercesXPathE = comdat any

$_ZN11xercesc_2_712FieldMatcherD0Ev = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb = comdat any

$_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_724ValueHashTableBucketElemIbEC2EPvRKbPS1_ = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

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
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711XercesXPath16classXercesXPathE = external global %"class.xercesc_2_7::XProtoType", align 8

@_ZN11xercesc_2_712FieldMatcherC1EPNS_11XercesXPathEPNS_8IC_FieldEPNS_10ValueStoreEPNS_14FieldActivatorEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712FieldMatcherC2EPNS_11XercesXPathEPNS_8IC_FieldEPNS_10ValueStoreEPNS_14FieldActivatorEPNS_13MemoryManagerE
@_ZN11xercesc_2_78IC_FieldC1EPNS_11XercesXPathEPNS_18IdentityConstraintE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_78IC_FieldC2EPNS_11XercesXPathEPNS_18IdentityConstraintE
@_ZN11xercesc_2_78IC_FieldD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78IC_FieldD2Ev
@_ZN11xercesc_2_78IC_FieldC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_78IC_FieldC2EPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712FieldMatcherC2EPNS_11XercesXPathEPNS_8IC_FieldEPNS_10ValueStoreEPNS_14FieldActivatorEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef null, ptr noundef %5) #8
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_712FieldMatcherE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %7 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !59
  %9 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 3
  store ptr %4, ptr %9, align 8, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712FieldMatcher7matchedEPKtPNS_17DatatypeValidatorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 !prof !49 {
  br i1 %3, label %5, label %11, !prof !61

5:                                                ; preds = %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = tail call noundef ptr @_ZNK11xercesc_2_78IC_Field21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #8
  tail call void @_ZN11xercesc_2_710ValueStore14reportNilErrorEPNS_18IdentityConstraintE(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef %10) #8
  br label %11

11:                                               ; preds = %5, %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.xercesc_2_7::FieldMatcher", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  tail call void @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef %15, ptr noundef %17, ptr noundef %2, ptr noundef %1) #8
  %18 = load ptr, ptr %14, align 8, !tbaa !60
  %19 = load ptr, ptr %16, align 8, !tbaa !59
  tail call void @_ZN11xercesc_2_714FieldActivator11setMayMatchEPNS_8IC_FieldEb(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %19, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ValueStore14reportNilErrorEPNS_18IdentityConstraintE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_78IC_Field21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714FieldActivator11setMayMatchEPNS_8IC_FieldEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 !prof !62 {
  %4 = alloca i8, align 1
  %5 = zext i1 %2 to i8
  store i8 %5, ptr %4, align 1, !tbaa !66
  %6 = getelementptr inbounds %"class.xercesc_2_7::FieldActivator", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  call void @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78IC_FieldC2EPNS_11XercesXPathEPNS_18IdentityConstraintE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_78IC_FieldE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !72 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !73 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78IC_FieldD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 !prof !70 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_78IC_FieldE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !50
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #9
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78IC_FieldD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_78IC_FieldD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78IC_FieldeqERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6) #8
  ret i1 %7
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711XercesXPatheqERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78IC_FieldneERKS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 !prof !74 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78IC_FieldeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_10ValueStoreEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #4 align 2 !prof !74 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %3) #8
  %6 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_712FieldMatcherC2EPNS_11XercesXPathEPNS_8IC_FieldEPNS_10ValueStoreEPNS_14FieldActivatorEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %7, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %1, ptr noundef %3) #8
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %3) #9
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78IC_Field12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %0) #8
  tail call void @_ZN11xercesc_2_78IC_FieldC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr poison) #8
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78IC_Field14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !74 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_78IC_Field12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !74 {
  ret ptr @_ZN11xercesc_2_78IC_Field13classIC_FieldE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_78IC_Field9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !74 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #8
  %4 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 2
  br i1 %3, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !71
  %8 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %7) #8
  %9 = load ptr, ptr %5, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %9) #8
  br label %13

10:                                               ; preds = %2
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_11XercesXPathE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %12 = tail call noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #8
  store ptr %12, ptr %5, align 8, !tbaa !63
  br label %13

13:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 comdat align 2 !prof !74 {
  %2 = load i16, ptr %0, align 8, !tbaa !75
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !74 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #8
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_11XercesXPathE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !74 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_711XercesXPath16classXercesXPathE) #8
  store ptr %3, ptr %1, align 8, !tbaa !79
  ret ptr %0
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_78IC_FieldC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture readnone %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_78IC_FieldE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_Field", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712FieldMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XPathMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_712XPathMatcher15getInitialDepthEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XPathMatcher21startDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XPathMatcher12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1, i32 noundef, ptr noundef, ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XPathMatcher10endElementERKNS_14XMLElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 !prof !62 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !80

7:                                                ; preds = %3
  %8 = load i8, ptr %2, align 1, !tbaa !66, !range !81, !noundef !82
  store i8 %8, ptr %5, align 8, !tbaa !83
  %9 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %5, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !85
  br label %26

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !86
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 24) #8
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = load i32, ptr %4, align 4, !tbaa !89
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !79
  call void @_ZN11xercesc_2_724ValueHashTableBucketElemIbEC2EPvRKbPS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %21) #8
  %22 = load ptr, ptr %16, align 8, !tbaa !88
  %23 = load i32, ptr %4, align 4, !tbaa !89
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %15, ptr %25, align 8, !tbaa !79
  br label %26

26:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !90 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = load ptr, ptr %0, align 8, !tbaa !86
  %9 = load ptr, ptr %5, align 8, !tbaa !50
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #8
  store i32 %11, ptr %2, align 4, !tbaa !89
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !93

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !91
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = load ptr, ptr %20, align 8, !tbaa !50
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #8
  br i1 %26, label %31, label %27, !prof !94

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !79
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !95, !llvm.loop !96

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724ValueHashTableBucketElemIbEC2EPvRKbPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !98 {
  %5 = load i8, ptr %2, align 1, !tbaa !66, !range !81, !noundef !82
  store i8 %5, ptr %0, align 8, !tbaa !83
  %6 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !99
  %7 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !100 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #11
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_ZN11xercesc_2_712FieldMatcherC2EPNS_11XercesXPathEPNS_8IC_FieldEPNS_10ValueStoreEPNS_14FieldActivatorEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712XPathMatcherC2EPNS_11XercesXPathEPNS_18IdentityConstraintEPNS_13MemoryManagerE, i64 158593}
!36 = !{ptr @_ZN11xercesc_2_712FieldMatcher7matchedEPKtPNS_17DatatypeValidatorEb, ptr @_ZNK11xercesc_2_78IC_Field21getIdentityConstraintEv, i64 1}
!37 = !{ptr @_ZN11xercesc_2_712FieldMatcher7matchedEPKtPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_710ValueStore14reportNilErrorEPNS_18IdentityConstraintE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_712FieldMatcher7matchedEPKtPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_710ValueStore8addValueEPNS_14FieldActivatorEPNS_8IC_FieldEPNS_17DatatypeValidatorEPKt, i64 158593}
!39 = !{ptr @_ZN11xercesc_2_712FieldMatcher7matchedEPKtPNS_17DatatypeValidatorEb, ptr @_ZN11xercesc_2_714FieldActivator11setMayMatchEPNS_8IC_FieldEb, i64 158593}
!40 = !{ptr @_ZN11xercesc_2_714FieldActivator11setMayMatchEPNS_8IC_FieldEb, ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb, i64 317186}
!41 = !{ptr @_ZN11xercesc_2_78IC_FieldC2EPNS_11XercesXPathEPNS_18IdentityConstraintE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 16}
!42 = !{ptr @_ZN11xercesc_2_78IC_FieldC2EPNS_11XercesXPathEPNS_18IdentityConstraintE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 16}
!43 = !{ptr @_ZN11xercesc_2_78IC_FieldD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 16}
!44 = !{ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 158593}
!45 = !{ptr @_ZN11xercesc_2_78IC_Field13createMatcherEPNS_14FieldActivatorEPNS_10ValueStoreEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712FieldMatcherC2EPNS_11XercesXPathEPNS_8IC_FieldEPNS_10ValueStoreEPNS_14FieldActivatorEPNS_13MemoryManagerE, i64 158593}
!46 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb, ptr @_ZN11xercesc_2_716ValueHashTableOfIbE14findBucketElemEPKvRj, i64 317186}
!47 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfIbE3putEPvRKb, ptr @_ZN11xercesc_2_724ValueHashTableBucketElemIbEC2EPvRKbPS1_, i64 16}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 158593}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !52, i64 0}
!52 = !{!"Simple C++ TBAA"}
!53 = !{!54, !58, i64 72}
!54 = !{!"_ZTSN11xercesc_2_712FieldMatcherE", !55, i64 0, !58, i64 72, !58, i64 80, !58, i64 88}
!55 = !{!"_ZTSN11xercesc_2_712XPathMatcherE", !56, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !52, i64 0}
!58 = !{!"any pointer", !57, i64 0}
!59 = !{!54, !58, i64 80}
!60 = !{!54, !58, i64 88}
!61 = !{!"branch_weights", i32 1, i32 158594}
!62 = !{!"function_entry_count", i64 317186}
!63 = !{!64, !58, i64 16}
!64 = !{!"_ZTSN11xercesc_2_78IC_FieldE", !65, i64 0, !58, i64 8, !58, i64 16}
!65 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!66 = !{!67, !67, i64 0}
!67 = !{!"bool", !57, i64 0}
!68 = !{!69, !58, i64 16}
!69 = !{!"_ZTSN11xercesc_2_714FieldActivatorE", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24}
!70 = !{!"function_entry_count", i64 16}
!71 = !{!64, !58, i64 8}
!72 = !{!"function_entry_count", i64 1068727}
!73 = !{!"function_entry_count", i64 5836268}
!74 = !{!"function_entry_count", i64 0}
!75 = !{!76, !77, i64 0}
!76 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !77, i64 0, !77, i64 2, !58, i64 8, !58, i64 16, !58, i64 24, !78, i64 32, !78, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !58, i64 80, !58, i64 88, !56, i64 96}
!77 = !{!"short", !57, i64 0}
!78 = !{!"long", !57, i64 0}
!79 = !{!58, !58, i64 0}
!80 = !{!"branch_weights", i32 16, i32 317172}
!81 = !{i8 0, i8 2}
!82 = !{}
!83 = !{!84, !67, i64 0}
!84 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemIbEE", !67, i64 0, !58, i64 8, !58, i64 16}
!85 = !{!84, !58, i64 16}
!86 = !{!87, !58, i64 0}
!87 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfIbEE", !58, i64 0, !58, i64 8, !56, i64 16, !58, i64 24}
!88 = !{!87, !58, i64 8}
!89 = !{!56, !56, i64 0}
!90 = !{!"function_entry_count", i64 475779}
!91 = !{!87, !58, i64 24}
!92 = !{!87, !56, i64 16}
!93 = !{!"branch_weights", i32 1, i32 127}
!94 = !{!"branch_weights", i32 475765, i32 6}
!95 = !{!"branch_weights", i32 127, i32 3806033}
!96 = distinct !{!96, !97}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"function_entry_count", i64 15}
!99 = !{!84, !58, i64 8}
!100 = !{!"function_entry_count", i64 1069174}
