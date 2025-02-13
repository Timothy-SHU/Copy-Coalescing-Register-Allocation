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

$_ZN11xercesc_2_713XSerializableC2ERKS0_ = comdat any

$_ZNK11xercesc_2_715ContentSpecNode10getElementEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode8getFirstEv = comdat any

$_ZNK11xercesc_2_715ContentSpecNode9getSecondEv = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_715ContentSpecNodeC2EPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE = comdat any

$_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ContentSpecNodeE = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZNK11xercesc_2_715ContentSpecNode7getTypeEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZTVN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTIN11xercesc_2_715ContentSpecNodeE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

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
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_714XMLElementDecl16fgPCDataElemNameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_75QName10classQNameE = external global %"class.xercesc_2_7::XProtoType", align 8

@_ZN11xercesc_2_715ContentSpecNodeC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %3 = load i8, ptr %2, align 4, !tbaa !50, !range !58, !noundef !59
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !60

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  br label %13

13:                                               ; preds = %5, %9, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 1, !tbaa !62, !range !58, !noundef !59
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17, !prof !63

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !47
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
  %30 = load ptr, ptr %27, align 8, !tbaa !47
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(56) %27) #11
  br label %33

33:                                               ; preds = %29, %25
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  tail call void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  store ptr %5, ptr %3, align 8, !tbaa !67
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  store ptr %9, ptr %7, align 8, !tbaa !68
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %14 = load i32, ptr %13, align 8, !tbaa !69
  store i32 %14, ptr %12, align 8, !tbaa !69
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  store i8 1, ptr %15, align 4, !tbaa !50
  %16 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  store i8 1, ptr %16, align 1, !tbaa !62
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %1, i64 0, i32 9
  %19 = load <2 x i32>, ptr %18, align 8, !tbaa !70
  store <2 x i32> %19, ptr %17, align 8, !tbaa !70
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22, !prof !71

22:                                               ; preds = %2
  %23 = load ptr, ptr %3, align 8, !tbaa !67
  %24 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %23) #12
          to label %25 unwind label %27

25:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull align 8 dereferenceable(56) %20) #12
          to label %26 unwind label %29

26:                                               ; preds = %25
  store ptr %24, ptr %6, align 8, !tbaa !65
  br label %31

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %54

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #11
  br label %54

31:                                               ; preds = %26, %2
  %32 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34, !prof !72

34:                                               ; preds = %31
  %35 = load ptr, ptr %3, align 8, !tbaa !67
  %36 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %35) #12
          to label %37 unwind label %39

37:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %36, ptr noundef nonnull align 8 dereferenceable(64) %32) #12
          to label %38 unwind label %41

38:                                               ; preds = %37
  store ptr %36, ptr %10, align 8, !tbaa !61
  br label %43

39:                                               ; preds = %46, %34
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %54

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %36, ptr noundef %35) #11
  br label %54

43:                                               ; preds = %38, %31
  %44 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46, !prof !73

46:                                               ; preds = %43
  %47 = load ptr, ptr %3, align 8, !tbaa !67
  %48 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %47) #12
          to label %49 unwind label %39

49:                                               ; preds = %46
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %48, ptr noundef nonnull align 8 dereferenceable(64) %44) #12
          to label %50 unwind label %51

50:                                               ; preds = %49
  store ptr %48, ptr %11, align 8, !tbaa !64
  br label %53

51:                                               ; preds = %49
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %48, ptr noundef %47) #11
  br label %54

53:                                               ; preds = %50, %43
  ret void

54:                                               ; preds = %39, %41, %51, %29, %27
  %55 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ], [ %52, %51 ], [ %40, %39 ], [ %42, %41 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %55
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !74 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_715ContentSpecNode10formatSpecERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !69
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext 40) #12
  br label %7

7:                                                ; preds = %6, %2
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(40) %1) #12
  %8 = load i32, ptr %3, align 8, !tbaa !69
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext 41) #12
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !76 {
  store i32 0, ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  store i16 0, ptr %3, align 2, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !82 {
  %3 = load i32, ptr %0, align 8, !tbaa !77
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !83
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !84

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %8 = load i32, ptr %0, align 8, !tbaa !77
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !77
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #3 !prof !75 !PGOFuncName !85 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %3, %57
  %6 = phi i32 [ %10, %57 ], [ %1, %3 ]
  %7 = phi ptr [ %9, %57 ], [ %0, %3 ]
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode8getFirstEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #12
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode9getSecondEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #12
  %10 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #12
  %11 = icmp eq ptr %8, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %5
  %13 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %8) #12
  %14 = icmp ne i32 %13, 0
  %15 = icmp ne i32 %6, -1
  %16 = and i1 %15, %14
  br i1 %16, label %22, label %17

17:                                               ; preds = %5, %12
  %18 = phi i32 [ %13, %12 ], [ 0, %5 ]
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i32 %6, -1
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i1 [ true, %22 ], [ false, %17 ]
  %25 = and i32 %10, 15
  switch i32 %25, label %49 [
    i32 0, label %26
    i32 1, label %35
    i32 2, label %39
    i32 3, label %43
    i32 4, label %47
    i32 5, label %51
    i32 9, label %54
  ]

26:                                               ; preds = %23
  %27 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #12
  %28 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %27) #12
  %29 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl14fgPCDataElemIdE, align 4, !tbaa !70
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @_ZN11xercesc_2_714XMLElementDecl16fgPCDataElemNameE) #12
  br label %49

32:                                               ; preds = %26
  %33 = tail call noundef ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #12
  %34 = tail call noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %33) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %34) #12
  br label %49

35:                                               ; preds = %23
  br i1 %24, label %36, label %37

36:                                               ; preds = %35
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 40) #12
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %8, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 41) #12
  br label %38

37:                                               ; preds = %35
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %8, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  br label %38

38:                                               ; preds = %37, %36
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 63) #12
  br label %49

39:                                               ; preds = %23
  br i1 %24, label %40, label %41

40:                                               ; preds = %39
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 40) #12
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %8, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 41) #12
  br label %42

41:                                               ; preds = %39
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %8, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  br label %42

42:                                               ; preds = %41, %40
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 42) #12
  br label %49

43:                                               ; preds = %23
  br i1 %24, label %44, label %45

44:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 40) #12
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %8, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 41) #12
  br label %46

45:                                               ; preds = %43
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %8, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  br label %46

46:                                               ; preds = %45, %44
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 43) #12
  br label %49

47:                                               ; preds = %23
  %48 = icmp eq i32 %10, %6
  br i1 %48, label %57, label %50

49:                                               ; preds = %38, %42, %46, %32, %31, %3, %57, %23, %56, %53, %50
  ret void

50:                                               ; preds = %47
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 40) #12
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %8, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 124) #12
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 41) #12
  br label %49

51:                                               ; preds = %23
  %52 = icmp eq i32 %10, %6
  br i1 %52, label %57, label %53

53:                                               ; preds = %51
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 40) #12
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %8, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 44) #12
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 41) #12
  br label %49

54:                                               ; preds = %23
  %55 = icmp eq i32 %10, %6
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 65) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 108) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 108) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 40) #12
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %8, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 44) #12
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext 41) #12
  br label %49

57:                                               ; preds = %47, %54, %51
  %58 = phi i16 [ 44, %51 ], [ 44, %54 ], [ 124, %47 ]
  tail call fastcc void @_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE(ptr noundef %8, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef zeroext %58) #12
  %59 = icmp eq ptr %9, null
  br i1 %59, label %49, label %5
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #6 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = freeze i32 %5
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %6, 9
  %9 = and i32 %6, 14
  %10 = icmp eq i32 %9, 4
  %11 = or i1 %8, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %14) #12
  %16 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMinTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %17) #12
  %21 = icmp eq i32 %7, 4
  %22 = tail call i32 @llvm.smin.i32(i32 %15, i32 %20)
  %23 = add nsw i32 %20, %15
  %24 = select i1 %21, i32 %22, i32 %23
  br label %25

25:                                               ; preds = %12, %19
  %26 = phi i32 [ %24, %19 ], [ %15, %12 ]
  %27 = mul nsw i32 %26, %3
  br label %28

28:                                               ; preds = %1, %25
  %29 = phi i32 [ %27, %25 ], [ %3, %1 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMaxTotalRangeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #6 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !69
  %8 = freeze i32 %7
  %9 = and i32 %8, 15
  %10 = icmp eq i32 %8, 9
  %11 = and i32 %8, 14
  %12 = icmp eq i32 %11, 4
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMaxTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %16) #12
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = tail call noundef i32 @_ZNK11xercesc_2_715ContentSpecNode16getMaxTotalRangeEv(ptr noundef nonnull align 8 dereferenceable(64) %21) #12
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = icmp eq i32 %9, 4
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = icmp eq i32 %3, 0
  %30 = tail call i32 @llvm.smax.i32(i32 %17, i32 %24)
  %31 = select i1 %29, i32 %24, i32 %30
  br label %37

32:                                               ; preds = %26
  %33 = add nsw i32 %24, %17
  %34 = mul nsw i32 %33, %3
  br label %37

35:                                               ; preds = %19
  %36 = mul nsw i32 %17, %3
  br label %37

37:                                               ; preds = %32, %28, %14, %23, %35, %5, %1
  %38 = phi i32 [ -1, %1 ], [ %3, %5 ], [ -1, %23 ], [ %36, %35 ], [ -1, %14 ], [ %34, %32 ], [ %31, %28 ]
  ret i32 %38
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715ContentSpecNode12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %0) #12
  invoke void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %0) #12
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #11
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715ContentSpecNodeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_715ContentSpecNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !67
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store i8 1, ptr %5, align 4, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  store i8 1, ptr %6, align 1, !tbaa !62
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  store i32 1, ptr %7, align 8, !tbaa !86
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  store i32 1, ptr %8, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715ContentSpecNode14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !75 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_715ContentSpecNode12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ContentSpecNode9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !75 {
  %3 = alloca i32, align 4
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  br i1 %4, label %8, label %34

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8, !tbaa !65
  %10 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %9) #12
  %11 = load ptr, ptr %6, align 8, !tbaa !68
  tail call void @_ZN11xercesc_2_714XMLElementDecl16storeElementDeclERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %11) #12
  %12 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %13) #12
  %15 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %16) #12
  %18 = load i32, ptr %7, align 8, !tbaa !69
  %19 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %18) #12
  %20 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %21 = load i8, ptr %20, align 4, !tbaa !50, !range !58, !noundef !59
  %22 = icmp ne i8 %21, 0
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %22) #12
  %24 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %25 = load i8, ptr %24, align 1, !tbaa !62, !range !58, !noundef !59
  %26 = icmp ne i8 %25, 0
  %27 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %26) #12
  %28 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !86
  %30 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %29) #12
  %31 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !87
  %33 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %32) #12
  br label %51

34:                                               ; preds = %2
  %35 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  %36 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl15loadElementDeclERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  store ptr %36, ptr %6, align 8, !tbaa !68
  %37 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 4
  %38 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %37) #12
  %39 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 5
  %40 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %39) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %41 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  %42 = load i32, ptr %3, align 4, !tbaa !70
  store i32 %42, ptr %7, align 8, !tbaa !69
  %43 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 7
  %44 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %43) #12
  %45 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 8
  %46 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %45) #12
  %47 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 9
  %48 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %47) #12
  %49 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 10
  %50 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %49) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %51

51:                                               ; preds = %34, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #1 comdat align 2 !prof !75 {
  %2 = load i16, ptr %0, align 8, !tbaa !88
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7lsERNS_16XSerializeEngineEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !75 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) #12
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714XMLElementDecl16storeElementDeclERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_5QNameE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !75 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_75QName10classQNameE) #12
  store ptr %3, ptr %1, align 8, !tbaa !91
  ret ptr %0
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_714XMLElementDecl15loadElementDeclERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_7rsERNS_16XSerializeEngineERPNS_15ContentSpecNodeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !75 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull @_ZN11xercesc_2_715ContentSpecNode20classContentSpecNodeE) #12
  store ptr %3, ptr %1, align 8, !tbaa !91
  ret ptr %0
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !92 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ContentSpecNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 !prof !93 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentSpecNode", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !69
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !94 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !95
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !97 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !98

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !80
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !99

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !80
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !100, !llvm.loop !101

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !77
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !83
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !103

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #12
  %21 = load i32, ptr %0, align 8, !tbaa !77
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !77
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !77
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !104 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !105 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 339}
!36 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, ptr @_ZN11xercesc_2_713XSerializableC2ERKS0_, i64 157}
!37 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, ptr @_ZNK11xercesc_2_715ContentSpecNode10getElementEv, i64 157}
!38 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 219}
!39 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, ptr @_ZN11xercesc_2_75QNameC1ERKS0_, i64 86}
!40 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, ptr @_ZNK11xercesc_2_715ContentSpecNode8getFirstEv, i64 157}
!41 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, i64 133}
!42 = !{ptr @_ZN11xercesc_2_715ContentSpecNodeC2ERKS0_, ptr @_ZNK11xercesc_2_715ContentSpecNode9getSecondEv, i64 157}
!43 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!44 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 339}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !56, i64 52}
!51 = !{!"_ZTSN11xercesc_2_715ContentSpecNodeE", !52, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !55, i64 48, !56, i64 52, !56, i64 53, !57, i64 56, !57, i64 60}
!52 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !49, i64 0}
!55 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !54, i64 0}
!56 = !{!"bool", !54, i64 0}
!57 = !{!"int", !54, i64 0}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!"branch_weights", i32 10, i32 331}
!61 = !{!51, !53, i64 32}
!62 = !{!51, !56, i64 53}
!63 = !{!"branch_weights", i32 1, i32 340}
!64 = !{!51, !53, i64 40}
!65 = !{!51, !53, i64 16}
!66 = !{!"function_entry_count", i64 157}
!67 = !{!51, !53, i64 8}
!68 = !{!51, !53, i64 24}
!69 = !{!51, !55, i64 48}
!70 = !{!57, !57, i64 0}
!71 = !{!"branch_weights", i32 72, i32 87}
!72 = !{!"branch_weights", i32 87, i32 72}
!73 = !{!"branch_weights", i32 96, i32 63}
!74 = !{!"function_entry_count", i64 447}
!75 = !{!"function_entry_count", i64 0}
!76 = !{!"function_entry_count", i64 8985736}
!77 = !{!78, !57, i64 0}
!78 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !57, i64 0, !57, i64 4, !57, i64 8, !56, i64 12, !53, i64 16, !53, i64 24, !53, i64 32}
!79 = !{!78, !53, i64 32}
!80 = !{!81, !81, i64 0}
!81 = !{!"short", !54, i64 0}
!82 = !{!"function_entry_count", i64 7992849}
!83 = !{!78, !57, i64 4}
!84 = !{!"branch_weights", i32 1, i32 7992850}
!85 = !{!"ContentSpecNode.cpp:_ZN11xercesc_2_7L10formatNodeEPKNS_15ContentSpecNodeENS0_9NodeTypesERNS_9XMLBufferE"}
!86 = !{!51, !57, i64 56}
!87 = !{!51, !57, i64 60}
!88 = !{!89, !81, i64 0}
!89 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !81, i64 0, !81, i64 2, !53, i64 8, !53, i64 16, !53, i64 24, !90, i64 32, !90, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !57, i64 96}
!90 = !{!"long", !54, i64 0}
!91 = !{!53, !53, i64 0}
!92 = !{!"function_entry_count", i64 1069174}
!93 = !{!"function_entry_count", i64 353}
!94 = !{!"function_entry_count", i64 6553673}
!95 = !{!96, !57, i64 20}
!96 = !{!"_ZTSN11xercesc_2_75QNameE", !52, i64 0, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48}
!97 = !{!"function_entry_count", i64 789922}
!98 = !{!"branch_weights", i32 1, i32 789923}
!99 = !{!"branch_weights", i32 285, i32 789639}
!100 = !{!"branch_weights", i32 789639, i32 41628304}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"branch_weights", i32 789637, i32 3}
!104 = !{!"function_entry_count", i64 1068727}
!105 = !{!"function_entry_count", i64 5836268}
