; ModuleID = 'StringPool.cpp'
source_filename = "StringPool.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"struct.xercesc_2_7::XMLStringPool::PoolElem" = type { i32, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool6existsEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool6existsEj = comdat any

$_ZNK11xercesc_2_713XMLStringPool5getIdEPKt = comdat any

$_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj = comdat any

$_ZNK11xercesc_2_713XMLStringPool14getStringCountEv = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7isEmptyEv = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEC2EPvPS2_PS3_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEEC2EPS5_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEE5resetEPS5_ = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE11containsKeyEPKv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_713XMLStringPoolE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLStringPoolE, ptr @_ZN11xercesc_2_713XMLStringPoolD2Ev, ptr @_ZN11xercesc_2_713XMLStringPoolD0Ev, ptr @_ZNK11xercesc_2_713XMLStringPool14isSerializableEv, ptr @_ZN11xercesc_2_713XMLStringPool9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713XMLStringPool12getProtoTypeEv, ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZNK11xercesc_2_713XMLStringPool6existsEPKt, ptr @_ZNK11xercesc_2_713XMLStringPool6existsEj, ptr @_ZN11xercesc_2_713XMLStringPool8flushAllEv, ptr @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt, ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @_ZNK11xercesc_2_713XMLStringPool14getStringCountEv] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XMLStringPoolE = dso_local constant [31 x i8] c"N11xercesc_2_713XMLStringPoolE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_713XMLStringPoolE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLStringPoolE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713XMLStringPool18classXMLStringPoolE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_713XMLStringPool12createObjectEPNS_13MemoryManagerE }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"XMLStringPool\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"./xercesc/util/StringPool.hpp\00", align 1

@_ZN11xercesc_2_713XMLStringPoolC1EjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE
@_ZN11xercesc_2_713XMLStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713XMLStringPoolD2Ev
@_ZN11xercesc_2_713XMLStringPoolC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713XMLStringPoolC2EPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPoolD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_713XMLStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLStringPool14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !74 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPool9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !74 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !75
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %8) #12
  %10 = load i32, ptr %7, align 4, !tbaa !75
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %40

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %18, %12 ], [ 1, %6 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !82
  %15 = getelementptr inbounds ptr, ptr %14, i64 10
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %13) #12
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %17, i32 noundef 0, i1 noundef zeroext false) #12
  %18 = add nuw i32 %13, 1
  %19 = load i32, ptr %7, align 4, !tbaa !75
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %12, label %40, !llvm.loop !84

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %22 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  %23 = load i32, ptr %3, align 4, !tbaa !86
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  br label %28

27:                                               ; preds = %28, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %40

28:                                               ; preds = %25, %28
  %29 = phi i32 [ 1, %25 ], [ %37, %28 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  %30 = load ptr, ptr %4, align 8, !tbaa !87
  %31 = call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %30) #12
  %32 = load ptr, ptr %26, align 8, !tbaa !88
  %33 = load ptr, ptr %4, align 8, !tbaa !87
  %34 = load ptr, ptr %32, align 8, !tbaa !82
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  call void %36(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %33) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %37 = add nuw i32 %29, 1
  %38 = load i32, ptr %3, align 4, !tbaa !86
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %28, label %27, !llvm.loop !89

40:                                               ; preds = %12, %6, %27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_713XMLStringPool12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !74 {
  ret ptr @_ZN11xercesc_2_713XMLStringPool18classXMLStringPoolE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !90 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !92

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !93
  br label %11

9:                                                ; preds = %2
  %10 = tail call noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #12
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLStringPool6existsEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #12
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLStringPool6existsEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 !prof !95 {
  %3 = icmp ne i32 %1, 0
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPool8flushAllEv(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !75
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %8, !prof !97

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  br label %11

8:                                                ; preds = %11, %1
  store i32 1, ptr %2, align 4, !tbaa !75
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #12
  ret void

11:                                               ; preds = %5, %11
  %12 = phi i64 [ 1, %5 ], [ %29, %11 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !88
  %14 = load ptr, ptr %7, align 8, !tbaa !98
  %15 = getelementptr inbounds ptr, ptr %14, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = load ptr, ptr %13, align 8, !tbaa !82
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18) #12
  %22 = load ptr, ptr %6, align 8, !tbaa !88
  %23 = load ptr, ptr %7, align 8, !tbaa !98
  %24 = getelementptr inbounds ptr, ptr %23, i64 %12
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  %26 = load ptr, ptr %22, align 8, !tbaa !82
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %25) #12
  %29 = add nuw nsw i64 %12, 1
  %30 = load i32, ptr %2, align 4, !tbaa !75
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %11, label %8, !prof !100, !llvm.loop !101
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !103

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8, !tbaa !93
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %3 = icmp ne i32 %1, 0
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %15, label %8, !prof !105

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 165, i32 noundef 89, ptr noundef %11) #12
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #13
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLStringPool14getStringCountEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !75
  %4 = add i32 %3, -1
  ret i32 %4
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !82
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 64, ptr %7, align 8, !tbaa !107
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  store i32 1, ptr %8, align 4, !tbaa !75
  %9 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %2) #12
          to label %10 unwind label %25

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !88
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, i32 noundef %1, i1 noundef zeroext false, ptr noundef %11) #12
          to label %12 unwind label %27

12:                                               ; preds = %10
  store ptr %9, ptr %6, align 8, !tbaa !91
  %13 = load ptr, ptr %4, align 8, !tbaa !88
  %14 = load i32, ptr %7, align 8, !tbaa !107
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %13, align 8, !tbaa !82
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %16) #12
          to label %21 unwind label %25

21:                                               ; preds = %12
  store ptr %20, ptr %5, align 8, !tbaa !98
  %22 = load i32, ptr %7, align 8, !tbaa !107
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %24, i1 false)
  ret void

25:                                               ; preds = %12, %3
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %29

27:                                               ; preds = %10
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %2) #11
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %26, %25 ], [ %28, %27 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !108 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !109 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %3, ptr %0, align 8, !tbaa !110
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !113
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !114
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !115
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !116
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !117
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #12
  %12 = load ptr, ptr %0, align 8, !tbaa !110
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12) #12
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #12
          to label %14 unwind label %15

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !118
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #11
  resume { ptr, i32 } %16
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !120

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %6 = load ptr, ptr %0, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 48, ptr noundef %6) #12
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #13
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !110
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !115
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !82
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #12
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !114
  %21 = load i32, ptr %12, align 8, !tbaa !115
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !121

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !114
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !87
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !122, !llvm.loop !123
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !82
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !74 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !75
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %8, !prof !127

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  br label %12

8:                                                ; preds = %31, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %36

12:                                               ; preds = %5, %31
  %13 = phi i64 [ 1, %5 ], [ %32, %31 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !88
  %15 = load ptr, ptr %7, align 8, !tbaa !98
  %16 = getelementptr inbounds ptr, ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = load ptr, ptr %14, align 8, !tbaa !82
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %19) #12
          to label %23 unwind label %46

23:                                               ; preds = %12
  %24 = load ptr, ptr %6, align 8, !tbaa !88
  %25 = load ptr, ptr %7, align 8, !tbaa !98
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = load ptr, ptr %24, align 8, !tbaa !82
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %27) #12
          to label %31 unwind label %46

31:                                               ; preds = %23
  %32 = add nuw nsw i64 %13, 1
  %33 = load i32, ptr %2, align 4, !tbaa !75
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %12, label %8, !prof !128, !llvm.loop !129

36:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %10) #11
  br label %37

37:                                               ; preds = %36, %8
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = load ptr, ptr %39, align 8, !tbaa !82
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41) #12
          to label %45 unwind label %48

45:                                               ; preds = %37
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void

46:                                               ; preds = %12, %23
  %47 = landingpad { ptr, i32 }
          catch ptr null
  br label %50

48:                                               ; preds = %37
  %49 = landingpad { ptr, i32 }
          catch ptr null
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi { ptr, i32 } [ %47, %46 ], [ %49, %48 ]
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #15
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !106 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  %2 = load ptr, ptr %0, align 8, !tbaa !110
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = load ptr, ptr %2, align 8, !tbaa !82
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #12
  store ptr null, ptr %3, align 8, !tbaa !114
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !82
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #11
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !130 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  br i1 %2, label %45, label %3, !prof !131

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !115
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !132

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !117
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !114
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !133

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  %23 = load i8, ptr %9, align 8, !tbaa !113, !range !136, !noundef !137
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !138

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !139
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #16
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !110
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #12
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !140, !llvm.loop !141

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !114
  %37 = load i32, ptr %4, align 8, !tbaa !115
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !87
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !prof !142, !llvm.loop !143

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !117
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !144 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !75
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !107
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %30, !prof !145

8:                                                ; preds = %2
  %9 = uitofp i32 %4 to double
  %10 = fmul double %9, 1.500000e+00
  %11 = fptoui double %10 to i32
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %13, align 8, !tbaa !82
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %15) #12
  tail call void @llvm.memset.p0.i64(ptr align 8 %19, i8 0, i64 %15, i1 false)
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  %22 = load i32, ptr %5, align 8, !tbaa !107
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %21, i64 %24, i1 false)
  %25 = load ptr, ptr %12, align 8, !tbaa !88
  %26 = load ptr, ptr %20, align 8, !tbaa !98
  %27 = load ptr, ptr %25, align 8, !tbaa !82
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %26) #12
  store ptr %19, ptr %20, align 8, !tbaa !98
  store i32 %11, ptr %5, align 8, !tbaa !107
  br label %30

30:                                               ; preds = %8, %2
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !88
  %33 = load ptr, ptr %32, align 8, !tbaa !82
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef 16) #12
  %37 = load i32, ptr %3, align 4, !tbaa !75
  store i32 %37, ptr %36, align 8, !tbaa !93
  %38 = load ptr, ptr %31, align 8, !tbaa !88
  %39 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %38) #12
  %40 = getelementptr inbounds %"struct.xercesc_2_7::XMLStringPool::PoolElem", ptr %36, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !99
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_(ptr noundef nonnull align 8 dereferenceable(48) %42, ptr noundef %39, ptr noundef nonnull %36) #12
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !98
  %45 = load i32, ptr %3, align 4, !tbaa !75
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46
  store ptr %36, ptr %47, align 8, !tbaa !87
  %48 = add i32 %45, 1
  store i32 %48, ptr %3, align 4, !tbaa !75
  %49 = load i32, ptr %36, align 8, !tbaa !93
  ret i32 %49
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !146 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !147

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #12
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !82
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !144 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !117
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !148

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !138

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !113, !range !136, !noundef !137
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !139
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef nonnull %21) #16
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !139
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !149
  br label %44

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 8, !tbaa !110
  %28 = load ptr, ptr %27, align 8, !tbaa !82
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 24) #12
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  %34 = load i32, ptr %4, align 4, !tbaa !86
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEC2EPvPS2_PS3_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %1, ptr noundef %2, ptr noundef %37) #12
  %38 = load ptr, ptr %32, align 8, !tbaa !114
  %39 = load i32, ptr %4, align 4, !tbaa !86
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %31, ptr %41, align 8, !tbaa !87
  %42 = load i32, ptr %9, align 8, !tbaa !117
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 8, !tbaa !117
  br label %44

44:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !150 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !151

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !152
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !154

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !152
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !155, !llvm.loop !156

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !115
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !110
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !82
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %13 = load ptr, ptr %0, align 8, !tbaa !110
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEEC2EPS5_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #12
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !115
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16, !prof !157

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  store ptr %22, ptr %20, align 8, !tbaa !114
  store i32 %5, ptr %3, align 8, !tbaa !115
  %23 = load ptr, ptr %0, align 8, !tbaa !110
  %24 = load ptr, ptr %23, align 8, !tbaa !82
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #12
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !114
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34, !prof !158

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !134
  %38 = load ptr, ptr %18, align 8, !tbaa !118
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !149
  %41 = load ptr, ptr %0, align 8, !tbaa !110
  %42 = load ptr, ptr %38, align 8, !tbaa !82
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #12
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  store ptr %48, ptr %36, align 8, !tbaa !134
  store ptr %35, ptr %47, align 8, !tbaa !87
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !prof !159, !llvm.loop !160

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !115
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !prof !161, !llvm.loop !162

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !163 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !115
  %8 = load ptr, ptr %0, align 8, !tbaa !110
  %9 = load ptr, ptr %5, align 8, !tbaa !82
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #12
  store i32 %11, ptr %2, align 4, !tbaa !86
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !164

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !118
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !149
  %23 = load ptr, ptr %20, align 8, !tbaa !82
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #12
  br i1 %26, label %31, label %27, !prof !165

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !166, !llvm.loop !167

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEC2EPvPS2_PS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !144 {
  store ptr %2, ptr %0, align 8, !tbaa !139
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEEC2EPS5_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !168
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !96 {
  %2 = load ptr, ptr %0, align 8, !tbaa !168
  store ptr null, ptr %0, align 8, !tbaa !168
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEE5resetEPS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEE5resetEPS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !96 {
  %3 = load ptr, ptr %0, align 8, !tbaa !168
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !171

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !82
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #12
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !168
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !170
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713XMLStringPool12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %0) #12
  invoke void @_ZN11xercesc_2_713XMLStringPoolC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %0) #12
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #11
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !74 {
  %2 = load i16, ptr %0, align 8, !tbaa !172
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !74 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XMLStringPoolC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLStringPoolE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !82
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i32 64, ptr %6, align 8, !tbaa !107
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLStringPool", ptr %0, i64 0, i32 5
  store i32 1, ptr %7, align 4, !tbaa !75
  %8 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %1) #12
          to label %9 unwind label %24

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !88
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 109, i1 noundef zeroext false, ptr noundef %10) #12
          to label %11 unwind label %26

11:                                               ; preds = %9
  store ptr %8, ptr %5, align 8, !tbaa !91
  %12 = load ptr, ptr %3, align 8, !tbaa !88
  %13 = load i32, ptr %6, align 8, !tbaa !107
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %12, align 8, !tbaa !82
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %15) #12
          to label %20 unwind label %24

20:                                               ; preds = %11
  store ptr %19, ptr %4, align 8, !tbaa !98
  %21 = load i32, ptr %6, align 8, !tbaa !107
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %19, i8 0, i64 %23, i1 false)
  ret void

24:                                               ; preds = %11, %2
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %9
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %1) #11
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %25, %24 ], [ %27, %26 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !175 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !176

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !139
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !74 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = call noundef ptr @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !74 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !115
  %8 = load ptr, ptr %0, align 8, !tbaa !110
  %9 = load ptr, ptr %5, align 8, !tbaa !82
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #12
  store i32 %11, ptr %2, align 4, !tbaa !86
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !118
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !149
  %23 = load ptr, ptr %20, align 8, !tbaa !82
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #12
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !177

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!73}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!36 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1706}
!37 = !{ptr @_ZN11xercesc_2_713XMLStringPool9addOrFindEPKt, ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, i64 291}
!38 = !{ptr @_ZN11xercesc_2_713XMLStringPool8flushAllEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv, i64 2}
!39 = !{ptr @_ZNK11xercesc_2_713XMLStringPool5getIdEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, i64 1796708}
!40 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_allocate_exception, i64 2}
!41 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!42 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_throw, i64 1}
!43 = !{ptr @_ZNK11xercesc_2_713XMLStringPool13getValueForIdEj, ptr @__cxa_free_exception, i64 1}
!44 = !{ptr @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 10}
!45 = !{ptr @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 10}
!46 = !{ptr @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 10}
!47 = !{ptr @_ZN11xercesc_2_713XMLStringPoolC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE, i64 10}
!48 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 10}
!49 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE10initializeEj, i64 10}
!50 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 10}
!51 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 10}
!52 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!53 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!54 = !{ptr @_ZN11xercesc_2_713XMLStringPoolD2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEED2Ev, i64 6}
!55 = !{ptr @_ZN11xercesc_2_713XMLStringPoolD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 6}
!56 = !{ptr @_ZN11xercesc_2_713XMLStringPoolD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 10}
!57 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7cleanupEv, i64 10}
!58 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv, i64 10}
!59 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE7isEmptyEv, i64 12}
!60 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE9removeAllEv, ptr @_ZdlPv, i64 1}
!61 = !{ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 290}
!62 = !{ptr @_ZN11xercesc_2_713XMLStringPool11addNewEntryEPKt, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_, i64 290}
!63 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!64 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv, i64 3}
!65 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj, i64 290}
!66 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3putEPvPS2_, ptr @_ZN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEC2EPvPS2_PS3_, i64 289}
!67 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv, ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEEC2EPS5_PNS_13MemoryManagerE, i64 2}
!68 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv, ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEE7releaseEv, i64 2}
!69 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE6rehashEv, ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev, i64 2}
!70 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEEC2EPS5_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 2}
!71 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEE5resetEPS5_, i64 2}
!72 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEE14findBucketElemEPKvRj, i64 1798414}
!73 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!74 = !{!"function_entry_count", i64 0}
!75 = !{!76, !81, i64 36}
!76 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !77, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !81, i64 32, !81, i64 36}
!77 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!78 = !{!"any pointer", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C++ TBAA"}
!81 = !{!"int", !79, i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"vtable pointer", !80, i64 0}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!81, !81, i64 0}
!87 = !{!78, !78, i64 0}
!88 = !{!76, !78, i64 8}
!89 = distinct !{!89, !85}
!90 = !{!"function_entry_count", i64 1706}
!91 = !{!76, !78, i64 24}
!92 = !{!"branch_weights", i32 291, i32 1417}
!93 = !{!94, !81, i64 0}
!94 = !{!"_ZTSN11xercesc_2_713XMLStringPool8PoolElemE", !81, i64 0, !78, i64 8}
!95 = !{!"function_entry_count", i64 2059100}
!96 = !{!"function_entry_count", i64 2}
!97 = !{!"branch_weights", i32 1, i32 2}
!98 = !{!76, !78, i64 16}
!99 = !{!94, !78, i64 8}
!100 = !{!"branch_weights", i32 0, i32 1}
!101 = distinct !{!101, !85}
!102 = !{!"function_entry_count", i64 1796708}
!103 = !{!"branch_weights", i32 1, i32 1796709}
!104 = !{!"function_entry_count", i64 2060280}
!105 = !{!"branch_weights", i32 -149696008, i32 4023}
!106 = !{!"function_entry_count", i64 10}
!107 = !{!76, !81, i64 32}
!108 = !{!"function_entry_count", i64 1068727}
!109 = !{!"function_entry_count", i64 5836268}
!110 = !{!111, !78, i64 0}
!111 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_13XMLStringPool8PoolElemEEE", !78, i64 0, !112, i64 8, !78, i64 16, !81, i64 24, !81, i64 28, !81, i64 32, !78, i64 40}
!112 = !{!"bool", !79, i64 0}
!113 = !{!111, !112, i64 8}
!114 = !{!111, !78, i64 16}
!115 = !{!111, !81, i64 24}
!116 = !{!111, !81, i64 28}
!117 = !{!111, !81, i64 32}
!118 = !{!111, !78, i64 40}
!119 = !{!"function_entry_count", i64 1069174}
!120 = !{!"branch_weights", i32 1, i32 11}
!121 = !{!"branch_weights", i32 1, i32 175}
!122 = !{!"branch_weights", i32 175, i32 15809}
!123 = distinct !{!123, !85}
!124 = !{!125, !78, i64 40}
!125 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !126, i64 8, !78, i64 16, !81, i64 24, !78, i64 32, !78, i64 40}
!126 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !79, i64 0}
!127 = !{!"branch_weights", i32 175, i32 1}
!128 = !{!"branch_weights", i32 4481, i32 175}
!129 = distinct !{!129, !85}
!130 = !{!"function_entry_count", i64 12}
!131 = !{!"branch_weights", i32 4, i32 10}
!132 = !{!"branch_weights", i32 1, i32 159}
!133 = !{!"branch_weights", i32 1018, i32 291}
!134 = !{!135, !78, i64 8}
!135 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEE", !78, i64 0, !78, i64 8, !78, i64 16}
!136 = !{i8 0, i8 2}
!137 = !{}
!138 = !{!"branch_weights", i32 291, i32 1}
!139 = !{!135, !78, i64 0}
!140 = !{!"branch_weights", i32 291, i32 0}
!141 = distinct !{!141, !85}
!142 = !{!"branch_weights", i32 20785, i32 159}
!143 = distinct !{!143, !85}
!144 = !{!"function_entry_count", i64 290}
!145 = !{!"branch_weights", i32 5, i32 287}
!146 = !{!"function_entry_count", i64 558789}
!147 = !{!"branch_weights", i32 158605, i32 400186}
!148 = !{!"branch_weights", i32 289, i32 3}
!149 = !{!135, !78, i64 16}
!150 = !{!"function_entry_count", i64 2453164456}
!151 = !{!"branch_weights", i32 1, i32 -1841802839}
!152 = !{!153, !153, i64 0}
!153 = !{!"short", !79, i64 0}
!154 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!155 = !{!"branch_weights", i32 408669070, i32 -279908792}
!156 = distinct !{!156, !85}
!157 = !{!"branch_weights", i32 1, i32 191}
!158 = !{!"branch_weights", i32 83, i32 245}
!159 = !{!"branch_weights", i32 245, i32 0}
!160 = distinct !{!160, !85}
!161 = !{!"branch_weights", i32 20801, i32 191}
!162 = distinct !{!162, !85}
!163 = !{!"function_entry_count", i64 1798704}
!164 = !{!"branch_weights", i32 1, i32 580}
!165 = !{!"branch_weights", i32 1798125, i32 634}
!166 = !{!"branch_weights", i32 580, i32 1798178}
!167 = distinct !{!167, !85}
!168 = !{!169, !78, i64 0}
!169 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_13XMLStringPool8PoolElemEEEEE", !78, i64 0, !78, i64 8}
!170 = !{!169, !78, i64 8}
!171 = !{!"branch_weights", i32 3, i32 1}
!172 = !{!173, !153, i64 0}
!173 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !153, i64 0, !153, i64 2, !78, i64 8, !78, i64 16, !78, i64 24, !174, i64 32, !174, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !78, i64 80, !78, i64 88, !81, i64 96}
!174 = !{!"long", !79, i64 0}
!175 = !{!"function_entry_count", i64 1798414}
!176 = !{!"branch_weights", i32 291, i32 1798125}
!177 = distinct !{!177, !85}
