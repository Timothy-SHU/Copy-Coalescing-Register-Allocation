; ModuleID = 'NamedNodeMapImpl.cpp'
source_filename = "NamedNodeMapImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::NamedNodeMapImpl" = type { ptr, ptr, ptr, i8, i32 }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::DOMString" = type { ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_78NodeImpl11isSpecifiedEb = comdat any

$_ZNK11xercesc_2_78NodeImpl11isSpecifiedEv = comdat any

$_ZN11xercesc_2_78NodeImpl7isOwnedEb = comdat any

$_ZNK11xercesc_2_78NodeImpl7isOwnedEv = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

@_ZN11xercesc_2_716NamedNodeMapImpl18gLiveNamedNodeMapsE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN11xercesc_2_716NamedNodeMapImpl19gTotalNamedNodeMapsE = dso_local local_unnamed_addr global i32 0, align 4
@_ZTVN11xercesc_2_716NamedNodeMapImplE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716NamedNodeMapImplE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl12cloneContentEPS0_, ptr @_ZN11xercesc_2_716NamedNodeMapImplD2Ev, ptr @_ZN11xercesc_2_716NamedNodeMapImplD0Ev, ptr @_ZN11xercesc_2_716NamedNodeMapImpl8cloneMapEPNS_8NodeImplE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl13findNamePointERKNS_9DOMStringE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl9getLengthEv, ptr @_ZN11xercesc_2_716NamedNodeMapImpl12getNamedItemERKNS_9DOMStringE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl4itemEj, ptr @_ZN11xercesc_2_716NamedNodeMapImpl9removeAllEv, ptr @_ZN11xercesc_2_716NamedNodeMapImpl15removeNamedItemERKNS_9DOMStringE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl12setNamedItemEPNS_8NodeImplE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl11setReadOnlyEbb, ptr @_ZN11xercesc_2_716NamedNodeMapImpl13findNamePointERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_716NamedNodeMapImpl14getNamedItemNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_716NamedNodeMapImpl14setNamedItemNSEPNS_8NodeImplE, ptr @_ZN11xercesc_2_716NamedNodeMapImpl17removeNamedItemNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_716NamedNodeMapImpl16setOwnerDocumentEPNS_12DocumentImplE] }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716NamedNodeMapImplE = dso_local constant [34 x i8] c"N11xercesc_2_716NamedNodeMapImplE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_716NamedNodeMapImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716NamedNodeMapImplE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZN11xercesc_2_78NodeImpl9SPECIFIEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_716NamedNodeMapImplC1EPNS_8NodeImplE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_716NamedNodeMapImplC2EPNS_8NodeImplE
@_ZN11xercesc_2_716NamedNodeMapImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_716NamedNodeMapImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImplC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xercesc_2_716NamedNodeMapImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 3
  store i8 0, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 4
  store i32 1, ptr %6, align 4, !tbaa !46
  %7 = load i32, ptr @_ZN11xercesc_2_716NamedNodeMapImpl18gLiveNamedNodeMapsE, align 4, !tbaa !47
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @_ZN11xercesc_2_716NamedNodeMapImpl18gLiveNamedNodeMapsE, align 4, !tbaa !47
  %9 = load i32, ptr @_ZN11xercesc_2_716NamedNodeMapImpl19gTotalNamedNodeMapsE, align 4, !tbaa !47
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @_ZN11xercesc_2_716NamedNodeMapImpl19gTotalNamedNodeMapsE, align 4, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImplD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xercesc_2_716NamedNodeMapImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710NodeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i32, ptr @_ZN11xercesc_2_716NamedNodeMapImpl18gLiveNamedNodeMapsE, align 4, !tbaa !47
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr @_ZN11xercesc_2_716NamedNodeMapImpl18gLiveNamedNodeMapsE, align 4, !tbaa !47
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_710NodeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImplD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_716NamedNodeMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl6addRefEPS0_(ptr noundef %0) local_unnamed_addr #2 align 2 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !46
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl8cloneMapEPNS_8NodeImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 46
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %1) #7
  %7 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %6) #7
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %7) #7
  tail call void @_ZN11xercesc_2_716NamedNodeMapImplC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %1) #7
  %9 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %2
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %7) #7
  %14 = load ptr, ptr %9, align 8, !tbaa !44
  %15 = invoke noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #7
          to label %16 unwind label %22

16:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_710NodeVectorC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %15, ptr noundef %7) #7
          to label %17 unwind label %22

17:                                               ; preds = %16
  %18 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %8, i64 0, i32 1
  store ptr %13, ptr %18, align 8, !tbaa !44
  %19 = load ptr, ptr %9, align 8, !tbaa !44
  %20 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %41, label %24

22:                                               ; preds = %16, %12
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %7) #8
  resume { ptr, i32 } %23

24:                                               ; preds = %17, %24
  %25 = phi i32 [ %37, %24 ], [ 0, %17 ]
  %26 = load ptr, ptr %9, align 8, !tbaa !44
  %27 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef %25) #7
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 17
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(26) %27, i1 noundef zeroext true) #7
  %32 = load ptr, ptr %9, align 8, !tbaa !44
  %33 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %32, i32 noundef %25) #7
  %34 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(26) %33) #7
  tail call void @_ZN11xercesc_2_78NodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(26) %31, i1 noundef zeroext %34) #7
  %35 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %31, i64 0, i32 2
  store ptr %1, ptr %35, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %31, i1 noundef zeroext true) #7
  %36 = load ptr, ptr %18, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull %31) #7
  %37 = add nuw i32 %25, 1
  %38 = load ptr, ptr %9, align 8, !tbaa !44
  %39 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %38) #7
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %24, label %41, !llvm.loop !54

41:                                               ; preds = %24, %17, %2
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710NodeVectorC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !60
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2, !tbaa !61
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !60
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2, !tbaa !61
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !60
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !61
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl9removeAllEv(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  br label %14

11:                                               ; preds = %28, %5
  %12 = load ptr, ptr %2, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %31

14:                                               ; preds = %9, %28
  %15 = phi i32 [ %7, %9 ], [ %29, %28 ]
  %16 = load ptr, ptr %2, align 8, !tbaa !44
  %17 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %15) #7
  %18 = load ptr, ptr %10, align 8, !tbaa !38
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 26
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(26) %18) #7
  %23 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %17, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %17, i1 noundef zeroext false) #7
  %24 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %17, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !62
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %17) #7
  br label %28

28:                                               ; preds = %27, %14
  %29 = add nsw i32 %15, -1
  %30 = icmp sgt i32 %15, 0
  br i1 %30, label %14, label %11, !llvm.loop !63

31:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710NodeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %12) #8
  br label %32

32:                                               ; preds = %31, %11
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716NamedNodeMapImpl13findNamePointERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  %9 = add i32 %8, -1
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %7, %26
  %12 = phi i32 [ %31, %26 ], [ 0, %7 ]
  %13 = phi i32 [ %30, %26 ], [ %9, %7 ]
  %14 = add nsw i32 %12, %13
  %15 = sdiv i32 %14, 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %16 = load ptr, ptr %4, align 8, !tbaa !44
  %17 = call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %15) #7
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 23
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(26) %17) #7
  %21 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString13compareStringERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %22 unwind label %24

22:                                               ; preds = %11
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %38, label %26

24:                                               ; preds = %11
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  resume { ptr, i32 } %25

26:                                               ; preds = %22
  %27 = icmp slt i32 %21, 0
  %28 = add nsw i32 %15, -1
  %29 = add nsw i32 %15, 1
  %30 = select i1 %27, i32 %28, i32 %13
  %31 = select i1 %27, i32 %12, i32 %29
  %32 = icmp sgt i32 %31, %30
  br i1 %32, label %33, label %11, !llvm.loop !64

33:                                               ; preds = %26, %7
  %34 = phi i32 [ 0, %7 ], [ %31, %26 ]
  %35 = phi i32 [ 0, %7 ], [ %15, %26 ]
  %36 = call i32 @llvm.smax.i32(i32 %34, i32 %35)
  %37 = xor i32 %36, -1
  br label %38

38:                                               ; preds = %22, %2, %33
  %39 = phi i32 [ -1, %2 ], [ %37, %33 ], [ %15, %22 ]
  ret i32 %39
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString13compareStringERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716NamedNodeMapImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl12getNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %6) #7
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %11, %8 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl4itemEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #3 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8, !tbaa !44
  %11 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %1) #7
  br label %12

12:                                               ; preds = %2, %6, %9
  %13 = phi ptr [ %11, %9 ], [ null, %6 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl15removeNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !45, !range !65, !noundef !66
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #7
          to label %10 unwind label %14

10:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %9, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %13 unwind label %11

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %18

13:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %52 unwind label %16

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %18

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %50

18:                                               ; preds = %11, %14
  %19 = phi { ptr, i32 } [ %15, %14 ], [ %12, %11 ]
  call void @__cxa_free_exception(ptr %9) #9
  br label %50

20:                                               ; preds = %2
  %21 = load ptr, ptr %0, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #7
          to label %28 unwind label %32

28:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %27, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %31 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %36

31:                                               ; preds = %28
  invoke void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %52 unwind label %34

32:                                               ; preds = %26
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %36

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %50

36:                                               ; preds = %29, %32
  %37 = phi { ptr, i32 } [ %33, %32 ], [ %30, %29 ]
  call void @__cxa_free_exception(ptr %27) #9
  br label %50

38:                                               ; preds = %20
  %39 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %40, i32 noundef %24) #7
  %42 = load ptr, ptr %39, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_710NodeVector15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %42, i32 noundef %24) #7
  %43 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = load ptr, ptr %44, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 26
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(26) %44) #7
  %49 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %41, i64 0, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %41, i1 noundef zeroext false) #7
  ret ptr %41

50:                                               ; preds = %34, %16, %36, %18
  %51 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ], [ %37, %36 ], [ %35, %34 ]
  resume { ptr, i32 } %51

52:                                               ; preds = %31, %13
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710NodeVector15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 4, !tbaa !46
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  br label %12

12:                                               ; preds = %8, %3, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl12setNamedItemEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 26
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(26) %1) #7
  %11 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 26
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(26) %12) #7
  %17 = icmp eq ptr %10, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  %19 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #7
          to label %20 unwind label %24

20:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %19, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %23 unwind label %21

21:                                               ; preds = %20
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %28

23:                                               ; preds = %20
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %122 unwind label %26

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %28

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %120

28:                                               ; preds = %21, %24
  %29 = phi { ptr, i32 } [ %25, %24 ], [ %22, %21 ]
  call void @__cxa_free_exception(ptr %19) #9
  br label %120

30:                                               ; preds = %2
  %31 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 3
  %32 = load i8, ptr %31, align 8, !tbaa !45, !range !65, !noundef !66
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #7
          to label %36 unwind label %40

36:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %35, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %39 unwind label %37

37:                                               ; preds = %36
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %44

39:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %122 unwind label %42

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %44

42:                                               ; preds = %39
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %120

44:                                               ; preds = %37, %40
  %45 = phi { ptr, i32 } [ %41, %40 ], [ %38, %37 ]
  call void @__cxa_free_exception(ptr %35) #9
  br label %120

46:                                               ; preds = %30
  %47 = load ptr, ptr %1, align 8, !tbaa !35
  %48 = getelementptr inbounds ptr, ptr %47, i64 24
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef signext i16 %49(ptr noundef nonnull align 8 dereferenceable(26) %1) #7
  %51 = icmp eq i16 %50, 2
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %11, align 8, !tbaa !38
  br label %73

54:                                               ; preds = %46
  %55 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(26) %1) #7
  %56 = load ptr, ptr %11, align 8, !tbaa !38
  br i1 %55, label %57, label %73

57:                                               ; preds = %54
  %58 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = icmp eq ptr %59, %56
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #7
          to label %63 unwind label %67

63:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %62, i16 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %66 unwind label %64

64:                                               ; preds = %63
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %71

66:                                               ; preds = %63
  invoke void @__cxa_throw(ptr nonnull %62, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %122 unwind label %69

67:                                               ; preds = %61
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %71

69:                                               ; preds = %66
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %120

71:                                               ; preds = %64, %67
  %72 = phi { ptr, i32 } [ %68, %67 ], [ %65, %64 ]
  call void @__cxa_free_exception(ptr %62) #9
  br label %120

73:                                               ; preds = %52, %57, %54
  %74 = phi ptr [ %53, %52 ], [ %56, %57 ], [ %56, %54 ]
  %75 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %74, ptr %75, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext true) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %76 = load ptr, ptr %1, align 8, !tbaa !35
  %77 = getelementptr inbounds ptr, ptr %76, i64 23
  %78 = load ptr, ptr %77, align 8
  call void %78(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(26) %1) #7
  %79 = load ptr, ptr %0, align 8, !tbaa !35
  %80 = getelementptr inbounds ptr, ptr %79, i64 4
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef i32 %81(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %83 unwind label %85

83:                                               ; preds = %73
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %84 = icmp sgt i32 %82, -1
  br i1 %84, label %105, label %87

85:                                               ; preds = %73
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %120

87:                                               ; preds = %83
  %88 = xor i32 %82, -1
  %89 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !44
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load ptr, ptr %11, align 8, !tbaa !38
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  %95 = getelementptr inbounds ptr, ptr %94, i64 46
  %96 = load ptr, ptr %95, align 8
  %97 = call noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(26) %93) #7
  %98 = call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %97) #7
  %99 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %98) #7
  invoke void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %99, ptr noundef %98) #7
          to label %100 unwind label %101

100:                                              ; preds = %92
  store ptr %99, ptr %89, align 8, !tbaa !44
  br label %103

101:                                              ; preds = %92
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %99, ptr noundef %98) #8
  br label %120

103:                                              ; preds = %87, %100
  %104 = phi ptr [ %90, %87 ], [ %99, %100 ]
  call void @_ZN11xercesc_2_710NodeVector15insertElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef nonnull %1, i32 noundef %88) #7
  br label %118

105:                                              ; preds = %83
  %106 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !44
  %108 = call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %107, i32 noundef %82) #7
  %109 = load ptr, ptr %106, align 8, !tbaa !44
  call void @_ZN11xercesc_2_710NodeVector12setElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24) %109, ptr noundef nonnull %1, i32 noundef %82) #7
  %110 = icmp eq ptr %108, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = load ptr, ptr %11, align 8, !tbaa !38
  %113 = load ptr, ptr %112, align 8, !tbaa !35
  %114 = getelementptr inbounds ptr, ptr %113, i64 26
  %115 = load ptr, ptr %114, align 8
  %116 = call noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(26) %112) #7
  %117 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %108, i64 0, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !49
  call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %108, i1 noundef zeroext false) #7
  br label %118

118:                                              ; preds = %103, %111, %105
  %119 = phi ptr [ null, %103 ], [ %108, %111 ], [ null, %105 ]
  ret ptr %119

120:                                              ; preds = %69, %42, %26, %85, %101, %71, %44, %28
  %121 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ], [ %45, %44 ], [ %43, %42 ], [ %72, %71 ], [ %70, %69 ], [ %102, %101 ], [ %86, %85 ]
  resume { ptr, i32 } %121

122:                                              ; preds = %66, %39, %23
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !60
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !61
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710NodeVector12setElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710NodeVector15insertElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl11setReadOnlyEbb(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 !prof !34 {
  %4 = zext i1 %1 to i8
  %5 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 3
  store i8 %4, ptr %5, align 8, !tbaa !45
  br i1 %2, label %6, label %22

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #7
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %20, %13 ], [ 0, %10 ]
  %15 = load ptr, ptr %7, align 8, !tbaa !44
  %16 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef %14) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 35
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(26) %16, i1 noundef zeroext %1, i1 noundef zeroext true) #7
  %20 = add nuw nsw i32 %14, 1
  %21 = icmp eq i32 %20, %11
  br i1 %21, label %22, label %13, !llvm.loop !67

22:                                               ; preds = %13, %10, %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716NamedNodeMapImpl13findNamePointERKNS_9DOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %78, label %11

11:                                               ; preds = %3
  %12 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #7
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %78

14:                                               ; preds = %11, %69
  %15 = phi i32 [ %70, %69 ], [ 0, %11 ]
  %16 = load ptr, ptr %8, align 8, !tbaa !44
  %17 = call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %15) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 40
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(26) %17) #7
  %21 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
          to label %22 unwind label %23

22:                                               ; preds = %14
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br i1 %21, label %25, label %69

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %76

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %26 = load ptr, ptr %17, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 40
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(26) %17) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %29 = load ptr, ptr %17, align 8, !tbaa !35
  %30 = getelementptr inbounds ptr, ptr %29, i64 42
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(26) %17) #7
          to label %32 unwind label %51

32:                                               ; preds = %25
  %33 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null) #7
          to label %34 unwind label %53

34:                                               ; preds = %32
  br i1 %33, label %35, label %61

35:                                               ; preds = %34
  %36 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null) #7
          to label %37 unwind label %53

37:                                               ; preds = %35
  br i1 %36, label %38, label %68

38:                                               ; preds = %37
  %39 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %40 unwind label %53

40:                                               ; preds = %38
  br i1 %39, label %67, label %41

41:                                               ; preds = %40
  %42 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #7
          to label %43 unwind label %53

43:                                               ; preds = %41
  br i1 %42, label %44, label %68

44:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %45 = load ptr, ptr %17, align 8, !tbaa !35
  %46 = getelementptr inbounds ptr, ptr %45, i64 23
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(26) %17) #7
          to label %48 unwind label %55

48:                                               ; preds = %44
  %49 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %7) #7
          to label %50 unwind label %57

50:                                               ; preds = %48
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br i1 %49, label %67, label %68

51:                                               ; preds = %25
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %74

53:                                               ; preds = %64, %61, %41, %38, %35, %32
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %72

55:                                               ; preds = %44
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %59

57:                                               ; preds = %48
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %59

59:                                               ; preds = %55, %57
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %72

61:                                               ; preds = %34
  %62 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %63 unwind label %53

63:                                               ; preds = %61
  br i1 %62, label %64, label %68

64:                                               ; preds = %63
  %65 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
          to label %66 unwind label %53

66:                                               ; preds = %64
  br i1 %65, label %67, label %68

67:                                               ; preds = %50, %66, %40
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %78

68:                                               ; preds = %43, %37, %50, %66, %63
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %69

69:                                               ; preds = %22, %68
  %70 = add nuw nsw i32 %15, 1
  %71 = icmp eq i32 %70, %12
  br i1 %71, label %78, label %14, !llvm.loop !68

72:                                               ; preds = %59, %53
  %73 = phi { ptr, i32 } [ %60, %59 ], [ %54, %53 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %74

74:                                               ; preds = %72, %51
  %75 = phi { ptr, i32 } [ %73, %72 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %76

76:                                               ; preds = %74, %23
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %24, %23 ]
  resume { ptr, i32 } %77

78:                                               ; preds = %69, %11, %67, %3
  %79 = phi i32 [ -1, %3 ], [ %15, %67 ], [ -1, %11 ], [ -1, %69 ]
  ret i32 %79
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl14getNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %7) #7
  br label %13

13:                                               ; preds = %3, %9
  %14 = phi ptr [ %12, %9 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl14setNamedItemNSEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 26
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(26) %1) #7
  %13 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 26
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(26) %14) #7
  %19 = icmp eq ptr %12, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #7
          to label %22 unwind label %26

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %21, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %25 unwind label %23

23:                                               ; preds = %22
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %30

25:                                               ; preds = %22
  invoke void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %130 unwind label %28

26:                                               ; preds = %20
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %30

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %128

30:                                               ; preds = %23, %26
  %31 = phi { ptr, i32 } [ %27, %26 ], [ %24, %23 ]
  call void @__cxa_free_exception(ptr %21) #9
  br label %128

32:                                               ; preds = %2
  %33 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 3
  %34 = load i8, ptr %33, align 8, !tbaa !45, !range !65, !noundef !66
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #7
          to label %38 unwind label %42

38:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %37, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %41 unwind label %39

39:                                               ; preds = %38
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %46

41:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %130 unwind label %44

42:                                               ; preds = %36
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %46

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %128

46:                                               ; preds = %39, %42
  %47 = phi { ptr, i32 } [ %43, %42 ], [ %40, %39 ]
  call void @__cxa_free_exception(ptr %37) #9
  br label %128

48:                                               ; preds = %32
  %49 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(26) %1) #7
  br i1 %49, label %50, label %62

50:                                               ; preds = %48
  %51 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #7
          to label %52 unwind label %56

52:                                               ; preds = %50
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %51, i16 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %55 unwind label %53

53:                                               ; preds = %52
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %60

55:                                               ; preds = %52
  invoke void @__cxa_throw(ptr nonnull %51, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %130 unwind label %58

56:                                               ; preds = %50
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %60

58:                                               ; preds = %55
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %128

60:                                               ; preds = %53, %56
  %61 = phi { ptr, i32 } [ %57, %56 ], [ %54, %53 ]
  call void @__cxa_free_exception(ptr %51) #9
  br label %128

62:                                               ; preds = %48
  %63 = load ptr, ptr %13, align 8, !tbaa !38
  %64 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %1, i1 noundef zeroext true) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %65 = load ptr, ptr %1, align 8, !tbaa !35
  %66 = getelementptr inbounds ptr, ptr %65, i64 40
  %67 = load ptr, ptr %66, align 8
  call void %67(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(26) %1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %68 = load ptr, ptr %1, align 8, !tbaa !35
  %69 = getelementptr inbounds ptr, ptr %68, i64 42
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(26) %1) #7
          to label %71 unwind label %78

71:                                               ; preds = %62
  %72 = load ptr, ptr %0, align 8, !tbaa !35
  %73 = getelementptr inbounds ptr, ptr %72, i64 12
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef i32 %74(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #7
          to label %76 unwind label %80

76:                                               ; preds = %71
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %77 = icmp sgt i32 %75, -1
  br i1 %77, label %113, label %84

78:                                               ; preds = %62
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %82

80:                                               ; preds = %71
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  br label %128

84:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %85 = load ptr, ptr %1, align 8, !tbaa !35
  %86 = getelementptr inbounds ptr, ptr %85, i64 23
  %87 = load ptr, ptr %86, align 8
  call void %87(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(26) %1) #7
  %88 = load ptr, ptr %0, align 8, !tbaa !35
  %89 = getelementptr inbounds ptr, ptr %88, i64 4
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef i32 %90(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #7
          to label %92 unwind label %98

92:                                               ; preds = %84
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  %93 = ashr i32 %91, 31
  %94 = xor i32 %93, %91
  %95 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !44
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %111

98:                                               ; preds = %84
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  br label %128

100:                                              ; preds = %92
  %101 = load ptr, ptr %13, align 8, !tbaa !38
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  %103 = getelementptr inbounds ptr, ptr %102, i64 46
  %104 = load ptr, ptr %103, align 8
  %105 = call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(26) %101) #7
  %106 = call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %105) #7
  %107 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %106) #7
  invoke void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %107, ptr noundef %106) #7
          to label %108 unwind label %109

108:                                              ; preds = %100
  store ptr %107, ptr %95, align 8, !tbaa !44
  br label %111

109:                                              ; preds = %100
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %107, ptr noundef %106) #8
  br label %128

111:                                              ; preds = %92, %108
  %112 = phi ptr [ %96, %92 ], [ %107, %108 ]
  call void @_ZN11xercesc_2_710NodeVector15insertElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24) %112, ptr noundef nonnull %1, i32 noundef %94) #7
  br label %126

113:                                              ; preds = %76
  %114 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !44
  %116 = call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %115, i32 noundef %75) #7
  %117 = load ptr, ptr %114, align 8, !tbaa !44
  call void @_ZN11xercesc_2_710NodeVector12setElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24) %117, ptr noundef nonnull %1, i32 noundef %75) #7
  %118 = icmp eq ptr %116, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr %13, align 8, !tbaa !38
  %121 = load ptr, ptr %120, align 8, !tbaa !35
  %122 = getelementptr inbounds ptr, ptr %121, i64 26
  %123 = load ptr, ptr %122, align 8
  %124 = call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(26) %120) #7
  %125 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %116, i64 0, i32 2
  store ptr %124, ptr %125, align 8, !tbaa !49
  call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %116, i1 noundef zeroext false) #7
  br label %126

126:                                              ; preds = %111, %119, %113
  %127 = phi ptr [ null, %111 ], [ %116, %119 ], [ null, %113 ]
  ret ptr %127

128:                                              ; preds = %58, %44, %28, %82, %109, %98, %60, %46, %30
  %129 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ], [ %47, %46 ], [ %45, %44 ], [ %61, %60 ], [ %59, %58 ], [ %83, %82 ], [ %110, %109 ], [ %99, %98 ]
  resume { ptr, i32 } %129

130:                                              ; preds = %55, %41, %25
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl17removeNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 8, !tbaa !45, !range !65, !noundef !66
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #7
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
          to label %14 unwind label %12

12:                                               ; preds = %11
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %19

14:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %53 unwind label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %19

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %51

19:                                               ; preds = %12, %15
  %20 = phi { ptr, i32 } [ %16, %15 ], [ %13, %12 ]
  call void @__cxa_free_exception(ptr %10) #9
  br label %51

21:                                               ; preds = %3
  %22 = load ptr, ptr %0, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 12
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = tail call ptr @__cxa_allocate_exception(i64 24) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #7
          to label %29 unwind label %33

29:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %28, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
          to label %32 unwind label %30

30:                                               ; preds = %29
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %37

32:                                               ; preds = %29
  invoke void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #10
          to label %53 unwind label %35

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %37

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %51

37:                                               ; preds = %30, %33
  %38 = phi { ptr, i32 } [ %34, %33 ], [ %31, %30 ]
  call void @__cxa_free_exception(ptr %28) #9
  br label %51

39:                                               ; preds = %21
  %40 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef %25) #7
  %43 = load ptr, ptr %40, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_710NodeVector15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %43, i32 noundef %25) #7
  %44 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = getelementptr inbounds ptr, ptr %46, i64 26
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(26) %45) #7
  %50 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %42, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %42, i1 noundef zeroext false) #7
  ret ptr %42

51:                                               ; preds = %35, %17, %37, %19
  %52 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ], [ %38, %37 ], [ %36, %35 ]
  resume { ptr, i32 } %52

53:                                               ; preds = %32, %14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %18, %9 ], [ 0, %6 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %10) #7
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 45
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(26) %14, ptr noundef %1) #7
  %18 = add nuw i32 %10, 1
  %19 = load ptr, ptr %3, align 8, !tbaa !44
  %20 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #7
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %9, label %22, !llvm.loop !69

22:                                               ; preds = %9, %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl12cloneContentEPS0_(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef readonly %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710NodeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #8
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 46
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(26) %18) #7
  %23 = tail call noundef ptr @_ZNK11xercesc_2_712DocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(168) %22) #7
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %23) #7
  %25 = load ptr, ptr %5, align 8, !tbaa !44
  %26 = invoke noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %25) #7
          to label %27 unwind label %32

27:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_710NodeVectorC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef %26, ptr noundef %23) #7
          to label %28 unwind label %32

28:                                               ; preds = %27
  store ptr %24, ptr %12, align 8, !tbaa !44
  %29 = load ptr, ptr %5, align 8, !tbaa !44
  %30 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %29) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %34

32:                                               ; preds = %27, %16
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #8
  resume { ptr, i32 } %33

34:                                               ; preds = %28, %34
  %35 = phi i32 [ %46, %34 ], [ 0, %28 ]
  %36 = load ptr, ptr %5, align 8, !tbaa !44
  %37 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %36, i32 noundef %35) #7
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = getelementptr inbounds ptr, ptr %38, i64 17
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(26) %37, i1 noundef zeroext true) #7
  %42 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11isSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(26) %37) #7
  tail call void @_ZN11xercesc_2_78NodeImpl11isSpecifiedEb(ptr noundef nonnull align 8 dereferenceable(26) %41, i1 noundef zeroext %42) #7
  %43 = load ptr, ptr %17, align 8, !tbaa !38
  %44 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %41, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_78NodeImpl7isOwnedEb(ptr noundef nonnull align 8 dereferenceable(26) %41, i1 noundef zeroext true) #7
  %45 = load ptr, ptr %12, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull %41) #7
  %46 = add nuw i32 %35, 1
  %47 = load ptr, ptr %5, align 8, !tbaa !44
  %48 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %47) #7
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %34, label %50, !llvm.loop !70

50:                                               ; preds = %34, %28, %8, %4, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

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
!38 = !{!39, !40, i64 16}
!39 = !{!"_ZTSN11xercesc_2_716NamedNodeMapImplE", !40, i64 8, !40, i64 16, !42, i64 24, !43, i64 28}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"bool", !41, i64 0}
!43 = !{!"int", !41, i64 0}
!44 = !{!39, !40, i64 8}
!45 = !{!39, !42, i64 24}
!46 = !{!39, !43, i64 28}
!47 = !{!43, !43, i64 0}
!48 = !{!"function_entry_count", i64 5836268}
!49 = !{!50, !40, i64 16}
!50 = !{!"_ZTSN11xercesc_2_78NodeImplE", !51, i64 0, !40, i64 16, !53, i64 24}
!51 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !52, i64 0}
!52 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !43, i64 8}
!53 = !{!"short", !41, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!57, !40, i64 160}
!57 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !58, i64 0, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !43, i64 152, !42, i64 156, !40, i64 160}
!58 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !59, i64 0, !40, i64 48, !40, i64 56, !43, i64 64, !40, i64 72, !43, i64 80}
!59 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !50, i64 0, !40, i64 32, !40, i64 40}
!60 = !{!50, !53, i64 24}
!61 = !{!53, !53, i64 0}
!62 = !{!52, !43, i64 8}
!63 = distinct !{!63, !55}
!64 = distinct !{!64, !55}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = distinct !{!67, !55}
!68 = distinct !{!68, !55}
!69 = distinct !{!69, !55}
!70 = distinct !{!70, !55}
