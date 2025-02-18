; ModuleID = 'ContentSpecNode.cpp'
source_filename = "ContentSpecNode.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::ContentSpecNode" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_715ContentSpecNodeD0Ev = comdat any

$_ZN11xercesc_2_715ContentSpecNodeD2Ev = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZTVN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTIN11xercesc_2_715ContentSpecNodeE = comdat any

@_ZTVN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715ContentSpecNodeE, ptr @_ZN11xercesc_2_715ContentSpecNodeD2Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv, ptr @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv] }, comdat, align 8
@.str = private unnamed_addr constant [16 x i8] c"ContentSpecNode\00", align 1
@_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_715ContentSpecNode12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715ContentSpecNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_715ContentSpecNodeE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715ContentSpecNodeE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl16fgPCDataElemNameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_75QName10classQNameE = external global %"class.xercesc_2_7::XProtoType", align 8

@_ZN11xercesc_2_715ContentSpecNodeC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 !prof !42 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !46, !range !54, !noundef !55
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !56

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !58

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !43
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #11, !prof !59
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !60, !range !54, !noundef !55
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17, !prof !61

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !63

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #11, !prof !64
  br label %25

25:                                               ; preds = %21, %17, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !66

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !43
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #11, !prof !67
  br label %33

33:                                               ; preds = %25, %29
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 !prof !68 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !46, !range !54, !noundef !55
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !43
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  br label %13

13:                                               ; preds = %5, %9, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !60, !range !54, !noundef !55
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(64) %19) #11
  br label %25

25:                                               ; preds = %17, %21, %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !43
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #11
  br label %33

33:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(64) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  store ptr %5, ptr %3, align 8, !tbaa !70
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  store ptr %9, ptr %7, align 8, !tbaa !71
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %14 = load i32, ptr %13, align 8, !tbaa !72
  store i32 %14, ptr %12, align 8, !tbaa !72
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  store i8 1, ptr %15, align 4, !tbaa !46
  %16 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  store i8 1, ptr %16, align 1, !tbaa !60
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !73
  store i32 %19, ptr %17, align 8, !tbaa !73
  %20 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %21 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 10
  %22 = load i32, ptr %21, align 4, !tbaa !74
  store i32 %22, ptr %20, align 4, !tbaa !74
  %23 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !prof !75

26:                                               ; preds = %2
  %27 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5)
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(56) %24)
          to label %28 unwind label %29, !prof !76

28:                                               ; preds = %26
  store ptr %27, ptr %6, align 8, !tbaa !65
  br label %31

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %5) #11
  br label %52

31:                                               ; preds = %28, %2
  %32 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35, !prof !77

35:                                               ; preds = %31
  %36 = load ptr, ptr %3, align 8, !tbaa !70
  %37 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %36)
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %37, ptr noundef nonnull align 8 dereferenceable(64) %33)
          to label %38 unwind label %39, !prof !78

38:                                               ; preds = %35
  store ptr %37, ptr %10, align 8, !tbaa !57
  br label %41

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %37, ptr noundef %36) #11
  br label %52

41:                                               ; preds = %38, %31
  %42 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45, !prof !79

45:                                               ; preds = %41
  %46 = load ptr, ptr %3, align 8, !tbaa !70
  %47 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %46)
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %47, ptr noundef nonnull align 8 dereferenceable(64) %43)
          to label %48 unwind label %49, !prof !80

48:                                               ; preds = %45
  store ptr %47, ptr %11, align 8, !tbaa !62
  br label %51

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %47, ptr noundef %46) #11
  br label %52

51:                                               ; preds = %48, %41
  ret void

52:                                               ; preds = %39, %49, %29
  %53 = phi { ptr, i32 } [ %30, %29 ], [ %50, %49 ], [ %40, %39 ]
  resume { ptr, i32 } %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_715ContentSpecNode10formatSpecERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 !prof !68 {
  store i32 0, ptr %1, align 8, !tbaa !81
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  store i16 0, ptr %4, align 2, !tbaa !84
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !86
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr %3, align 8, !tbaa !83
  %15 = load i32, ptr %1, align 8, !tbaa !81
  %16 = add i32 %15, 1
  store i32 %16, ptr %1, align 8, !tbaa !81
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds i16, ptr %14, i64 %17
  store i16 40, ptr %18, align 2, !tbaa !84
  br label %19

19:                                               ; preds = %13, %2
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %20 = load i32, ptr %5, align 8, !tbaa !72
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, ptr %1, align 8, !tbaa !81
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !86
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %28

28:                                               ; preds = %22, %27
  %29 = load ptr, ptr %3, align 8, !tbaa !83
  %30 = load i32, ptr %1, align 8, !tbaa !81
  %31 = add i32 %30, 1
  store i32 %31, ptr %1, align 8, !tbaa !81
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i16, ptr %29, i64 %32
  store i16 41, ptr %33, align 2, !tbaa !84
  br label %34

34:                                               ; preds = %28, %19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef readonly %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #2 !prof !68 {
  br label %4

4:                                                ; preds = %320, %307, %294, %3
  %5 = phi ptr [ %0, %3 ], [ %12, %294 ], [ %12, %307 ], [ %12, %320 ]
  %6 = phi i32 [ %1, %3 ], [ %14, %294 ], [ %14, %307 ], [ %14, %320 ]
  %7 = icmp eq ptr %5, null
  br i1 %7, label %327, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %10, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %10, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !72
  br label %19

19:                                               ; preds = %8, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %8 ]
  %21 = icmp ne i32 %20, 0
  %22 = icmp ne i32 %6, -1
  %23 = and i1 %22, %21
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = icmp eq i32 %20, 0
  %26 = icmp eq i32 %6, -1
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %19
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i1 [ true, %28 ], [ false, %24 ]
  %31 = and i32 %14, 15
  switch i32 %31, label %327 [
    i32 0, label %32
    i32 1, label %42
    i32 2, label %80
    i32 3, label %118
    i32 4, label %156
    i32 5, label %191
    i32 9, label %226
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %5, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !87
  %37 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !89
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @_ZN11xercesc_2_714XMLElementDecl16fgPCDataElemNameE)
  br label %327

40:                                               ; preds = %32
  %41 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %34)
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %41)
  br label %327

42:                                               ; preds = %29
  br i1 %30, label %43, label %66

43:                                               ; preds = %42
  %44 = load i32, ptr %2, align 8, !tbaa !81
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !86
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %49

49:                                               ; preds = %43, %48
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !83
  %52 = load i32, ptr %2, align 8, !tbaa !81
  %53 = add i32 %52, 1
  store i32 %53, ptr %2, align 8, !tbaa !81
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i16, ptr %51, i64 %54
  store i16 40, ptr %55, align 2, !tbaa !84
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %56 = load i32, ptr %2, align 8, !tbaa !81
  %57 = load i32, ptr %45, align 4, !tbaa !86
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %60

60:                                               ; preds = %49, %59
  %61 = load ptr, ptr %50, align 8, !tbaa !83
  %62 = load i32, ptr %2, align 8, !tbaa !81
  %63 = add i32 %62, 1
  store i32 %63, ptr %2, align 8, !tbaa !81
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i16, ptr %61, i64 %64
  store i16 41, ptr %65, align 2, !tbaa !84
  br label %67

66:                                               ; preds = %42
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %67

67:                                               ; preds = %66, %60
  %68 = load i32, ptr %2, align 8, !tbaa !81
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !86
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %73

73:                                               ; preds = %67, %72
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !83
  %76 = load i32, ptr %2, align 8, !tbaa !81
  %77 = add i32 %76, 1
  store i32 %77, ptr %2, align 8, !tbaa !81
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds i16, ptr %75, i64 %78
  store i16 63, ptr %79, align 2, !tbaa !84
  br label %327

80:                                               ; preds = %29
  br i1 %30, label %81, label %104

81:                                               ; preds = %80
  %82 = load i32, ptr %2, align 8, !tbaa !81
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !86
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %87

87:                                               ; preds = %81, %86
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !83
  %90 = load i32, ptr %2, align 8, !tbaa !81
  %91 = add i32 %90, 1
  store i32 %91, ptr %2, align 8, !tbaa !81
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i16, ptr %89, i64 %92
  store i16 40, ptr %93, align 2, !tbaa !84
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %94 = load i32, ptr %2, align 8, !tbaa !81
  %95 = load i32, ptr %83, align 4, !tbaa !86
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %98

98:                                               ; preds = %87, %97
  %99 = load ptr, ptr %88, align 8, !tbaa !83
  %100 = load i32, ptr %2, align 8, !tbaa !81
  %101 = add i32 %100, 1
  store i32 %101, ptr %2, align 8, !tbaa !81
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds i16, ptr %99, i64 %102
  store i16 41, ptr %103, align 2, !tbaa !84
  br label %105

104:                                              ; preds = %80
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %105

105:                                              ; preds = %104, %98
  %106 = load i32, ptr %2, align 8, !tbaa !81
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !86
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %111

111:                                              ; preds = %105, %110
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !83
  %114 = load i32, ptr %2, align 8, !tbaa !81
  %115 = add i32 %114, 1
  store i32 %115, ptr %2, align 8, !tbaa !81
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds i16, ptr %113, i64 %116
  store i16 42, ptr %117, align 2, !tbaa !84
  br label %327

118:                                              ; preds = %29
  br i1 %30, label %119, label %142

119:                                              ; preds = %118
  %120 = load i32, ptr %2, align 8, !tbaa !81
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !86
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %125

125:                                              ; preds = %119, %124
  %126 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !83
  %128 = load i32, ptr %2, align 8, !tbaa !81
  %129 = add i32 %128, 1
  store i32 %129, ptr %2, align 8, !tbaa !81
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds i16, ptr %127, i64 %130
  store i16 40, ptr %131, align 2, !tbaa !84
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %132 = load i32, ptr %2, align 8, !tbaa !81
  %133 = load i32, ptr %121, align 4, !tbaa !86
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %136

136:                                              ; preds = %125, %135
  %137 = load ptr, ptr %126, align 8, !tbaa !83
  %138 = load i32, ptr %2, align 8, !tbaa !81
  %139 = add i32 %138, 1
  store i32 %139, ptr %2, align 8, !tbaa !81
  %140 = zext i32 %138 to i64
  %141 = getelementptr inbounds i16, ptr %137, i64 %140
  store i16 41, ptr %141, align 2, !tbaa !84
  br label %143

142:                                              ; preds = %118
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %143

143:                                              ; preds = %142, %136
  %144 = load i32, ptr %2, align 8, !tbaa !81
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !86
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %149

149:                                              ; preds = %143, %148
  %150 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !83
  %152 = load i32, ptr %2, align 8, !tbaa !81
  %153 = add i32 %152, 1
  store i32 %153, ptr %2, align 8, !tbaa !81
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i16, ptr %151, i64 %154
  store i16 43, ptr %155, align 2, !tbaa !84
  br label %327

156:                                              ; preds = %29
  %157 = icmp eq i32 %14, %6
  br i1 %157, label %288, label %158

158:                                              ; preds = %156
  %159 = load i32, ptr %2, align 8, !tbaa !81
  %160 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !86
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %164

164:                                              ; preds = %158, %163
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %166 = load ptr, ptr %165, align 8, !tbaa !83
  %167 = load i32, ptr %2, align 8, !tbaa !81
  %168 = add i32 %167, 1
  store i32 %168, ptr %2, align 8, !tbaa !81
  %169 = zext i32 %167 to i64
  %170 = getelementptr inbounds i16, ptr %166, i64 %169
  store i16 40, ptr %170, align 2, !tbaa !84
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %171 = load i32, ptr %2, align 8, !tbaa !81
  %172 = load i32, ptr %160, align 4, !tbaa !86
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %175

175:                                              ; preds = %164, %174
  %176 = load ptr, ptr %165, align 8, !tbaa !83
  %177 = load i32, ptr %2, align 8, !tbaa !81
  %178 = add i32 %177, 1
  store i32 %178, ptr %2, align 8, !tbaa !81
  %179 = zext i32 %177 to i64
  %180 = getelementptr inbounds i16, ptr %176, i64 %179
  store i16 124, ptr %180, align 2, !tbaa !84
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %12, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %181 = load i32, ptr %2, align 8, !tbaa !81
  %182 = load i32, ptr %160, align 4, !tbaa !86
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %185

185:                                              ; preds = %175, %184
  %186 = load ptr, ptr %165, align 8, !tbaa !83
  %187 = load i32, ptr %2, align 8, !tbaa !81
  %188 = add i32 %187, 1
  store i32 %188, ptr %2, align 8, !tbaa !81
  %189 = zext i32 %187 to i64
  %190 = getelementptr inbounds i16, ptr %186, i64 %189
  store i16 41, ptr %190, align 2, !tbaa !84
  br label %327

191:                                              ; preds = %29
  %192 = icmp eq i32 %14, %6
  br i1 %192, label %301, label %193

193:                                              ; preds = %191
  %194 = load i32, ptr %2, align 8, !tbaa !81
  %195 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %196 = load i32, ptr %195, align 4, !tbaa !86
  %197 = icmp eq i32 %194, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %199

199:                                              ; preds = %193, %198
  %200 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %201 = load ptr, ptr %200, align 8, !tbaa !83
  %202 = load i32, ptr %2, align 8, !tbaa !81
  %203 = add i32 %202, 1
  store i32 %203, ptr %2, align 8, !tbaa !81
  %204 = zext i32 %202 to i64
  %205 = getelementptr inbounds i16, ptr %201, i64 %204
  store i16 40, ptr %205, align 2, !tbaa !84
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %206 = load i32, ptr %2, align 8, !tbaa !81
  %207 = load i32, ptr %195, align 4, !tbaa !86
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %210

210:                                              ; preds = %199, %209
  %211 = load ptr, ptr %200, align 8, !tbaa !83
  %212 = load i32, ptr %2, align 8, !tbaa !81
  %213 = add i32 %212, 1
  store i32 %213, ptr %2, align 8, !tbaa !81
  %214 = zext i32 %212 to i64
  %215 = getelementptr inbounds i16, ptr %211, i64 %214
  store i16 44, ptr %215, align 2, !tbaa !84
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %12, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %216 = load i32, ptr %2, align 8, !tbaa !81
  %217 = load i32, ptr %195, align 4, !tbaa !86
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %210
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %220

220:                                              ; preds = %210, %219
  %221 = load ptr, ptr %200, align 8, !tbaa !83
  %222 = load i32, ptr %2, align 8, !tbaa !81
  %223 = add i32 %222, 1
  store i32 %223, ptr %2, align 8, !tbaa !81
  %224 = zext i32 %222 to i64
  %225 = getelementptr inbounds i16, ptr %221, i64 %224
  store i16 41, ptr %225, align 2, !tbaa !84
  br label %327

226:                                              ; preds = %29
  %227 = icmp eq i32 %14, %6
  br i1 %227, label %314, label %228

228:                                              ; preds = %226
  %229 = load i32, ptr %2, align 8, !tbaa !81
  %230 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !86
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %234

234:                                              ; preds = %228, %233
  %235 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %236 = load ptr, ptr %235, align 8, !tbaa !83
  %237 = load i32, ptr %2, align 8, !tbaa !81
  %238 = add i32 %237, 1
  store i32 %238, ptr %2, align 8, !tbaa !81
  %239 = zext i32 %237 to i64
  %240 = getelementptr inbounds i16, ptr %236, i64 %239
  store i16 65, ptr %240, align 2, !tbaa !84
  %241 = load i32, ptr %230, align 4, !tbaa !86
  %242 = icmp eq i32 %238, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %234
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %244

244:                                              ; preds = %234, %243
  %245 = load ptr, ptr %235, align 8, !tbaa !83
  %246 = load i32, ptr %2, align 8, !tbaa !81
  %247 = add i32 %246, 1
  store i32 %247, ptr %2, align 8, !tbaa !81
  %248 = zext i32 %246 to i64
  %249 = getelementptr inbounds i16, ptr %245, i64 %248
  store i16 108, ptr %249, align 2, !tbaa !84
  %250 = load i32, ptr %230, align 4, !tbaa !86
  %251 = icmp eq i32 %247, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %244
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %253

253:                                              ; preds = %244, %252
  %254 = load ptr, ptr %235, align 8, !tbaa !83
  %255 = load i32, ptr %2, align 8, !tbaa !81
  %256 = add i32 %255, 1
  store i32 %256, ptr %2, align 8, !tbaa !81
  %257 = zext i32 %255 to i64
  %258 = getelementptr inbounds i16, ptr %254, i64 %257
  store i16 108, ptr %258, align 2, !tbaa !84
  %259 = load i32, ptr %230, align 4, !tbaa !86
  %260 = icmp eq i32 %256, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %262

262:                                              ; preds = %253, %261
  %263 = load ptr, ptr %235, align 8, !tbaa !83
  %264 = load i32, ptr %2, align 8, !tbaa !81
  %265 = add i32 %264, 1
  store i32 %265, ptr %2, align 8, !tbaa !81
  %266 = zext i32 %264 to i64
  %267 = getelementptr inbounds i16, ptr %263, i64 %266
  store i16 40, ptr %267, align 2, !tbaa !84
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %268 = load i32, ptr %2, align 8, !tbaa !81
  %269 = load i32, ptr %230, align 4, !tbaa !86
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %262
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %272

272:                                              ; preds = %262, %271
  %273 = load ptr, ptr %235, align 8, !tbaa !83
  %274 = load i32, ptr %2, align 8, !tbaa !81
  %275 = add i32 %274, 1
  store i32 %275, ptr %2, align 8, !tbaa !81
  %276 = zext i32 %274 to i64
  %277 = getelementptr inbounds i16, ptr %273, i64 %276
  store i16 44, ptr %277, align 2, !tbaa !84
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %12, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %278 = load i32, ptr %2, align 8, !tbaa !81
  %279 = load i32, ptr %230, align 4, !tbaa !86
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %272
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %282

282:                                              ; preds = %272, %281
  %283 = load ptr, ptr %235, align 8, !tbaa !83
  %284 = load i32, ptr %2, align 8, !tbaa !81
  %285 = add i32 %284, 1
  store i32 %285, ptr %2, align 8, !tbaa !81
  %286 = zext i32 %284 to i64
  %287 = getelementptr inbounds i16, ptr %283, i64 %286
  store i16 41, ptr %287, align 2, !tbaa !84
  br label %327

288:                                              ; preds = %156
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %289 = load i32, ptr %2, align 8, !tbaa !81
  %290 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %291 = load i32, ptr %290, align 4, !tbaa !86
  %292 = icmp eq i32 %289, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %294

294:                                              ; preds = %288, %293
  %295 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %296 = load ptr, ptr %295, align 8, !tbaa !83
  %297 = load i32, ptr %2, align 8, !tbaa !81
  %298 = add i32 %297, 1
  store i32 %298, ptr %2, align 8, !tbaa !81
  %299 = zext i32 %297 to i64
  %300 = getelementptr inbounds i16, ptr %296, i64 %299
  store i16 124, ptr %300, align 2, !tbaa !84
  br label %4

301:                                              ; preds = %191
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %302 = load i32, ptr %2, align 8, !tbaa !81
  %303 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !86
  %305 = icmp eq i32 %302, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %301
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %307

307:                                              ; preds = %301, %306
  %308 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %309 = load ptr, ptr %308, align 8, !tbaa !83
  %310 = load i32, ptr %2, align 8, !tbaa !81
  %311 = add i32 %310, 1
  store i32 %311, ptr %2, align 8, !tbaa !81
  %312 = zext i32 %310 to i64
  %313 = getelementptr inbounds i16, ptr %309, i64 %312
  store i16 44, ptr %313, align 2, !tbaa !84
  br label %4

314:                                              ; preds = %226
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %10, i32 noundef %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %315 = load i32, ptr %2, align 8, !tbaa !81
  %316 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  %317 = load i32, ptr %316, align 4, !tbaa !86
  %318 = icmp eq i32 %315, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  br label %320

320:                                              ; preds = %314, %319
  %321 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %322 = load ptr, ptr %321, align 8, !tbaa !83
  %323 = load i32, ptr %2, align 8, !tbaa !81
  %324 = add i32 %323, 1
  store i32 %324, ptr %2, align 8, !tbaa !81
  %325 = zext i32 %323 to i64
  %326 = getelementptr inbounds i16, ptr %322, i64 %325
  store i16 44, ptr %326, align 2, !tbaa !84
  br label %4

327:                                              ; preds = %73, %111, %149, %29, %40, %39, %185, %220, %282, %4
  ret void
}

; Function Attrs: cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #5 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !73
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = freeze i32 %5
  %7 = and i32 %6, 14
  %8 = icmp eq i32 %6, 9
  %9 = icmp eq i32 %7, 4
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %13)
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %16)
  %20 = and i32 %6, 15
  %21 = icmp eq i32 %20, 4
  %22 = tail call i32 @llvm.smin.i32(i32 %14, i32 %19)
  %23 = add nsw i32 %19, %14
  %24 = select i1 %21, i32 %22, i32 %23
  br label %25

25:                                               ; preds = %11, %18
  %26 = phi i32 [ %24, %18 ], [ %14, %11 ]
  %27 = mul nsw i32 %26, %3
  br label %28

28:                                               ; preds = %1, %25
  %29 = phi i32 [ %27, %25 ], [ %3, %1 ]
  ret i32 %29
}

; Function Attrs: cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMaxTotalRangeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #5 align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = freeze i32 %7
  %9 = and i32 %8, 14
  %10 = icmp eq i32 %8, 9
  %11 = icmp eq i32 %9, 4
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMaxTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %37, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMaxTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %20)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = and i32 %8, 15
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = icmp eq i32 %3, 0
  %30 = tail call i32 @llvm.smax.i32(i32 %16, i32 %23)
  %31 = select i1 %29, i32 %23, i32 %30
  br label %37

32:                                               ; preds = %25
  %33 = add nsw i32 %23, %16
  %34 = mul nsw i32 %33, %3
  br label %37

35:                                               ; preds = %18
  %36 = mul nsw i32 %16, %3
  br label %37

37:                                               ; preds = %13, %35, %32, %28, %22, %5, %1
  %38 = phi i32 [ -1, %1 ], [ %3, %5 ], [ -1, %13 ], [ %36, %35 ], [ -1, %22 ], [ %31, %28 ], [ %34, %32 ]
  ret i32 %38
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !70
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store i8 1, ptr %5, align 4, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 8
  store i8 1, ptr %6, align 1, !tbaa !60
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 9
  store i32 1, ptr %7, align 8, !tbaa !73
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %2, i64 0, i32 10
  store i32 1, ptr %8, align 4, !tbaa !74
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !68 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !68 {
  ret ptr @_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !68 {
  %3 = alloca i32, align 4
  %4 = load i16, ptr %1, align 8, !tbaa !90
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  br i1 %5, label %10, label %32

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %11)
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_714XMLElementDecl16storeElementDeclERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %13)
  %14 = load ptr, ptr %7, align 8, !tbaa !57
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %14)
  %15 = load ptr, ptr %8, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %15)
  %16 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !72
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %17)
  %19 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %20 = load i8, ptr %19, align 4, !tbaa !46, !range !54, !noundef !55
  %21 = icmp ne i8 %20, 0
  %22 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %21)
  %23 = load i8, ptr %9, align 1, !tbaa !60, !range !54, !noundef !55
  %24 = icmp ne i8 %23, 0
  %25 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %24)
  %26 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !73
  %28 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %27)
  %29 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %30 = load i32, ptr %29, align 4, !tbaa !74
  %31 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %30)
  br label %48

32:                                               ; preds = %2
  %33 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_75QName10classQNameE)
  store ptr %33, ptr %6, align 8, !tbaa !93
  %34 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl15loadElementDeclERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %35 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 3
  store ptr %34, ptr %35, align 8, !tbaa !71
  %36 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE)
  store ptr %36, ptr %7, align 8, !tbaa !93
  %37 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull @_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE)
  store ptr %37, ptr %8, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %38 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %39 = load i32, ptr %3, align 4, !tbaa !89
  %40 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  store i32 %39, ptr %40, align 8, !tbaa !72
  %41 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %42 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %41)
  %43 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %9)
  %44 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %45 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %44)
  %46 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %47 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %46)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %48

48:                                               ; preds = %32, %10
  ret void
}

declare void @_ZN11xercesc_2_714XMLElementDecl16storeElementDeclERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_714XMLElementDecl15loadElementDeclERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !94 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !95

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !84
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !96

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !84
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !97, !llvm.loop !98

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !81
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !86
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !101

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !83
  %24 = load i32, ptr %0, align 8, !tbaa !81
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !102
  %28 = load i32, ptr %0, align 8, !tbaa !81
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !81
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, i64 282}
!36 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 339}
!37 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 219}
!38 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, ptr @_ZN11xercesc_2_75QNameC1ERKS0_, i64 86}
!39 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, i64 133}
!40 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 339}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !52, i64 52}
!47 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !48, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !51, i64 48, !52, i64 52, !52, i64 53, !53, i64 56, !53, i64 60}
!48 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !45, i64 0}
!51 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !50, i64 0}
!52 = !{!"bool", !50, i64 0}
!53 = !{!"int", !50, i64 0}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!"branch_weights", i32 9, i32 330}
!57 = !{!47, !49, i64 32}
!58 = !{!"branch_weights", i32 172, i32 158}
!59 = !{!"VP", i32 0, i64 158, i64 -8455366633691647299, i64 158}
!60 = !{!47, !52, i64 53}
!61 = !{!"branch_weights", i32 0, i32 339}
!62 = !{!47, !49, i64 40}
!63 = !{!"branch_weights", i32 215, i32 124}
!64 = !{!"VP", i32 0, i64 124, i64 -8455366633691647299, i64 124}
!65 = !{!47, !49, i64 16}
!66 = !{!"branch_weights", i32 167, i32 172}
!67 = !{!"VP", i32 0, i64 172, i64 7173745605608799217, i64 172}
!68 = !{!"function_entry_count", i64 0}
!69 = !{!"function_entry_count", i64 157}
!70 = !{!47, !49, i64 8}
!71 = !{!47, !49, i64 24}
!72 = !{!47, !51, i64 48}
!73 = !{!47, !53, i64 56}
!74 = !{!47, !53, i64 60}
!75 = !{!"branch_weights", i32 71, i32 86}
!76 = !{!"branch_weights", i32 86, i32 0}
!77 = !{!"branch_weights", i32 86, i32 71}
!78 = !{!"branch_weights", i32 71, i32 0}
!79 = !{!"branch_weights", i32 95, i32 62}
!80 = !{!"branch_weights", i32 62, i32 0}
!81 = !{!82, !53, i64 0}
!82 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !53, i64 0, !53, i64 4, !53, i64 8, !52, i64 12, !49, i64 16, !49, i64 24, !49, i64 32}
!83 = !{!82, !49, i64 32}
!84 = !{!85, !85, i64 0}
!85 = !{!"short", !50, i64 0}
!86 = !{!82, !53, i64 4}
!87 = !{!88, !53, i64 20}
!88 = !{!"_ZTSN11xercesc_2_75QNameE", !48, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48}
!89 = !{!53, !53, i64 0}
!90 = !{!91, !85, i64 0}
!91 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !85, i64 0, !85, i64 2, !49, i64 8, !49, i64 16, !49, i64 24, !92, i64 32, !92, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !53, i64 96}
!92 = !{!"long", !50, i64 0}
!93 = !{!49, !49, i64 0}
!94 = !{!"function_entry_count", i64 789922}
!95 = !{!"branch_weights", i32 0, i32 789922}
!96 = !{!"branch_weights", i32 284, i32 789638}
!97 = !{!"branch_weights", i32 789638, i32 41628303}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!"branch_weights", i32 789636, i32 2}
!102 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
