; ModuleID = 'NamedNodeMapImpl.cpp'
source_filename = "NamedNodeMapImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::NamedNodeMapImpl" = type { ptr, ptr, ptr, i8, i32 }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::DOMString" = type { ptr }

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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImplC2EPNS_8NodeImplE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
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

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImplD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 !prof !34 {
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_710NodeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImplD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_716NamedNodeMapImplD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl6addRefEPS0_(ptr noundef %0) local_unnamed_addr #3 align 2 !prof !34 {
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

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl8cloneMapEPNS_8NodeImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 46
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %8)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xercesc_2_716NamedNodeMapImplE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !35
  %10 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %9, i64 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !44
  %12 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %9, i64 0, i32 3
  store i8 0, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %9, i64 0, i32 4
  store i32 1, ptr %13, align 4, !tbaa !46
  %14 = load i32, ptr @_ZN11xercesc_2_716NamedNodeMapImpl18gLiveNamedNodeMapsE, align 4, !tbaa !47
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @_ZN11xercesc_2_716NamedNodeMapImpl18gLiveNamedNodeMapsE, align 4, !tbaa !47
  %16 = load i32, ptr @_ZN11xercesc_2_716NamedNodeMapImpl19gTotalNamedNodeMapsE, align 4, !tbaa !47
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr @_ZN11xercesc_2_716NamedNodeMapImpl19gTotalNamedNodeMapsE, align 4, !tbaa !47
  %18 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %63, label %21

21:                                               ; preds = %2
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %8)
  %23 = load ptr, ptr %18, align 8, !tbaa !44
  %24 = invoke noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %25 unwind label %34

25:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_710NodeVectorC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef %24, ptr noundef %8)
          to label %26 unwind label %34

26:                                               ; preds = %25
  store ptr %22, ptr %11, align 8, !tbaa !44
  %27 = load ptr, ptr %18, align 8, !tbaa !44
  %28 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %26
  %31 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2
  %32 = xor i16 %31, -1
  %33 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2
  br label %36

34:                                               ; preds = %25, %21
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %8) #8
  resume { ptr, i32 } %35

36:                                               ; preds = %30, %36
  %37 = phi i32 [ 0, %30 ], [ %59, %36 ]
  %38 = load ptr, ptr %18, align 8, !tbaa !44
  %39 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %38, i32 noundef %37)
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds ptr, ptr %40, i64 17
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(26) %39, i1 noundef zeroext true)
  %44 = load ptr, ptr %18, align 8, !tbaa !44
  %45 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %44, i32 noundef %37)
  %46 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %45, i64 0, i32 3
  %47 = load i16, ptr %46, align 8, !tbaa !56
  %48 = and i16 %31, %47
  %49 = icmp eq i16 %48, 0
  %50 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %43, i64 0, i32 3
  %51 = load i16, ptr %50, align 8, !tbaa !56
  %52 = or i16 %51, %31
  %53 = and i16 %51, %32
  %54 = select i1 %49, i16 %53, i16 %52
  %55 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %43, i64 0, i32 3
  store i16 %54, ptr %55, align 8, !tbaa !56
  %56 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %43, i64 0, i32 2
  store ptr %1, ptr %56, align 8, !tbaa !57
  %57 = or i16 %33, %54
  store i16 %57, ptr %55, align 8, !tbaa !56
  %58 = load ptr, ptr %11, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull %43)
  %59 = add nuw i32 %37, 1
  %60 = load ptr, ptr %18, align 8, !tbaa !44
  %61 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %60)
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %36, label %63, !llvm.loop !58

63:                                               ; preds = %36, %26, %2
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN11xercesc_2_710NodeVectorC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) unnamed_addr #6

declare noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl9removeAllEv(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %11 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2
  %12 = xor i16 %11, -1
  br label %16

13:                                               ; preds = %33, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %36

16:                                               ; preds = %9, %33
  %17 = phi i32 [ %7, %9 ], [ %34, %33 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !44
  %19 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %17)
  %20 = load ptr, ptr %10, align 8, !tbaa !38
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 26
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(26) %20)
  %25 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %19, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %19, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !56
  %28 = and i16 %27, %12
  store i16 %28, ptr %26, align 8, !tbaa !56
  %29 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %19, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !61
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %19)
  br label %33

33:                                               ; preds = %32, %16
  %34 = add nsw i32 %17, -1
  %35 = icmp sgt i32 %17, 0
  br i1 %35, label %16, label %13, !llvm.loop !62

36:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_710NodeVectorD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %14) #8
  br label %37

37:                                               ; preds = %36, %13
  store ptr null, ptr %2, align 8, !tbaa !44
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716NamedNodeMapImpl13findNamePointERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %9 = add i32 %8, -1
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %40, label %13

11:                                               ; preds = %36
  %12 = icmp sgt i32 %38, %37
  br i1 %12, label %40, label %13, !llvm.loop !63

13:                                               ; preds = %7, %11
  %14 = phi i1 [ %12, %11 ], [ %10, %7 ]
  %15 = phi i32 [ %39, %11 ], [ undef, %7 ]
  %16 = phi i32 [ %38, %11 ], [ 0, %7 ]
  %17 = phi i32 [ %37, %11 ], [ %9, %7 ]
  %18 = add nsw i32 %16, %17
  %19 = sdiv i32 %18, 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %20 = load ptr, ptr %4, align 8, !tbaa !44
  %21 = call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %20, i32 noundef %19)
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 23
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(26) %21)
  %25 = invoke noundef i32 @_ZNK11xercesc_2_79DOMString13compareStringERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %26 unwind label %28

26:                                               ; preds = %13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %36, label %30

28:                                               ; preds = %13
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  resume { ptr, i32 } %29

30:                                               ; preds = %26
  %31 = icmp slt i32 %25, 0
  %32 = add nsw i32 %19, -1
  %33 = add nsw i32 %19, 1
  %34 = select i1 %31, i32 %32, i32 %17
  %35 = select i1 %31, i32 %16, i32 %33
  br label %36

36:                                               ; preds = %26, %30
  %37 = phi i32 [ %34, %30 ], [ %17, %26 ]
  %38 = phi i32 [ %35, %30 ], [ %16, %26 ]
  %39 = phi i32 [ %15, %30 ], [ %19, %26 ]
  br i1 %27, label %46, label %11, !llvm.loop !63

40:                                               ; preds = %11, %7
  %41 = phi i32 [ 0, %7 ], [ %38, %11 ]
  %42 = phi i32 [ 0, %7 ], [ %19, %11 ]
  %43 = phi i32 [ undef, %7 ], [ %39, %11 ]
  %44 = phi i1 [ %10, %7 ], [ %12, %11 ]
  %45 = call i32 @llvm.smax.i32(i32 %41, i32 %42)
  br label %46

46:                                               ; preds = %36, %40
  %47 = phi i1 [ %44, %40 ], [ %14, %36 ]
  %48 = phi i32 [ %45, %40 ], [ %19, %36 ]
  %49 = phi i32 [ %43, %40 ], [ %39, %36 ]
  br i1 %47, label %50, label %53

50:                                               ; preds = %46, %2
  %51 = phi i32 [ %48, %46 ], [ 0, %2 ]
  %52 = xor i32 %51, -1
  br label %53

53:                                               ; preds = %46, %50
  %54 = phi i32 [ %52, %50 ], [ %49, %46 ]
  ret i32 %54
}

declare noundef i32 @_ZNK11xercesc_2_79DOMString13compareStringERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716NamedNodeMapImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl12getNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %6)
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %11, %8 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl4itemEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #4 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8, !tbaa !44
  %11 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %1)
  br label %12

12:                                               ; preds = %2, %6, %9
  %13 = phi ptr [ %11, %9 ], [ null, %6 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl15removeNamedItemERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !45, !range !64, !noundef !65
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %10 unwind label %13

10:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %9, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %11 unwind label %15

11:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %12 unwind label %15

12:                                               ; preds = %11
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %18

15:                                               ; preds = %11, %10
  %16 = phi i1 [ false, %11 ], [ true, %10 ]
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi { ptr, i32 } [ %17, %15 ], [ %14, %13 ]
  %20 = phi i1 [ %16, %15 ], [ true, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br i1 %20, label %57, label %60

21:                                               ; preds = %2
  %22 = load ptr, ptr %0, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = tail call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %29 unwind label %32

29:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %28, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %30 unwind label %34

30:                                               ; preds = %29
  invoke void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %31 unwind label %34

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %37

34:                                               ; preds = %30, %29
  %35 = phi i1 [ false, %30 ], [ true, %29 ]
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi { ptr, i32 } [ %36, %34 ], [ %33, %32 ]
  %39 = phi i1 [ %35, %34 ], [ true, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br i1 %39, label %57, label %60

40:                                               ; preds = %21
  %41 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %42, i32 noundef %25)
  %44 = load ptr, ptr %41, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_710NodeVector15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %44, i32 noundef %25)
  %45 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds ptr, ptr %47, i64 26
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(26) %46)
  %51 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %43, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !57
  %52 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %43, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !56
  %54 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !66
  %55 = xor i16 %54, -1
  %56 = and i16 %53, %55
  store i16 %56, ptr %52, align 8, !tbaa !56
  ret ptr %43

57:                                               ; preds = %37, %18
  %58 = phi ptr [ %9, %18 ], [ %28, %37 ]
  %59 = phi { ptr, i32 } [ %19, %18 ], [ %38, %37 ]
  call void @__cxa_free_exception(ptr %58) #8
  br label %60

60:                                               ; preds = %57, %37, %18
  %61 = phi { ptr, i32 } [ %19, %18 ], [ %38, %37 ], [ %59, %57 ]
  resume { ptr, i32 } %61
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_710NodeVector15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl9removeRefEPS0_(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !34 {
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

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl12setNamedItemEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 26
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %11 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 26
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(26) %12)
  %17 = icmp eq ptr %10, %16
  br i1 %17, label %32, label %18

18:                                               ; preds = %2
  %19 = tail call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %20 unwind label %23

20:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %19, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %21 unwind label %25

21:                                               ; preds = %20
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %22 unwind label %25

22:                                               ; preds = %21
  unreachable

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %28

25:                                               ; preds = %21, %20
  %26 = phi i1 [ false, %21 ], [ true, %20 ]
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi { ptr, i32 } [ %27, %25 ], [ %24, %23 ]
  %30 = phi i1 [ %26, %25 ], [ true, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br i1 %30, label %31, label %138

31:                                               ; preds = %28
  call void @__cxa_free_exception(ptr %19) #8
  br label %138

32:                                               ; preds = %2
  %33 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 3
  %34 = load i8, ptr %33, align 8, !tbaa !45, !range !64, !noundef !65
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %38 unwind label %41

38:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %37, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %39 unwind label %43

39:                                               ; preds = %38
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %40 unwind label %43

40:                                               ; preds = %39
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %46

43:                                               ; preds = %39, %38
  %44 = phi i1 [ false, %39 ], [ true, %38 ]
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi { ptr, i32 } [ %45, %43 ], [ %42, %41 ]
  %48 = phi i1 [ %44, %43 ], [ true, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br i1 %48, label %49, label %138

49:                                               ; preds = %46
  call void @__cxa_free_exception(ptr %37) #8
  br label %138

50:                                               ; preds = %32
  %51 = load ptr, ptr %1, align 8, !tbaa !35
  %52 = getelementptr inbounds ptr, ptr %51, i64 24
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef signext i16 %53(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %55 = icmp eq i16 %54, 2
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %58 = load i16, ptr %57, align 8, !tbaa !56
  %59 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !66
  %60 = and i16 %59, %58
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !57
  %65 = load ptr, ptr %11, align 8, !tbaa !38
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %62
  %68 = tail call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %69 unwind label %72

69:                                               ; preds = %67
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %68, i16 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %70 unwind label %74

70:                                               ; preds = %69
  invoke void @__cxa_throw(ptr nonnull %68, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %71 unwind label %74

71:                                               ; preds = %70
  unreachable

72:                                               ; preds = %67
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %77

74:                                               ; preds = %70, %69
  %75 = phi i1 [ false, %70 ], [ true, %69 ]
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi { ptr, i32 } [ %76, %74 ], [ %73, %72 ]
  %79 = phi i1 [ %75, %74 ], [ true, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br i1 %79, label %80, label %138

80:                                               ; preds = %77
  call void @__cxa_free_exception(ptr %68) #8
  br label %138

81:                                               ; preds = %62, %56, %50
  %82 = load ptr, ptr %11, align 8, !tbaa !38
  %83 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %82, ptr %83, align 8, !tbaa !57
  %84 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %85 = load i16, ptr %84, align 8, !tbaa !56
  %86 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !66
  %87 = or i16 %86, %85
  store i16 %87, ptr %84, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %88 = load ptr, ptr %1, align 8, !tbaa !35
  %89 = getelementptr inbounds ptr, ptr %88, i64 23
  %90 = load ptr, ptr %89, align 8
  call void %90(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %91 = load ptr, ptr %0, align 8, !tbaa !35
  %92 = getelementptr inbounds ptr, ptr %91, i64 4
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef i32 %93(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %95 unwind label %102

95:                                               ; preds = %81
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %96 = icmp sgt i32 %94, -1
  br i1 %96, label %97, label %104

97:                                               ; preds = %95
  %98 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !44
  %100 = call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %99, i32 noundef %94)
  %101 = load ptr, ptr %98, align 8, !tbaa !44
  call void @_ZN11xercesc_2_710NodeVector12setElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24) %101, ptr noundef nonnull %1, i32 noundef %94)
  br label %123

102:                                              ; preds = %81
  %103 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %138

104:                                              ; preds = %95
  %105 = xor i32 %94, -1
  %106 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !44
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load ptr, ptr %11, align 8, !tbaa !38
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  %112 = getelementptr inbounds ptr, ptr %111, i64 46
  %113 = load ptr, ptr %112, align 8
  %114 = call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(26) %110)
  %115 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %114, i64 0, i32 11
  %116 = load ptr, ptr %115, align 8, !tbaa !48
  %117 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %116)
  invoke void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %117, ptr noundef %116)
          to label %118 unwind label %119

118:                                              ; preds = %109
  store ptr %117, ptr %106, align 8, !tbaa !44
  br label %121

119:                                              ; preds = %109
  %120 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %117, ptr noundef %116) #8
  br label %138

121:                                              ; preds = %118, %104
  %122 = load ptr, ptr %106, align 8, !tbaa !44
  call void @_ZN11xercesc_2_710NodeVector15insertElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24) %122, ptr noundef nonnull %1, i32 noundef %105)
  br label %123

123:                                              ; preds = %121, %97
  %124 = phi ptr [ %100, %97 ], [ null, %121 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %11, align 8, !tbaa !38
  %128 = load ptr, ptr %127, align 8, !tbaa !35
  %129 = getelementptr inbounds ptr, ptr %128, i64 26
  %130 = load ptr, ptr %129, align 8
  %131 = call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(26) %127)
  %132 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %124, i64 0, i32 2
  store ptr %131, ptr %132, align 8, !tbaa !57
  %133 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %124, i64 0, i32 3
  %134 = load i16, ptr %133, align 8, !tbaa !56
  %135 = xor i16 %86, -1
  %136 = and i16 %134, %135
  store i16 %136, ptr %133, align 8, !tbaa !56
  br label %137

137:                                              ; preds = %126, %123
  ret ptr %124

138:                                              ; preds = %102, %119, %77, %80, %46, %49, %28, %31
  %139 = phi { ptr, i32 } [ %29, %31 ], [ %29, %28 ], [ %47, %49 ], [ %47, %46 ], [ %78, %80 ], [ %78, %77 ], [ %120, %119 ], [ %103, %102 ]
  resume { ptr, i32 } %139
}

declare void @_ZN11xercesc_2_710NodeVector12setElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_710NodeVector15insertElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl11setReadOnlyEbb(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 !prof !34 {
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
  %11 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %20, %13 ], [ 0, %10 ]
  %15 = load ptr, ptr %7, align 8, !tbaa !44
  %16 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef %14)
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 35
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(26) %16, i1 noundef zeroext %1, i1 noundef zeroext true)
  %20 = add nuw nsw i32 %14, 1
  %21 = icmp eq i32 %20, %11
  br i1 %21, label %22, label %13, !llvm.loop !67

22:                                               ; preds = %13, %10, %6, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716NamedNodeMapImpl13findNamePointERKNS_9DOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %88, label %11

11:                                               ; preds = %3
  %12 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %88

14:                                               ; preds = %11, %79
  %15 = phi i32 [ %77, %79 ], [ undef, %11 ]
  %16 = phi i32 [ %80, %79 ], [ 0, %11 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !44
  %18 = call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef %16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 40
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(26) %18)
  %22 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %23 unwind label %24

23:                                               ; preds = %14
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br i1 %22, label %26, label %76

24:                                               ; preds = %14
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br label %86

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %27 = load ptr, ptr %18, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 40
  %29 = load ptr, ptr %28, align 8
  call void %29(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(26) %18)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %30 = load ptr, ptr %18, align 8, !tbaa !35
  %31 = getelementptr inbounds ptr, ptr %30, i64 42
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(26) %18)
          to label %33 unwind label %56

33:                                               ; preds = %26
  %34 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
          to label %35 unwind label %58

35:                                               ; preds = %33
  br i1 %34, label %36, label %66

36:                                               ; preds = %35
  %37 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null)
          to label %38 unwind label %58

38:                                               ; preds = %36
  br i1 %37, label %39, label %51

39:                                               ; preds = %38
  %40 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %41 unwind label %58

41:                                               ; preds = %39
  br i1 %40, label %51, label %42

42:                                               ; preds = %41
  %43 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null)
          to label %44 unwind label %58

44:                                               ; preds = %42
  br i1 %43, label %45, label %51

45:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %46 = load ptr, ptr %18, align 8, !tbaa !35
  %47 = getelementptr inbounds ptr, ptr %46, i64 23
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(26) %18)
          to label %49 unwind label %60

49:                                               ; preds = %45
  %50 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %51 unwind label %62

51:                                               ; preds = %41, %49, %44, %38
  %52 = phi i1 [ false, %41 ], [ true, %49 ], [ false, %44 ], [ false, %38 ]
  %53 = phi i1 [ true, %41 ], [ %50, %49 ], [ false, %44 ], [ false, %38 ]
  br i1 %52, label %54, label %55

54:                                               ; preds = %51
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %55

55:                                               ; preds = %51, %54
  br i1 %53, label %73, label %72

56:                                               ; preds = %26
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %84

58:                                               ; preds = %69, %66, %42, %39, %36, %33
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %82

60:                                               ; preds = %45
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %64

62:                                               ; preds = %49
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %64

64:                                               ; preds = %60, %62
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %82

66:                                               ; preds = %35
  %67 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %68 unwind label %58

68:                                               ; preds = %66
  br i1 %67, label %69, label %72

69:                                               ; preds = %68
  %70 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %71 unwind label %58

71:                                               ; preds = %69
  br i1 %70, label %73, label %72

72:                                               ; preds = %71, %68, %55
  br label %73

73:                                               ; preds = %71, %55, %72
  %74 = phi i32 [ %15, %72 ], [ %16, %55 ], [ %16, %71 ]
  %75 = phi i32 [ 0, %72 ], [ 1, %55 ], [ 1, %71 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %76

76:                                               ; preds = %23, %73
  %77 = phi i32 [ %74, %73 ], [ %15, %23 ]
  %78 = phi i32 [ %75, %73 ], [ 4, %23 ]
  switch i32 %78, label %88 [
    i32 0, label %79
    i32 4, label %79
  ]

79:                                               ; preds = %76, %76
  %80 = add nuw nsw i32 %16, 1
  %81 = icmp eq i32 %80, %12
  br i1 %81, label %88, label %14, !llvm.loop !68

82:                                               ; preds = %64, %58
  %83 = phi { ptr, i32 } [ %65, %64 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br label %84

84:                                               ; preds = %82, %56
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %86

86:                                               ; preds = %84, %24
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %25, %24 ]
  resume { ptr, i32 } %87

88:                                               ; preds = %79, %76, %11, %3
  %89 = phi i32 [ -1, %3 ], [ -1, %11 ], [ %77, %76 ], [ -1, %79 ]
  ret i32 %89
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl14getNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %7)
  br label %13

13:                                               ; preds = %3, %9
  %14 = phi ptr [ %12, %9 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl14setNamedItemNSEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 26
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %13 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 26
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(26) %14)
  %19 = icmp eq ptr %12, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %2
  %21 = tail call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %22 unwind label %25

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %21, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %23 unwind label %27

23:                                               ; preds = %22
  invoke void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %24 unwind label %27

24:                                               ; preds = %23
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %23, %22
  %28 = phi i1 [ false, %23 ], [ true, %22 ]
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi { ptr, i32 } [ %29, %27 ], [ %26, %25 ]
  %32 = phi i1 [ %28, %27 ], [ true, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br i1 %32, label %33, label %145

33:                                               ; preds = %30
  call void @__cxa_free_exception(ptr %21) #8
  br label %145

34:                                               ; preds = %2
  %35 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 3
  %36 = load i8, ptr %35, align 8, !tbaa !45, !range !64, !noundef !65
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %40 unwind label %43

40:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %39, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %41 unwind label %45

41:                                               ; preds = %40
  invoke void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %42 unwind label %45

42:                                               ; preds = %41
  unreachable

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %48

45:                                               ; preds = %41, %40
  %46 = phi i1 [ false, %41 ], [ true, %40 ]
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi { ptr, i32 } [ %47, %45 ], [ %44, %43 ]
  %50 = phi i1 [ %46, %45 ], [ true, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br i1 %50, label %51, label %145

51:                                               ; preds = %48
  call void @__cxa_free_exception(ptr %39) #8
  br label %145

52:                                               ; preds = %34
  %53 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %54 = load i16, ptr %53, align 8, !tbaa !56
  %55 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !66
  %56 = and i16 %55, %54
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %52
  %59 = tail call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %60 unwind label %63

60:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %59, i16 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %61 unwind label %65

61:                                               ; preds = %60
  invoke void @__cxa_throw(ptr nonnull %59, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %62 unwind label %65

62:                                               ; preds = %61
  unreachable

63:                                               ; preds = %58
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %68

65:                                               ; preds = %61, %60
  %66 = phi i1 [ false, %61 ], [ true, %60 ]
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi { ptr, i32 } [ %67, %65 ], [ %64, %63 ]
  %70 = phi i1 [ %66, %65 ], [ true, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br i1 %70, label %71, label %145

71:                                               ; preds = %68
  call void @__cxa_free_exception(ptr %59) #8
  br label %145

72:                                               ; preds = %52
  %73 = load ptr, ptr %13, align 8, !tbaa !38
  %74 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 2
  store ptr %73, ptr %74, align 8, !tbaa !57
  %75 = or i16 %55, %54
  store i16 %75, ptr %53, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %76 = load ptr, ptr %1, align 8, !tbaa !35
  %77 = getelementptr inbounds ptr, ptr %76, i64 40
  %78 = load ptr, ptr %77, align 8
  call void %78(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(26) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %79 = load ptr, ptr %1, align 8, !tbaa !35
  %80 = getelementptr inbounds ptr, ptr %79, i64 42
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %82 unwind label %94

82:                                               ; preds = %72
  %83 = load ptr, ptr %0, align 8, !tbaa !35
  %84 = getelementptr inbounds ptr, ptr %83, i64 12
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef i32 %85(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %87 unwind label %96

87:                                               ; preds = %82
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  %88 = icmp sgt i32 %86, -1
  br i1 %88, label %89, label %100

89:                                               ; preds = %87
  %90 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %91, i32 noundef %86)
  %93 = load ptr, ptr %90, align 8, !tbaa !44
  call void @_ZN11xercesc_2_710NodeVector12setElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24) %93, ptr noundef nonnull %1, i32 noundef %86)
  br label %130

94:                                               ; preds = %72
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %98

96:                                               ; preds = %82
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  br label %145

100:                                              ; preds = %87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %101 = load ptr, ptr %1, align 8, !tbaa !35
  %102 = getelementptr inbounds ptr, ptr %101, i64 23
  %103 = load ptr, ptr %102, align 8
  call void %103(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %104 = load ptr, ptr %0, align 8, !tbaa !35
  %105 = getelementptr inbounds ptr, ptr %104, i64 4
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef i32 %106(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %108 unwind label %114

108:                                              ; preds = %100
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  %109 = ashr i32 %107, 31
  %110 = xor i32 %109, %107
  %111 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !44
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %128

114:                                              ; preds = %100
  %115 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  br label %145

116:                                              ; preds = %108
  %117 = load ptr, ptr %13, align 8, !tbaa !38
  %118 = load ptr, ptr %117, align 8, !tbaa !35
  %119 = getelementptr inbounds ptr, ptr %118, i64 46
  %120 = load ptr, ptr %119, align 8
  %121 = call noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(26) %117)
  %122 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %121, i64 0, i32 11
  %123 = load ptr, ptr %122, align 8, !tbaa !48
  %124 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %123)
  invoke void @_ZN11xercesc_2_710NodeVectorC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %124, ptr noundef %123)
          to label %125 unwind label %126

125:                                              ; preds = %116
  store ptr %124, ptr %111, align 8, !tbaa !44
  br label %128

126:                                              ; preds = %116
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %124, ptr noundef %123) #8
  br label %145

128:                                              ; preds = %125, %108
  %129 = load ptr, ptr %111, align 8, !tbaa !44
  call void @_ZN11xercesc_2_710NodeVector15insertElementAtEPNS_8NodeImplEj(ptr noundef nonnull align 8 dereferenceable(24) %129, ptr noundef nonnull %1, i32 noundef %110)
  br label %130

130:                                              ; preds = %128, %89
  %131 = phi ptr [ %92, %89 ], [ null, %128 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %144, label %133

133:                                              ; preds = %130
  %134 = load ptr, ptr %13, align 8, !tbaa !38
  %135 = load ptr, ptr %134, align 8, !tbaa !35
  %136 = getelementptr inbounds ptr, ptr %135, i64 26
  %137 = load ptr, ptr %136, align 8
  %138 = call noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(26) %134)
  %139 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %131, i64 0, i32 2
  store ptr %138, ptr %139, align 8, !tbaa !57
  %140 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %131, i64 0, i32 3
  %141 = load i16, ptr %140, align 8, !tbaa !56
  %142 = xor i16 %55, -1
  %143 = and i16 %141, %142
  store i16 %143, ptr %140, align 8, !tbaa !56
  br label %144

144:                                              ; preds = %133, %130
  ret ptr %131

145:                                              ; preds = %98, %126, %114, %68, %71, %48, %51, %30, %33
  %146 = phi { ptr, i32 } [ %31, %33 ], [ %31, %30 ], [ %49, %51 ], [ %49, %48 ], [ %69, %71 ], [ %69, %68 ], [ %99, %98 ], [ %127, %126 ], [ %115, %114 ]
  resume { ptr, i32 } %146
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716NamedNodeMapImpl17removeNamedItemNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 8, !tbaa !45, !range !64, !noundef !65
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %11 unwind label %14

11:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, i16 noundef signext 7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %12 unwind label %16

12:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %13 unwind label %16

13:                                               ; preds = %12
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %19

16:                                               ; preds = %12, %11
  %17 = phi i1 [ false, %12 ], [ true, %11 ]
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i1 [ %17, %16 ], [ true, %14 ]
  %21 = phi { ptr, i32 } [ %18, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  br i1 %20, label %58, label %61

22:                                               ; preds = %3
  %23 = load ptr, ptr %0, align 8, !tbaa !35
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i32 %25(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = tail call ptr @__cxa_allocate_exception(i64 24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %30 unwind label %33

30:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %29, i16 noundef signext 8, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %31 unwind label %35

31:                                               ; preds = %30
  invoke void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #9
          to label %32 unwind label %35

32:                                               ; preds = %31
  unreachable

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %38

35:                                               ; preds = %31, %30
  %36 = phi i1 [ false, %31 ], [ true, %30 ]
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi { ptr, i32 } [ %37, %35 ], [ %34, %33 ]
  %40 = phi i1 [ %36, %35 ], [ true, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br i1 %40, label %58, label %61

41:                                               ; preds = %22
  %42 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  %44 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %43, i32 noundef %26)
  %45 = load ptr, ptr %42, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_710NodeVector15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %45, i32 noundef %26)
  %46 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !38
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = getelementptr inbounds ptr, ptr %48, i64 26
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(26) %47)
  %52 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %44, i64 0, i32 2
  store ptr %51, ptr %52, align 8, !tbaa !57
  %53 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %44, i64 0, i32 3
  %54 = load i16, ptr %53, align 8, !tbaa !56
  %55 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2, !tbaa !66
  %56 = xor i16 %55, -1
  %57 = and i16 %54, %56
  store i16 %57, ptr %53, align 8, !tbaa !56
  ret ptr %44

58:                                               ; preds = %38, %19
  %59 = phi ptr [ %10, %19 ], [ %29, %38 ]
  %60 = phi { ptr, i32 } [ %21, %19 ], [ %39, %38 ]
  call void @__cxa_free_exception(ptr %59) #8
  br label %61

61:                                               ; preds = %58, %38, %19
  %62 = phi { ptr, i32 } [ %21, %19 ], [ %39, %38 ], [ %60, %58 ]
  resume { ptr, i32 } %62
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !44
  %8 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6, %10
  %11 = phi i32 [ %19, %10 ], [ 0, %6 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %11)
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds ptr, ptr %16, i64 45
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(26) %15, ptr noundef %1)
  %19 = add nuw i32 %11, 1
  %20 = load ptr, ptr %3, align 8, !tbaa !44
  %21 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %20)
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %10, label %23, !llvm.loop !69

23:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716NamedNodeMapImpl12cloneContentEPS0_(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef readonly %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %65, label %11

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
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(26) %18)
  %23 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %22, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %24)
  %26 = load ptr, ptr %5, align 8, !tbaa !44
  %27 = invoke noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %28 unwind label %37

28:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_710NodeVectorC1EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %25, i32 noundef %27, ptr noundef %24)
          to label %29 unwind label %37

29:                                               ; preds = %28
  store ptr %25, ptr %12, align 8, !tbaa !44
  %30 = load ptr, ptr %5, align 8, !tbaa !44
  %31 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %65, label %33

33:                                               ; preds = %29
  %34 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9SPECIFIEDE, align 2
  %35 = xor i16 %34, -1
  %36 = load i16, ptr @_ZN11xercesc_2_78NodeImpl5OWNEDE, align 2
  br label %39

37:                                               ; preds = %28, %16
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %24) #8
  resume { ptr, i32 } %38

39:                                               ; preds = %33, %39
  %40 = phi i32 [ 0, %33 ], [ %61, %39 ]
  %41 = load ptr, ptr %5, align 8, !tbaa !44
  %42 = tail call noundef ptr @_ZN11xercesc_2_710NodeVector9elementAtEj(ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef %40)
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 17
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(26) %42, i1 noundef zeroext true)
  %47 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %42, i64 0, i32 3
  %48 = load i16, ptr %47, align 8, !tbaa !56
  %49 = and i16 %34, %48
  %50 = icmp eq i16 %49, 0
  %51 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %46, i64 0, i32 3
  %52 = load i16, ptr %51, align 8, !tbaa !56
  %53 = or i16 %52, %34
  %54 = and i16 %52, %35
  %55 = select i1 %50, i16 %54, i16 %53
  %56 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %46, i64 0, i32 3
  store i16 %55, ptr %56, align 8, !tbaa !56
  %57 = load ptr, ptr %17, align 8, !tbaa !38
  %58 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %46, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !57
  %59 = or i16 %36, %55
  store i16 %59, ptr %56, align 8, !tbaa !56
  %60 = load ptr, ptr %12, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_710NodeVector10addElementEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull %46)
  %61 = add nuw i32 %40, 1
  %62 = load ptr, ptr %5, align 8, !tbaa !44
  %63 = tail call noundef i32 @_ZN11xercesc_2_710NodeVector4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %62)
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %39, label %65, !llvm.loop !70

65:                                               ; preds = %39, %29, %8, %4, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!48 = !{!49, !40, i64 160}
!49 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !50, i64 0, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !43, i64 152, !42, i64 156, !40, i64 160}
!50 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !51, i64 0, !40, i64 48, !40, i64 56, !43, i64 64, !40, i64 72, !43, i64 80}
!51 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !52, i64 0, !40, i64 32, !40, i64 40}
!52 = !{!"_ZTSN11xercesc_2_78NodeImplE", !53, i64 0, !40, i64 16, !55, i64 24}
!53 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !54, i64 0}
!54 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !43, i64 8}
!55 = !{!"short", !41, i64 0}
!56 = !{!52, !55, i64 24}
!57 = !{!52, !40, i64 16}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!54, !43, i64 8}
!62 = distinct !{!62, !59, !60}
!63 = distinct !{!63, !59, !60}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!55, !55, i64 0}
!67 = distinct !{!67, !59, !60}
!68 = distinct !{!68, !59, !60}
!69 = distinct !{!69, !59, !60}
!70 = distinct !{!70, !59, !60}
