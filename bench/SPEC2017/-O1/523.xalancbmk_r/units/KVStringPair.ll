; ModuleID = 'KVStringPair.cpp'
source_filename = "KVStringPair.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$__clang_call_terminate = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

@_ZTVN11xercesc_2_712KVStringPairE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712KVStringPairE, ptr @_ZN11xercesc_2_712KVStringPairD2Ev, ptr @_ZN11xercesc_2_712KVStringPairD0Ev, ptr @_ZNK11xercesc_2_712KVStringPair14isSerializableEv, ptr @_ZN11xercesc_2_712KVStringPair9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_712KVStringPair12getProtoTypeEv] }, align 8
@.str = private unnamed_addr constant [13 x i8] c"KVStringPair\00", align 1
@_ZN11xercesc_2_712KVStringPair17classKVStringPairE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_712KVStringPair12createObjectEPNS_13MemoryManagerE }, align 8
@_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712KVStringPairE = dso_local constant [30 x i8] c"N11xercesc_2_712KVStringPairE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712KVStringPairE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712KVStringPairE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8

@_ZN11xercesc_2_712KVStringPairC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712KVStringPairC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_712KVStringPairC1EPKtS2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_PNS_13MemoryManagerE
@_ZN11xercesc_2_712KVStringPairC1EPKtS2_jPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_712KVStringPairC2EPKtS2_jPNS_13MemoryManagerE
@_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, i32, ptr), ptr @_ZN11xercesc_2_712KVStringPairC2EPKtjS2_jPNS_13MemoryManagerE
@_ZN11xercesc_2_712KVStringPairC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712KVStringPairC2ERKS0_
@_ZN11xercesc_2_712KVStringPairD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712KVStringPairD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !42
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairC2EPKtS2_PNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %5 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store ptr %3, ptr %9, align 8, !tbaa !42
  %10 = icmp eq ptr %1, null
  br i1 %10, label %26, label %11, !prof !49

11:                                               ; preds = %4
  %12 = load i16, ptr %1, align 2, !tbaa !50
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %26, label %14, !prof !49

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %16, %14 ], [ %1, %11 ]
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !50
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %14, !prof !52, !llvm.loop !53

19:                                               ; preds = %14
  %20 = ptrtoint ptr %16 to i64
  %21 = ptrtoint ptr %1 to i64
  %22 = sub i64 %20, %21
  %23 = lshr exact i64 %22, 1
  %24 = add nuw i64 %23, 1
  %25 = and i64 %24, 4294967295
  br label %26

26:                                               ; preds = %19, %11, %4
  %27 = phi i64 [ %25, %19 ], [ 1, %11 ], [ 1, %4 ]
  %28 = load ptr, ptr %3, align 8, !tbaa !39
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null), !prof !56
  store i64 %27, ptr %5, align 8, !tbaa !57
  %31 = load ptr, ptr %9, align 8, !tbaa !42
  %32 = shl nuw nsw i64 %27, 1
  %33 = load ptr, ptr %31, align 8, !tbaa !39
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef %32), !prof !58
  store ptr %36, ptr %7, align 8, !tbaa !59
  %37 = shl nuw nsw i64 %27, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %36, ptr align 2 %1, i64 %37, i1 false), !prof !60
  %38 = icmp eq ptr %2, null
  br i1 %38, label %53, label %39, !prof !49

39:                                               ; preds = %26
  %40 = load i16, ptr %2, align 2, !tbaa !50
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %53, label %42, !prof !49

42:                                               ; preds = %39, %42
  %43 = phi ptr [ %44, %42 ], [ %2, %39 ]
  %44 = getelementptr inbounds i16, ptr %43, i64 1
  %45 = load i16, ptr %44, align 2, !tbaa !50
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %42, !prof !61, !llvm.loop !53

47:                                               ; preds = %42
  %48 = ptrtoint ptr %44 to i64
  %49 = ptrtoint ptr %2 to i64
  %50 = sub i64 %48, %49
  %51 = lshr exact i64 %50, 1
  %52 = trunc i64 %51 to i32
  br label %53

53:                                               ; preds = %47, %39, %26
  %54 = phi i32 [ %52, %47 ], [ 0, %39 ], [ 0, %26 ]
  %55 = zext i32 %54 to i64
  %56 = load i64, ptr %6, align 8, !tbaa !62
  %57 = icmp ugt i64 %56, %55
  br i1 %57, label %72, label %58, !prof !49

58:                                               ; preds = %53
  %59 = load ptr, ptr %9, align 8, !tbaa !42
  %60 = load ptr, ptr %8, align 8, !tbaa !63
  %61 = load ptr, ptr %59, align 8, !tbaa !39
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %60), !prof !56
  %64 = add i32 %54, 1
  %65 = zext i32 %64 to i64
  store i64 %65, ptr %6, align 8, !tbaa !62
  %66 = load ptr, ptr %9, align 8, !tbaa !42
  %67 = shl nuw nsw i64 %65, 1
  %68 = load ptr, ptr %66, align 8, !tbaa !39
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %66, i64 noundef %67), !prof !58
  store ptr %71, ptr %8, align 8, !tbaa !63
  br label %72

72:                                               ; preds = %53, %58
  %73 = load ptr, ptr %8, align 8, !tbaa !63
  %74 = add i32 %54, 1
  %75 = zext i32 %74 to i64
  %76 = shl nuw nsw i64 %75, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %73, ptr align 2 %2, i64 %76, i1 false), !prof !64
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairC2EPKtS2_jPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store ptr %4, ptr %10, align 8, !tbaa !42
  %11 = icmp eq ptr %1, null
  br i1 %11, label %27, label %12, !prof !66

12:                                               ; preds = %5
  %13 = load i16, ptr %1, align 2, !tbaa !50
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15, !prof !66

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %1, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !50
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !prof !67, !llvm.loop !53

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %1 to i64
  %23 = sub i64 %21, %22
  %24 = lshr exact i64 %23, 1
  %25 = add nuw i64 %24, 1
  %26 = and i64 %25, 4294967295
  br label %27

27:                                               ; preds = %20, %12, %5
  %28 = phi i64 [ %26, %20 ], [ 1, %12 ], [ 1, %5 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !39
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null), !prof !68
  store i64 %28, ptr %6, align 8, !tbaa !57
  %32 = load ptr, ptr %10, align 8, !tbaa !42
  %33 = shl nuw nsw i64 %28, 1
  %34 = load ptr, ptr %32, align 8, !tbaa !39
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %33), !prof !69
  store ptr %37, ptr %8, align 8, !tbaa !59
  %38 = shl nuw nsw i64 %28, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %37, ptr align 2 %1, i64 %38, i1 false), !prof !70
  %39 = zext i32 %3 to i64
  %40 = load i64, ptr %7, align 8, !tbaa !62
  %41 = icmp ugt i64 %40, %39
  br i1 %41, label %56, label %42, !prof !66

42:                                               ; preds = %27
  %43 = load ptr, ptr %10, align 8, !tbaa !42
  %44 = load ptr, ptr %9, align 8, !tbaa !63
  %45 = load ptr, ptr %43, align 8, !tbaa !39
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %44), !prof !68
  %48 = add i32 %3, 1
  %49 = zext i32 %48 to i64
  store i64 %49, ptr %7, align 8, !tbaa !62
  %50 = load ptr, ptr %10, align 8, !tbaa !42
  %51 = shl nuw nsw i64 %49, 1
  %52 = load ptr, ptr %50, align 8, !tbaa !39
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef %51), !prof !69
  store ptr %55, ptr %9, align 8, !tbaa !63
  br label %56

56:                                               ; preds = %27, %42
  %57 = load ptr, ptr %9, align 8, !tbaa !63
  %58 = add i32 %3, 1
  %59 = zext i32 %58 to i64
  %60 = shl nuw nsw i64 %59, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %57, ptr align 2 %2, i64 %60, i1 false), !prof !71
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairC2EPKtjS2_jPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  store ptr %5, ptr %11, align 8, !tbaa !42
  %12 = load ptr, ptr %5, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef null), !prof !73
  %15 = add i32 %2, 1
  %16 = zext i32 %15 to i64
  store i64 %16, ptr %7, align 8, !tbaa !57
  %17 = load ptr, ptr %11, align 8, !tbaa !42
  %18 = shl nuw nsw i64 %16, 1
  %19 = load ptr, ptr %17, align 8, !tbaa !39
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %18), !prof !74
  store ptr %22, ptr %9, align 8, !tbaa !59
  %23 = add i32 %2, 1
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %22, ptr align 2 %1, i64 %25, i1 false), !prof !75
  %26 = zext i32 %4 to i64
  %27 = load i64, ptr %8, align 8, !tbaa !62
  %28 = icmp ugt i64 %27, %26
  br i1 %28, label %43, label %29, !prof !76

29:                                               ; preds = %6
  %30 = load ptr, ptr %11, align 8, !tbaa !42
  %31 = load ptr, ptr %10, align 8, !tbaa !63
  %32 = load ptr, ptr %30, align 8, !tbaa !39
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31), !prof !73
  %35 = add i32 %4, 1
  %36 = zext i32 %35 to i64
  store i64 %36, ptr %8, align 8, !tbaa !62
  %37 = load ptr, ptr %11, align 8, !tbaa !42
  %38 = shl nuw nsw i64 %36, 1
  %39 = load ptr, ptr %37, align 8, !tbaa !39
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %37, i64 noundef %38), !prof !74
  store ptr %42, ptr %10, align 8, !tbaa !63
  br label %43

43:                                               ; preds = %6, %29
  %44 = load ptr, ptr %10, align 8, !tbaa !63
  %45 = add i32 %4, 1
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr align 2 %3, i64 %47, i1 false), !prof !77
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairC2ERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %1, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  store ptr %9, ptr %7, align 8, !tbaa !42
  %10 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = icmp eq ptr %11, null
  br i1 %14, label %30, label %15, !prof !79

15:                                               ; preds = %2
  %16 = load i16, ptr %11, align 2, !tbaa !50
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %30, label %18, !prof !79

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %20, %18 ], [ %11, %15 ]
  %20 = getelementptr inbounds i16, ptr %19, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %18, !prof !80, !llvm.loop !53

23:                                               ; preds = %18
  %24 = ptrtoint ptr %20 to i64
  %25 = ptrtoint ptr %11 to i64
  %26 = sub i64 %24, %25
  %27 = lshr exact i64 %26, 1
  %28 = add nuw i64 %27, 1
  %29 = and i64 %28, 4294967295
  br label %30

30:                                               ; preds = %23, %15, %2
  %31 = phi i64 [ %29, %23 ], [ 1, %15 ], [ 1, %2 ]
  %32 = load ptr, ptr %9, align 8, !tbaa !39
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null), !prof !81
  store i64 %31, ptr %3, align 8, !tbaa !57
  %35 = load ptr, ptr %7, align 8, !tbaa !42
  %36 = shl nuw nsw i64 %31, 1
  %37 = load ptr, ptr %35, align 8, !tbaa !39
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef %36), !prof !82
  store ptr %40, ptr %5, align 8, !tbaa !59
  %41 = shl nuw nsw i64 %31, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %40, ptr align 2 %11, i64 %41, i1 false), !prof !83
  %42 = icmp eq ptr %13, null
  br i1 %42, label %57, label %43, !prof !79

43:                                               ; preds = %30
  %44 = load i16, ptr %13, align 2, !tbaa !50
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %57, label %46, !prof !79

46:                                               ; preds = %43, %46
  %47 = phi ptr [ %48, %46 ], [ %13, %43 ]
  %48 = getelementptr inbounds i16, ptr %47, i64 1
  %49 = load i16, ptr %48, align 2, !tbaa !50
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %46, !prof !84, !llvm.loop !53

51:                                               ; preds = %46
  %52 = ptrtoint ptr %48 to i64
  %53 = ptrtoint ptr %13 to i64
  %54 = sub i64 %52, %53
  %55 = lshr exact i64 %54, 1
  %56 = trunc i64 %55 to i32
  br label %57

57:                                               ; preds = %51, %43, %30
  %58 = phi i32 [ %56, %51 ], [ 0, %43 ], [ 0, %30 ]
  %59 = zext i32 %58 to i64
  %60 = load i64, ptr %4, align 8, !tbaa !62
  %61 = icmp ugt i64 %60, %59
  br i1 %61, label %76, label %62, !prof !79

62:                                               ; preds = %57
  %63 = load ptr, ptr %7, align 8, !tbaa !42
  %64 = load ptr, ptr %6, align 8, !tbaa !63
  %65 = load ptr, ptr %63, align 8, !tbaa !39
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %64), !prof !81
  %68 = add i32 %58, 1
  %69 = zext i32 %68 to i64
  store i64 %69, ptr %4, align 8, !tbaa !62
  %70 = load ptr, ptr %7, align 8, !tbaa !42
  %71 = shl nuw nsw i64 %69, 1
  %72 = load ptr, ptr %70, align 8, !tbaa !39
  %73 = getelementptr inbounds ptr, ptr %72, i64 2
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(8) %70, i64 noundef %71), !prof !82
  store ptr %75, ptr %6, align 8, !tbaa !63
  br label %76

76:                                               ; preds = %57, %62
  %77 = load ptr, ptr %6, align 8, !tbaa !63
  %78 = add i32 %58, 1
  %79 = zext i32 %78 to i64
  %80 = shl nuw nsw i64 %79, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %77, ptr align 2 %13, i64 %80, i1 false), !prof !85
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = load ptr, ptr %3, align 8, !tbaa !39
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %17, !prof !87

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !42
  %11 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = load ptr, ptr %10, align 8, !tbaa !39
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17, !prof !87

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #10
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !prof !38 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPairD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !prof !88 {
  tail call void @_ZN11xercesc_2_712KVStringPairD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712KVStringPair12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_712KVStringPairE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %2, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !42
  ret ptr %2
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_712KVStringPair14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !38 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_712KVStringPair12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_712KVStringPair17classKVStringPairE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712KVStringPair9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #1 align 2 !prof !38 {
  %3 = alloca i32, align 4
  %4 = load i16, ptr %1, align 8, !tbaa !89
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !57
  %11 = trunc i64 %10 to i32
  %12 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE, align 1, !tbaa !92, !range !94, !noundef !95
  %13 = icmp ne i8 %12, 0
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %8, i32 noundef %11, i1 noundef zeroext %13)
  %14 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !62
  %18 = trunc i64 %17 to i32
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %15, i32 noundef %18, i1 noundef zeroext %13)
  br label %26

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !tbaa !96
  %20 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 1
  %22 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE, align 1, !tbaa !92, !range !94, !noundef !95
  %23 = icmp ne i8 %22, 0
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(4) %21, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %23)
  %24 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %25 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 2
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 4 dereferenceable(4) %25, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %26

26:                                               ; preds = %19, %6
  ret void
}

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_712KVStringPairD0Ev, ptr @_ZN11xercesc_2_712KVStringPairD2Ev, i64 42}
!36 = !{ptr @_ZN11xercesc_2_712KVStringPairD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 42}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !47, i64 40}
!43 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !44, i64 0, !45, i64 8, !45, i64 16, !47, i64 24, !47, i64 32, !47, i64 40}
!44 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!45 = !{!"long", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"any pointer", !46, i64 0}
!48 = !{!"function_entry_count", i64 25}
!49 = !{!"branch_weights", i32 0, i32 25}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !46, i64 0}
!52 = !{!"branch_weights", i32 25, i32 255}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!"VP", i32 0, i64 25, i64 -7405368087501025645, i64 25}
!57 = !{!43, !45, i64 8}
!58 = !{!"VP", i32 0, i64 25, i64 8345045103670217670, i64 25}
!59 = !{!43, !47, i64 24}
!60 = !{!"VP", i32 1, i64 25, i64 17, i64 22, i64 16, i64 3}
!61 = !{!"branch_weights", i32 25, i32 174}
!62 = !{!43, !45, i64 16}
!63 = !{!43, !47, i64 32}
!64 = !{!"VP", i32 1, i64 25, i64 17, i64 6, i64 4, i64 5, i64 8, i64 4, i64 9, i64 4}
!65 = !{!"function_entry_count", i64 10}
!66 = !{!"branch_weights", i32 0, i32 10}
!67 = !{!"branch_weights", i32 10, i32 60}
!68 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!69 = !{!"VP", i32 0, i64 10, i64 8345045103670217670, i64 10}
!70 = !{!"VP", i32 1, i64 10, i64 16, i64 10}
!71 = !{!"VP", i32 1, i64 10, i64 33, i64 4, i64 17, i64 3, i64 16, i64 1, i64 32, i64 1}
!72 = !{!"function_entry_count", i64 7}
!73 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!74 = !{!"VP", i32 0, i64 7, i64 8345045103670217670, i64 7}
!75 = !{!"VP", i32 1, i64 7, i64 9, i64 2, i64 17, i64 2, i64 33, i64 2, i64 32, i64 1}
!76 = !{!"branch_weights", i32 0, i32 7}
!77 = !{!"VP", i32 1, i64 7, i64 64, i64 3, i64 65, i64 3, i64 17, i64 1}
!78 = !{!"function_entry_count", i64 35}
!79 = !{!"branch_weights", i32 0, i32 35}
!80 = !{!"branch_weights", i32 35, i32 315}
!81 = !{!"VP", i32 0, i64 35, i64 -7405368087501025645, i64 35}
!82 = !{!"VP", i32 0, i64 35, i64 8345045103670217670, i64 35}
!83 = !{!"VP", i32 1, i64 35, i64 17, i64 22, i64 16, i64 13}
!84 = !{!"branch_weights", i32 35, i32 351}
!85 = !{!"VP", i32 1, i64 35, i64 17, i64 9, i64 33, i64 7, i64 4, i64 5, i64 8, i64 4}
!86 = !{!"function_entry_count", i64 77}
!87 = !{!"VP", i32 0, i64 77, i64 -7405368087501025645, i64 77}
!88 = !{!"function_entry_count", i64 42}
!89 = !{!90, !51, i64 0}
!90 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !51, i64 0, !51, i64 2, !47, i64 8, !47, i64 16, !47, i64 24, !45, i64 32, !45, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !91, i64 96}
!91 = !{!"int", !46, i64 0}
!92 = !{!93, !93, i64 0}
!93 = !{!"bool", !46, i64 0}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = !{!91, !91, i64 0}
