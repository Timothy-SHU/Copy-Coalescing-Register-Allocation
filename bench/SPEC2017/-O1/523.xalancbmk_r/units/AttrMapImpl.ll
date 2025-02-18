; ModuleID = 'AttrMapImpl.cpp'
source_filename = "AttrMapImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::AttrMapImpl" = type <{ %"class.xercesc_2_7::NamedNodeMapImpl", i8, [7 x i8] }>
%"class.xercesc_2_7::NamedNodeMapImpl" = type { ptr, ptr, ptr, i8, i32 }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>

$_ZN11xercesc_2_711AttrMapImpl11hasDefaultsEv = comdat any

$_ZN11xercesc_2_711AttrMapImpl11hasDefaultsEb = comdat any

@_ZTVN11xercesc_2_711AttrMapImplE = dso_local unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711AttrMapImplE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl12cloneContentEPS0_, ptr @_ZN11xercesc_2_711AttrMapImplD2Ev, ptr @_ZN11xercesc_2_711AttrMapImplD0Ev, ptr @_ZN11xercesc_2_716NamedNodeMapImpl8cloneMapEPNS_8NodeImplE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl13findNamePointERKNS_9DOMStringE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl9getLengthEv, ptr @_ZN11xercesc_2_716NamedNodeMapImpl12getNamedItemERKNS_9DOMStringE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl4itemEj, ptr @_ZN11xercesc_2_716NamedNodeMapImpl9removeAllEv, ptr @_ZN11xercesc_2_711AttrMapImpl15removeNamedItemERKNS_9DOMStringE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl12setNamedItemEPNS_8NodeImplE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_716NamedNodeMapImpl13findNamePointERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_716NamedNodeMapImpl14getNamedItemNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_716NamedNodeMapImpl14setNamedItemNSEPNS_8NodeImplE, ptr @_ZN11xercesc_2_711AttrMapImpl17removeNamedItemNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_716NamedNodeMapImpl16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_711AttrMapImpl12cloneAttrMapEPNS_8NodeImplE, ptr @_ZN11xercesc_2_711AttrMapImpl11hasDefaultsEv, ptr @_ZN11xercesc_2_711AttrMapImpl11hasDefaultsEb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711AttrMapImplE = dso_local constant [29 x i8] c"N11xercesc_2_711AttrMapImplE\00", align 1
@_ZTIN11xercesc_2_716NamedNodeMapImplE = external constant ptr
@_ZTIN11xercesc_2_711AttrMapImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711AttrMapImplE, ptr @_ZTIN11xercesc_2_716NamedNodeMapImplE }, align 8

@_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711AttrMapImplC2EPNS_8NodeImplE
@_ZN11xercesc_2_711AttrMapImplC1EPNS_8NodeImplEPNS_16NamedNodeMapImplE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_711AttrMapImplC2EPNS_8NodeImplEPNS_16NamedNodeMapImplE
@_ZN11xercesc_2_711AttrMapImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711AttrMapImplD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711AttrMapImplC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_716NamedNodeMapImplC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_711AttrMapImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::AttrMapImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !38
  ret void
}

declare void @_ZN11xercesc_2_716NamedNodeMapImplC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716NamedNodeMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_711AttrMapImplC2EPNS_8NodeImplEPNS_16NamedNodeMapImplE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_716NamedNodeMapImplC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_711AttrMapImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::AttrMapImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 8, !tbaa !38
  %5 = icmp eq ptr %2, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %11 unwind label %20

11:                                               ; preds = %6
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 19
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext true)
          to label %17 unwind label %20

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !35
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2)
          to label %22 unwind label %20

20:                                               ; preds = %17, %13, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_716NamedNodeMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #5
  resume { ptr, i32 } %21

22:                                               ; preds = %11, %17, %3
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711AttrMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_716NamedNodeMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #5
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_711AttrMapImplD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_716NamedNodeMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711AttrMapImpl12cloneAttrMapEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 46
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %8)
  invoke void @_ZN11xercesc_2_716NamedNodeMapImplC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %1)
          to label %10 unwind label %14

10:                                               ; preds = %2
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_711AttrMapImplE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds %"class.xercesc_2_7::AttrMapImpl", ptr %9, i64 0, i32 1
  store i8 0, ptr %11, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_716NamedNodeMapImpl12cloneContentEPS0_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %0)
  %12 = getelementptr inbounds %"class.xercesc_2_7::AttrMapImpl", ptr %0, i64 0, i32 1
  %13 = load i8, ptr %12, align 8, !tbaa !38, !range !53, !noundef !54
  store i8 %13, ptr %11, align 8, !tbaa !38
  ret ptr %9

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #5
  resume { ptr, i32 } %15
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711AttrMapImpl15removeNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl15removeNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(33) %0)
  %8 = icmp ne ptr %3, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 77
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(104) %12)
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %10
  %23 = load ptr, ptr %20, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 17
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(48) %20, i1 noundef zeroext true)
  %27 = load ptr, ptr %0, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26)
  br label %31

31:                                               ; preds = %10, %22, %2
  ret ptr %3
}

declare noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl15removeNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711AttrMapImpl17removeNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !34 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl17removeNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 18
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(33) %0)
  %9 = icmp ne ptr %4, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 77
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(104) %13)
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 13
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %11
  %24 = load ptr, ptr %21, align 8, !tbaa !35
  %25 = getelementptr inbounds ptr, ptr %24, i64 17
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(48) %21, i1 noundef zeroext true)
  %28 = load ptr, ptr %0, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %27)
  br label %32

32:                                               ; preds = %11, %23, %3
  ret ptr %4
}

declare noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl17removeNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_716NamedNodeMapImpl12cloneContentEPS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl8cloneMapEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_716NamedNodeMapImpl13findNamePointERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_716NamedNodeMapImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl12getNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl4itemEj(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716NamedNodeMapImpl9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl12setNamedItemEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716NamedNodeMapImpl11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_716NamedNodeMapImpl13findNamePointERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl14getNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl14setNamedItemNSEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716NamedNodeMapImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_711AttrMapImpl11hasDefaultsEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AttrMapImpl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !38, !range !53, !noundef !54
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711AttrMapImpl11hasDefaultsEb(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AttrMapImpl", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !38
  ret void
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !43, i64 32}
!39 = !{!"_ZTSN11xercesc_2_711AttrMapImplE", !40, i64 0, !43, i64 32}
!40 = !{!"_ZTSN11xercesc_2_716NamedNodeMapImplE", !41, i64 8, !41, i64 16, !43, i64 24, !44, i64 28}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"bool", !42, i64 0}
!44 = !{!"int", !42, i64 0}
!45 = !{!46, !41, i64 160}
!46 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !47, i64 0, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !43, i64 156, !41, i64 160}
!47 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !48, i64 0, !41, i64 48, !41, i64 56, !44, i64 64, !41, i64 72, !44, i64 80}
!48 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !49, i64 0, !41, i64 32, !41, i64 40}
!49 = !{!"_ZTSN11xercesc_2_78NodeImplE", !50, i64 0, !41, i64 16, !52, i64 24}
!50 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !51, i64 0}
!51 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !44, i64 8}
!52 = !{!"short", !42, i64 0}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!40, !41, i64 16}
